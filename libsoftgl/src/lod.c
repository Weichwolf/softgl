#include "lod.h"
#include "lod_bridge.h"
#include "workers.h"
#include <limits.h>
#include <math.h>
#include <time.h>

#define SG_LOD_MIN_INDICES 12288
#define SG_LOD_MAX_ENTRIES 64
#define SG_LOD_MAX_VERTICES 2000000
#define SG_LOD_MAX_ATTRIBUTES 15

typedef struct {
    uintptr_t offset;
    GLuint buffer;
    int stride, size;
    unsigned reserved; /* explicit padding for stable cache-key comparisons */
} lod_attribute;
typedef struct {
    uintptr_t offset;
    GLenum type;
    GLsizei count;
    GLuint element;
    unsigned reserved;
    lod_attribute position;
    lod_attribute attribute[6]; /* normal, color, four texture arrays */
} lod_key;
typedef struct lod_entry {
    struct lod_entry *next;
    lod_key key;
    atomic_int canceled, ready;
    int building, available;
    uint32_t first, limit;
    size_t vertices, attributes;
    uint32_t *source, *selected, *unique;
    float *position, *attribute;
    void *mesh;
} lod_entry;
typedef struct {
    pthread_t thread;
    pthread_mutex_t mutex;
    pthread_cond_t wake;
    int alive, started;
    unsigned entries;
    uint64_t builds;
    lod_entry *head;
} lod_cache;

static int finite_float(float f);

static int entry_canceled(void *ptr) {
    return atomic_load_explicit(&((lod_entry *)ptr)->canceled, memory_order_acquire);
}
static void free_snapshot(lod_entry *e) {
    free(e->source); free(e->position); free(e->attribute);
    e->source = NULL; e->position = e->attribute = NULL;
}
static void free_entry(lod_entry *e) {
    free_snapshot(e);
    sg_clod_destroy(e->mesh);
    free(e->selected); free(e->unique); free(e);
}
static void *build_main(void *ptr) {
    lod_cache *cache = ptr;
    for (;;) {
        pthread_mutex_lock(&cache->mutex);
        lod_entry *e = NULL;
        while (cache->alive) {
            for (e = cache->head; e; e = e->next)
                if (!e->building && !atomic_load(&e->ready) && !entry_canceled(e)) break;
            if (e) break;
            pthread_cond_wait(&cache->wake, &cache->mutex);
        }
        if (!cache->alive) { pthread_mutex_unlock(&cache->mutex); break; }
        e->building = 1;
        pthread_mutex_unlock(&cache->mutex);
        void *mesh = sg_clod_build(e->source, e->key.count, e->position, e->vertices,
                                   e->attribute, e->attributes, entry_canceled, e);
        free_snapshot(e);
        pthread_mutex_lock(&cache->mutex);
        e->mesh = mesh;
        e->building = 0;
        cache->builds++;
        atomic_store_explicit(&e->ready, 1, memory_order_release);
        pthread_mutex_unlock(&cache->mutex);
    }
    return NULL;
}

static lod_cache *get_cache(softgl_ctx *c) {
    if (c->lod_cache) return c->lod_cache;
    lod_cache *cache = calloc(1, sizeof(*cache));
    if (!cache) return NULL;
    if (pthread_mutex_init(&cache->mutex, NULL)) { free(cache); return NULL; }
    if (pthread_cond_init(&cache->wake, NULL)) {
        pthread_mutex_destroy(&cache->mutex); free(cache); return NULL;
    }
    cache->alive = 1;
    /* One preparation worker; the render pool still uses reported cores.
     * Browser builds prestart an extra worker so creation never needs an
     * event-loop round trip during a synchronous GL draw. */
    if (pthread_create(&cache->thread, NULL, build_main, cache)) {
        pthread_cond_destroy(&cache->wake);
        pthread_mutex_destroy(&cache->mutex); free(cache); return NULL;
    }
    cache->started = 1;
    c->lod_cache = cache;
    return cache;
}

