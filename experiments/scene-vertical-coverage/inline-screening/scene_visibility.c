/* Scene-wide material resolve prototype. Forward geometry/clipping remains the
 * independent producer; only opaque visibility and final shading are deferred. */
#include "types.h"
#include "workers.h"
#include "simd.h"
#include "raster_types.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "raster_store.h"
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
    uint32_t count, first, cursor;
} scene_material;

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
} scene_bin;

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
    const scene_primitive *current_primitive[SG_MAX_BINS];
    uint32_t mesh_vertices;
    int quantized;
    int deferred_meshes;
    atomic_int failed, next_task;
    pthread_mutex_t allocation_mutex;
    int native_wide;
};

void sg_scene_visibility_destroy(void *storage) {
    struct sg_scene_visibility *f = storage;
    if (!f) return;
    for (int i = 0; i < SG_MAX_BINS; i++) { free(f->bins[i].triangles); free(f->bins[i].visible); }
    free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);
    free(f->materials); free(f->tasks);
    scene_geometry_destroy(f->geometry);
    pthread_mutex_destroy(&f->allocation_mutex);
    free(f);
}

static int scene_state_supported(const softgl_ctx *c) {
    return !c->fb.samples && c->fb.w == 640 && c->fb.h == 360 &&
        c->render_mode == GL_RENDER && c->depth_test && c->depth_mask &&
        c->depth_func == GL_LESS && !c->blend && !c->stencil_test &&
        !c->fog_enabled && !c->scissor_enabled && !c->polygon_offset_fill &&
        !c->color_logic_op_enabled && !c->polygon_stipple_enable &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
        c->color_mask[0] && c->color_mask[1] && c->color_mask[2] && c->color_mask[3];
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
    if (f->pixel_capacity < pixels) {
        uint32_t *winner = malloc(pixels*sizeof(uint32_t));
        uint32_t *list = malloc(pixels*sizeof(uint32_t));
        uint16_t *material = malloc(pixels*sizeof(uint16_t));
        float *depth = malloc(pixels*sizeof(float));
        uint8_t *color = malloc(pixels*4);
        if (!winner || !list || !material || !depth || !color) {
            free(winner); free(list); free(material); free(depth); free(color); return 0;
        }
        free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);
        f->winner = winner; f->pixels = list; f->pixel_material = material; f->backup_depth = depth;
        f->backup_color = color; f->pixel_capacity = pixels;
    }
    if (!f->materials) f->materials = calloc(SCENE_MATERIALS, sizeof(scene_material));
    if (!f->tasks) f->tasks = malloc((pixels/256+SCENE_MATERIALS+1)*sizeof(scene_task));
    if (!f->materials || !f->tasks) return 0;
    memset(f->pixel_material, 255, pixels*sizeof(uint16_t));
    memcpy(f->backup_depth, c->fb.depth, pixels*sizeof(float));
    memcpy(f->backup_color, c->fb.color, pixels*4);
    for (int i = 0; i < SG_MAX_BINS; i++) {
        f->bins[i].count = 0; f->bins[i].depth_passes = 0;
    }
    atomic_store_explicit(&f->failed, 0, memory_order_relaxed);
    f->quantized = 0; f->native_wide = 0;
    f->context = c; f->material_count = 0; f->task_count = 0;
    memset(f->current_primitive, 0, sizeof(f->current_primitive));
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
    t->primitive = f->current_primitive[bin];
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

void softgl_scene_quantized_visibility(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) {
        struct sg_scene_visibility *f = c->scene_visibility;
        f->quantized = enabled != GL_FALSE;
    }
}

/* The caller bounds positions to [-1,641] x [-1,361]. At 16 units
 * per pixel even origin/sample edges and inactive tail lanes fit int32. */
