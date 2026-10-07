#include "raster_hz.h"
#include "workers.h"
#include "raster_types.h"
#include "raster_vertex_pack.h"
#include <stdlib.h>
#include <string.h>

_Thread_local sg_worker_bin *sg_raster_bin;

#if defined(__EMSCRIPTEN__)
  #include <emscripten/threading.h>
#elif defined(__unix__) || defined(__APPLE__)
  #include <unistd.h>
#endif

/* Forward-declared entrypoint: rasterize v0,v1,v2 but clamp the pixel loop
 * to x in [ix0, ix1). Defined in rasterizer.c after the split. */
void sg_raster_triangle_tile(softgl_ctx *c,
                             const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                             int ix0, int ix1);

/* Main-thread state: pipeline's per-vertex transform. Workers use the same
 * entrypoint; matrices and lighting state are ctx-read-only during a
 * SG_JOB_VERTEX phase, including the caller's own transform slice. */
int sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out);
int sg_process_vertex_prepared(softgl_ctx *c, int index, sg_vert *out, const sg_vertex_inputs *inputs);
void sg_process_vertex_replay_prepared(softgl_ctx *c, int index,
    const sg_position_vertex *geometry, sg_vert *out, const sg_vertex_inputs *inputs);
void sg_process_vertex_replay(softgl_ctx *c, int index,
                              const sg_position_vertex *geometry, sg_vert *out);

int sg_thread_count(softgl_ctx *c) {
    if (!c) return 0;
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    return p ? p->nworkers : 0;
}

int sg_hwthreads(void) {
#if defined(__EMSCRIPTEN__)
    /* navigator.hardwareConcurrency under the hood; returns 1 on the few
     * browsers that hide it. Requires the module to be built with -pthread
     * for actual Web-Worker-backed threads; without, this still returns
     * the core count but the workers fall back to a no-op pool. */
    int n = emscripten_num_logical_cores();
    return n > 0 ? n : 1;
#elif defined(_SC_NPROCESSORS_ONLN)
    long n = sysconf(_SC_NPROCESSORS_ONLN);
    return n > 0 ? (int)n : 1;
#else
    return 1;
#endif
}

static void sg_bin_grow(sg_worker_bin *b, int need) {
    int cap = b->cap;
    if (cap >= need) return;
    if (cap == 0) cap = 256;
    while (cap < need) cap *= 2;
    sg_worker_tri *n = (sg_worker_tri*)sg_aligned_alloc((size_t)cap * sizeof(*n), 16);
    if (b->count > 0) memcpy(n, b->tris, (size_t)b->count * sizeof(*n));
    if (b->tris) sg_aligned_free(b->tris);
    b->tris = n;
    /* 32-bit sort keys: high 8 bits = quantized zkey, low 24 = tri index.
     * Sorting this compact array keeps the scatter inside L1 even for
     * ~10k tris per tile, where scattering the full sg_worker_tri would
     * blow through L2. */
    if (b->sort_keys) sg_aligned_free(b->sort_keys);
    b->sort_keys = (uint32_t*)sg_aligned_alloc((size_t)cap * 2 * sizeof(uint32_t), 16);
    b->cap  = cap;
}

/* Preserve the rasterizer's quad origins, but omit triangles whose fixed-point
 * bounds contain no pixel center in single-sample rasterization. Multisample
 * rasterization keeps conservative bounds, including subpixel-only geometry. */
static int sg_tri_xbounds(const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                           int multisample, int *out_ix0, int *out_ix1) {
    float x0 = v0->ndc.x, x1 = v1->ndc.x, x2 = v2->ndc.x;
    float xmin = x0 < x1 ? x0 : x1; if (x2 < xmin) xmin = x2;
    float xmax = x0 > x1 ? x0 : x1; if (x2 > xmax) xmax = x2;
    float y0 = v0->ndc.y, y1 = v1->ndc.y, y2 = v2->ndc.y;
    float ymin = y0 < y1 ? y0 : y1; if (y2 < ymin) ymin = y2;
    float ymax = y0 > y1 ? y0 : y1; if (y2 > ymax) ymax = y2;
    const int half = SG_FP_SUBPIXEL_ONE / 2;
    int64_t xmin_fp = sg_fp_screen_from_float(xmin);
    int64_t xmax_fp = sg_fp_screen_from_float(xmax);
    int64_t ymin_fp = sg_fp_screen_from_float(ymin);
    int64_t ymax_fp = sg_fp_screen_from_float(ymax);
    if (!multisample && (((xmin_fp + half - 1) >> SG_FP_SUBPIXEL_BITS) >
        ((xmax_fp - half) >> SG_FP_SUBPIXEL_BITS) ||
        ((ymin_fp + half - 1) >> SG_FP_SUBPIXEL_BITS) >
        ((ymax_fp - half) >> SG_FP_SUBPIXEL_BITS))) return 0;
    int ia = (int)xmin;           /* conservative — pixel-centre sampling */
    int ib = (int)xmax + 1;
    if (ia < 0) ia = 0;
    *out_ix0 = ia;
    *out_ix1 = ib;
    return 1;
}

static int sg_bin_range(const sg_worker_pool *p, int width, int ix0, int ix1,
                        int *first, int *end) {
    if (ix1 > width) ix1 = width;
    if (ix0 >= ix1) return 0;
    *first = p->column_bin ? p->column_bin[ix0] : 0;
    *end = p->column_bin ? p->column_bin[ix1 - 1] + 1 : p->nbins;
    return 1;
}

static void sg_vpool_grow(sg_worker_pool *p, int need) {
    int cap = p->vpool_cap;
    if (cap >= need) return;
    if (cap == 0) cap = 1024;
    while (cap < need) cap *= 2;
    sg_vert *n = (sg_vert*)sg_aligned_alloc((size_t)cap * sizeof(*n), 16);
    if (p->vpool_count > 0) memcpy(n, p->vpool, (size_t)p->vpool_count * sizeof(*n));
    if (p->vpool) sg_aligned_free(p->vpool);
    p->vpool    = n;
    p->vpool_cap = cap;
}

void sg_workers_bin_tri(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p || p->nworkers == 0) {
        /* Single-threaded fallback: call the tile raster with the full FB. */
        sg_raster_triangle_tile(c, v0, v1, v2, 0, c->fb.w);
        return;
    }
    int tri_ix0, tri_ix1;
    if (!sg_tri_xbounds(v0, v1, v2, c->fb.samples && c->multisample, &tri_ix0, &tri_ix1)) return;
    int first, end;
    if (!sg_bin_range(p, c->fb.w, tri_ix0, tri_ix1, &first, &end)) return;

    /* Conservative front-most depth: min of per-vertex ndc.z across the
     * triangle. Used only for bucket-sort when sort_safe is set at flush. */
    float z0 = v0->ndc.z, z1 = v1->ndc.z, z2 = v2->ndc.z;
    float zmin = z0 < z1 ? z0 : z1; if (z2 < zmin) zmin = z2;

    /* Append vertices to the shared pool once; bins only store indices. */
    sg_vpool_grow(p, p->vpool_count + 3);
    uint32_t i0 = (uint32_t)(p->vpool_count + 0);
    uint32_t i1 = (uint32_t)(p->vpool_count + 1);
    uint32_t i2 = (uint32_t)(p->vpool_count + 2);
    p->vpool[i0] = *v0;
    p->vpool[i1] = *v1;
    p->vpool[i2] = *v2;
    p->vpool_count += 3;

    for (int t = first; t < end; t++) {
        sg_worker_bin *b = &p->bins[t];
        /* Overlap test: triangle X-bbox vs tile X-range. */
        if (tri_ix1 <= b->ix0 || tri_ix0 >= b->ix1) continue;
        sg_bin_grow(b, b->count + 1);
        sg_worker_tri *slot = &b->tris[b->count++];
        slot->v[0] = i0;
        slot->v[1] = i1;
        slot->v[2] = i2;
        slot->zkey = zmin;
    }
}