void sg_lod_shutdown(softgl_ctx *c) {
    lod_cache *cache = c->lod_cache;
    if (!cache) return;
    pthread_mutex_lock(&cache->mutex);
    cache->alive = 0;
    for (lod_entry *e = cache->head; e; e = e->next) atomic_store(&e->canceled, 1);
    pthread_cond_signal(&cache->wake);
    pthread_mutex_unlock(&cache->mutex);
    if (cache->started) pthread_join(cache->thread, NULL);
    lod_entry *e = cache->head;
    while (e) { lod_entry *next = e->next; free_entry(e); e = next; }
    pthread_cond_destroy(&cache->wake);
    pthread_mutex_destroy(&cache->mutex);
    free(cache); c->lod_cache = NULL;
}

void sg_lod_invalidate(softgl_ctx *c, GLuint buffer) {
    lod_cache *cache = c->lod_cache;
    if (!cache) return;
    pthread_mutex_lock(&cache->mutex);
    for (lod_entry *e = cache->head; e; e = e->next) {
        int affected = e->key.element == buffer || e->key.position.buffer == buffer;
        for (int i = 0; i < 6; i++) affected |= e->key.attribute[i].buffer == buffer;
        if (affected) atomic_store_explicit(&e->canceled, 1, memory_order_release);
    }
    pthread_mutex_unlock(&cache->mutex);
}

void sg_lod_begin_frame(softgl_ctx *c) {
    lod_cache *cache = c->lod_cache;
    if (!cache) return;
    /* Publish between frames so a completed build cannot change geometry
     * between the depth-writing and subsequent additive material passes. */
    for (lod_entry *e = cache->head; e; e = e->next)
        if (!entry_canceled(e) && atomic_load_explicit(&e->ready, memory_order_acquire))
            e->available = e->mesh != NULL;
}

/* Frame boundaries are color clears and framebuffer reads. Remember the last
 * completed draw so a delayed read/next clear does not charge browser idle time.
 * The controller changes the cut only between frames, never between passes. */
static double frame_clock(void) {
    struct timespec now;
    clock_gettime(CLOCK_MONOTONIC, &now);
    return now.tv_sec*1000.0+now.tv_nsec*.000001;
}
void sg_lod_feedback(softgl_ctx *c, float milliseconds) {
    if (!c->performance_mode || !(c->lod_frame_budget > 0.f) ||
        !finite_float(milliseconds) || !(milliseconds > 0.f)) return;
    c->lod_frame_ema = c->lod_frame_ema > 0.f ?
        c->lod_frame_ema*.75f+milliseconds*.25f : milliseconds;
    if (++c->lod_feedback_frames < 3) return;
    c->lod_feedback_frames = 0;
    float ratio = c->lod_frame_ema/c->lod_frame_budget;
    if (ratio > 1.f) {
        float step = sg_clampf(sqrtf(ratio), 1.15f, 2.f);
        c->lod_pixel_error = fminf(SG_LOD_AUTO_MAX_ERROR, c->lod_pixel_error*step);
    } else if (ratio < .85f) {
        c->lod_pixel_error = fmaxf(.125f, c->lod_pixel_error/1.10f);
    }
    c->lod_budget_limited = c->lod_pixel_error >= SG_LOD_AUTO_MAX_ERROR && ratio > 1.f;
}
void sg_lod_finish_frame(softgl_ctx *c) {
    if (!c->lod_frame_open) return;
    c->lod_frame_open = 0;
    if (c->lod_frame_eligible == 1 && c->lod_frame_end > c->lod_frame_start &&
        !softgl_performance_stat(c, SOFTGL_LOD_PENDING_MESHES)) {
        sg_lod_feedback(c, (float)(c->lod_frame_end-c->lod_frame_start));
        if (!c->lod_can_coarsen && c->lod_frame_ema > c->lod_frame_budget) {
            /* At the geometry floor, keep the smallest error that selects
             * this same complete cut; larger errors cannot buy more time. */
            c->lod_pixel_error = sg_clampf(c->lod_effective_error*1.0001f, .125f, SG_LOD_AUTO_MAX_ERROR);
            c->lod_budget_limited = 1;
        }
    }
}
void sg_lod_start_frame(softgl_ctx *c) {
    sg_lod_finish_frame(c);
    sg_lod_begin_frame(c);
    c->lod_frame_eligible = 0; c->lod_effective_error = 0.f; c->lod_can_coarsen = 0;
    c->lod_frame_open = c->performance_mode && c->lod_frame_budget > 0.f;
    if (c->lod_frame_open) {
        c->lod_frame_start = frame_clock();
        c->lod_frame_end = c->lod_frame_start;
    }
}
void sg_lod_draw_finished(softgl_ctx *c) {
    if (c->lod_frame_open) c->lod_frame_end = frame_clock();
}