#ifdef SOFTGL_SCENE_VERTICAL_AUDIT
static atomic_uint scene_vertical_audit[2];
unsigned softgl_scene_vertical_audit(unsigned index) {
    return index < 2 ? atomic_load_explicit(&scene_vertical_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_VERTICAL_COUNT(i) atomic_fetch_add_explicit(&scene_vertical_audit[i],1,memory_order_relaxed)
#else
#define SCENE_VERTICAL_COUNT(i) ((void)0)
#endif

static int scene_quantized_vertical(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int bin,
    int ix0, int ix1, int iy0, int iy1, int32_t edge[2][3],
    int32_t area, float inverse_area, const int bias[3]) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    SCENE_VERTICAL_COUNT(0);
    sg_i32x4 delta[2], step[2], bias0 = sg_i32x4_splat(bias[0]);
    sg_i32x4 bias1 = sg_i32x4_splat(bias[1]), bias2 = sg_i32x4_splat(bias[2]);
    for (int k = 0; k < 2; k++) {
        int32_t dx = edge[k][2];
        delta[k] = sg_i32x4_set(0,dx,dx*2,dx*3);
        step[k] = sg_i32x4_splat(dx*4);
    }
    sg_i32x4 area4 = sg_i32x4_splat(area);
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);
    uint32_t record = UINT32_MAX;
    for (int x = ix0; x < ix1; x++) {
        int32_t e0 = edge[0][0]+edge[0][1]*x+edge[0][2]*iy0;
        int32_t e1 = edge[1][0]+edge[1][1]*x+edge[1][2]*iy0;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int y = iy0; y < iy1; y += 4) {
            sg_i32x4 a = q0, d = q1;
            sg_i32x4 q2 = _mm_sub_epi32(_mm_sub_epi32(area4,a),d);
            unsigned live = (1u << (iy1-y < 4 ? iy1-y : 4))-1;
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
            if (y+3 < c->fb.h) {
                const float *depth = c->fb.depth+(size_t)y*c->fb.w+x;
                sg_f32x4 old = sg_f32x4_set(depth[0],depth[c->fb.w],depth[c->fb.w*2],depth[c->fb.w*3]);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)(y+l)*c->fb.w+x;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] < c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
            if (!live) continue;
            if (m->alpha_test) {
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
                size_t pixel = (size_t)(y+l)*c->fb.w+x;
                SCENE_VERTICAL_COUNT(1);
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    return 0;
}

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
    if (ix1-ix0 <= 3 && iy1-iy0 >= 4)
        return scene_quantized_vertical(c,v0,v1,v2,bin,ix0,ix1,iy0,iy1,edge,area,inverse_area,bias);
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
            if (m->alpha_test) {
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

int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed, memory_order_relaxed)) return 0;
    if (c->scene_material < 0 || c->scene_material >= SCENE_MATERIALS) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return 0;
    }
    const scene_material *m = &f->materials[c->scene_material];
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[tile_ix0];
    scene_bin *b = &f->bins[bin];
    if (f->quantized && f->current_primitive[bin] &&
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
            if (m->alpha_test) {
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
        int x = (int)(pixels[l] % (unsigned)c->fb.w), y = (int)(pixels[l] / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        bary[0][l] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
        bary[1][l] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;
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
    color[3] = sg_chain_clamp(sg_f32x4_mul(primary[3],tex[2][3]));
    _MM_TRANSPOSE4_PS(color[0],color[1],color[2],color[3]);
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        float rgba[4]; sg_f32x4_store(rgba,color[l]);
        uint32_t packed = sg_store_quantize_rgba(rgba);
        memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));
    }
}

/* Private validation instrumentation is absent from performance binaries. */
#ifdef SOFTGL_SCENE_WIDE_AUDIT
static atomic_uint scene_wide_audit[19];
unsigned softgl_scene_native_wide_audit(unsigned index, int reset) {
    if (index >= 19) return 0;
    return reset ? atomic_exchange_explicit(&scene_wide_audit[index],0,memory_order_relaxed) :
        atomic_load_explicit(&scene_wide_audit[index],memory_order_relaxed);
}
#endif
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
#include <immintrin.h>
#if defined(__clang__)
#pragma clang fp contract(off)
#endif
#if defined(__clang__)
#define SCENE_WIDE __attribute__((target("avx512f,avx512dq,avx512bw,avx512vl")))
#else
#define SCENE_WIDE __attribute__((target("avx512f,avx512dq,avx512bw,avx512vl"),optimize("fp-contract=off")))
#endif
#define SCENE_WIDE_INLINE static inline SCENE_WIDE __attribute__((always_inline))

SCENE_WIDE_INLINE __m512 scene_wide_clamp(__m512 value) {
    __m512 zero = _mm512_setzero_ps(), one = _mm512_set1_ps(1.f);
    value = _mm512_mask_mov_ps(value,_mm512_cmp_ps_mask(value,zero,_CMP_LT_OQ),zero);
    return _mm512_mask_mov_ps(value,_mm512_cmp_ps_mask(value,one,_CMP_GT_OQ),one);
}

SCENE_WIDE_INLINE __m512 scene_wide_wrap(__m512 value, GLenum wrap) {
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE) return scene_wide_clamp(value);
    return _mm512_sub_ps(value,_mm512_floor_ps(value));
}