void sg_workers_bin_transformed_tri(softgl_ctx *c, const sg_vert *v0,
                                    const sg_vert *v1, const sg_vert *v2) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p || p->nworkers == 0) {
        sg_raster_triangle_tile(c, v0, v1, v2, 0, c->fb.w);
        return;
    }
    int tri_ix0, tri_ix1;
    if (!sg_tri_xbounds(v0, v1, v2, c->fb.samples && c->multisample, &tri_ix0, &tri_ix1)) return;
    int first, end;
    if (!sg_bin_range(p, c->fb.w, tri_ix0, tri_ix1, &first, &end)) return;
    float z0 = v0->ndc.z, z1 = v1->ndc.z, z2 = v2->ndc.z;
    float zmin = z0 < z1 ? z0 : z1; if (z2 < zmin) zmin = z2;
    uint32_t i0 = (uint32_t)(v0 - p->transformed) | SG_BIN_TRANSFORMED_VERTEX;
    uint32_t i1 = (uint32_t)(v1 - p->transformed);
    uint32_t i2 = (uint32_t)(v2 - p->transformed);
    for (int t = first; t < end; t++) {
        sg_worker_bin *b = &p->bins[t];
        if (tri_ix1 <= b->ix0 || tri_ix0 >= b->ix1) continue;
        sg_bin_grow(b, b->count + 1);
        sg_worker_tri *slot = &b->tris[b->count++];
        slot->v[0] = i0;
        slot->v[1] = i1;
        slot->v[2] = i2;
        slot->zkey = zmin;
    }
}

/* No allocations or shared bin writes in the parallel preparation stage. */
static uint32_t sg_triangle_index(const sg_worker_pool *p, int index) {
    switch (p->triangle_index_type) {
        case GL_UNSIGNED_BYTE: return p->triangle_indices[index];
        case GL_UNSIGNED_SHORT: return ((const uint16_t *)p->triangle_indices)[index];
        default: return ((const uint32_t *)p->triangle_indices)[index];
    }
}

static void sg_prepare_triangle_slice(softgl_ctx *c, sg_worker_pool *p, int first, int end) {
    for (int t = first; t < end; t++) {
        sg_prepared_tri *r = &p->triangle_scratch[t];
        uint32_t i0 = sg_triangle_index(p, t * 3) - p->triangle_index_min;
        uint32_t i1 = sg_triangle_index(p, t * 3 + 1) - p->triangle_index_min;
        uint32_t i2 = sg_triangle_index(p, t * 3 + 2) - p->triangle_index_min;
        r->tri.v[0] = i0; r->tri.v[1] = i1; r->tri.v[2] = i2;
        r->kind = SG_TRI_GENERAL;
        if (!(p->inside_frustum[i0] && p->inside_frustum[i1] && p->inside_frustum[i2])) continue;
        r->kind = SG_TRI_REJECT;
        const sg_vert *v0 = &p->transformed[i0], *v1 = &p->transformed[i1], *v2 = &p->transformed[i2];
        float ax = v1->ndc.x - v0->ndc.x, ay = v1->ndc.y - v0->ndc.y;
        float bx = v2->ndc.x - v0->ndc.x, by = v2->ndc.y - v0->ndc.y;
        float area2 = ax * by - ay * bx;
        if (fabsf(area2) < 1e-10f) continue;
        int front = c->front_face == GL_CCW ? area2 > 0.f : area2 < 0.f;
        if (c->cull_enabled && (c->cull_face == GL_FRONT_AND_BACK ||
            front == (c->cull_face == GL_FRONT))) continue;
        if (area2 < 0.f) {
            const sg_vert *v = v1; v1 = v2; v2 = v;
            uint32_t index = i1; i1 = i2; i2 = index;
        }
        if (!sg_tri_xbounds(v0, v1, v2, c->fb.samples && c->multisample, &r->ix0, &r->ix1)) continue;
        int first_bin, end_bin;
        if (!sg_bin_range(p, c->fb.w, r->ix0, r->ix1, &first_bin, &end_bin)) continue;
        r->first = (uint8_t)first_bin; r->end = (uint8_t)end_bin;
        float z0 = v0->ndc.z, z1 = v1->ndc.z, z2 = v2->ndc.z;
        float zmin = z0 < z1 ? z0 : z1; if (z2 < zmin) zmin = z2;
        r->tri = (sg_worker_tri){{i0 | SG_BIN_TRANSFORMED_VERTEX, i1, i2}, zmin};
        r->kind = SG_TRI_READY;
    }
}

static void sg_prepare_triangle_run(softgl_ctx *c, sg_worker_pool *p) {
    for (;;) {
        int first = atomic_fetch_add_explicit(&p->triangle_next, 128, memory_order_relaxed);
        if (first >= p->triangle_count) break;
        int end = first + 128; if (end > p->triangle_count) end = p->triangle_count;
        sg_prepare_triangle_slice(c, p, first, end);
    }
}

void sg_workers_bin_prepared_tri(softgl_ctx *c, const sg_prepared_tri *r) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    for (int t = r->first; t < r->end; t++) {
        sg_worker_bin *b = &p->bins[t];
        if (r->ix1 <= b->ix0 || r->ix0 >= b->ix1) continue;
        sg_bin_grow(b, b->count + 1);
        b->tris[b->count++] = r->tri;
    }
}

/* Cache raw bin order, before optional raster sorting. Position/index VBO
 * revisions and complete matrix/viewport/culling keys make hits independent of
 * colors, materials, textures, blending and query state. No client-memory cache. */
#define SG_GEOMETRY_CACHE_ENTRIES 64
#define SG_GEOMETRY_CACHE_BYTES (4u * 1024u * 1024u)
typedef struct {
    sg_attrib_ptr position;
    GLuint elements;
    uint64_t position_revision, element_revision;
    uintptr_t index_offset;
    GLsizei count;
    GLenum type, front_face, cull_face;
    int cull_enabled;
} sg_geometry_key;

struct sg_geometry_entry {
    sg_geometry_key key;
    int occupied, valid;
    uint32_t imin, imax;
    uint64_t stamp;
    sg_worker_tri *tris;
    size_t capacity;
    uint64_t depth_epoch;
    int offsets[SG_MAX_BINS + 1];
};

typedef struct sg_geometry_cache {
    sg_mat4 mv, projection;
    int viewport[4], multisample, initialized;
    uint64_t clock;
    size_t bytes;
    sg_geometry_entry entries[SG_GEOMETRY_CACHE_ENTRIES];
    sg_position_page position_pages[SG_POSITION_MAX_PAGES];
} sg_geometry_cache;

static void sg_geometry_cache_destroy(sg_geometry_cache *cache) {
    if (!cache) return;
    for (int i = 0; i < SG_GEOMETRY_CACHE_ENTRIES; i++)
        sg_aligned_free(cache->entries[i].tris);
    for (int i = 0; i < SG_POSITION_MAX_PAGES; i++)
        sg_aligned_free(cache->position_pages[i].vertices);
    free(cache);
}

