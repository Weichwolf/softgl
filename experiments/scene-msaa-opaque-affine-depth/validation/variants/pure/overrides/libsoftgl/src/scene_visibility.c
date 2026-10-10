/* Scene-wide material resolve prototype. Forward geometry/clipping remains the
 * independent producer; only opaque visibility and final shading are deferred. */
#include "types.h"
#include "workers.h"
#include "simd.h"
#include "raster_types.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "raster_store.h"
#include "multisample.h"
#include "raster_hz.h"
#include <stdio.h>

#define SCENE_MATERIALS 4096
#define SCENE_TRIANGLE_BYTES (128u * 1024u * 1024u)
#define SCENE_INDEX_BITS 27
#define SCENE_INDEX_MASK ((UINT32_C(1) << SCENE_INDEX_BITS)-1)

#include "geometry_types.inc"

typedef struct {
    scene_mesh mesh;
    sg_tex_tri_ctx texture;
    float ambient[4], tint[4], cutoff;
    int alpha_test;
    int merge_material_pixels;
    uint32_t count, first, cursor;
} scene_material;

static inline int scene_constant_alpha_rejected(const scene_material *m) {
    return m->alpha_test && m->texture.constant_alpha_valid &&
        !(m->texture.constant_alpha > m->cutoff);
}


typedef struct {
    float inverse_w[3];
    sg_vec4 color[3], uv[4][3];
    int64_t edge[2][3]; /* edge at pixel 0,0; one-pixel X/Y deltas */
    float inverse_area;
    uint32_t material;
    const scene_primitive *primitive;
} scene_triangle;

typedef struct {
    scene_triangle *triangles;
    uint32_t count, capacity;
    uint64_t depth_passes;
    uint8_t *visible;
    uint32_t visible_capacity;
    const scene_primitive *current_primitive;
    /* Separate all fields written by adjacent bin owners for cache lines
     * up to 128 bytes, even with ordinary malloc alignment. */
    union {
        uint8_t cache_padding[128];
        scene_order_storage order_storage;
    };
} scene_bin;

_Static_assert(sizeof(scene_bin)-offsetof(scene_bin,cache_padding) >= 128,
    "Bin mutable fields need a full cache-line gap");

typedef struct { uint32_t material, first, count; } scene_task;

struct sg_scene_visibility {
    softgl_ctx *context;
    uint32_t *winner, *pixels;
    uint16_t *pixel_material;
    float *backup_depth;
    uint8_t *backup_color;
    size_t pixel_capacity, triangle_bytes;
    scene_material *materials;
    scene_task *tasks;
    int material_count, task_count;
    scene_bin bins[SG_MAX_BINS];
    scene_geometry *geometry;
    uint32_t mesh_vertices;
    int quantized;
    int deferred_meshes;
    int merge_material_pixels;
    uint8_t *sample_point, *shade_mask;
    uint32_t *group_counts;
    atomic_int failed, next_task;
    pthread_mutex_t allocation_mutex;
    int affine_depth;
};

static void scene_order_storage_destroy(struct sg_scene_visibility *f);

void sg_scene_visibility_destroy(void *storage) {
    struct sg_scene_visibility *f = storage;
    if (!f) return;
    for (int i = 0; i < SG_MAX_BINS; i++) { free(f->bins[i].triangles); free(f->bins[i].visible); }
    free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);
    free(f->group_counts); free(f->materials); free(f->tasks); free(f->sample_point); free(f->shade_mask);
    scene_geometry_destroy(f->geometry);
    scene_order_storage_destroy(f);
    pthread_mutex_destroy(&f->allocation_mutex);
    free(f);
}

static int scene_state_supported(const softgl_ctx *c) {
    return (!c->fb.samples || (c->multisample && !c->sample_alpha_to_coverage &&
        !c->sample_alpha_to_one && !c->sample_coverage)) && c->fb.w == 640 && c->fb.h == 360 &&
        c->render_mode == GL_RENDER && c->depth_test && c->depth_mask &&
        c->depth_func == GL_LESS && !c->blend && !c->stencil_test &&
        !c->fog_enabled && !c->scissor_enabled && !c->polygon_offset_fill &&
        !c->color_logic_op_enabled && !c->polygon_stipple_enable &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
        c->color_mask[0] && c->color_mask[1] && c->color_mask[2] && c->color_mask[3];
}

/* Optional cost hint chooses a pipeline, never culls geometry. Small MSAA
 * scenes stay on forward rendering before allocating or copying any buffers. */
int softgl_scene_visibility_begin_hint(GLuint triangles) {
    softgl_ctx *c = sg_current();
    if (c && c->fb.samples && (uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h*2u)
        return 0;
    return softgl_scene_visibility_begin();
}

int softgl_scene_visibility_begin(void) {
    softgl_ctx *c = sg_current();
    if (!c || c->scene_visibility || !scene_state_supported(c) ||
        !c->workers || !((sg_worker_pool *)c->workers)->column_bin || !sg_thread_count(c)) return 0;
    sg_workers_flush(c);
    struct sg_scene_visibility *f = c->scene_storage;
    if (!f) {
        f = calloc(1, sizeof(*f));
        if (!f) return 0;
        pthread_mutex_init(&f->allocation_mutex, NULL);
        atomic_init(&f->failed, 0); atomic_init(&f->next_task, 0);
        c->scene_storage = f;
    }
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    size_t units = pixels*(c->fb.samples ? (unsigned)c->fb.samples : 1u);
    if (f->pixel_capacity < units) {
        uint32_t *winner = malloc(units*sizeof(uint32_t));
        uint32_t *list = malloc(units*sizeof(uint32_t));
        uint16_t *material = malloc(units*sizeof(uint16_t));
        size_t backup_units = units+(c->fb.samples ? pixels : 0);
        float *depth = malloc(backup_units*sizeof(float));
        uint8_t *color = malloc(backup_units*4);
        uint8_t *point = malloc(units), *mask = malloc(units);
        if (!winner || !list || !material || !depth || !color || !point || !mask) {
            free(winner); free(list); free(material); free(depth); free(color);
            free(point); free(mask); return 0;
        }
        free(f->sample_point); free(f->shade_mask); f->sample_point = point; f->shade_mask = mask;
        free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);
        f->winner = winner; f->pixels = list; f->pixel_material = material; f->backup_depth = depth;
        f->backup_color = color; f->pixel_capacity = units;
    }
    if (!f->materials) f->materials = calloc(SCENE_MATERIALS, sizeof(scene_material));
    if (!f->tasks) f->tasks = malloc((pixels*4/256+SCENE_MATERIALS+1)*sizeof(scene_task));
    if (c->fb.samples && !f->group_counts)
        f->group_counts = calloc((size_t)SG_MAX_BINS*SCENE_MATERIALS,sizeof(uint32_t));
    if (!f->materials || !f->tasks || (c->fb.samples && !f->group_counts)) return 0;
    memset(f->pixel_material, 255, units*sizeof(uint16_t));
    if (c->fb.samples == 4) memset(f->shade_mask,0,units);
    if (c->fb.samples) {
        memcpy(f->backup_depth,c->fb.sample_depth,units*sizeof(float));
        memcpy(f->backup_color,c->fb.sample_color,units*4);
        memcpy(f->backup_depth+units,c->fb.depth,pixels*sizeof(float));
        memcpy(f->backup_color+units*4,c->fb.color,pixels*4);
    } else {
        memcpy(f->backup_depth, c->fb.depth, pixels*sizeof(float));
        memcpy(f->backup_color, c->fb.color, pixels*4);
    }
    for (int i = 0; i < SG_MAX_BINS; i++) {
        f->bins[i].count = 0; f->bins[i].depth_passes = 0;
        f->bins[i].current_primitive = NULL;
    }
    atomic_store_explicit(&f->failed, 0, memory_order_relaxed);
    f->quantized = 0; f->affine_depth = 0;
    f->merge_material_pixels = 0;
    f->context = c; f->material_count = 0; f->task_count = 0;
    f->deferred_meshes = 0; f->mesh_vertices = 0;
    c->scene_material = -1; c->scene_visibility = f;
    return 1;
}

void softgl_scene_visibility_material(void) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return;
    struct sg_scene_visibility *f = c->scene_visibility;
    if (!scene_state_supported(c) || f->material_count == SCENE_MATERIALS ||
        (c->alpha_test && c->alpha_func != GL_GREATER)) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return;
    }
    scene_material *m = &f->materials[f->material_count];
    sg_tex_tri_prepare(c, &m->texture);
    if (m->texture.combine_kind < 4 ||
        m->texture.unit[0].active_slot != SG_TEX_TARGET_2D ||
        m->texture.unit[2].active_slot != SG_TEX_TARGET_2D ||
        (m->texture.unit[3].active_slot != SG_TEX_TARGET_CUBE &&
         m->texture.unit[3].active_slot != SG_TEX_TARGET_2D)) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return;
    }
    memcpy(m->ambient, c->tex_env[1].env_color, sizeof(m->ambient));
    memcpy(m->tint, c->fused_dot3_tint, sizeof(m->tint));
    m->merge_material_pixels = f->merge_material_pixels;
    m->alpha_test = c->alpha_test; m->cutoff = c->alpha_ref;
    m->count = m->first = m->cursor = 0;
    m->mesh.positions = NULL;
    c->scene_material = f->material_count++;
}

static uint32_t scene_triangle_record(struct sg_scene_visibility *f, int bin,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    int64_t edges[2][3], float inverse_area, uint32_t material) {
    scene_bin *b = &f->bins[bin];
    if (b->count == b->capacity) {
        uint32_t capacity = b->capacity ? b->capacity*2 : 1024;
        size_t delta = (size_t)(capacity-b->capacity)*sizeof(scene_triangle);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle *next = NULL;
        if (delta <= SCENE_TRIANGLE_BYTES-f->triangle_bytes)
            next = realloc(b->triangles, (size_t)capacity*sizeof(scene_triangle));
        if (next) {
            b->triangles = next; b->capacity = capacity; f->triangle_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) {
            atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return UINT32_MAX;
        }
    }
    uint32_t index = b->count++;
    scene_triangle *t = &b->triangles[index];
    t->primitive = f->bins[bin].current_primitive;
    const sg_vert *vertices[3] = {v0,v1,v2};
    for (int i = 0; i < 3; i++) {
        t->inverse_w[i] = vertices[i]->ndc.w;
        if (!t->primitive) {
            t->color[i] = vertices[i]->color;
            for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];
        }
    }
    memcpy(t->edge, edges, sizeof(t->edge)); t->inverse_area = inverse_area;
    t->material = material;
    return ((uint32_t)bin << SCENE_INDEX_BITS) | index;
}