SCENE_WIDE_INLINE __m512i scene_wide_address(__m512i value, int size, GLenum wrap, int pot_mask) {
    __m512i zero = _mm512_setzero_si512(), limit = _mm512_set1_epi32(size-1);
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE)
        return _mm512_min_epi32(_mm512_max_epi32(value,zero),limit);
    if (pot_mask) return _mm512_and_si512(value,_mm512_set1_epi32(pot_mask));
    __mmask16 low = _mm512_cmp_epi32_mask(value,zero,_MM_CMPINT_LT);
    __mmask16 high = _mm512_cmp_epi32_mask(value,limit,_MM_CMPINT_GT);
    __m512i result = _mm512_mask_sub_epi32(value,high,value,_mm512_set1_epi32(size));
    return _mm512_mask_add_epi32(result,low,value,_mm512_set1_epi32(size));
}

SCENE_WIDE_INLINE void scene_wide_sample_2d(const sg_tex_unit_tri *u, __m512 x,
    __m512 y, __mmask16 live, __m512 out[4]) {
    __m512 fx = _mm512_mul_ps(scene_wide_wrap(x,u->wrap_s),_mm512_set1_ps((float)u->tw));
    __m512 fy = _mm512_mul_ps(scene_wide_wrap(y,u->wrap_t),_mm512_set1_ps((float)u->th));
    int linear = u->filter_mag != GL_NEAREST;
    if (linear) { fx = _mm512_sub_ps(fx,_mm512_set1_ps(.5f)); fy = _mm512_sub_ps(fy,_mm512_set1_ps(.5f)); }
    __m512 bx = _mm512_floor_ps(fx), by = _mm512_floor_ps(fy);
    __m512i xi = _mm512_cvttps_epi32(bx), yi = _mm512_cvttps_epi32(by);
    __m512i x0 = scene_wide_address(xi,u->tw,u->wrap_s,u->tw_mask_pot);
    __m512i y0 = scene_wide_address(yi,u->th,u->wrap_t,u->th_mask_pot);
    __m512i row0 = _mm512_mullo_epi32(y0,_mm512_set1_epi32(u->tw)), taps[4];
    __m512i zero = _mm512_setzero_si512(), mask = _mm512_set1_epi32(255);
    taps[0] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row0,x0),u->data0,4);
    if (!linear) {
        for (int k = 0; k < 4; k++) {
            out[k] = _mm512_mul_ps(_mm512_cvtepi32_ps(_mm512_and_si512(taps[0],mask)),_mm512_set1_ps(1.f/255.f));
            taps[0] = _mm512_srli_epi32(taps[0],8);
        }
        return;
    }
    __m512i one = _mm512_set1_epi32(1);
    __m512i x1 = scene_wide_address(_mm512_add_epi32(xi,one),u->tw,u->wrap_s,u->tw_mask_pot);
    __m512i y1 = scene_wide_address(_mm512_add_epi32(yi,one),u->th,u->wrap_t,u->th_mask_pot);
    __m512i row1 = _mm512_mullo_epi32(y1,_mm512_set1_epi32(u->tw));
    taps[1] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row0,x1),u->data0,4);
    taps[2] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row1,x0),u->data0,4);
    taps[3] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row1,x1),u->data0,4);
    __m512 fu = _mm512_sub_ps(fx,bx), fv = _mm512_sub_ps(fy,by);
    __m512 ifu = _mm512_sub_ps(_mm512_set1_ps(1.f),fu), ifv = _mm512_sub_ps(_mm512_set1_ps(1.f),fv);
    for (int k = 0; k < 4; k++) {
        __m512 channel[4];
        for (int tap = 0; tap < 4; tap++) {
            channel[tap] = _mm512_cvtepi32_ps(_mm512_and_si512(taps[tap],mask));
            taps[tap] = _mm512_srli_epi32(taps[tap],8);
        }
        __m512 top = _mm512_add_ps(_mm512_mul_ps(channel[0],ifu),_mm512_mul_ps(channel[1],fu));
        __m512 bottom = _mm512_add_ps(_mm512_mul_ps(channel[2],ifu),_mm512_mul_ps(channel[3],fu));
        out[k] = _mm512_mul_ps(_mm512_add_ps(_mm512_mul_ps(top,ifv),_mm512_mul_ps(bottom,fv)),_mm512_set1_ps(1.f/255.f));
    }
}