static void sg_geometry_cache_epoch(softgl_ctx *c, sg_geometry_cache *cache) {
    const sg_mat4 *mv = &c->mv_stack[c->mv_top], *pr = &c->pr_stack[c->pr_top];
    int multisample = c->fb.samples && c->multisample;
    if (!cache->initialized || memcmp(&cache->mv, mv, sizeof(*mv)) ||
        memcmp(&cache->projection, pr, sizeof(*pr)) ||
        memcmp(cache->viewport, c->viewport, sizeof(cache->viewport)) ||
        cache->multisample != multisample) {
        cache->mv = *mv; cache->projection = *pr;
        memcpy(cache->viewport, c->viewport, sizeof(cache->viewport));
        cache->multisample = multisample; cache->initialized = 1;
        for (int i = 0; i < SG_GEOMETRY_CACHE_ENTRIES; i++) cache->entries[i].valid = 0;
        for (int i = 0; i < SG_POSITION_MAX_PAGES; i++)
            if (cache->position_pages[i].vertices)
                memset(cache->position_pages[i].flags, 0, SG_POSITION_PAGE_VERTICES);
    }
}

sg_geometry_entry *sg_workers_geometry_lookup(softgl_ctx *c, GLsizei count,
    GLenum type, const void *indices, uint32_t *imin, uint32_t *imax, int *hit) {
    *hit = 0;
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    if (!p || !p->nworkers || count < 768 || c->render_mode != GL_RENDER ||
        !c->attr_pos.enabled || !c->attr_pos.buffer || !c->element_buffer_binding ||
        c->polygon_mode_front != GL_FILL || c->polygon_mode_back != GL_FILL ||
        c->light_model_two_side) return NULL;
    for (int i = 0; i < 6; i++) if (c->clip_plane_enabled[i]) return NULL;
    for (int i = 0; i < p->nbins; i++) if (p->bins[i].count) return NULL;
    sg_buffer *vertices = sg_buffer_get(c, c->attr_pos.buffer);
    sg_buffer *elements = sg_buffer_get(c, c->element_buffer_binding);
    if (!vertices || !elements || !vertices->data || !elements->data ||
        vertices->mapped || elements->mapped) return NULL;
    if (!p->geometry_cache) p->geometry_cache = calloc(1, sizeof(sg_geometry_cache));
    sg_geometry_cache *cache = p->geometry_cache;
    if (!cache) return NULL;
    sg_geometry_cache_epoch(c, cache);
    sg_geometry_key key = {0};
    key.position.enabled = c->attr_pos.enabled;
    key.position.size = c->attr_pos.size;
    key.position.type = c->attr_pos.type;
    key.position.stride = c->attr_pos.stride;
    key.position.ptr = c->attr_pos.ptr;
    key.position.buffer = c->attr_pos.buffer;
    key.elements = c->element_buffer_binding;
    key.position_revision = vertices->revision; key.element_revision = elements->revision;
    key.index_offset = (uintptr_t)indices; key.count = count; key.type = type;
    key.front_face = c->front_face; key.cull_face = c->cull_face; key.cull_enabled = c->cull_enabled;
    sg_geometry_entry *victim = &cache->entries[0];
    for (int i = 0; i < SG_GEOMETRY_CACHE_ENTRIES; i++) {
        sg_geometry_entry *entry = &cache->entries[i];
        if (entry->occupied && !memcmp(&entry->key, &key, sizeof(key))) {
            entry->stamp = ++cache->clock;
            if (entry->valid) { *imin = entry->imin; *imax = entry->imax; *hit = 1; }
            return entry;
        }
        if (!entry->occupied || (victim->occupied && entry->stamp < victim->stamp)) victim = entry;
    }
    victim->key = key; victim->occupied = 1; victim->valid = 0;
    victim->stamp = ++cache->clock;
    return victim;
}

void sg_workers_geometry_store(softgl_ctx *c, sg_geometry_entry *entry,
                               uint32_t imin, uint32_t imax) {
    if (!entry) return;
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    sg_geometry_cache *cache = p->geometry_cache;
    size_t total = 0;
    for (int b = 0; b < p->nbins; b++) total += (size_t)p->bins[b].count;
    size_t need = total * sizeof(sg_worker_tri);
    if (need > entry->capacity) {
        if (need > SG_GEOMETRY_CACHE_BYTES ||
            need - entry->capacity > SG_GEOMETRY_CACHE_BYTES - cache->bytes) return;
        sg_worker_tri *next = sg_aligned_alloc(need, 16);
        if (!next) return;
        sg_aligned_free(entry->tris);
        cache->bytes += need - entry->capacity;
        entry->tris = next; entry->capacity = need;
    }
    int offset = 0;
    for (int b = 0; b < p->nbins; b++) {
        const sg_worker_bin *bin = &p->bins[b];
        entry->offsets[b] = offset;
        if (bin->count) memcpy(entry->tris + offset, bin->tris, (size_t)bin->count * sizeof(*bin->tris));
        offset += bin->count;
    }
    entry->offsets[p->nbins] = offset;
    entry->imin = imin; entry->imax = imax; entry->valid = 1; entry->depth_epoch = 0;
    if (!c->scissor_enabled && c->render_mode == GL_RENDER) {
        int transformed = 1;
        for (int i = 0; i < offset; i++) {
            if (!(entry->tris[i].v[0] & SG_BIN_TRANSFORMED_VERTEX)) {
                transformed = 0;
                break;
            }
        }
        if (transformed) p->prepared_coverage_entry = entry;
    }
}

void sg_workers_geometry_replay(softgl_ctx *c, const sg_geometry_entry *entry) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    for (int b = 0; b < p->nbins; b++) {
        int first = entry->offsets[b], count = entry->offsets[b + 1] - first;
        sg_worker_bin *bin = &p->bins[b];
        if (!count) continue;
        sg_bin_grow(bin, count);
        if (entry->depth_epoch && entry->depth_epoch == p->depth_epoch &&
            (c->fb.samples == 0 || c->fb.samples == 2 || c->fb.samples == 4) && c->depth_test && !c->stencil_test &&
            !c->polygon_offset_fill && (c->depth_func == GL_LESS ||
             c->depth_func == GL_LEQUAL || c->depth_func == GL_EQUAL)) {
            const uint8_t *hidden = (const uint8_t *)(entry->tris + entry->offsets[p->nbins]);
            int out = 0;
            for (int i = first; i < first + count; i++) {
                if (hidden[i >> 3] & (1u << (i & 7))) continue;
                bin->tris[out++] = entry->tris[i];
            }
            bin->count = out;
        } else {
            memcpy(bin->tris, entry->tris + first, (size_t)count * sizeof(*bin->tris));
            bin->count = count;
        }
    }
}

/* Canonicalize a VBO position address to its record field and global index.
 * Part-local array offsets then share pages with other passes over the VBO. */