#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_msaa_hz_counts[3];
void sg_scene_msaa_hz_count(unsigned index) {
    atomic_fetch_add_explicit(&scene_msaa_hz_counts[index],1,memory_order_relaxed);
}
unsigned long long softgl_scene_msaa_hz_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_msaa_hz_counts[index],memory_order_relaxed) : 0;
}
static atomic_ullong scene_msaa_audit[8];
unsigned long long softgl_scene_msaa_audit(unsigned index) {
    return index < 8 ? atomic_load_explicit(&scene_msaa_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_MSAA_AUDIT(i,n) atomic_fetch_add_explicit(&scene_msaa_audit[i],(n),memory_order_relaxed)
#else
#define SCENE_MSAA_AUDIT(i,n) ((void)0)
#endif

/* The unused high bit of the existing mask marks a full-pixel winner.
 * Actual depth samples stay materialized for ordinary rasterization/Hi-Z. */
#ifdef SOFTGL_MSAA_UNIFORM_AUDIT
static atomic_ullong scene_uniform_counts[3];
unsigned long long softgl_scene_msaa_uniform_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_uniform_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_UNIFORM_AUDIT(i,n) atomic_fetch_add_explicit(&scene_uniform_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_UNIFORM_AUDIT(i,n) ((void)0)
#endif

static inline void scene_msaa_store_pixel(struct sg_scene_visibility *f,
    softgl_ctx *c, int bin, size_t base, unsigned n, unsigned coverage,
    uint32_t record, uint8_t point, const float *depth) {
    unsigned full = (1u << n)-1u;
    if (coverage == full) {
        if (n == 4) _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));
        else for (unsigned s = 0; s < n; s++) c->fb.sample_depth[base+s] = depth[s];
        f->winner[base] = record;
        f->sample_point[base] = point;
        f->pixel_material[base] = (uint16_t)c->scene_material;
        f->shade_mask[base] = 0x80;
        f->bins[bin].depth_passes += n;
        SCENE_MSAA_AUDIT(2,n);
        SCENE_UNIFORM_AUDIT(0,1);
        return;
    }
    if (f->shade_mask[base] == 0x80) {
        /* Partial overwrite must preserve every previously covered sample. */
        for (unsigned s = 1; s < n; s++) {
            f->winner[base+s] = f->winner[base];
            f->sample_point[base+s] = f->sample_point[base];
            f->pixel_material[base+s] = f->pixel_material[base];
        }
        f->shade_mask[base] = 0;
        SCENE_UNIFORM_AUDIT(1,1);
    }
    for (unsigned s = 0; s < n; s++) if (coverage & (1u << s)) {
        c->fb.sample_depth[base+s] = depth[s];
        f->winner[base+s] = record;
        f->sample_point[base+s] = point;
        f->pixel_material[base+s] = (uint16_t)c->scene_material;
        f->bins[bin].depth_passes++;
        SCENE_MSAA_AUDIT(2,1);
    }
}

/* The ordinary MSAA kernel supplies exact coverage, depth and shading edges.
 * A record is cached for this triangle/stripe, not for each pixel packet. */
void sg_scene_visibility_msaa_packet(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, const sg_pixel_packet *packet,
    float inverse_area, uint32_t *record) {
    struct sg_scene_visibility *f = c->scene_visibility;
    SCENE_MSAA_AUDIT(0,1);
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    if (c->scene_material < 0 || c->scene_material >= f->material_count) {
        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return;
    }
    unsigned live = (1u << packet->count)-1u;
    const scene_material *m = &f->materials[c->scene_material];
    if (scene_constant_alpha_rejected(m)) return;
    if (m->alpha_test && !m->texture.constant_alpha_valid) {
        float e0[4], e1[4];
        for (int l = 0; l < 4; l++) {
            int at = l < packet->count ? l : 0;
            e0[l] = (float)packet->edge0[at]; e1[l] = (float)packet->edge1[at];
        }
        sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(e0),sg_f32x4_splat(inverse_area));
        sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(e1),sg_f32x4_splat(inverse_area));
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
        sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
        sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
        sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
        sg_f32x4 tex[4];
        sg_packet_sample_unit(&texture->unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
        sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
            sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
        live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
        if (!live) return;
    }
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[packet->x[0]];
    if (*record == UINT32_MAX) {
        int32_t x[3] = {sg_fp_screen_from_float(v0->ndc.x),sg_fp_screen_from_float(v1->ndc.x),sg_fp_screen_from_float(v2->ndc.x)};
        int32_t y[3] = {sg_fp_screen_from_float(v0->ndc.y),sg_fp_screen_from_float(v1->ndc.y),sg_fp_screen_from_float(v2->ndc.y)};
        int64_t edge[2][3];
        for (int k = 0; k < 2; k++) {
            int a = (k+1)%3, b = (k+2)%3;
            edge[k][0] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            edge[k][1] = -(int64_t)(y[b]-y[a])*256;
            edge[k][2] = (int64_t)(x[b]-x[a])*256;
        }
        *record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
        if (*record == UINT32_MAX) return;
        SCENE_MSAA_AUDIT(1,1);
    }
    unsigned full = (1u << c->fb.samples)-1u;
    for (int l = 0; l < packet->count; l++) if (live & (1u << l)) {
        size_t base = ((size_t)packet->y[l]*c->fb.w+packet->x[l])*c->fb.samples;
        unsigned coverage = packet->coverage[l];
        uint8_t point = coverage == full ? 4 : (uint8_t)__builtin_ctz(coverage);
        SCENE_MSAA_AUDIT(3,point == 4);
        if (c->fb.samples == 4) {
            scene_msaa_store_pixel(f,c,bin,base,4,coverage,*record,point,packet->depths[l]);
        } else {
            for (int s = 0; s < c->fb.samples; s++) if (coverage & (1u << s)) {
                c->fb.sample_depth[base+s] = packet->depths[l][s];
                f->winner[base+s] = *record; f->sample_point[base+s] = point;
                f->pixel_material[base+s] = (uint16_t)c->scene_material;
                f->bins[bin].depth_passes++;
                SCENE_MSAA_AUDIT(2,1);
            }
        }
        /* Alpha was already accepted and every covered sample has been
         * committed. Updating a bound earlier could discard visible holes. */
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],coverage,packet->depths[l]);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(0);
#endif
    }
}

void softgl_scene_quantized_visibility(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) {
        struct sg_scene_visibility *f = c->scene_visibility;
        f->quantized = enabled != GL_FALSE && !c->fb.samples;
    }
}

void softgl_scene_affine_depth(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) c->scene_visibility->affine_depth = enabled != GL_FALSE;
}

/* The caller bounds positions to [-1,641] x [-1,361]. At 16 units
 * per pixel even origin/sample edges and inactive tail lanes fit int32. */
static int scene_quantized_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    int32_t x0 = (int32_t)(v0->ndc.x*16.f), y0 = (int32_t)(v0->ndc.y*16.f);
    int32_t x1 = (int32_t)(v1->ndc.x*16.f), y1 = (int32_t)(v1->ndc.y*16.f);
    int32_t x2 = (int32_t)(v2->ndc.x*16.f), y2 = (int32_t)(v2->ndc.y*16.f);
    int32_t area = (x1-x0)*(y2-y0)-(y1-y0)*(x2-x0);
    if (area <= 0) return 1;
    int32_t minx = x0 < x1 ? x0 : x1; if (x2 < minx) minx = x2;
    int32_t maxx = x0 > x1 ? x0 : x1; if (x2 > maxx) maxx = x2;
    int32_t miny = y0 < y1 ? y0 : y1; if (y2 < miny) miny = y2;
    int32_t maxy = y0 > y1 ? y0 : y1; if (y2 > maxy) maxy = y2;
    int ix0 = minx >> 4, ix1 = (maxx >> 4)+1, iy0 = miny >> 4, iy1 = (maxy >> 4)+1;
    if (ix0 < tile_ix0) ix0 = tile_ix0; if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (iy0 < 0) iy0 = 0; if (iy1 > c->fb.h) iy1 = c->fb.h;
    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    int bias[3] = {((y2-y1)<0 || ((y2-y1)==0 && (x2-x1)<0)) ? 0 : -1,
                   ((y0-y2)<0 || ((y0-y2)==0 && (x0-x2)<0)) ? 0 : -1,
                   ((y1-y0)<0 || ((y1-y0)==0 && (x1-x0)<0)) ? 0 : -1};
    int32_t edge[2][3] = {
        {(x2-x1)*(8-y1)-(y2-y1)*(8-x1),-(y2-y1)*16,(x2-x1)*16},
        {(x0-x2)*(8-y2)-(y0-y2)*(8-x2),-(y0-y2)*16,(x0-x2)*16}};
    float inverse_area = 1.f/(float)area;
    sg_i32x4 delta[2], step[2], bias0 = sg_i32x4_splat(bias[0]);
    sg_i32x4 bias1 = sg_i32x4_splat(bias[1]), bias2 = sg_i32x4_splat(bias[2]);
    for (int k = 0; k < 2; k++) {
        int32_t dx = edge[k][1];
        delta[k] = sg_i32x4_set(0,dx,dx*2,dx*3);
        step[k] = sg_i32x4_splat(dx*4);
    }
    sg_i32x4 area4 = sg_i32x4_splat(area);
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);
    uint32_t record = UINT32_MAX;
    for (int y = iy0; y < iy1; y++) {
        int32_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int32_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int x = ix0; x < ix1; x += 4) {
            sg_i32x4 a = q0, d = q1;
            sg_i32x4 q2 = _mm_sub_epi32(_mm_sub_epi32(area4,a),d);
            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            sg_i32x4 coverage = _mm_or_si128(_mm_or_si128(sg_i32x4_add(a,bias0),
                sg_i32x4_add(d,bias1)),sg_i32x4_add(q2,bias2));
            live &= sg_i32x4_mask_nonneg(coverage);
            q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]);
            if (!live) continue;
            sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(a),inverse4);
            sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(d),inverse4);
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),
                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));
            float depths[4]; sg_f32x4_store(depths,z);
            if (x+3 < tile_ix1) {
                sg_f32x4 old = sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)y*c->fb.w+x+l;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] < c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
            if (!live) continue;
            if (m->alpha_test && !m->texture.constant_alpha_valid) {
                sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
                sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
                sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
                sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
                sg_f32x4 tex[4];
                sg_packet_sample_unit(&m->texture.unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
                sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
                    sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
                live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
                if (!live) continue;
            }
            if (record == UINT32_MAX) {
                int64_t stored[2][3];
                for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) stored[k][j] = edge[k][j];
                record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    return 0;
}