SCENE_WIDE_INLINE __m512 scene_wide_lerp(const scene_triangle *tri[16], int field,
    int channel, __m512 w0, __m512 w1, __m512 w2, __m512 inverse) {
    float values[3][16];
    for (int v = 0; v < 3; v++) for (int lane = 0; lane < 16; lane++) {
        const sg_vec4 *a = field < 0 ? &tri[lane]->color[v] : &tri[lane]->uv[field][v];
        values[v][lane] = channel == 0 ? a->x : channel == 1 ? a->y : channel == 2 ? a->z : a->w;
    }
    return _mm512_mul_ps(_mm512_add_ps(_mm512_add_ps(_mm512_mul_ps(_mm512_loadu_ps(values[0]),w0),
        _mm512_mul_ps(_mm512_loadu_ps(values[1]),w1)),_mm512_mul_ps(_mm512_loadu_ps(values[2]),w2)),inverse);
}

SCENE_WIDE_INLINE void scene_wide_sample_cube(const sg_tex_unit_tri *unit, __m512 x,
    __m512 y, __m512 z, __mmask16 live, __m512 out[4]) {
    float directions[3][16], values[4][16];
    _mm512_storeu_ps(directions[0],x); _mm512_storeu_ps(directions[1],y); _mm512_storeu_ps(directions[2],z);
    for (int first = 0; first < 16; first += 4) {
        sg_f32x4 sampled[4];
        sg_packet_sample_cube_target(unit,sg_f32x4_load(directions[0]+first),sg_f32x4_load(directions[1]+first),
            sg_f32x4_load(directions[2]+first),((unsigned)live >> first)&15,sampled);
        for (int k = 0; k < 4; k++) sg_f32x4_store(values[k]+first,sampled[k]);
    }
    for (int k = 0; k < 4; k++) out[k] = _mm512_loadu_ps(values[k]);
}

static SCENE_WIDE void scene_shade_wide(struct sg_scene_visibility *f, scene_material *m,
    const uint32_t pixels[16], __mmask16 live) {
    softgl_ctx *c = f->context;
    const scene_triangle *tri[16]; float bary[3][16]; int shared_uv = 1;
    for (int lane = 0; lane < 16; lane++) {
        const scene_triangle *t = tri[lane] = scene_triangle_at(f,f->winner[pixels[lane]]);
        shared_uv &= t->primitive != NULL;
        int x = (int)(pixels[lane] % (unsigned)c->fb.w), y = (int)(pixels[lane] / (unsigned)c->fb.w);
        bary[0][lane] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
        bary[1][lane] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;
        bary[2][lane] = 1.f-bary[0][lane]-bary[1][lane];
        for (int v = 0; v < 3; v++) bary[v][lane] *= t->inverse_w[v];
    }
#ifdef SOFTGL_SCENE_WIDE_AUDIT
    atomic_fetch_add_explicit(&scene_wide_audit[0],1,memory_order_relaxed);
    atomic_fetch_add_explicit(&scene_wide_audit[shared_uv ? 1 : 2],1,memory_order_relaxed);
    atomic_fetch_add_explicit(&scene_wide_audit[2+__builtin_popcount((unsigned)live)],1,memory_order_relaxed);
#endif
    __m512 w0 = _mm512_loadu_ps(bary[0]), w1 = _mm512_loadu_ps(bary[1]), w2 = _mm512_loadu_ps(bary[2]);
    __m512 inverse = _mm512_div_ps(_mm512_set1_ps(1.f),_mm512_add_ps(_mm512_add_ps(w0,w1),w2));
    __m512 primary[4], encoded_half[3], tex[4][4], shared_x, shared_y; int have_uv = 0;
    for (int k = 0; k < 4; k++) primary[k] = scene_wide_lerp(tri,-1,k,w0,w1,w2,inverse);
    for (int k = 0; k < 3; k++) encoded_half[k] = scene_wide_lerp(tri,1,k,w0,w1,w2,inverse);
    for (int unit = 0; unit < 4; unit++) {
        if (unit == 1) continue;
        const sg_tex_unit_tri *u = &m->texture.unit[unit];
        if (u->constant_color_valid) {
            for (int k = 0; k < 4; k++) tex[unit][k] = _mm512_set1_ps(u->constant_color[k]);
            continue;
        }
        __m512 x, y;
        if (unit == 2 && have_uv) { x = shared_x; y = shared_y; }
        else {
            x = scene_wide_lerp(tri,unit,0,w0,w1,w2,inverse);
            y = scene_wide_lerp(tri,unit,1,w0,w1,w2,inverse);
            if (unit == 0 && shared_uv) { shared_x = x; shared_y = y; have_uv = 1; }
        }
        if (u->active_slot == SG_TEX_TARGET_CUBE) {
            __m512 z = scene_wide_lerp(tri,unit,2,w0,w1,w2,inverse);
            scene_wide_sample_cube(u,x,y,z,live,tex[unit]);
        } else scene_wide_sample_2d(u,x,y,live,tex[unit]);
    }
    __m512 dot[3], spec[3], half = _mm512_set1_ps(.5f);
    for (int k = 0; k < 3; k++) {
        __m512 normal = _mm512_sub_ps(tex[0][k],half);
        dot[k] = _mm512_mul_ps(normal,_mm512_sub_ps(primary[k],half));
        spec[k] = _mm512_mul_ps(normal,_mm512_sub_ps(encoded_half[k],half));
    }
    __m512 diffuse = scene_wide_clamp(_mm512_mul_ps(_mm512_set1_ps(4.f),_mm512_add_ps(_mm512_add_ps(dot[0],dot[1]),dot[2])));
    __m512 highlight = scene_wide_clamp(_mm512_mul_ps(_mm512_set1_ps(4.f),_mm512_add_ps(_mm512_add_ps(spec[0],spec[1]),spec[2])));
    highlight = _mm512_mul_ps(highlight,highlight);
    if (m->texture.combine_kind == 5) highlight = _mm512_mul_ps(highlight,highlight);
    __m512 color[4];
    for (int k = 0; k < 3; k++) {
        __m512 base = scene_wide_clamp(_mm512_add_ps(diffuse,_mm512_set1_ps(m->ambient[k])));
        base = scene_wide_clamp(_mm512_mul_ps(base,tex[2][k]));
        base = scene_wide_clamp(_mm512_add_ps(base,tex[3][k]));
        __m512 tinted = scene_wide_clamp(_mm512_mul_ps(highlight,_mm512_set1_ps(m->tint[k])));
        color[k] = scene_wide_clamp(_mm512_add_ps(base,_mm512_mul_ps(tinted,_mm512_set1_ps(sg_clampf(m->tint[3],0.f,1.f)))));
    }
    color[3] = scene_wide_clamp(_mm512_mul_ps(primary[3],tex[2][3]));
    __m512i packed = _mm512_setzero_si512();
    for (int k = 0; k < 4; k++) {
        __m512i bytes = _mm512_cvttps_epi32(_mm512_add_ps(_mm512_mul_ps(color[k],_mm512_set1_ps(255.f)),_mm512_set1_ps(.5f)));
        bytes = _mm512_min_epi32(_mm512_max_epi32(bytes,_mm512_setzero_si512()),_mm512_set1_epi32(255));
        packed = _mm512_or_si512(packed,_mm512_sllv_epi32(bytes,_mm512_set1_epi32(k*8)));
    }
    _mm512_mask_i32scatter_epi32(c->fb.color,live,_mm512_loadu_si512(pixels),packed,4);
}
#undef SCENE_WIDE_INLINE
#undef SCENE_WIDE
#endif