static lod_attribute static_attribute(softgl_ctx *c, const sg_attrib_ptr *a) {
    lod_attribute out = {0};
    sg_buffer *b = sg_buffer_get(c, a->buffer);
    if (!b || !b->data || b->mapped || b->usage != GL_STATIC_DRAW ||
        a->type != GL_FLOAT || a->size < 1 || a->size > 4 || a->stride < 0) return out;
    out.buffer = a->buffer; out.offset = (uintptr_t)a->ptr;
    out.size = a->size; out.stride = a->stride ? a->stride : a->size*4;
    return out;
}
static int attribute_fits(softgl_ctx *c, const lod_attribute *a, uint32_t last) {
    sg_buffer *b = sg_buffer_get(c, a->buffer);
    return b && a->offset <= b->size && (size_t)a->size*4 <= b->size-a->offset &&
        last <= (b->size-a->offset-(size_t)a->size*4)/(size_t)a->stride;
}
static const float *attribute_data(softgl_ctx *c, const lod_attribute *a, uint32_t index) {
    return (const float *)((const uint8_t *)sg_buffer_get(c, a->buffer)->data+
                           a->offset+(size_t)index*a->stride);
}
static int finite_float(float f) {
    uint32_t bits; memcpy(&bits, &f, sizeof(bits));
    return (bits & UINT32_C(0x7f800000)) != UINT32_C(0x7f800000);
}

static lod_entry *snapshot(softgl_ctx *c, const lod_key *key, const uint8_t *data) {
    lod_entry *e = calloc(1, sizeof(*e));
    if (!e) return NULL;
    e->key = *key;
    atomic_init(&e->ready, 0); atomic_init(&e->canceled, 0);
    e->source = malloc((size_t)key->count*4);
    if (!e->source) { free_entry(e); return NULL; }
    uint32_t first = UINT32_MAX, last = 0;
    for (int i = 0; i < key->count; i++) {
        uint32_t index;
        if (key->type == GL_UNSIGNED_INT) memcpy(&index, data+(size_t)i*4, 4);
        else { uint16_t short_index; memcpy(&short_index, data+(size_t)i*2, 2); index = short_index; }
        e->source[i] = index;
        if (index < first) first = index;
        if (index > last) last = index;
    }
    if (last >= SG_LOD_MAX_VERTICES || !attribute_fits(c, &key->position, last)) {
        free_entry(e); return NULL;
    }
    for (int i = 0; i < 6; i++) if (key->attribute[i].buffer && !attribute_fits(c, &key->attribute[i], last)) {
        free_entry(e); return NULL;
    }
    e->first = first; e->limit = last+1; e->vertices = last-first+1;
    e->attributes = 3; /* normals, or neutral placeholders */
    for (int i = 1; i < 6; i++) e->attributes += key->attribute[i].size;
    if (e->attributes > SG_LOD_MAX_ATTRIBUTES) { free_entry(e); return NULL; }
    e->position = malloc(e->vertices*3*sizeof(float));
    e->attribute = calloc(e->vertices*e->attributes, sizeof(float));
    e->selected = malloc((size_t)key->count*4);
    e->unique = malloc(e->vertices*4);
    if (!e->position || !e->attribute || !e->selected || !e->unique) { free_entry(e); return NULL; }
    for (size_t i = 0; i < e->vertices; i++) {
        uint32_t index = first+(uint32_t)i;
        memcpy(e->position+i*3, attribute_data(c, &key->position, index), 12);
        float *attributes = e->attribute+i*e->attributes;
        if (key->attribute[0].buffer) memcpy(attributes, attribute_data(c, &key->attribute[0], index), 12);
        size_t offset = 3;
        for (int a = 1; a < 6; a++) if (key->attribute[a].buffer) {
            memcpy(attributes+offset, attribute_data(c, &key->attribute[a], index), (size_t)key->attribute[a].size*4);
            offset += key->attribute[a].size;
        }
        for (int j = 0; j < 3; j++) if (!finite_float(e->position[i*3+j])) { free_entry(e); return NULL; }
        for (size_t j = 0; j < e->attributes; j++) if (!finite_float(attributes[j])) { free_entry(e); return NULL; }
    }
    for (int i = 0; i < key->count; i++) e->source[i] -= first;
    return e;
}