static inline __attribute__((always_inline)) void scene_small_msaa_capture(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, const sg_pixel_packet *packet,
    float inverse_area, uint32_t *record) {
    struct sg_scene_visibility *f = c->scene_visibility;
    SCENE_MSAA_AUDIT(0,1);
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    if (c->scene_material < 0 || c->scene_material >= f->material_count) {
        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return;
    }
    unsigned live = (1u << packet->count)-1u;
    const scene_material *m = &f->materials[c->scene_material];
    if (scene_constant_alpha_rejected(m)) return;
    if (m->alpha_test && !m->texture.constant_alpha_valid) {
        float e0[4], e1[4];
        for (int l = 0; l < 4; l++) {
            int at = l < packet->count ? l : 0;
            e0[l] = (float)packet->edge0[at]; e1[l] = (float)packet->edge1[at];
        }
        sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(e0),sg_f32x4_splat(inverse_area));
        sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(e1),sg_f32x4_splat(inverse_area));
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
        sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
        sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
        sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
        sg_f32x4 tex[4];
        sg_packet_sample_unit(&texture->unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
        sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
            sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
        live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
        if (!live) return;
    }
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[packet->x[0]];
    if (*record == UINT32_MAX) {
        int32_t x[3] = {sg_fp_screen_from_float(v0->ndc.x),sg_fp_screen_from_float(v1->ndc.x),sg_fp_screen_from_float(v2->ndc.x)};
        int32_t y[3] = {sg_fp_screen_from_float(v0->ndc.y),sg_fp_screen_from_float(v1->ndc.y),sg_fp_screen_from_float(v2->ndc.y)};
        int64_t edge[2][3];
        for (int k = 0; k < 2; k++) {
            int a = (k+1)%3, b = (k+2)%3;
            edge[k][0] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            edge[k][1] = -(int64_t)(y[b]-y[a])*256;
            edge[k][2] = (int64_t)(x[b]-x[a])*256;
        }
        *record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
        if (*record == UINT32_MAX) return;
        SCENE_MSAA_AUDIT(1,1);
    }
    unsigned full = (1u << 4)-1u;
    for (int l = 0; l < packet->count; l++) if (live & (1u << l)) {
        size_t base = ((size_t)packet->y[l]*c->fb.w+packet->x[l])*4;
        unsigned coverage = packet->coverage[l];
        uint8_t point = coverage == full ? 4 : (uint8_t)__builtin_ctz(coverage);
        SCENE_MSAA_AUDIT(3,point == 4);
        scene_msaa_store_pixel(f,c,bin,base,4,coverage,*record,point,packet->depths[l]);
        /* Alpha was already accepted and every covered sample has been
         * committed. Updating a bound earlier could discard visible holes. */
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],coverage,packet->depths[l]);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(0);
#endif
    }
}

#ifndef SOFTGL_SMALL_MSAA_EXTENT
#define SOFTGL_SMALL_MSAA_EXTENT 8
#endif
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_small_msaa_counts[3];
unsigned long long softgl_scene_small_msaa_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_small_msaa_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_SMALL_AUDIT(i,n) atomic_fetch_add_explicit(&scene_small_msaa_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_SMALL_AUDIT(i,n) ((void)0)
#endif

/* A small original bounding box proves all sample edges fit int32, without
 * the general kernel's per-edge rectangle range analysis. */
static int scene_small_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4) return 0;
    const sg_vert *vertices[3] = {v0,v1,v2};
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = vx[0], maxx = vx[0], miny = vy[0], maxy = vy[0];
    for (int j = 1; j < 3; j++) {
        if (vx[j] < minx) minx = vx[j]; if (vx[j] > maxx) maxx = vx[j];
        if (vy[j] < miny) miny = vy[j]; if (vy[j] > maxy) maxy = vy[j];
    }
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (right-left > SOFTGL_SMALL_MSAA_EXTENT || top-bottom > SOFTGL_SMALL_MSAA_EXTENT) return 0;
    /* EXTENT <= 16 bounds coordinate differences by 4095 and raw sample
     * products/sums by 2*4095*4096, far below signed-32 overflow. */
    _Static_assert(SOFTGL_SMALL_MSAA_EXTENT > 0 && SOFTGL_SMALL_MSAA_EXTENT <= 16,
        "small sample edge range proof");
    int32_t area = (vx[1]-vx[0])*(vy[2]-vy[0])-(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    SCENE_SMALL_AUDIT(0,1);
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3];
    sg_i32x4 coverage_offset[3];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        row[e] = dy[e]*(bottom*256-vy[a])+dx[e]*(left*256-vx[a]);
        bias[e] = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = dx[e]*sx+dy[e]*sy;
        }
        coverage_offset[e] = sg_i32x4_set(offsets[0][e]+bias[e],offsets[1][e]+bias[e],
            offsets[2][e]+bias[e],offsets[3][e]+bias[e]);
    }
    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);
    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);
    sg_i32x4 bias0 = sg_i32x4_splat(bias[0]), bias1 = sg_i32x4_splat(bias[1]);
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int32_t edge[3] = {row[0],row[1],row[2]};
        for (int x = left; x < right; x++) {
            sg_i32x4 e0 = sg_i32x4_add(sg_i32x4_splat(edge[0]),coverage_offset[0]);
            sg_i32x4 e1 = sg_i32x4_add(sg_i32x4_splat(edge[1]),coverage_offset[1]);
            sg_i32x4 e2 = sg_i32x4_add(sg_i32x4_splat(edge[2]),coverage_offset[2]);
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(e0,e1),e2));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e0,bias0)),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e1,bias1)),inverse4);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (coverage) {
                    SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    packet.edge0[l] = edge[0]+(coverage == 15 ? (dx[0]+dy[0])*128 : offsets[first][0]);
                    packet.edge1[l] = edge[1]+(coverage == 15 ? (dx[1]+dy[1])*128 : offsets[first][1]);
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
        }
        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}

/* Keep coverage as floor((raw_edge+top_left_bias)/256). Pixel steps are
 * multiples of 256, so signed-32 recurrences retain the exact predicate.
 * The original low eight bits are constant across the pixel grid. */
static int scene_small_msaa4_affine(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    if (!f->deferred_meshes || f->materials[c->scene_material].alpha_test ||
        !(v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
          v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
          v2->ndc.z >= 0.f && v2->ndc.z <= 1.f))
        return scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,texture);
    const sg_vert *vertices[3] = {v0,v1,v2};
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = vx[0], maxx = vx[0], miny = vy[0], maxy = vy[0];
    for (int j = 1; j < 3; j++) {
        if (vx[j] < minx) minx = vx[j]; if (vx[j] > maxx) maxx = vx[j];
        if (vy[j] < miny) miny = vy[j]; if (vy[j] > maxy) maxy = vy[j];
    }
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (right-left > SOFTGL_SMALL_MSAA_EXTENT || top-bottom > SOFTGL_SMALL_MSAA_EXTENT) return 0;
    /* EXTENT <= 16 bounds coordinate differences by 4095 and raw sample
     * products/sums by 2*4095*4096, far below signed-32 overflow. */
    _Static_assert(SOFTGL_SMALL_MSAA_EXTENT > 0 && SOFTGL_SMALL_MSAA_EXTENT <= 16,
        "small sample edge range proof");
    int32_t area = (vx[1]-vx[0])*(vy[2]-vy[0])-(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    SCENE_SMALL_AUDIT(0,1);
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3];
    sg_i32x4 coverage_offset[3];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        row[e] = dy[e]*(bottom*256-vy[a])+dx[e]*(left*256-vx[a]);
        bias[e] = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = dx[e]*sx+dy[e]*sy;
        }
        coverage_offset[e] = sg_i32x4_set(offsets[0][e]+bias[e],offsets[1][e]+bias[e],
            offsets[2][e]+bias[e],offsets[3][e]+bias[e]);
    }
    float inverse = 1.f/(float)area;
    float coefficient0 = inverse*(v0->ndc.z-v2->ndc.z);
    float coefficient1 = inverse*(v1->ndc.z-v2->ndc.z);
    sg_f32x4 plane0 = sg_f32x4_splat(coefficient0), plane1 = sg_f32x4_splat(coefficient1);
    sg_f32x4 plane_constant = sg_f32x4_splat(v2->ndc.z);
    sg_i32x4 bias0 = sg_i32x4_splat(bias[0]), bias1 = sg_i32x4_splat(bias[1]);
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int32_t edge[3] = {row[0],row[1],row[2]};
        for (int x = left; x < right; x++) {
            sg_i32x4 e0 = sg_i32x4_add(sg_i32x4_splat(edge[0]),coverage_offset[0]);
            sg_i32x4 e1 = sg_i32x4_add(sg_i32x4_splat(edge[1]),coverage_offset[1]);
            sg_i32x4 e2 = sg_i32x4_add(sg_i32x4_splat(edge[2]),coverage_offset[2]);
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(e0,e1),e2));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_i32x4 raw0 = _mm_sub_epi32(e0,bias0), raw1 = _mm_sub_epi32(e1,bias1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw0),plane0),
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw1),plane1)),plane_constant);
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (coverage) {
                    SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    packet.edge0[l] = edge[0]+(coverage == 15 ? (dx[0]+dy[0])*128 : offsets[first][0]);
                    packet.edge1[l] = edge[1]+(coverage == 15 ? (dx[1]+dy[1])*128 : offsets[first][1]);
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
        }
        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}

/* Keep coverage as floor((raw_edge+top_left_bias)/256). Pixel steps are
 * multiples of 256, so signed-32 recurrences retain the exact predicate.
 * The original low eight bits are constant across the pixel grid. */
static inline sg_f32x4 scene_rebased_edge_float(sg_i32x4 coarse,
    sg_i32x4 remainder, int small_edges) {
    if (small_edges)
        return _mm_cvtepi32_ps(_mm_or_si128(_mm_slli_epi32(coarse,8),remainder));
    /* Both integer components are exactly representable as float. One final
     * addition rounds the original signed-64 edge, without double rounding. */
    sg_f32x4 high = _mm_cvtepi32_ps(_mm_srai_epi32(coarse,8));
    sg_i32x4 low = _mm_or_si128(_mm_slli_epi32(_mm_and_si128(coarse,
        sg_i32x4_splat(255)),8),remainder);
    return sg_f32x4_add(sg_f32x4_mul(high,sg_f32x4_splat(65536.f)),_mm_cvtepi32_ps(low));
}