static void sg_position_prepare(softgl_ctx *c, sg_worker_pool *p, int first, int count) {
    p->job_position_count = 0;
    const sg_attrib_ptr *position = &c->attr_pos;
    if (!position->enabled || !position->buffer || first < 0 || count <= 0) return;
    sg_buffer *buffer = sg_buffer_get(c, position->buffer);
    if (!buffer || !buffer->data || buffer->mapped) return;
    int stride = position->stride ? position->stride : position->size * (int)sizeof(float);
    if (stride <= 0) return;
    uint64_t offset = (uintptr_t)position->ptr;
    uint64_t begin = offset / (unsigned)stride + (unsigned)first;
    uint64_t end = begin + (unsigned)count;
    uint64_t first_page = begin / SG_POSITION_PAGE_VERTICES;
    uint64_t last_page = (end - 1) / SG_POSITION_PAGE_VERTICES;
    if (last_page - first_page >= SG_POSITION_MAX_PAGES) return;
    if (!p->geometry_cache) p->geometry_cache = calloc(1, sizeof(sg_geometry_cache));
    sg_geometry_cache *cache = p->geometry_cache;
    if (!cache) return;
    sg_geometry_cache_epoch(c, cache);
    sg_attrib_ptr key = {0};
    key.enabled = position->enabled; key.size = position->size; key.type = position->type;
    key.stride = stride; key.ptr = (const void *)(uintptr_t)(offset % (unsigned)stride);
    key.buffer = position->buffer;
    uint64_t stamp = ++cache->clock;
    size_t bytes = SG_POSITION_PAGE_VERTICES * (sizeof(sg_position_vertex) + 1);
    for (uint64_t page = first_page; page <= last_page; page++) {
        sg_position_page *entry = NULL, *victim = NULL;
        for (int i = 0; i < SG_POSITION_MAX_PAGES; i++) {
            sg_position_page *candidate = &cache->position_pages[i];
            if (candidate->occupied && candidate->revision == buffer->revision &&
                candidate->page == page && !memcmp(&candidate->position, &key, sizeof(key))) {
                entry = candidate; break;
            }
            if (candidate->stamp != stamp && (!victim ||
                (victim->occupied && (!candidate->occupied || candidate->stamp < victim->stamp))))
                victim = candidate;
        }
        if (!entry && victim) {
            if (!victim->vertices && bytes > SG_GEOMETRY_CACHE_BYTES - cache->bytes) {
                victim = NULL;
                for (int i = 0; i < SG_POSITION_MAX_PAGES; i++) {
                    sg_position_page *candidate = &cache->position_pages[i];
                    if (candidate->vertices && candidate->stamp != stamp &&
                        (!victim || candidate->stamp < victim->stamp)) victim = candidate;
                }
            }
            if (!victim) { p->job_position_pages[page - first_page] = NULL; continue; }
            if (!victim->vertices && bytes <= SG_GEOMETRY_CACHE_BYTES - cache->bytes) {
                victim->vertices = sg_aligned_alloc(bytes, 16);
                if (victim->vertices) {
                    victim->flags = (uint8_t *)(victim->vertices + SG_POSITION_PAGE_VERTICES);
                    cache->bytes += bytes;
                }
            }
            if (victim->vertices) {
                entry = victim;
                entry->position = key; entry->revision = buffer->revision; entry->page = page;
                entry->occupied = 1;
                memset(entry->flags, 0, SG_POSITION_PAGE_VERTICES);
            }
        }
        if (entry) entry->stamp = stamp;
        p->job_position_pages[page - first_page] = entry;
    }
    p->job_position_first = begin;
    p->job_position_count = (int)(last_page - first_page + 1);
}

static void sg_transform_slice(softgl_ctx *c, sg_worker_pool *p,
                                int first, int end, int storage_first) {
    if (!p->job_position_count) {
        for (int i = first; i < end; i++)
            p->inside_frustum[i - storage_first] = (uint8_t)sg_process_vertex_prepared(c, p->job_vertex_indices ? p->job_vertex_indices[i-p->job_first] : (uint32_t)i,
                &p->transformed[i - storage_first], &p->vertex_inputs);
        return;
    }
    uint64_t page_base = p->job_position_first / SG_POSITION_PAGE_VERTICES;
    for (int i = first; i < end; i++) {
        uint64_t global = p->job_position_first + (unsigned)(i - p->job_first);
        sg_position_page *page = p->job_position_pages[global / SG_POSITION_PAGE_VERTICES - page_base];
        int slot = (int)(global % SG_POSITION_PAGE_VERTICES);
        sg_vert *v = &p->transformed[i - storage_first];
        int inside;
        if (page && (page->flags[slot] & 2)) {
            sg_process_vertex_replay_prepared(c, i, &page->vertices[slot], v, &p->vertex_inputs);
            inside = page->flags[slot] & 1;
        } else {
            inside = sg_process_vertex_prepared(c, i, v, &p->vertex_inputs);
            if (page) {
                page->vertices[slot].clip = v->clip;
                page->vertices[slot].ndc = v->ndc;
                page->vertices[slot].eye = v->eye;
                page->flags[slot] = (uint8_t)(2 | inside);
            }
        }
        p->inside_frustum[i - storage_first] = (uint8_t)inside;
    }
}

/* 256-bucket front-to-back sort. Builds a (zkey_q<<24 | idx) key array,
 * bucket-scatters the keys (tiny 4B/tri vs 496B), then rasterizes via
 * indirection through keys[i] & 0xFFFFFF. Two memory passes on keys,
 * zero touches to tri payload data. */
static void sg_bin_sort_z(sg_worker_bin *b) {
    int n = b->count;
    if (n == 0) return;
    if (n == 1) {
        b->sort_keys[0] = 0;
        return;
    }
    uint32_t *keys  = b->sort_keys;
    uint32_t *sorted = keys + n;   /* scatter destination, half of the 2×cap buffer */
    int counts[257];
    for (int i = 0; i < 257; i++) counts[i] = 0;
    for (int i = 0; i < n; i++) {
        float z = b->tris[i].zkey;
        if (z < 0.f) z = 0.f; else if (z > 1.f) z = 1.f;
        uint32_t bk = (uint32_t)(z * 255.f);
        keys[i] = (bk << 24) | (uint32_t)i;
        counts[bk + 1]++;
    }
    for (int i = 1; i < 257; i++) counts[i] += counts[i - 1];
    for (int i = 0; i < n; i++) {
        uint32_t bk = keys[i] >> 24;
        sorted[counts[bk]++] = keys[i];
    }
    /* Stash sorted indices back in keys[] so the drain loop below reads
     * them contiguously. */
    for (int i = 0; i < n; i++) keys[i] = sorted[i] & 0x00FFFFFFu;
}

/* Two draw slots, at most 2MiB of vertex storage per submitted draw. Bin
 * records, classification and texture/snapshot metadata are additional. */
#define SG_STREAM_BYTES (2u * 1024u * 1024u)
#define SG_STREAM_VERTICES (SG_STREAM_BYTES / sizeof(sg_vert))
typedef struct sg_async_raster {
    softgl_ctx state;
    sg_tex_tri_ctx texture_context;
    sg_texture textures[SG_MAX_TEX_UNITS];
    sg_worker_bin bins[SG_MAX_BINS];
    sg_vert *transformed, *vpool;
    uint8_t *inside_frustum;
    int transformed_cap, vpool_cap;
    sg_packed_raster_vertices packed;
    sg_geometry_entry *coverage_entry;
    uint64_t coverage_stamp;
    uint64_t depth_epoch;
} sg_async_raster;