sg_lod_draw sg_lod_select(softgl_ctx *c, GLenum mode, GLsizei count,
                         GLenum type, const void *indices) {
    sg_lod_draw out = {0};
    if (!c->performance_mode || mode != GL_TRIANGLES || count < SG_LOD_MIN_INDICES || count%3 ||
        (type != GL_UNSIGNED_INT && type != GL_UNSIGNED_SHORT) ||
        !c->attr_pos.enabled || c->attr_pos.size != 3 || c->render_mode != GL_RENDER ||
        c->polygon_mode_front != GL_FILL || c->polygon_mode_back != GL_FILL ||
        c->shade_model != 0x1D01 /* GL_SMOOTH */ || c->stencil_test || c->color_logic_op_enabled || c->alpha_test ||
        (c->blend && c->blend_dst != GL_ONE) ||
        c->current_query[0] || c->current_query[1]) return out;
    for (int i = 0; i < 6; i++) if (c->clip_plane_enabled[i]) return out;
    /* Omitting a static color/UV discontinuity can change a whole planar
     * surface even with zero geometric error. Unsupported attribute formats
     * retain the original draw instead of losing that metric. */
    const sg_attrib_ptr *attribute[6] = {&c->attr_normal, &c->attr_color,
        &c->attr_tex[0], &c->attr_tex[1], &c->attr_tex[2], &c->attr_tex[3]};
    for (int i = 0; i < 6; i++) if (attribute[i]->enabled) {
        sg_buffer *b = sg_buffer_get(c, attribute[i]->buffer);
        if (b && b->usage == GL_STATIC_DRAW && attribute[i]->type != GL_FLOAT) return out;
    }
    sg_buffer *ebo = sg_buffer_get(c, c->element_buffer_binding);
    size_t offset = (uintptr_t)indices, bytes = (size_t)count*(type == GL_UNSIGNED_INT ? 4 : 2);
    if (!ebo || !ebo->data || ebo->mapped || ebo->usage != GL_STATIC_DRAW ||
        offset > ebo->size || bytes > ebo->size-offset) return out;
    lod_key key = {0};
    key.element = c->element_buffer_binding; key.offset = offset; key.count = count; key.type = type;
    key.position = static_attribute(c, &c->attr_pos);
    if (!key.position.buffer) return out;
    /* Capture explicitly supplied static normals even when fixed-function
     * lighting is disabled; applications may derive DOT3 colors from them. */
    if (c->attr_normal.size == 3) key.attribute[0] = static_attribute(c, &c->attr_normal);
    if (c->attr_color.enabled) key.attribute[1] = static_attribute(c, &c->attr_color);
    for (int i = 0; i < 4; i++) if (c->attr_tex[i].enabled) {
        lod_attribute a = static_attribute(c, &c->attr_tex[i]);
        /* Repeated identical UV pointers in combiners need one metric. */
        int duplicate = 0;
        for (int j = 1; j < i+2; j++) duplicate |= !memcmp(&a, &key.attribute[j], sizeof(a));
        if (!duplicate) key.attribute[i+2] = a;
    }
    lod_cache *cache = get_cache(c);
    if (!cache) return out;
    lod_entry *entry = NULL;
    for (lod_entry *e = cache->head; e; e = e->next)
        if (!entry_canceled(e) && !memcmp(&e->key, &key, sizeof(key))) { entry = e; break; }
    if (!entry) {
        c->lod_frame_eligible = -1; /* cold frame: no feedback */
        pthread_mutex_lock(&cache->mutex);
        lod_entry **link = &cache->head;
        while (*link) {
            lod_entry *e = *link;
            if (entry_canceled(e) && !e->building) {
                *link = e->next; free_entry(e); cache->entries--;
            } else link = &e->next;
        }
        int full = cache->entries >= SG_LOD_MAX_ENTRIES;
        pthread_mutex_unlock(&cache->mutex);
        if (full) return out;
        entry = snapshot(c, &key, (const uint8_t *)ebo->data+offset);
        if (!entry) return out;
        pthread_mutex_lock(&cache->mutex);
        entry->next = cache->head; cache->head = entry; cache->entries++;
        pthread_cond_signal(&cache->wake);
        pthread_mutex_unlock(&cache->mutex);
        return out;
    }
    if (!entry->available) {
        if (!atomic_load_explicit(&entry->ready, memory_order_acquire)) c->lod_frame_eligible = -1;
        return out;
    }
    if (c->lod_frame_eligible >= 0) c->lod_frame_eligible = 1;
    sg_mat4 mvp;
    sg_mat4_mul(&mvp, &c->pr_stack[c->pr_top], &c->mv_stack[c->mv_top]);
    if (c->viewport[2] <= 0 || c->viewport[3] <= 0) return out;
    for (int i = 0; i < 16; i++) if (!finite_float(mvp.m[i])) return out;
    size_t unique;
    float effective_error; int can_coarsen;
    size_t selected = sg_clod_select(entry->mesh, mvp.m, c->viewport[2], c->viewport[3],
        c->lod_pixel_error, entry->first, entry->selected, entry->unique, &unique, &effective_error, &can_coarsen);
    c->lod_effective_error = fmaxf(c->lod_effective_error, effective_error);
    c->lod_can_coarsen |= can_coarsen;
    if (!selected || selected >= (size_t)count) return out;
    out.indices = entry->selected; out.vertices = entry->unique;
    out.count = (int)selected; out.vertex_count = (int)unique; out.vertex_limit = (int)entry->limit;
    return out;
}