static int scene_rebased_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4 || ((struct sg_scene_visibility *)c->scene_visibility)->materials[c->scene_material].alpha_test) return 0;
    const sg_vert *vertices[3] = {v0,v1,v2};
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = vx[0], maxx = vx[0], miny = vy[0], maxy = vy[0];
    for (int j = 1; j < 3; j++) {
        if (vx[j] < minx) minx = vx[j]; if (vx[j] > maxx) maxx = vx[j];
        if (vy[j] < miny) miny = vy[j]; if (vy[j] > maxy) maxy = vy[j];
    }
    int64_t area = (int64_t)(vx[1]-vx[0])*(vy[2]-vy[0])-(int64_t)(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    for (int e = 0; e < 2; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        int64_t span = 256*((int64_t)abs(vy[b]-vy[a])+abs(vx[b]-vx[a]));
        if (span > INT32_MAX || area > INT32_MAX-span) return 0;
    }
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    SCENE_SMALL_AUDIT(0,1);
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], max_coarse[3];
    int64_t offsets[4][3];
    int remainder[2][4], center_delta[2], center_remainder[2];
    sg_i32x4 rows[3], corrections[2], remainders[2];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        int64_t row = (int64_t)dy[e]*(bottom*256-vy[a])+(int64_t)dx[e]*(left*256-vx[a]);
        int bias = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        int32_t values[4], correct[4];
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = (int64_t)dx[e]*sx+(int64_t)dy[e]*sy;
            int64_t raw = row+offsets[s][e];
            values[s] = (int32_t)((raw+bias) >> 8);
            correct[s] = bias && ((uint64_t)raw & 255u) == 0;
            if (e < 2) remainder[e][s] = (int)((uint64_t)raw & 255u);
        }
        rows[e] = _mm_loadu_si128((const sg_i32x4 *)values);
        max_coarse[e] = values[0];
        for (int s = 1; s < 4; s++) if (values[s] > max_coarse[e]) max_coarse[e] = values[s];
        if (e < 2) {
            corrections[e] = _mm_loadu_si128((const sg_i32x4 *)correct);
            remainders[e] = _mm_loadu_si128((const sg_i32x4 *)remainder[e]);
            int64_t center = row+(int64_t)(dx[e]+dy[e])*128;
            center_delta[e] = (int32_t)(center >> 8)-(values[0]+correct[0]);
            center_remainder[e] = (int)((uint64_t)center & 255u);
        }
    }
    /* Scene admission bounds to a 640x360 viewport. Even a rectangle's edge
     * extrema divided by 256 stay below 2*643*363*256 < INT32_MAX. */
    int use_spans = right-left >= 8 && (right-left)*(top-bottom) >= 64;
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float inverse_step = 1.f/(float)dx[e];
        intersection_x[e] = -(float)max_coarse[e]*inverse_step;
        intersection_step[e] = (float)dy[e]*inverse_step;
    }
    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);
    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int first_x = left, end_x = right;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int32_t step = dx[e], at_first = max_coarse[e];
            if (step > 0) {
                if (at_first+step*(right-left-1) < 0) { end_x = first_x; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? left : intersection >= (float)(right-left) ? right : left+(int)intersection;
                if (candidate > first_x && at_first+step*(candidate-left-1) < 0) first_x = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end_x = first_x; break; }
                if (at_first+step*(right-left-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? left : intersection >= (float)(right-left-2) ? right : left+(int)intersection+2;
                if (candidate < end_x && at_first+step*(candidate-left) < 0) end_x = candidate;
            } else if (at_first < 0) { end_x = first_x; break; }
        }
        sg_i32x4 edge[3];
        for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dx[e]*(first_x-left)));
        for (int x = first_x; x < end_x; x++) {
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(edge[0],edge[1]),edge[2]));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_i32x4 raw0 = sg_i32x4_add(edge[0],corrections[0]);
                sg_i32x4 raw1 = sg_i32x4_add(edge[1],corrections[1]);
                sg_f32x4 b0 = sg_f32x4_mul(scene_rebased_edge_float(raw0,remainders[0],1),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(scene_rebased_edge_float(raw1,remainders[1],1),inverse4);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (coverage) {
                    SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    int32_t point0, point1;
                    if (coverage == 15) {
                        point0 = _mm_cvtsi128_si32(raw0)+center_delta[0];
                        point1 = _mm_cvtsi128_si32(raw1)+center_delta[1];
                        packet.edge0[l] = (int64_t)point0*256+center_remainder[0];
                        packet.edge1[l] = (int64_t)point1*256+center_remainder[1];
                    } else {
                        SG_ALIGN16 int values0[4], values1[4];
                        _mm_store_si128((sg_i32x4 *)values0,raw0); _mm_store_si128((sg_i32x4 *)values1,raw1);
                        packet.edge0[l] = (int64_t)values0[first]*256+remainder[0][first];
                        packet.edge1[l] = (int64_t)values1[first]*256+remainder[1][first];
                    }
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(edge[e],sg_i32x4_splat(dx[e]));
        }
        for (int e = 0; e < 3; e++) {
            rows[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dy[e])); max_coarse[e] += dy[e];
        }
        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}

static int scene_rebased_msaa4_affine(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4 || ((struct sg_scene_visibility *)c->scene_visibility)->materials[c->scene_material].alpha_test) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    if (!f->deferred_meshes || f->materials[c->scene_material].alpha_test ||
        !(v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
          v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
          v2->ndc.z >= 0.f && v2->ndc.z <= 1.f))
        return scene_rebased_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,texture);
    const sg_vert *vertices[3] = {v0,v1,v2};
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = vx[0], maxx = vx[0], miny = vy[0], maxy = vy[0];
    for (int j = 1; j < 3; j++) {
        if (vx[j] < minx) minx = vx[j]; if (vx[j] > maxx) maxx = vx[j];
        if (vy[j] < miny) miny = vy[j]; if (vy[j] > maxy) maxy = vy[j];
    }
    int64_t area = (int64_t)(vx[1]-vx[0])*(vy[2]-vy[0])-(int64_t)(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    for (int e = 0; e < 2; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        int64_t span = 256*((int64_t)abs(vy[b]-vy[a])+abs(vx[b]-vx[a]));
        if (span > INT32_MAX || area > INT32_MAX-span) return 0;
    }
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    SCENE_SMALL_AUDIT(0,1);
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], max_coarse[3];
    int64_t offsets[4][3];
    int remainder[2][4], center_delta[2], center_remainder[2];
    sg_i32x4 rows[3], corrections[2], remainders[2];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        int64_t row = (int64_t)dy[e]*(bottom*256-vy[a])+(int64_t)dx[e]*(left*256-vx[a]);
        int bias = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        int32_t values[4], correct[4];
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = (int64_t)dx[e]*sx+(int64_t)dy[e]*sy;
            int64_t raw = row+offsets[s][e];
            values[s] = (int32_t)((raw+bias) >> 8);
            correct[s] = bias && ((uint64_t)raw & 255u) == 0;
            if (e < 2) remainder[e][s] = (int)((uint64_t)raw & 255u);
        }
        rows[e] = _mm_loadu_si128((const sg_i32x4 *)values);
        max_coarse[e] = values[0];
        for (int s = 1; s < 4; s++) if (values[s] > max_coarse[e]) max_coarse[e] = values[s];
        if (e < 2) {
            corrections[e] = _mm_loadu_si128((const sg_i32x4 *)correct);
            remainders[e] = _mm_loadu_si128((const sg_i32x4 *)remainder[e]);
            int64_t center = row+(int64_t)(dx[e]+dy[e])*128;
            center_delta[e] = (int32_t)(center >> 8)-(values[0]+correct[0]);
            center_remainder[e] = (int)((uint64_t)center & 255u);
        }
    }
    /* Scene admission bounds to a 640x360 viewport. Even a rectangle's edge
     * extrema divided by 256 stay below 2*643*363*256 < INT32_MAX. */
    int use_spans = right-left >= 8 && (right-left)*(top-bottom) >= 64;
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float inverse_step = 1.f/(float)dx[e];
        intersection_x[e] = -(float)max_coarse[e]*inverse_step;
        intersection_step[e] = (float)dy[e]*inverse_step;
    }
    float inverse = 1.f/(float)area;
    float coefficient0 = inverse*(v0->ndc.z-v2->ndc.z);
    float coefficient1 = inverse*(v1->ndc.z-v2->ndc.z);
    sg_f32x4 plane0 = sg_f32x4_splat(256.f*coefficient0);
    sg_f32x4 plane1 = sg_f32x4_splat(256.f*coefficient1);
    sg_f32x4 plane_constant = sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[0]),sg_f32x4_splat(coefficient0)),
        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[1]),sg_f32x4_splat(coefficient1))),
        sg_f32x4_splat(v2->ndc.z));
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int first_x = left, end_x = right;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int32_t step = dx[e], at_first = max_coarse[e];
            if (step > 0) {
                if (at_first+step*(right-left-1) < 0) { end_x = first_x; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? left : intersection >= (float)(right-left) ? right : left+(int)intersection;
                if (candidate > first_x && at_first+step*(candidate-left-1) < 0) first_x = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end_x = first_x; break; }
                if (at_first+step*(right-left-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? left : intersection >= (float)(right-left-2) ? right : left+(int)intersection+2;
                if (candidate < end_x && at_first+step*(candidate-left) < 0) end_x = candidate;
            } else if (at_first < 0) { end_x = first_x; break; }
        }
        sg_i32x4 edge[3];
        for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dx[e]*(first_x-left)));
        for (int x = first_x; x < end_x; x++) {
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(edge[0],edge[1]),edge[2]));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_i32x4 raw0 = sg_i32x4_add(edge[0],corrections[0]);
                sg_i32x4 raw1 = sg_i32x4_add(edge[1],corrections[1]);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw0),plane0),
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw1),plane1)),plane_constant);
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (coverage) {
                    SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    int32_t point0, point1;
                    if (coverage == 15) {
                        point0 = _mm_cvtsi128_si32(raw0)+center_delta[0];
                        point1 = _mm_cvtsi128_si32(raw1)+center_delta[1];
                        packet.edge0[l] = (int64_t)point0*256+center_remainder[0];
                        packet.edge1[l] = (int64_t)point1*256+center_remainder[1];
                    } else {
                        SG_ALIGN16 int values0[4], values1[4];
                        _mm_store_si128((sg_i32x4 *)values0,raw0); _mm_store_si128((sg_i32x4 *)values1,raw1);
                        packet.edge0[l] = (int64_t)values0[first]*256+remainder[0][first];
                        packet.edge1[l] = (int64_t)values1[first]*256+remainder[1][first];
                    }
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(edge[e],sg_i32x4_splat(dx[e]));
        }
        for (int e = 0; e < 3; e++) {
            rows[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dy[e])); max_coarse[e] += dy[e];
        }
        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}