int softgl_scene_native_wide(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    int available = 0;
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
    available = __builtin_cpu_supports("avx512f") && __builtin_cpu_supports("avx512dq") &&
        __builtin_cpu_supports("avx512bw") && __builtin_cpu_supports("avx512vl");
#endif
    f->native_wide = enabled && available;
    return f->native_wide;
}

static void scene_resolve(void *data) {
    struct sg_scene_visibility *f = data;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (task >= f->task_count) break;
        scene_task *t = &f->tasks[task];
        scene_material *m = &f->materials[t->material];
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
        if (f->native_wide) {
            for (uint32_t first = t->first; first < t->first+t->count; first += 16) {
                uint32_t pixels[16]; unsigned count = t->first+t->count-first;
                if (count > 16) count = 16;
                for (unsigned l = 0; l < 16; l++) pixels[l] = f->pixels[first+(l < count ? l : 0)];
                scene_shade_wide(f,m,pixels,(__mmask16)((1u << count)-1));
            }
            continue;
        }
#endif
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

int softgl_scene_visibility_end(void) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    sg_workers_flush(c);
    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed))
        scene_geometry_build(f);
    c->scene_visibility = NULL;
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
        memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color,pixels*4);
        return 0;
    }
    if (f->deferred_meshes && !scene_geometry_visible(f)) {
        memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color,pixels*4); return 0;
    }
    uint32_t visible = 0;
    for (size_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
        f->materials[f->pixel_material[p]].count++; visible++;
        if (f->deferred_meshes) {
            uint32_t id = f->winner[p];
            f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;
        }
    }
    if (f->deferred_meshes) {
        scene_geometry_attributes(f);
        if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
            memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
            memcpy(c->fb.color,f->backup_color,pixels*4); return 0;
        }
    }
    uint32_t first = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i]; m->first = m->cursor = first;
        first += m->count;
    }
    for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
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