int softgl_set_mode(softgl_ctx *c, int mode) {
    if (!c || (mode != SOFTGL_COMPLIANCE && mode != SOFTGL_PERFORMANCE)) return 0;
    sg_workers_flush(c); c->performance_mode = mode;
    c->lod_frame_open = 0; c->lod_frame_ema = 0.f;
    c->lod_feedback_frames = 0; c->lod_budget_limited = 0;
    return 1;
}
int softgl_get_mode(const softgl_ctx *c) { return c ? c->performance_mode : SOFTGL_COMPLIANCE; }
int softgl_set_lod_error(softgl_ctx *c, float pixels) {
    if (!c || !finite_float(pixels) || pixels < .125f || pixels > 128.f) return 0;
    sg_workers_flush(c); c->lod_pixel_error = pixels;
    c->lod_frame_budget = 0.f; c->lod_frame_open = 0;
    c->lod_frame_ema = 0.f; c->lod_budget_limited = 0;
    return 1;
}
int softgl_set_frame_budget(softgl_ctx *c, float milliseconds) {
    if (!c || !finite_float(milliseconds) ||
        (milliseconds != 0.f && (milliseconds < 1.f || milliseconds > 1000.f))) return 0;
    sg_workers_flush(c); c->lod_frame_budget = milliseconds;
    c->lod_frame_open = 0; c->lod_frame_ema = 0.f;
    c->lod_feedback_frames = 0; c->lod_budget_limited = 0;
    if (milliseconds > 0.f) c->lod_pixel_error = fminf(c->lod_pixel_error, SG_LOD_AUTO_MAX_ERROR);
    return 1;
}
float softgl_quality_stat(const softgl_ctx *c, int stat) {
    if (!c) return 0.f;
    switch (stat) {
    case SOFTGL_QUALITY_ERROR: return c->lod_pixel_error;
    case SOFTGL_QUALITY_BUDGET: return c->lod_frame_budget;
    case SOFTGL_QUALITY_FRAME_MS: return c->lod_frame_ema;
    case SOFTGL_QUALITY_BUDGET_LIMITED: return (float)c->lod_budget_limited;
    default: return 0.f;
    }
}
uint64_t softgl_performance_stat(softgl_ctx *c, int stat) {
    if (!c) return 0;
    if (stat == SOFTGL_LOD_INPUT_TRIANGLES) return c->lod_input_triangles;
    if (stat == SOFTGL_LOD_DRAWN_TRIANGLES) return c->lod_drawn_triangles;
    lod_cache *cache = c->lod_cache;
    if (!cache) return 0;
    uint64_t value = 0;
    pthread_mutex_lock(&cache->mutex);
    if (stat == SOFTGL_LOD_CACHE_BUILDS) value = cache->builds;
    else for (lod_entry *e = cache->head; e; e = e->next) if (!entry_canceled(e)) {
        if (stat == SOFTGL_LOD_READY_MESHES) value += e->available;
        if (stat == SOFTGL_LOD_PENDING_MESHES) value += !atomic_load(&e->ready);
    }
    pthread_mutex_unlock(&cache->mutex);
    return value;
}