int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed, memory_order_relaxed)) return 0;
    if (c->scene_material < 0 || c->scene_material >= SCENE_MATERIALS) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return 0;
    }
    const scene_material *m = &f->materials[c->scene_material];
    if (scene_constant_alpha_rejected(m)) return 0;
    if (c->fb.samples == 4 && (f->affine_depth ? scene_small_msaa4_affine(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)
        : scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture))) return 0;
    if (c->fb.samples == 4 && (f->affine_depth ? scene_rebased_msaa4_affine(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)
        : scene_rebased_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture))) return 0;
    if (c->fb.samples)
        return sg_raster_triangle_tile_prepared(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture);
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[tile_ix0];
    scene_bin *b = &f->bins[bin];
    if (f->quantized && f->bins[bin].current_primitive &&
        v0->ndc.x >= -1.f && v0->ndc.x <= 641.f && v0->ndc.y >= -1.f && v0->ndc.y <= 361.f &&
        v1->ndc.x >= -1.f && v1->ndc.x <= 641.f && v1->ndc.y >= -1.f && v1->ndc.y <= 361.f &&
        v2->ndc.x >= -1.f && v2->ndc.x <= 641.f && v2->ndc.y >= -1.f && v2->ndc.y <= 361.f)
        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);
    int32_t x0 = sg_fp_screen_from_float(v0->ndc.x), y0 = sg_fp_screen_from_float(v0->ndc.y);
    int32_t x1 = sg_fp_screen_from_float(v1->ndc.x), y1 = sg_fp_screen_from_float(v1->ndc.y);
    int32_t x2 = sg_fp_screen_from_float(v2->ndc.x), y2 = sg_fp_screen_from_float(v2->ndc.y);
    int64_t area = (int64_t)(x1-x0)*(y2-y0)-(int64_t)(y1-y0)*(x2-x0);
    if (area <= 0) return 1;
    int32_t minx = x0 < x1 ? x0 : x1; if (x2 < minx) minx = x2;
    int32_t maxx = x0 > x1 ? x0 : x1; if (x2 > maxx) maxx = x2;
    int32_t miny = y0 < y1 ? y0 : y1; if (y2 < miny) miny = y2;
    int32_t maxy = y0 > y1 ? y0 : y1; if (y2 > maxy) maxy = y2;
    int ix0 = minx >> 8, ix1 = (maxx >> 8)+1, iy0 = miny >> 8, iy1 = (maxy >> 8)+1;
    if (ix0 < tile_ix0) ix0 = tile_ix0; if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (iy0 < 0) iy0 = 0; if (iy1 > c->fb.h) iy1 = c->fb.h;
    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    int bias[3] = {((y2-y1)<0 || ((y2-y1)==0 && (x2-x1)<0)) ? 0 : -1,
                   ((y0-y2)<0 || ((y0-y2)==0 && (x0-x2)<0)) ? 0 : -1,
                   ((y1-y0)<0 || ((y1-y0)==0 && (x1-x0)<0)) ? 0 : -1};
    int64_t edge[2][3] = {
        {(int64_t)(x2-x1)*(128-y1)-(int64_t)(y2-y1)*(128-x1),
         -(int64_t)(y2-y1)*256, (int64_t)(x2-x1)*256},
        {(int64_t)(x0-x2)*(128-y2)-(int64_t)(y0-y2)*(128-x2),
         -(int64_t)(y0-y2)*256, (int64_t)(x0-x2)*256}};
    float inverse_area = 1.f/(float)area;
    /* All edge steps are multiples of 256. Floor-dividing a biased edge by
     * 256 preserves its sign exactly and permits four int32 lane tests.
     * The coordinate gate bounds every viewport sample edge below INT32_MAX;
     * legacy batches using larger viewports retain the original int64 path. */
    int coverage32 = minx >= -262144 && maxx <= 262144 &&
        miny >= -262144 && maxy <= 262144;
    sg_i32x4 coverage_delta[3];
    if (coverage32) {
        int32_t sx[3] = {-(y2-y1),-(y0-y2),-(y1-y0)};
        for (int k = 0; k < 3; k++)
            coverage_delta[k] = sg_i32x4_set(0,sx[k],sx[k]*2,sx[k]*3);
    }
    uint32_t record = UINT32_MAX;
    int64_t dx[3] = {edge[0][1], edge[1][1], -edge[0][1]-edge[1][1]};
    int64_t lo[3], hi[3];
    for (int k = 0; k < 3; k++) {
        lo[k] = dx[k] < 0 ? dx[k]*3 : 0;
        hi[k] = dx[k] > 0 ? dx[k]*3 : 0;
    }
    sg_i32x4 step[3];
    if (coverage32) for (int k = 0; k < 3; k++)
        step[k] = sg_i32x4_splat((int32_t)(dx[k] >> 8)*4);
    for (int y = iy0; y < iy1; y++) {
        int64_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int64_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0, q1, q2;
        if (coverage32) {
            q0 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e0+bias[0]) >> 8)),coverage_delta[0]);
            q1 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e1+bias[1]) >> 8)),coverage_delta[1]);
            q2 = sg_i32x4_add(sg_i32x4_splat((int32_t)((area-e0-e1+bias[2]) >> 8)),coverage_delta[2]);
        }
        for (int x = ix0; x < ix1; x += 4, e0 += edge[0][1]*4, e1 += edge[1][1]*4) {
            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            if (coverage32) {
                unsigned inside = (unsigned)~_mm_movemask_ps(_mm_castsi128_ps(_mm_or_si128(_mm_or_si128(q0,q1),q2))) & 15u;
                q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]); q2 = sg_i32x4_add(q2,step[2]);
                live &= inside;
            } else {
                int64_t e2 = area-e0-e1;
                if (e0+bias[0]+hi[0] < 0 || e1+bias[1]+hi[1] < 0 || e2+bias[2]+hi[2] < 0) continue;
                if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 || e2+bias[2]+lo[2] < 0) {
                    unsigned inside = 0;
                    for (int l = 0; l < 4; l++) {
                        int64_t a = e0+edge[0][1]*l, d = e1+edge[1][1]*l;
                        if (a+bias[0] >= 0 && d+bias[1] >= 0 && area-a-d+bias[2] >= 0) inside |= 1u << l;
                    }
                    live &= inside;
                }
            }
            if (!live) continue;
            int64_t a[4], d[4];
            for (int l = 0; l < 4; l++) {
                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;
            }
            sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)d[0],(float)d[1],(float)d[2],(float)d[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),
                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));
            float depths[4]; sg_f32x4_store(depths,z);
            if (x+3 < tile_ix1) {
                sg_f32x4 old = sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                /* No vector access crosses this worker's stripe. */
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)y*c->fb.w+x+l;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] < c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
            if (!live) continue;
            if (m->alpha_test && !m->texture.constant_alpha_valid) {
                sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
                sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
                sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
                sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
                sg_f32x4 tex[4];
                sg_packet_sample_unit(&m->texture.unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
                sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
                    sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
                live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
                if (!live) continue;
            }
            if (record == UINT32_MAX) {
                record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    /* Unknown rather than empty: do not cache a depth-rejected primitive as
     * generally invisible when its material shading has been deferred. */
    return 0;
}

static scene_triangle *scene_triangle_at(struct sg_scene_visibility *f, uint32_t id) {
    return &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];
}

static uint32_t scene_packet_record(struct sg_scene_visibility *f, int bin,
    const scene_primitive *primitive, const scene_triangle_packet *packet, unsigned lane,
    int64_t edges[2][3], float inverse_area, uint32_t material) {
    scene_bin *b = &f->bins[bin];
    if (b->count == b->capacity) {
        uint32_t capacity = b->capacity ? b->capacity*2 : 1024;
        size_t delta = (size_t)(capacity-b->capacity)*sizeof(scene_triangle);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle *next = NULL;
        if (delta <= SCENE_TRIANGLE_BYTES-f->triangle_bytes)
            next = realloc(b->triangles, (size_t)capacity*sizeof(scene_triangle));
        if (next) {
            b->triangles = next; b->capacity = capacity; f->triangle_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) {
            atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return UINT32_MAX;
        }
    }
    uint32_t index = b->count++;
    scene_triangle *t = &b->triangles[index];
    t->primitive = primitive;
    for (int i = 0; i < 3; i++) t->inverse_w[i] = packet->zw[i][1][lane];
    memcpy(t->edge, edges, sizeof(t->edge)); t->inverse_area = inverse_area;
    t->material = material;
    return ((uint32_t)bin << SCENE_INDEX_BITS) | index;
}

