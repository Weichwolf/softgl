#include "workers.h"
#include "raster_types.h"
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
void sg_raster_triangle_tile_prepared(softgl_ctx *c,
                             const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                             int ix0, int ix1, const sg_tex_tri_ctx *tctx);

/* Main-thread state: pipeline's per-vertex transform. Workers use the same
 * entrypoint; matrices and lighting state are ctx-read-only during a
 * SG_JOB_VERTEX phase, including the caller's own transform slice. */
int sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out);

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

static void sg_drain_raster_bins(softgl_ctx *c, sg_worker_pool *p) {
    int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);
    const sg_vert *vp = p->vpool;
    sg_tex_tri_ctx tctx;
    int prepared = 0;
    for (;;) {
        int index = atomic_fetch_add_explicit(&p->next_bin, 1, memory_order_relaxed);
        if (index >= p->nbins) break;
        sg_worker_bin *b = &p->bins[index];
        b->query_samples = 0;
        int n = b->count;
        if (!n) continue;
        sg_raster_bin = b;
        if (sort) sg_bin_sort_z(b);
        /* GL state is immutable for the entire job. */
        if (!prepared) { sg_tex_tri_prepare(c, &tctx); prepared = 1; }
        if (sort) {
            const uint32_t *order = b->sort_keys;
            for (int i = 0; i < n; i++) {
                const sg_worker_tri *t = &b->tris[order[i]];
                const sg_vert *src = (t->v[0] & SG_BIN_TRANSFORMED_VERTEX) ? p->transformed : vp;
                sg_raster_triangle_tile_prepared(c,
                    &src[t->v[0] & ~SG_BIN_TRANSFORMED_VERTEX], &src[t->v[1]], &src[t->v[2]],
                    b->ix0, b->ix1, &tctx);
            }
        } else {
            for (int i = 0; i < n; i++) {
                const sg_worker_tri *t = &b->tris[i];
                const sg_vert *src = (t->v[0] & SG_BIN_TRANSFORMED_VERTEX) ? p->transformed : vp;
                sg_raster_triangle_tile_prepared(c,
                    &src[t->v[0] & ~SG_BIN_TRANSFORMED_VERTEX], &src[t->v[1]], &src[t->v[2]],
                    b->ix0, b->ix1, &tctx);
            }
        }
        b->count = 0;
    }
    sg_raster_bin = NULL;
}

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
            for (int i = s; i < e; i++)
                p->inside_frustum[i] = (uint8_t)sg_process_vertex_at(c, i, &p->transformed[i]);
        } else {
            sg_drain_raster_bins(c, p);
        }

        atomic_fetch_add_explicit(&p->done_count, 1, memory_order_acq_rel);
    }
    return NULL;
}

void sg_workers_init(softgl_ctx *c, int nworkers_hint) {
    if (c->workers) return;
    int n = nworkers_hint > 0 ? nworkers_hint : sg_hwthreads();
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
    p->nbins = p->column_bin ? n * 4 : n;
    if (p->column_bin && p->nbins > fbw) p->nbins = fbw;
    for (int t = 0; t < p->nbins; t++) {
        p->bins[t].ix0 = (int)((int64_t)fbw * t / p->nbins);
        p->bins[t].ix1 = (int)((int64_t)fbw * (t + 1) / p->nbins);
        if (p->column_bin)
            memset(p->column_bin + p->bins[t].ix0, t,
                   (size_t)(p->bins[t].ix1 - p->bins[t].ix0));
        p->bins[t].tris      = NULL;
        p->bins[t].sort_keys = NULL;
        p->bins[t].count     = 0;
        p->bins[t].cap       = 0;
    }

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
    free(p->column_bin);
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

const sg_vert *sg_workers_transform_range(softgl_ctx *c, int first, int count) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p || p->nworkers == 0 || count <= 0) return NULL;

    int need = first + count;
    if (p->transformed_cap < need) {
        int cap = p->transformed_cap ? p->transformed_cap : 1024;
        while (cap < need) cap *= 2;
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

    for (int i = first + count - main_count; i < first + count; i++)
        p->inside_frustum[i] = (uint8_t)sg_process_vertex_at(c, i, &p->transformed[i]);

    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    /* Reset default job type so subsequent flushes do the right thing. */
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
    return p->transformed;
}

const uint8_t *sg_workers_inside_frustum(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    return p ? p->inside_frustum : NULL;
}

void sg_workers_flush(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p) return;

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

    /* Large batches give the calling thread useful work while workers run.
     * Claim the same exclusive bins and finish before merging query counts.
     * Small draws keep their existing worker-only dispatch cost. */
    if (total >= 4096) sg_drain_raster_bins(c, p);

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
}