static void sg_drain_bins(softgl_ctx *c, sg_worker_pool *p,
                          sg_worker_bin *bins, const sg_vert *vp,
                          const sg_vert *transformed,
                          const sg_tex_tri_ctx *prepared_context) {
    int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);
    sg_tex_tri_ctx tctx;
    if (prepared_context) tctx = *prepared_context;
    int prepared = prepared_context != NULL;
    for (;;) {
        int index = atomic_fetch_add_explicit(&p->next_bin, 1, memory_order_relaxed);
        if (index >= p->nbins) break;
        sg_worker_bin *b = &bins[index];
        b->query_samples = 0;
        int n = b->count;
        b->depth_capture = 0;
        if (!n) continue;
        sg_raster_bin = b;
        if (sort) sg_bin_sort_z(b);
        /* GL state is immutable for the entire job. */
        if (!prepared) { sg_tex_tri_prepare(c, &tctx); prepared = 1; }
        if (sort) {
            const uint32_t *order = b->sort_keys;
            for (int i = 0; i < n; i++) {
                const sg_worker_tri *t = &b->tris[order[i]];
                const sg_vert *src = (t->v[0] & SG_BIN_TRANSFORMED_VERTEX) ? transformed : vp;
                sg_raster_triangle_tile_prepared(c,
                    &src[t->v[0] & ~SG_BIN_TRANSFORMED_VERTEX], &src[t->v[1]], &src[t->v[2]],
                    b->ix0, b->ix1, &tctx);
            }
        } else {
            for (int i = 0; i < n; i++) {
                const sg_worker_tri *t = &b->tris[i];
                const sg_vert *src = (t->v[0] & SG_BIN_TRANSFORMED_VERTEX) ? transformed : vp;
                sg_raster_triangle_tile_prepared(c,
                    &src[t->v[0] & ~SG_BIN_TRANSFORMED_VERTEX], &src[t->v[1]], &src[t->v[2]],
                    b->ix0, b->ix1, &tctx);
            }
        }
        b->count = 0;
    }
    sg_raster_bin = NULL;
}

/* The ordinary full-vertex drain stays separate from packed large jobs. */
#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
void sg_drain_packed_bins(sg_worker_pool *p, sg_async_raster *job) {
    sg_packed_vertex_cache cache;
    memset(&cache, 0, sizeof(cache));
    int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);
    for (;;) {
        int index = atomic_fetch_add_explicit(&p->next_bin, 1, memory_order_relaxed);
        if (index >= p->nbins) break;
        sg_worker_bin *b = &job->bins[index];
        b->query_samples = 0;
        int n = b->count;
        b->coverage_count = n;
        b->depth_capture = job->depth_epoch != 0;
        if (!n) continue;
        sg_raster_bin = b;
        if (sort) sg_bin_sort_z(b);
        for (int j = 0; j < SG_PACKED_VERTEX_CACHE_SIZE; j++) cache.tags[j] = UINT32_MAX;
        for (int i = 0; i < n; i++) {
            const sg_worker_tri *t = &b->tris[sort ? b->sort_keys[i] : (uint32_t)i];
            uint32_t marker = t->v[0] & SG_BIN_TRANSFORMED_VERTEX;
            uint64_t pinned = 0;
            const sg_vert *v0 = sg_packed_vertex_fetch(&job->packed, &cache, t->v[0], &pinned, 0);
            const sg_vert *v1 = sg_packed_vertex_fetch(&job->packed, &cache, t->v[1] | marker, &pinned, 1);
            const sg_vert *v2 = sg_packed_vertex_fetch(&job->packed, &cache, t->v[2] | marker, &pinned, 2);
            int empty = sg_raster_triangle_tile_prepared(&job->state, v0, v1, v2,
                b->ix0, b->ix1, &job->texture_context);
            if (job->coverage_entry) {
                uint32_t original = sort ? b->sort_keys[i] : (uint32_t)i;
                b->sort_keys[n + original] = empty >= 0 ? (uint32_t)empty : 0;
            }
        }
        b->count = 0;
    }
    sg_raster_bin = NULL;
}

static void sg_drain_raster_bins(softgl_ctx *c, sg_worker_pool *p) {
    sg_drain_bins(c, p, p->bins, p->vpool, p->transformed, NULL);
}

static void sg_queue_finish(sg_worker_pool *p);

/* Workers record only in the joined job's existing sort scratch. Cache
 * storage can change on the producer; publish only to the unchanged entry. */
static void sg_publish_coverage(sg_worker_pool *p, sg_async_raster *job) {
    sg_geometry_entry *entry = job->coverage_entry;
    if (!entry || !entry->valid || entry->stamp != job->coverage_stamp) return;
    for (int b = 0; b < p->nbins; b++) {
        if (entry->offsets[b + 1] - entry->offsets[b] != job->bins[b].coverage_count)
            return;
    }
    int out = 0;
    for (int b = 0; b < p->nbins; b++) {
        int first = entry->offsets[b], end = entry->offsets[b + 1];
        int n = end - first;
        entry->offsets[b] = out;
        if (!n) continue;
        const uint32_t *empty = job->bins[b].sort_keys + n;
        for (int i = 0; i < n; i++) {
            if (empty[i] & 1u) continue;
            if (out != first + i) entry->tris[out] = entry->tris[first + i];
            out++;
        }
    }
    entry->offsets[p->nbins] = out;
    entry->depth_epoch = 0;
    size_t bitmap_bytes = ((size_t)out + 7) / 8;
    if (job->depth_epoch && job->depth_epoch == p->depth_epoch && out &&
        (size_t)out * sizeof(*entry->tris) + bitmap_bytes <= entry->capacity) {
        /* The reclaimed triangle tail belongs to this entry, within the
         * unchanged shared 4 MiB geometry budget. Write only after compaction. */
        uint8_t *hidden = (uint8_t *)(entry->tris + out);
        memset(hidden, 0, bitmap_bytes);
        int reference = 0;
        for (int b = 0; b < p->nbins; b++) {
            int n = job->bins[b].coverage_count;
            if (!n) continue;
            const uint32_t *flags = job->bins[b].sort_keys + n;
            for (int i = 0; i < n; i++) {
                if (flags[i] & 1u) continue;
                if (flags[i] & 2u) hidden[reference >> 3] |= 1u << (reference & 7);
                reference++;
            }
        }
        entry->depth_epoch = job->depth_epoch;
    }
}

static void sg_finish_stream(sg_worker_pool *p) {
    if (!p->async_pending) return;
    if (p->async_pending == 3) {
        sg_queue_finish(p);
        return;
    }
    sg_async_raster *job = p->async_raster;
    if (p->async_pending == 2) sg_drain_packed_bins(p, job);
    else sg_drain_bins(&job->state, p, job->bins, job->vpool,
                        job->transformed, &job->texture_context);
    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    if (p->async_pending == 2) sg_publish_coverage(p, job);
    job->coverage_entry = NULL;
    p->async_pending = 0;
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
}

static void sg_stream_destroy(sg_async_raster *job, int nbins) {
    if (!job) return;
    for (int i = 0; i < nbins; i++) {
        sg_aligned_free(job->bins[i].tris);
        sg_aligned_free(job->bins[i].sort_keys);
    }
    sg_aligned_free(job->transformed);
    sg_aligned_free(job->vpool);
    free(job->inside_frustum);
    sg_aligned_free(job->packed.data);
    sg_aligned_free(job);
}

static int sg_pool_sort_safe(const softgl_ctx *c);
#include "workers_queue_raw.inc"