static int scene_packet_triangle(softgl_ctx *c, const scene_primitive *primitive,
    const scene_triangle_packet *packet, unsigned lane,
    const int32_t x[3][4], const int32_t y[3][4], int32_t area,
    int ix0, int ix1, int iy0, int iy1, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    if (scene_constant_alpha_rejected(m)) return 0;
    int32_t x0 = x[0][lane], x1 = x[1][lane], x2 = x[2][lane];
    int32_t y0 = y[0][lane], y1 = y[1][lane], y2 = y[2][lane];
    int bias[3] = {((y2-y1)<0 || ((y2-y1)==0 && (x2-x1)<0)) ? 0 : -1,
                   ((y0-y2)<0 || ((y0-y2)==0 && (x0-x2)<0)) ? 0 : -1,
                   ((y1-y0)<0 || ((y1-y0)==0 && (x1-x0)<0)) ? 0 : -1};
    int32_t edge[2][3] = {
        {(x2-x1)*(8-y1)-(y2-y1)*(8-x1),-(y2-y1)*16,(x2-x1)*16},
        {(x0-x2)*(8-y2)-(y0-y2)*(8-x2),-(y0-y2)*16,(x0-x2)*16}};
    float inverse_area = 1.f/(float)area;
    sg_i32x4 delta[2], step[2], bias0 = sg_i32x4_splat(bias[0]);
    sg_i32x4 bias1 = sg_i32x4_splat(bias[1]), bias2 = sg_i32x4_splat(bias[2]);
    for (int k = 0; k < 2; k++) {
        int32_t dx = edge[k][1];
        delta[k] = sg_i32x4_set(0,dx,dx*2,dx*3);
        step[k] = sg_i32x4_splat(dx*4);
    }
    sg_i32x4 area4 = sg_i32x4_splat(area);
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);
    uint32_t record = UINT32_MAX;
    for (int y = iy0; y < iy1; y++) {
        int32_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int32_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int x = ix0; x < ix1; x += 4) {
            sg_i32x4 a = q0, d = q1;
            sg_i32x4 q2 = _mm_sub_epi32(_mm_sub_epi32(area4,a),d);
            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            sg_i32x4 coverage = _mm_or_si128(_mm_or_si128(sg_i32x4_add(a,bias0),
                sg_i32x4_add(d,bias1)),sg_i32x4_add(q2,bias2));
            live &= sg_i32x4_mask_nonneg(coverage);
            q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]);
            if (!live) continue;
            sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(a),inverse4);
            sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(d),inverse4);
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(packet->zw[0][0][lane])),
                sg_f32x4_mul(b1,sg_f32x4_splat(packet->zw[1][0][lane]))),sg_f32x4_mul(b2,sg_f32x4_splat(packet->zw[2][0][lane])));
            float depths[4]; sg_f32x4_store(depths,z);
            if (x+3 < ((sg_worker_pool *)c->workers)->bins[bin].ix1) {
                sg_f32x4 old = sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)y*c->fb.w+x+l;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] < c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
            if (!live) continue;
            if (m->alpha_test && !m->texture.constant_alpha_valid) {
                sg_vert vertices[3];
                const scene_mesh *mesh = &m->mesh;
                const scene_clipped_primitive *clipped = primitive->clipped == UINT32_MAX ? NULL :
                    &f->geometry->tasks[primitive->task].clipped[primitive->clipped];
                for (int j = 0; j < 3; j++) {
                    const float *uv = clipped ? clipped->coordinates[j] :
                        (const float *)((const uint8_t *)mesh->coordinates+(size_t)primitive->indices[j]*mesh->stride);
                    vertices[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
                }
                sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(packet->zw[0][1][lane]));
                sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(packet->zw[1][1][lane]));
                sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(packet->zw[2][1][lane]));
                sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
                sg_f32x4 tex[4];
                sg_packet_sample_unit(&m->texture.unit[2],2,vertices,vertices+1,vertices+2,w0,w1,w2,inverse,live,0,tex);
                sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
                    sg_packet_lerp(1.f,1.f,1.f,w0,w1,w2,inverse)));
                live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
                if (!live) continue;
            }
            if (record == UINT32_MAX) {
                int64_t stored[2][3];
                for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) stored[k][j] = edge[k][j];
                record = scene_packet_record(f,bin,primitive,packet,lane,stored,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    return 0;
}

#ifdef SOFTGL_TRIANGLE_PACKET_AUDIT
static atomic_ullong scene_triangle_packet_audit[7];
unsigned long long softgl_scene_triangle_packet_audit(unsigned index) {
    return index < 7 ? atomic_load_explicit(&scene_triangle_packet_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_TRI_PACKET_AUDIT(index,value) atomic_fetch_add_explicit(&scene_triangle_packet_audit[index],value,memory_order_relaxed)
#else
#define SCENE_TRI_PACKET_AUDIT(index,value) ((void)0)
#endif

static void scene_geometry_make_packets(struct sg_scene_visibility *f, scene_geometry_task *task) {
    if (!f->quantized || !task->count || atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    unsigned packets = (task->count+3u)/4u;
    if (packets > task->packet_capacity) {
        unsigned capacity = task->packet_capacity ? task->packet_capacity : 64;
        while (capacity < packets) capacity *= 2;
        size_t delta = (size_t)(capacity-task->packet_capacity)*sizeof(scene_triangle_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->packets = next; task->packet_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }
    }
    const scene_mesh *m = &f->materials[task->material].mesh;
    for (unsigned k = 0; k < task->count; k += 4) {
        scene_triangle_packet *packet = &task->packets[k/4];
        unsigned count = task->count-k; if (count > 4) count = 4;
        __m128 eligible = _mm_castsi128_ps(_mm_set1_epi32(-1));
        for (unsigned vertex = 0; vertex < 3; vertex++) {
            __m128 ndc[4];
            for (unsigned lane = 0; lane < 4; lane++) {
                const scene_primitive *p = &task->primitives[k+(lane < count ? lane : 0)];
                const sg_vec4 *v = p->clipped == UINT32_MAX ?
                    &f->geometry->positions[m->offset+p->indices[vertex]-m->minimum].ndc :
                    &task->clipped[p->clipped].ndc[vertex];
                ndc[lane] = _mm_load_ps(&v->x);
            }
            _MM_TRANSPOSE4_PS(ndc[0],ndc[1],ndc[2],ndc[3]);
            eligible = _mm_and_ps(eligible,_mm_and_ps(
                _mm_and_ps(_mm_cmpge_ps(ndc[0],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[0],_mm_set1_ps(641.f))),
                _mm_and_ps(_mm_cmpge_ps(ndc[1],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[1],_mm_set1_ps(361.f)))));
            __m128i x = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[0],_mm_set1_ps(16.f)));
            __m128i y = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[1],_mm_set1_ps(16.f)));
            __m128i xy = _mm_or_si128(_mm_and_si128(x,_mm_set1_epi32(65535)),_mm_slli_epi32(y,16));
            _mm_store_si128((__m128i *)packet->xy[vertex],xy);
            _mm_store_ps(packet->zw[vertex][0],ndc[2]);
            _mm_store_ps(packet->zw[vertex][1],ndc[3]);
        }
        packet->eligible = (unsigned)_mm_movemask_ps(eligible) & ((1u << count)-1u);
        SCENE_TRI_PACKET_AUDIT(0,count);
        SCENE_TRI_PACKET_AUDIT(1,1);
    }
}

static void scene_packet_fallback(softgl_ctx *c, const scene_primitive *p, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_geometry *g = f->geometry; sg_worker_pool *pool = c->workers;
    const scene_mesh *m = &f->materials[p->material].mesh;
    const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL : &g->tasks[p->task].clipped[p->clipped];
    sg_vert v[3];
    for (int j = 0; j < 3; j++) {
        v[j].ndc = clipped ? clipped->ndc[j] : g->positions[m->offset+p->indices[j]-m->minimum].ndc;
        v[j].color.w = 1.f;
        if (f->materials[p->material].alpha_test) {
            const float *uv = clipped ? clipped->coordinates[j] :
                (const float *)((const uint8_t *)m->coordinates+(size_t)p->indices[j]*m->stride);
            v[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
        }
    }
    f->bins[bin].current_primitive = p; c->scene_material = (int)p->material;
    sg_scene_visibility_triangle(c,v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);
}

static void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,
    unsigned first, unsigned live, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    sg_worker_pool *pool = c->workers;
    SCENE_TRI_PACKET_AUDIT(2,1);
    SCENE_TRI_PACKET_AUDIT(5,live != 15);
    SCENE_TRI_PACKET_AUDIT(6,live == 15);
    if (!f->quantized) {
        for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
            SCENE_TRI_PACKET_AUDIT(4,1);
            scene_packet_fallback(c,&task->primitives[first+lane],bin);
        }
        return;
    }
    const scene_triangle_packet *packet = &task->packets[first/4];
    int32_t x[3][4], y[3][4], areas[4], left[4], right[4], bottom[4], top[4];
    __m128i vx[3], vy[3];
    for (unsigned j = 0; j < 3; j++) {
        __m128i xy = _mm_load_si128((const __m128i *)packet->xy[j]);
        vx[j] = _mm_srai_epi32(_mm_slli_epi32(xy,16),16);
        vy[j] = _mm_srai_epi32(xy,16);
        _mm_storeu_si128((__m128i *)x[j],vx[j]);
        _mm_storeu_si128((__m128i *)y[j],vy[j]);
    }
    __m128i area = _mm_sub_epi32(
        _mm_mullo_epi32(_mm_sub_epi32(vx[1],vx[0]),_mm_sub_epi32(vy[2],vy[0])),
        _mm_mullo_epi32(_mm_sub_epi32(vy[1],vy[0]),_mm_sub_epi32(vx[2],vx[0])));
    __m128i minx = _mm_min_epi32(_mm_min_epi32(vx[0],vx[1]),vx[2]);
    __m128i maxx = _mm_max_epi32(_mm_max_epi32(vx[0],vx[1]),vx[2]);
    __m128i miny = _mm_min_epi32(_mm_min_epi32(vy[0],vy[1]),vy[2]);
    __m128i maxy = _mm_max_epi32(_mm_max_epi32(vy[0],vy[1]),vy[2]);
    __m128i one = _mm_set1_epi32(1);
    _mm_storeu_si128((__m128i *)areas,area);
    _mm_storeu_si128((__m128i *)left,_mm_max_epi32(_mm_srai_epi32(minx,4),_mm_set1_epi32(pool->bins[bin].ix0)));
    _mm_storeu_si128((__m128i *)right,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxx,4),one),_mm_set1_epi32(pool->bins[bin].ix1)));
    _mm_storeu_si128((__m128i *)bottom,_mm_max_epi32(_mm_srai_epi32(miny,4),_mm_setzero_si128()));
    _mm_storeu_si128((__m128i *)top,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxy,4),one),_mm_set1_epi32(c->fb.h)));
    for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
        const scene_primitive *p = &task->primitives[first+lane];
        if (!(packet->eligible & (1u << lane))) {
            SCENE_TRI_PACKET_AUDIT(4,1);
            scene_packet_fallback(c,p,bin); continue;
        }
        SCENE_TRI_PACKET_AUDIT(3,1);
        if (areas[lane] <= 0 || left[lane] >= right[lane] || bottom[lane] >= top[lane]) continue;
        f->bins[bin].current_primitive = p; c->scene_material = (int)p->material;
        scene_packet_triangle(c,p,packet,lane,x,y,areas[lane],left[lane],right[lane],bottom[lane],top[lane],bin);
    }
}

