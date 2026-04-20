#include "workers.h"
#include <stdlib.h>
#include <string.h>

#if defined(_WIN32)
  #include <windows.h>
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
 * SG_JOB_VERTEX phase because main is spin-waiting. */
void sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out);

int sg_hwthreads(void) {
#if defined(_WIN32)
    SYSTEM_INFO si;
    GetSystemInfo(&si);
    int n = (int)si.dwNumberOfProcessors;
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

/* Screen-space X bounding box (viewport coords already applied at bin time). */
static void sg_tri_xbounds(const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                           int *out_ix0, int *out_ix1) {
    float x0 = v0->ndc.x, x1 = v1->ndc.x, x2 = v2->ndc.x;
    float xmin = x0 < x1 ? x0 : x1; if (x2 < xmin) xmin = x2;
    float xmax = x0 > x1 ? x0 : x1; if (x2 > xmax) xmax = x2;
    int ia = (int)xmin;           /* conservative — pixel-centre sampling */
    int ib = (int)xmax + 1;
    if (ia < 0) ia = 0;
    *out_ix0 = ia;
    *out_ix1 = ib;
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
    sg_tri_xbounds(v0, v1, v2, &tri_ix0, &tri_ix1);

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

    for (int t = 0; t < p->nworkers; t++) {
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

/* 256-bucket front-to-back sort. Builds a (zkey_q<<24 | idx) key array,
 * bucket-scatters the keys (tiny 4B/tri vs 496B), then rasterizes via
 * indirection through keys[i] & 0xFFFFFF. Two memory passes on keys,
 * zero touches to tri payload data. */
static void sg_bin_sort_z(sg_worker_bin *b) {
    int n = b->count;
    if (n < 2) return;
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

static void *sg_worker_main(void *arg) {
    sg_worker *w = (sg_worker*)arg;
    softgl_ctx *c = w->ctx;
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    sg_worker_bin *b = &p->bins[w->tile_idx];
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
            for (int i = s; i < e; i++) {
                sg_process_vertex_at(c, i, &p->transformed[i]);
            }
        } else {
            int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);
            if (sort) sg_bin_sort_z(b);

            /* Drain bin. Count is owned by main between flushes, so this read
             * is a plain load — the wake protocol synchronises before it. */
            int n = b->count;
            const sg_vert *vp = p->vpool;
            if (sort) {
                const uint32_t *order = b->sort_keys;
                for (int i = 0; i < n; i++) {
                    const sg_worker_tri *t = &b->tris[order[i]];
                    sg_raster_triangle_tile(c, &vp[t->v[0]], &vp[t->v[1]], &vp[t->v[2]], b->ix0, b->ix1);
                }
            } else {
                for (int i = 0; i < n; i++) {
                    const sg_worker_tri *t = &b->tris[i];
                    sg_raster_triangle_tile(c, &vp[t->v[0]], &vp[t->v[1]], &vp[t->v[2]], b->ix0, b->ix1);
                }
            }
            b->count = 0;
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
    pthread_mutex_init(&p->mtx, NULL);
    pthread_cond_init(&p->wake, NULL);

    /* Tile X-ranges partition [0, fb.w) into n contiguous stripes. Last
     * tile absorbs any rounding remainder so ix1 == fb.w. */
    int fbw = c->fb.w;
    for (int t = 0; t < n; t++) {
        p->bins[t].ix0 = (fbw * t)       / n;
        p->bins[t].ix1 = (fbw * (t + 1)) / n;
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
    for (int t = 0; t < p->nworkers; t++) {
        if (p->bins[t].tris)      sg_aligned_free(p->bins[t].tris);
        if (p->bins[t].sort_keys) sg_aligned_free(p->bins[t].sort_keys);
    }
    if (p->vpool)       sg_aligned_free(p->vpool);
    if (p->transformed) sg_aligned_free(p->transformed);
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
        if (p->transformed) sg_aligned_free(p->transformed);
        p->transformed     = n;
        p->transformed_cap = cap;
    }

    p->job_first = first;
    p->job_count = count;
    atomic_store_explicit(&p->job_type, SG_JOB_VERTEX, memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);

    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
        __builtin_ia32_pause();
#endif
    }
    /* Reset default job type so subsequent flushes do the right thing. */
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
    return p->transformed;
}

void sg_workers_flush(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p) return;

    /* Short-circuit if no pending work — avoids the condvar round-trip on
     * drivers where flush is called defensively from every state-setter. */
    int total = 0;
    for (int t = 0; t < p->nworkers; t++) total += p->bins[t].count;
    if (total == 0) return;

    atomic_store_explicit(&p->sort_safe, sg_pool_sort_safe(c), memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);

    /* Spin-wait: flush latency is sub-ms with 4 workers, condvar wakeup
     * of the main thread would add ~3µs vs ~50ns for a cached atomic. */
    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
        __builtin_ia32_pause();
#endif
    }
    /* Workers are done — pool becomes empty; next flush refills from scratch.
     * Bin counts were already zeroed by workers. */
    p->vpool_count = 0;
}