static void *sg_worker_main(void *arg) {
    sg_worker *w = (sg_worker*)arg;
    softgl_ctx *c = w->ctx;
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    int local_gen = 0;

    for (;;) {
        /* Sleep until main bumps the generation or signals die. */
        pthread_mutex_lock(&p->mtx);
        while (atomic_load_explicit(&p->gen, memory_order_acquire) == local_gen
               && atomic_load_explicit(&p->alive, memory_order_acquire)) {
            pthread_cond_wait(&p->wake, &p->mtx);
        }
        int alive = atomic_load_explicit(&p->alive, memory_order_acquire);
        local_gen = atomic_load_explicit(&p->gen, memory_order_acquire);
        pthread_mutex_unlock(&p->mtx);
        if (!alive) break;

        int job = atomic_load_explicit(&p->job_type, memory_order_acquire);
        if (job == SG_JOB_VERTEX) {
            int first = p->job_first;
            int count = p->job_count;
            int n     = p->nworkers;
            int tid   = w->tile_idx;
            /* Even partition: worker i owns [first + i*count/n, first + (i+1)*count/n). */
            int s = first + (int)((int64_t)tid * count / n);
            int e = first + (int)((int64_t)(tid + 1) * count / n);
            sg_transform_slice(c, p, s, e, p->job_storage_first);
        } else if (job == SG_JOB_TRIANGLES) {
            sg_prepare_triangle_run(c, p);
        } else if (job == SG_JOB_ASYNC_RASTER) {
            sg_async_raster *r = p->async_raster;
            sg_drain_bins(&r->state, p, r->bins, r->vpool,
                          r->transformed, &r->texture_context);
        } else if (job == SG_JOB_PACKED_RASTER) {
            sg_drain_packed_bins(p, p->async_raster);
        } else if (job == SG_JOB_STREAM_QUEUE) {
            sg_queue_worker(p);
        } else {
            sg_drain_raster_bins(c, p);
        }

        atomic_fetch_add_explicit(&p->done_count, 1, memory_order_acq_rel);
    }
    return NULL;
}

void sg_workers_init(softgl_ctx *c, int nworkers_hint) {
    if (c->workers) return;
    sg_hz_state *state = sg_hz_state_from_ctx(c);
    if (state && state->tiles) {
        memset(state->tiles, 0,
            (size_t)(c->fb.w / 4) * state->rows * sizeof(sg_hz_tile));
        state->active = 1;
    }
    int n = nworkers_hint > 0 ? nworkers_hint : sg_hwthreads();
#if defined(__EMSCRIPTEN__)
    /* The caller performs vertex and raster work too. Reserve its logical
     * CPU in the automatic pool; explicit worker counts remain available. */
    if (nworkers_hint <= 0) {
        if (--n < 1) return;
        /* Three helpers plus caller are the fixed performance target. */
        if (n > 3) n = 3;
    }
#endif
    if (n < 1) n = 1;
    if (n > SG_MAX_TILES) n = SG_MAX_TILES;

    sg_worker_pool *p = (sg_worker_pool*)calloc(1, sizeof(*p));
    if (!p) return;
    p->nworkers = n;
    atomic_init(&p->gen, 0);
    atomic_init(&p->done_count, 0);
    atomic_init(&p->alive, 1);
    atomic_init(&p->sort_safe, 0);
    atomic_init(&p->job_type, SG_JOB_RASTER);
    atomic_init(&p->next_bin, 0);
    pthread_mutex_init(&p->mtx, NULL);
    pthread_cond_init(&p->wake, NULL);

    /* More bins than workers balance the busy center against empty edges.
     * A column lookup keeps producer work proportional to overlapping bins. */
    int fbw = c->fb.w;
    p->column_bin = fbw > 0 ? (uint8_t*)malloc((size_t)fbw) : NULL;
    /* MSAA multiplies the active sample buffers. Fine bins keep their working
     * set small and provide more independent caller/worker jobs. */
    int target_bins = c->fb.samples ? SG_MAX_BINS : n * 4;
    p->nbins = p->column_bin ? target_bins : n;
    if (p->column_bin && p->nbins > fbw) p->nbins = fbw;
    for (int t = 0; t < p->nbins; t++) {
        p->bins[t].ix0 = (int)((int64_t)fbw * t / p->nbins);
        p->bins[t].ix1 = (int)((int64_t)fbw * (t + 1) / p->nbins);
        if (state && ((p->bins[t].ix0 & 3) || (p->bins[t].ix1 & 3))) state->active = 0;
        if (p->column_bin)
            memset(p->column_bin + p->bins[t].ix0, t,
                   (size_t)(p->bins[t].ix1 - p->bins[t].ix0));
        p->bins[t].tris      = NULL;
        p->bins[t].sort_keys = NULL;
        p->bins[t].count     = 0;
        p->bins[t].cap       = 0;
    }

    atomic_init(&p->triangle_next, 0);
    c->workers = p;

    /* Spawn AFTER c->workers is wired so sg_worker_main's ctx->workers read sees it. */
    for (int t = 0; t < n; t++) {
        p->workers[t].ctx      = c;
        p->workers[t].tile_idx = t;
        p->workers[t].started  = 0;
        if (pthread_create(&p->workers[t].thread, NULL, sg_worker_main, &p->workers[t]) == 0) {
            p->workers[t].started = 1;
        }
    }
}

void sg_workers_shutdown(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p) return;
    sg_workers_flush(c);

    atomic_store_explicit(&p->alive, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);

    for (int t = 0; t < p->nworkers; t++) {
        if (p->workers[t].started) pthread_join(p->workers[t].thread, NULL);
    }
    for (int t = 0; t < p->nbins; t++) {
        if (p->bins[t].tris)      sg_aligned_free(p->bins[t].tris);
        if (p->bins[t].sort_keys) sg_aligned_free(p->bins[t].sort_keys);
    }
    if (p->vpool)       sg_aligned_free(p->vpool);
    if (p->transformed) sg_aligned_free(p->transformed);
    free(p->inside_frustum);
    sg_aligned_free(p->triangle_scratch);
    free(p->column_bin);
    sg_geometry_cache_destroy(p->geometry_cache);
    extern void sg_cluster_cache_destroy(void *);
    sg_cluster_cache_destroy(p->cluster_cache);
    sg_stream_destroy(p->async_raster, p->nbins);
    sg_queue_destroy(p);
    pthread_mutex_destroy(&p->mtx);
    pthread_cond_destroy(&p->wake);
    free(p);
    c->workers = NULL;
}

/* Front-to-back Z-sort is only legal under state combinations where
 * submission order is transparent to the final pixel value: opaque
 * rendering with a monotonic depth test. Everything else (blend,
 * stencil, logic-op, alpha-test, depth_func ∈ {EQUAL, GREATER, ...})
 * must drain in submission order. */
static int sg_pool_sort_safe(const softgl_ctx *c) {
    if (!c->depth_test) return 0;
    if (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL) return 0;
    if (c->blend || c->alpha_test || c->stencil_test) return 0;
    if (c->color_logic_op_enabled) return 0;
    if (c->polygon_stipple_enable) return 0;
    /* Check cheap common rejection states before the query state. Query
     * counts and read-only depth rendering depend on submission order. */
    if (!c->depth_mask) return 0;
    if (c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] ||
        c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED]) return 0;
    return 1;
}