#ifdef SOFTGL_MSAA_BETWEEN_AUDIT
static atomic_ullong scene_between_counts[4];
unsigned long long softgl_scene_msaa_between_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_between_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_BETWEEN_AUDIT(i,n) atomic_fetch_add_explicit(&scene_between_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_BETWEEN_AUDIT(i,n) ((void)0)
#endif

#ifdef SOFTGL_MSAA_PACKET_OCCLUSION_AUDIT
static atomic_ullong scene_occlusion_counts[4];
unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_occlusion_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_OCCLUSION_AUDIT(i,n) atomic_fetch_add_explicit(&scene_occlusion_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_OCCLUSION_AUDIT(i,n) ((void)0)
#endif

static void scene_geometry_occlusion_packets(struct sg_scene_visibility *f,
    scene_geometry_task *task) {
    if (!f->context->fb.samples || !task->count ||
        atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    unsigned packets = (task->count+SCENE_OCCLUSION_PACKET_TRIANGLES-1)/SCENE_OCCLUSION_PACKET_TRIANGLES;
    if (packets > task->occlusion_capacity) {
        unsigned capacity = task->occlusion_capacity ? task->occlusion_capacity : 64;
        while (capacity < packets) capacity *= 2;
        size_t delta = (size_t)(capacity-task->occlusion_capacity)*sizeof(scene_occlusion_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_occlusion_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->occlusion_packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->occlusion_packets = next; task->occlusion_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }
    }
    const scene_mesh *m = &f->materials[task->material].mesh;
    for (unsigned first = 0; first < task->count; first += SCENE_OCCLUSION_PACKET_TRIANGLES) {
        scene_occlusion_packet *packet = &task->occlusion_packets[first/SCENE_OCCLUSION_PACKET_TRIANGLES];
        __m128 minimum = _mm_set1_ps(INFINITY), maximum = _mm_set1_ps(-INFINITY);
        unsigned count = task->count-first;
        if (count > SCENE_OCCLUSION_PACKET_TRIANGLES) count = SCENE_OCCLUSION_PACKET_TRIANGLES;
        for (unsigned lane = 0; lane < count; lane++) {
            const scene_primitive *p = &task->primitives[first+lane];
            for (unsigned vertex = 0; vertex < 3; vertex++) {
                const sg_vec4 *v = p->clipped == UINT32_MAX ?
                    &f->geometry->positions[m->offset+p->indices[vertex]-m->minimum].ndc :
                    &task->clipped[p->clipped].ndc[vertex];
                __m128 ndc = _mm_load_ps(&v->x);
                minimum = _mm_min_ps(minimum,ndc); maximum = _mm_max_ps(maximum,ndc);
            }
        }
        SG_ALIGN16 float lo[4], hi[4];
        _mm_store_ps(lo,minimum); _mm_store_ps(hi,maximum);
        packet->eligible = 0;
        /* Positions are already finite; unsupported/clipped depth ranges
         * and uncertain coordinates retain individual rasterization. */
        if (!(f->context->fb.w <= UINT16_MAX && f->context->fb.h <= UINT16_MAX &&
              lo[0] >= -1.f && hi[0] <= (float)f->context->fb.w+1.f &&
              lo[1] >= -1.f && hi[1] <= (float)f->context->fb.h+1.f &&
              lo[2] >= 0.f && hi[2] <= 1.f)) continue;
        int left = sg_fp_screen_from_float(lo[0]) >> 8;
        int right = (sg_fp_screen_from_float(hi[0]) >> 8)+1;
        int bottom = sg_fp_screen_from_float(lo[1]) >> 8;
        int top = (sg_fp_screen_from_float(hi[1]) >> 8)+1;
        if (left < 0) left = 0; if (right > f->context->fb.w) right = f->context->fb.w;
        if (bottom < 0) bottom = 0; if (top > f->context->fb.h) top = f->context->fb.h;
        if (left >= right || bottom >= top) continue;
        packet->left = (uint16_t)left; packet->right = (uint16_t)right;
        packet->bottom = (uint16_t)bottom; packet->top = (uint16_t)top;
        packet->near = lo[2]; packet->eligible = 1;
        SCENE_OCCLUSION_AUDIT(0,1);
    }
}

static inline int scene_occlusion_packet_hidden(softgl_ctx *c,
    const scene_geometry_task *task, unsigned first, unsigned live, int bin) {
    if (!c->fb.samples) return 0;
    const scene_occlusion_packet *packet = &task->occlusion_packets[first/SCENE_OCCLUSION_PACKET_TRIANGLES];
    if (!packet->eligible) return 0;
    const sg_worker_pool *pool = c->workers;
    const sg_worker_bin *stripe = &pool->bins[bin];
    int left = packet->left > stripe->ix0 ? packet->left : stripe->ix0;
    int right = packet->right < stripe->ix1 ? packet->right : stripe->ix1;
    if (left >= right) return 0;
    SCENE_OCCLUSION_AUDIT(1,1);
    /* A group minimum bounds every covered vertex-depth interpolation.
     * The existing query subtracts its proven 2e-6 margin and requires all
     * actual samples in every intersecting cell to be written. */
    int hidden = sg_hz_occluded(c,left,packet->bottom,right,packet->top,
        packet->near,packet->near,packet->near,0.f);
    if (hidden) {
        SCENE_OCCLUSION_AUDIT(2,1);
        SCENE_OCCLUSION_AUDIT(3,(unsigned)__builtin_popcount(live));
    }
#ifdef SOFTGL_OCCLUSION_CENSUS_ONLY
    return 0;
#else
    return hidden;
#endif
}

#include "geometry.inc"

static sg_f32x4 scene_gather_lerp(const scene_triangle *t[4], int field, int channel,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse) {
    float value[3][4];
    for (int v = 0; v < 3; v++) for (int l = 0; l < 4; l++) {
        sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];
        value[v][l] = channel == 0 ? a.x : channel == 1 ? a.y : channel == 2 ? a.z : a.w;
    }
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(sg_f32x4_load(value[0]),w0),
        sg_f32x4_mul(sg_f32x4_load(value[1]),w1)),sg_f32x4_mul(sg_f32x4_load(value[2]),w2)),inverse);
}

static void scene_shade_packet(struct sg_scene_visibility *f, scene_material *m,
    const uint32_t pixels[4], unsigned live) {
    softgl_ctx *c = f->context;
    const scene_triangle *tri[4];
    float bary[3][4];
    for (int l = 0; l < 4; l++) {
        tri[l] = scene_triangle_at(f,f->winner[pixels[l]]);
        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        int x = (int)(pixel % (unsigned)c->fb.w), y = (int)(pixel / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        int sx = 128, sy = 128;
        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y;
        if (c->fb.samples) {
            e0 += (t->edge[0][1]/256)*(sx-128)+(t->edge[0][2]/256)*(sy-128);
            e1 += (t->edge[1][1]/256)*(sx-128)+(t->edge[1][2]/256)*(sy-128);
        }
        bary[0][l] = (float)e0*t->inverse_area;
        bary[1][l] = (float)e1*t->inverse_area;
        bary[2][l] = 1.f-bary[0][l]-bary[1][l];
        for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];
    }
    sg_f32x4 w0 = sg_f32x4_load(bary[0]), w1 = sg_f32x4_load(bary[1]), w2 = sg_f32x4_load(bary[2]);
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
    sg_f32x4 primary[4], encoded_half[3], tex[4][4];
    for (int k = 0; k < 4; k++) primary[k] = scene_gather_lerp(tri,-1,k,w0,w1,w2,inverse);
    for (int k = 0; k < 3; k++) encoded_half[k] = scene_gather_lerp(tri,1,k,w0,w1,w2,inverse);
    /* Canonical programs must preserve identical UV0/UV2; geometry validation
     * restores the scene if any program violates that contract. */
    int shared_uv = tri[0]->primitive && tri[1]->primitive && tri[2]->primitive && tri[3]->primitive;
    int have_uv = 0;
    sg_f32x4 shared_x, shared_y;
    for (int u = 0; u < 4; u++) {
        if (u == 1) continue;
        const sg_tex_unit_tri *unit = &m->texture.unit[u];
        if (unit->constant_color_valid) {
            for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(unit->constant_color[k]);
            continue;
        }
        sg_f32x4 x, y;
        if (u == 2 && have_uv) {
            x = shared_x; y = shared_y;
        } else {
            x = scene_gather_lerp(tri,u,0,w0,w1,w2,inverse);
            y = scene_gather_lerp(tri,u,1,w0,w1,w2,inverse);
            if (u == 0 && shared_uv) { shared_x = x; shared_y = y; have_uv = 1; }
        }
        if (unit->active_slot == SG_TEX_TARGET_CUBE) {
            sg_f32x4 z = scene_gather_lerp(tri,u,2,w0,w1,w2,inverse);
            sg_packet_sample_cube_target(unit,x,y,z,live,tex[u]);
        } else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);
    }
    sg_f32x4 dot[3], spec[3], half = sg_f32x4_splat(.5f);
    for (int k = 0; k < 3; k++) {
        sg_f32x4 n = sg_f32x4_sub(tex[0][k],half);
        dot[k] = sg_f32x4_mul(n,sg_f32x4_sub(primary[k],half));
        spec[k] = sg_f32x4_mul(n,sg_f32x4_sub(encoded_half[k],half));
    }
    sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),sg_f32x4_add(sg_f32x4_add(dot[0],dot[1]),dot[2])));
    sg_f32x4 s = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),sg_f32x4_add(sg_f32x4_add(spec[0],spec[1]),spec[2])));
    s = sg_f32x4_mul(s,s);
    if (m->texture.combine_kind == 5) s = sg_f32x4_mul(s,s);
    sg_f32x4 color[4];
    for (int k = 0; k < 3; k++) {
        sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d,sg_f32x4_splat(m->ambient[k])));
        diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse,tex[2][k]));
        diffuse = sg_chain_clamp(sg_f32x4_add(diffuse,tex[3][k]));
        sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(s,sg_f32x4_splat(m->tint[k])));
        color[k] = sg_chain_clamp(sg_f32x4_add(diffuse,sg_f32x4_mul(tinted,sg_f32x4_splat(sg_clampf(m->tint[3],0.f,1.f)))));
    }
    color[3] = m->texture.constant_alpha_valid ? sg_f32x4_splat(m->texture.constant_alpha)
        : sg_chain_clamp(sg_f32x4_mul(primary[3],tex[2][3]));
    _MM_TRANSPOSE4_PS(color[0],color[1],color[2],color[3]);
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        float rgba[4]; sg_f32x4_store(rgba,color[l]);
        uint32_t packed = sg_store_quantize_rgba(rgba);
        if (c->fb.samples) {
            size_t base = (size_t)(pixels[l]/(unsigned)c->fb.samples)*c->fb.samples;
            for (int s = 0; s < c->fb.samples; s++) if (f->shade_mask[pixels[l]] & (1u << s))
                { memcpy(c->fb.sample_color+(base+s)*4,&packed,sizeof(packed)); SCENE_MSAA_AUDIT(6,1); }
            SCENE_MSAA_AUDIT(5,1);
        } else memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));
    }
}