static const sg_vert *sg_transform_range(softgl_ctx *c, int first, int count, int compact) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p || p->nworkers == 0 || count <= 0) return NULL;

    int storage_first = compact ? first : 0;
    int need = compact ? count : first + count;
    int bounded = compact && (size_t)count <= SG_STREAM_VERTICES;
    if (p->transformed_cap < need || (bounded && (size_t)p->transformed_cap > SG_STREAM_VERTICES)) {
        int cap = p->transformed_cap ? p->transformed_cap : 1024;
        while (cap < need) cap *= 2;
        if (bounded && (size_t)cap > SG_STREAM_VERTICES) cap = (int)SG_STREAM_VERTICES;
        sg_vert *n = (sg_vert*)sg_aligned_alloc((size_t)cap * sizeof(*n), 16);
        uint8_t *inside = (uint8_t*)malloc((size_t)cap);
        if (!n || !inside) {
            if (n) sg_aligned_free(n);
            free(inside);
            return NULL;
        }
        if (p->transformed) sg_aligned_free(p->transformed);
        free(p->inside_frustum);
        p->transformed     = n;
        p->inside_frustum  = inside;
        p->transformed_cap = cap;
    }

    p->job_first = first;
    sg_prepare_vertex_inputs(c, &p->vertex_inputs);
    if (p->job_vertex_indices) p->job_position_count = 0;
    else sg_position_prepare(c, p, first, count);
    /* Positive: compact source count; negative: original-index storage. */
    p->prepared_transformed = compact ? count : -count;
    if (p->async_pending) {
        /* Old raster slots stay immutable. Idle queue workers may prepare
         * disjoint slices of the next draw in the caller-owned arrays. */
        if (p->async_pending == 3 && count >= 1024)
            sg_queue_transform(c, p, first, count, storage_first, 0);
        else sg_transform_slice(c, p, first, first + count, storage_first);
        return p->transformed;
    }
    p->job_storage_first = storage_first;
    /* Give the caller a disjoint tail instead of spending the whole vertex
     * job spinning. Keep the worker loop and small-job partitions unchanged. */
    int main_count = count >= 1024 ? count / (p->nworkers + 1) : 0;
    p->job_first = first;
    p->job_count = count - main_count;
    atomic_store_explicit(&p->job_type, SG_JOB_VERTEX, memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);

    sg_transform_slice(c, p, first + count - main_count, first + count, storage_first);

    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    /* Reset default job type so subsequent flushes do the right thing. */
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
    return p->transformed;
}

const sg_prepared_tri *sg_workers_prepare_triangles(softgl_ctx *c,
    const uint8_t *indices, GLenum type, uint32_t minimum, int count) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    if (!p || !p->nworkers || !indices ||
        (type != GL_UNSIGNED_BYTE && type != GL_UNSIGNED_SHORT && type != GL_UNSIGNED_INT) ||
        count < 1024 || count > SG_TRIANGLE_STAGE_MAX ||
        (p->async_pending && p->async_pending != 3)) return NULL;
    if (p->triangle_capacity < count) {
        sg_prepared_tri *next = sg_aligned_alloc((size_t)count * sizeof(*next), 64);
        if (!next) return NULL;
        sg_aligned_free(p->triangle_scratch); p->triangle_scratch = next;
        p->triangle_capacity = count;
    }
    p->triangle_indices = indices; p->triangle_index_type = type;
    p->triangle_index_min = minimum; p->triangle_count = count;
    if (p->async_pending == 3) {
        sg_queue_transform(c, p, 0, count, 0, 1);
    } else {
        atomic_store_explicit(&p->triangle_next, 0, memory_order_relaxed);
        atomic_store_explicit(&p->job_type, SG_JOB_TRIANGLES, memory_order_release);
        atomic_store_explicit(&p->done_count, 0, memory_order_release);
        pthread_mutex_lock(&p->mtx);
        atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
        pthread_cond_broadcast(&p->wake);
        pthread_mutex_unlock(&p->mtx);
        sg_prepare_triangle_run(c, p);
        while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
            __builtin_ia32_pause();
#endif
        }
        atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
    }
    p->triangle_indices = NULL;
    return p->triangle_scratch;
}

const sg_vert *sg_workers_transform_range(softgl_ctx *c, int first, int count) {
    return sg_transform_range(c, first, count, 0);
}

const sg_vert *sg_workers_transform_compact(softgl_ctx *c, int first, int count) {
    return sg_transform_range(c, first, count, 1);
}

int sg_workers_can_stream(softgl_ctx *c, GLenum mode, GLsizei count) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    /* Nonstreaming primitives flush before accessing the framebuffer. Only
     * indexed streaming draws can cross an epoch without that barrier. */
    if (p && c->depth_test && c->depth_mask && c->depth_func != GL_LESS &&
        c->depth_func != GL_LEQUAL && c->depth_func != GL_EQUAL) {
        if (++p->depth_epoch == 0) p->depth_epoch = 1;
    }
    return p && p->nworkers && mode == GL_TRIANGLES && count >= 3 &&
        !c->imm_active && c->render_mode == GL_RENDER &&
        c->polygon_mode_front == GL_FILL && c->polygon_mode_back == GL_FILL &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED];
}

/* Keep packing, decode-cache storage and extra sampler scratch off the
 * ordinary full-vertex worker and submission paths. */
#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
int sg_submit_packed_stream(softgl_ctx *c, sg_worker_pool *p, sg_geometry_entry *entry) {
    const int packed_mode = 1;
    sg_packed_raster_vertices layout = {0};
    sg_tex_tri_ctx texture_context;
    size_t packed_bytes = 0;
    if (packed_mode) {
        if (p->prepared_transformed < 0) {
            return 0;
        }
        sg_tex_tri_prepare(c, &texture_context);
        unsigned uv_mask = 0;
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            if (texture_context.unit[u].active_slot >= 0) uv_mask |= 1u << u;
        }
        int transformed_count = p->prepared_transformed;
        sg_packed_vertex_layout(&layout, uv_mask, transformed_count);
        size_t count = (size_t)transformed_count + (size_t)p->vpool_count;
        size_t stride = (size_t)layout.stride * sizeof(sg_vec4);
        if (count > SG_STREAM_BYTES / stride) {
            return 0;
        }
        packed_bytes = count * stride;
    }
    if (!p->async_raster) {
        p->async_raster = sg_aligned_alloc(sizeof(sg_async_raster), 16);
        if (!p->async_raster) { return 0; }
        memset(p->async_raster, 0, sizeof(sg_async_raster));
        for (int i = 0; i < p->nbins; i++) {
            p->async_raster->bins[i].ix0 = p->bins[i].ix0;
            p->async_raster->bins[i].ix1 = p->bins[i].ix1;
        }
    }
    /* Finish the previous raster job after preparing this draw, preserving
     * GL draw order while overlapping geometry with previous fragment work. */
    sg_finish_stream(p);
    sg_async_raster *job = p->async_raster;
    if (packed_mode) {
        /* Idle full-vertex arrays do not count toward a second storage budget. */
        sg_aligned_free(job->transformed); job->transformed = NULL; job->transformed_cap = 0;
        sg_aligned_free(job->vpool); job->vpool = NULL; job->vpool_cap = 0;
        free(job->inside_frustum); job->inside_frustum = NULL;
        if (job->packed.capacity < packed_bytes) {
            size_t capacity = 16384;
            while (capacity < packed_bytes) capacity *= 2;
            if (capacity > SG_STREAM_BYTES) capacity = SG_STREAM_BYTES;
            sg_vec4 *data = sg_aligned_alloc(capacity, 64);
            if (!data) { return 0; }
            sg_aligned_free(job->packed.data);
            job->packed.data = data; job->packed.capacity = capacity;
        }
        layout.data = job->packed.data; layout.capacity = job->packed.capacity;
        job->packed = layout;
        if (layout.transformed_count)
            sg_packed_vertex_write(&job->packed, 0, p->transformed, layout.transformed_count);
        if (p->vpool_count)
            sg_packed_vertex_write(&job->packed, layout.transformed_count, p->vpool, p->vpool_count);
    } else {
        sg_aligned_free(job->packed.data);
        memset(&job->packed, 0, sizeof(job->packed));
    }
    job->coverage_entry = entry;
    job->coverage_stamp = job->coverage_entry ? job->coverage_entry->stamp : 0;
    job->depth_epoch = 0; /* capture only in the ordered multitexture queue */
    job->state = *c;
    if (packed_mode) job->texture_context = texture_context;
    else sg_tex_tri_prepare(c, &job->texture_context);
    /* Sampler object metadata may move/change on the caller. Image storage
     * remains shared until the mutation/deletion entrypoints drain this job. */
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (job->texture_context.unit[u].tex) {
            job->textures[u] = *job->texture_context.unit[u].tex;
            job->texture_context.unit[u].tex = &job->textures[u];
        }
    }
    /* Old slot arrays are idle now: swap ownership instead of vertex copies. */
    for (int i = 0; i < p->nbins; i++) {
        sg_worker_bin tmp = p->bins[i]; p->bins[i] = job->bins[i]; job->bins[i] = tmp;
    }
    if (!packed_mode && p->prepared_transformed) {
        sg_vert *v = p->transformed; p->transformed = job->transformed; job->transformed = v;
        uint8_t *inside = p->inside_frustum; p->inside_frustum = job->inside_frustum; job->inside_frustum = inside;
        int cap = p->transformed_cap; p->transformed_cap = job->transformed_cap; job->transformed_cap = cap;
    }
    if (!packed_mode && p->vpool_count) {
        sg_vert *v = p->vpool; p->vpool = job->vpool; job->vpool = v;
        int cap = p->vpool_cap; p->vpool_cap = job->vpool_cap; job->vpool_cap = cap;
    }
    p->vpool_count = 0; p->prepared_transformed = 0;
    p->async_pending = 2;
    atomic_store_explicit(&p->sort_safe, sg_pool_sort_safe(c), memory_order_release);
    atomic_store_explicit(&p->next_bin, 0, memory_order_relaxed);
    atomic_store_explicit(&p->job_type, SG_JOB_PACKED_RASTER, memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
    return 1;
}

void sg_workers_submit_stream(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    sg_geometry_entry *entry = p->prepared_coverage_entry;
    p->prepared_coverage_entry = NULL;
    int total = 0;
    for (int i = 0; i < p->nbins; i++) total += p->bins[i].count;
    if (!total) return;
    size_t geometry_vertices = (p->prepared_transformed ? (size_t)p->transformed_cap : 0) +
        (p->vpool_count ? (size_t)p->vpool_cap : 0);
    if (geometry_vertices > SG_STREAM_VERTICES) {
        if (!sg_submit_packed_stream(c, p, entry)) sg_workers_flush(c);
        return;
    }
    if (sg_queue_multitexture(c) && sg_queue_submit(c, p, entry)) return;
    if (!p->async_raster) {
        p->async_raster = sg_aligned_alloc(sizeof(sg_async_raster), 16);
        if (!p->async_raster) { sg_workers_flush(c); return; }
        memset(p->async_raster, 0, sizeof(sg_async_raster));
        for (int i = 0; i < p->nbins; i++) {
            p->async_raster->bins[i].ix0 = p->bins[i].ix0;
            p->async_raster->bins[i].ix1 = p->bins[i].ix1;
        }
    }
    /* Finish the previous raster job after preparing this draw, preserving
     * GL draw order while overlapping geometry with previous fragment work. */
    sg_finish_stream(p);
    sg_async_raster *job = p->async_raster;
    if (job->packed.data) {
        sg_aligned_free(job->packed.data);
        memset(&job->packed, 0, sizeof(job->packed));
    }
    job->coverage_entry = NULL;
    job->state = *c;
    sg_tex_tri_prepare(c, &job->texture_context);
    /* Sampler object metadata may move/change on the caller. Image storage
     * remains shared until the mutation/deletion entrypoints drain this job. */
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (job->texture_context.unit[u].tex) {
            job->textures[u] = *job->texture_context.unit[u].tex;
            job->texture_context.unit[u].tex = &job->textures[u];
        }
    }
    /* Old slot arrays are idle now: swap ownership instead of vertex copies. */
    for (int i = 0; i < p->nbins; i++) {
        sg_worker_bin tmp = p->bins[i]; p->bins[i] = job->bins[i]; job->bins[i] = tmp;
    }
    if (p->prepared_transformed) {
        sg_vert *v = p->transformed; p->transformed = job->transformed; job->transformed = v;
        uint8_t *inside = p->inside_frustum; p->inside_frustum = job->inside_frustum; job->inside_frustum = inside;
        int cap = p->transformed_cap; p->transformed_cap = job->transformed_cap; job->transformed_cap = cap;
    }
    if (p->vpool_count) {
        sg_vert *v = p->vpool; p->vpool = job->vpool; job->vpool = v;
        int cap = p->vpool_cap; p->vpool_cap = job->vpool_cap; job->vpool_cap = cap;
    }
    p->vpool_count = 0; p->prepared_transformed = 0;
    p->async_pending = 1;
    atomic_store_explicit(&p->sort_safe, sg_pool_sort_safe(c), memory_order_release);
    atomic_store_explicit(&p->next_bin, 0, memory_order_relaxed);
    atomic_store_explicit(&p->job_type, SG_JOB_ASYNC_RASTER, memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
}

const uint8_t *sg_workers_inside_frustum(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    return p ? p->inside_frustum : NULL;
}

void sg_workers_flush(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p) return;
    if (++p->depth_epoch == 0) p->depth_epoch = 1;
    p->prepared_coverage_entry = NULL;
    sg_finish_stream(p);

    /* Short-circuit if no pending work — avoids the condvar round-trip on
     * drivers where flush is called defensively from every state-setter. */
    int total = 0;
    for (int t = 0; t < p->nbins; t++) total += p->bins[t].count;
    if (total == 0) return;

    atomic_store_explicit(&p->sort_safe, sg_pool_sort_safe(c), memory_order_release);
    atomic_store_explicit(&p->next_bin, 0, memory_order_relaxed);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);

    /* Claim the same exclusive bins while workers run, including small draws.
     * The browser caller cannot block in Atomics.wait; useful raster work
     * avoids spending the entire small batch polling the completion counter. */
    sg_drain_raster_bins(c, p);

    /* Spin-wait: flush latency is sub-ms with 4 workers, condvar wakeup
     * of the main thread would add ~3µs vs ~50ns for a cached atomic. */
    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    /* Workers are done — pool becomes empty; next flush refills from scratch.
     * Bin counts were already zeroed by workers. */
    GLuint qsid = c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED];
    GLuint qaid = c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED];
    if (qsid || qaid) {
        /* done_count's acquire observes every worker's completed counter.
         * Query state is immutable while workers run; merge on main only. */
        GLuint64 samples = 0;
        for (int t = 0; t < p->nbins; t++) samples += p->bins[t].query_samples;
        sg_query *qs = sg_query_get(c, qsid);
        sg_query *qa = sg_query_get(c, qaid);
        if (qs && qs->active) qs->result += samples;
        if (qa && qa->active && samples) qa->result = 1;
    }
    p->vpool_count = 0;
    p->prepared_transformed = 0;
}