/* Retained for callers of the former native-wide opt-in. All targets use
 * SIMD128, so a request for a wider backend is always unsupported. */
int softgl_scene_native_wide(GLboolean enabled) {
    (void)enabled;
    return 0;
}

static void scene_resolve(void *data) {
    struct sg_scene_visibility *f = data;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (task >= f->task_count) break;
        scene_task *t = &f->tasks[task];
        scene_material *m = &f->materials[t->material];
        for (uint32_t first = t->first; first < t->first+t->count; first += 4) {
            uint32_t pixels[4]; unsigned live = 0;
            for (int l = 0; l < 4; l++) {
                uint32_t at = first+(unsigned)l;
                pixels[l] = f->pixels[at < t->first+t->count ? at : first];
                if (at < t->first+t->count) live |= 1u << l;
            }
            scene_shade_packet(f,m,pixels,live);
        }
    }
}

static void scene_restore(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    if (c->fb.samples) {
        SCENE_MSAA_AUDIT(7,1);
        size_t units = pixels*(unsigned)c->fb.samples;
        memcpy(c->fb.sample_depth,f->backup_depth,units*sizeof(float));
        memcpy(c->fb.sample_color,f->backup_color,units*4);
        memcpy(c->fb.depth,f->backup_depth+units,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color+units*4,pixels*4);
        /* Restored depths may be farther away. Invalidate all old summaries;
         * a subsequent ordinary draw must rebuild them from real writes. */
        sg_hz_state *hz = sg_hz_state_from_ctx(c);
        if (hz && hz->tiles)
            memset(hz->tiles,0,(size_t)(c->fb.w/4)*hz->rows*sizeof(sg_hz_tile));
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(2);
#endif
    } else {
        memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color,pixels*4);
    }
}

/* Each worker owns an existing X stripe. Counts/cursors, masks and triangle
 * visibility are disjoint; the joined prefix needs no per-fragment atomics. */
static void scene_msaa_group_bins_ordinary(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = (unsigned)c->fb.samples;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        memset(counts,0,(size_t)f->material_count*sizeof(*counts));
        uint32_t groups = 0;
        for (int y = 0; y < c->fb.h; y++) {
            size_t first = ((size_t)y*c->fb.w+pool->bins[bin].ix0)*n;
            size_t end = ((size_t)y*c->fb.w+pool->bins[bin].ix1)*n;
            memset(f->shade_mask+first,0,end-first);
            for (size_t base = first; base < end; base += n) {
                unsigned seen = 0;
                for (unsigned s = 0; s < n; s++) {
                    size_t at = base+s;
                    if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
                    unsigned mask = 1u << s;
                    for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                        ((f->materials[f->pixel_material[at]].merge_material_pixels && f->deferred_meshes && n == 4 &&
                          f->materials[f->pixel_material[at]].mesh.positions &&
                          !f->materials[f->pixel_material[at]].alpha_test &&
                          f->pixel_material[base+k] == f->pixel_material[at]) ||
                         (f->winner[base+k] == f->winner[at] &&
                          f->sample_point[base+k] == f->sample_point[at]))) mask |= 1u << k;
                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;
                    counts[f->pixel_material[at]]++; groups++;
                    if (f->deferred_meshes) {
                        uint32_t id = f->winner[at];
                        /* A recorded winner belongs to the stripe that wrote it.
                         * Fail and restore rather than race on a violated contract. */
                        if ((id >> SCENE_INDEX_BITS) != (unsigned)bin) {
                            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
                        } else f->bins[bin].visible[id & SCENE_INDEX_MASK] = 1;
                    }
                }
            }
        }
        SCENE_MSAA_AUDIT(4,groups);
        (void)groups; /* Counter is compiled out in the ordinary build. */
    }
}

static void scene_msaa_group_bins_uniform(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = (unsigned)c->fb.samples;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        memset(counts,0,(size_t)f->material_count*sizeof(*counts));
        uint32_t groups = 0;
        for (int y = 0; y < c->fb.h; y++) {
            size_t first = ((size_t)y*c->fb.w+pool->bins[bin].ix0)*n;
            size_t end = ((size_t)y*c->fb.w+pool->bins[bin].ix1)*n;

            for (size_t base = first; base < end; base += n) {
                int uniform = f->shade_mask[base] == 0x80;
                uint32_t zero = 0;
                if (n == 4) memcpy(f->shade_mask+base,&zero,4);
                else if (n == 2) memcpy(f->shade_mask+base,&zero,2);
                else memset(f->shade_mask+base,0,n);
                SCENE_UNIFORM_AUDIT(2,uniform);
                unsigned seen = 0;
                for (unsigned s = 0; s < n; s++) {
                    size_t at = base+s;
                    if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
                    unsigned mask = uniform ? (1u << n)-1u : 1u << s;
                    if (!uniform) for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                        ((f->materials[f->pixel_material[at]].merge_material_pixels && f->deferred_meshes && n == 4 &&
                          f->materials[f->pixel_material[at]].mesh.positions &&
                          !f->materials[f->pixel_material[at]].alpha_test &&
                          f->pixel_material[base+k] == f->pixel_material[at]) ||
                         (f->winner[base+k] == f->winner[at] &&
                          f->sample_point[base+k] == f->sample_point[at]))) mask |= 1u << k;
                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;
                    counts[f->pixel_material[at]]++; groups++;
                    if (f->deferred_meshes) {
                        uint32_t id = f->winner[at];
                        /* A recorded winner belongs to the stripe that wrote it.
                         * Fail and restore rather than race on a violated contract. */
                        if ((id >> SCENE_INDEX_BITS) != (unsigned)bin) {
                            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
                        } else f->bins[bin].visible[id & SCENE_INDEX_MASK] = 1;
                    }
                }
            }
        }
        SCENE_MSAA_AUDIT(4,groups);
        (void)groups; /* Counter is compiled out in the ordinary build. */
    }
}

static void scene_msaa_group_bins(void *data) {
    struct sg_scene_visibility *f = data;
    if (f->context->fb.samples == 4) scene_msaa_group_bins_uniform(data);
    else scene_msaa_group_bins_ordinary(data);
}

static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_msaa_group_bins,f);
    uint32_t groups = 0;
    for (int bin = 0; bin < pool->nbins; bin++) {
        const uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int m = 0; m < f->material_count; m++) {
            f->materials[m].count += counts[m]; groups += counts[m];
        }
    }
    return groups;
}

static void scene_msaa_list_bins(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = (unsigned)c->fb.samples;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int y = 0; y < c->fb.h; y++) {
            uint32_t first = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix0)*n;
            uint32_t end = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix1)*n;
            for (uint32_t at = first; at < end; at++) if (f->shade_mask[at])
                f->pixels[cursor[f->pixel_material[at]]++] = at;
        }
    }
}

static void scene_msaa_list(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    for (int m = 0; m < f->material_count; m++) {
        uint32_t first = f->materials[m].first;
        for (int bin = 0; bin < pool->nbins; bin++) {
            uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS+m;
            uint32_t count = *cursor; *cursor = first; first += count;
        }
    }
    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_msaa_list_bins,f);
}

int softgl_scene_visibility_end(void) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    sg_workers_flush(c);
    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed))
        scene_geometry_build(f);
    c->scene_visibility = NULL; f->bins[SG_MAX_BINS-1].order_storage.mode = 0;
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
        scene_restore(f);
        return 0;
    }
    if (f->deferred_meshes && !scene_geometry_visible(f)) {
        scene_restore(f); return 0;
    }
    uint32_t visible = 0;
    if (c->fb.samples) visible = scene_msaa_groups(f);
    else for (size_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
        f->materials[f->pixel_material[p]].count++; visible++;
        if (f->deferred_meshes) {
            uint32_t id = f->winner[p];
            f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;
        }
    }
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
        scene_restore(f); return 0;
    }
    if (f->deferred_meshes) {
        scene_geometry_attributes(f);
        if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
            scene_restore(f); return 0;
        }
    }
    uint32_t first = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i]; m->first = m->cursor = first;
        first += m->count;
    }
    if (c->fb.samples) scene_msaa_list(f);
    else for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
        scene_material *m = &f->materials[f->pixel_material[p]]; f->pixels[m->cursor++] = p;
    }
    uint32_t packets = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i]; packets += (m->count+3)/4;
        for (uint32_t at = 0; at < m->count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,m->count-at < 256 ? m->count-at : 256};
    }
    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(c,scene_resolve,f);
    if (getenv("SOFTGL_SCENE_STATS")) {
        uint64_t stored = 0, depth = 0;
        for (int i = 0; i < SG_MAX_BINS; i++) { stored += f->bins[i].count; depth += f->bins[i].depth_passes; }
        fprintf(stderr,"SCENE {\"materials\":%d,\"trianglesStored\":%llu,\"triangleBytes\":%zu,\"depthPasses\":%llu,\"visiblePixels\":%u,\"shadePackets\":%u,\"activeShadeLanesPercent\":%.6f}\n",
            f->material_count,(unsigned long long)stored,f->triangle_bytes,(unsigned long long)depth,
            visible,packets,packets ? visible*100.0/(packets*4) : 0.0);
    }
    return 1;
}

void softgl_scene_msaa_material_merge(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->merge_material_pixels =
            enabled != GL_FALSE && c->fb.samples == 4;
}

void softgl_scene_depth_order(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->bins[SG_MAX_BINS-1].order_storage.mode =
            c->fb.samples == 4 && mode <= 2 ? mode : 0;
}

static __attribute__((noinline,cold)) void scene_order_storage_destroy(struct sg_scene_visibility *f) {
    sg_aligned_free(f->bins[SG_MAX_BINS-1].order_storage.data);
}

/* Integrate the opt-in without a second API call/branch in model submission. */
int softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode) {
    int started = softgl_scene_visibility_begin_hint(triangles);
    if (started) softgl_scene_depth_order(mode);
    return started;
}
