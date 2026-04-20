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

void sg_workers_bin_tri(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p || p->nworkers == 0) {
        /* Single-threaded fallback: call the tile raster with the full FB. */
        sg_raster_triangle_tile(c, v0, v1, v2, 0, c->fb.w);
        return;
    }
    int tri_ix0, tri_ix1;
    sg_tri_xbounds(v0, v1, v2, &tri_ix0, &tri_ix1);

    for (int t = 0; t < p->nworkers; t++) {
        sg_worker_bin *b = &p->bins[t];
        /* Overlap test: triangle X-bbox vs tile X-range. */
        if (tri_ix1 <= b->ix0 || tri_ix0 >= b->ix1) continue;
        sg_bin_grow(b, b->count + 1);
        sg_worker_tri *slot = &b->tris[b->count++];
        slot->v[0] = *v0;
        slot->v[1] = *v1;
        slot->v[2] = *v2;
    }
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

        /* Drain bin. Count is owned by main between flushes, so this read
         * is a plain load — the wake protocol synchronises before it. */
        int n = b->count;
        for (int i = 0; i < n; i++) {
            sg_worker_tri *t = &b->tris[i];
            sg_raster_triangle_tile(c, &t->v[0], &t->v[1], &t->v[2], b->ix0, b->ix1);
        }
        b->count = 0;

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
    pthread_mutex_init(&p->mtx, NULL);
    pthread_cond_init(&p->wake, NULL);

    /* Tile X-ranges partition [0, fb.w) into n contiguous stripes. Last
     * tile absorbs any rounding remainder so ix1 == fb.w. */
    int fbw = c->fb.w;
    for (int t = 0; t < n; t++) {
        p->bins[t].ix0 = (fbw * t)       / n;
        p->bins[t].ix1 = (fbw * (t + 1)) / n;
        p->bins[t].tris  = NULL;
        p->bins[t].count = 0;
        p->bins[t].cap   = 0;
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
        if (p->bins[t].tris) sg_aligned_free(p->bins[t].tris);
    }
    pthread_mutex_destroy(&p->mtx);
    pthread_cond_destroy(&p->wake);
    free(p);
    c->workers = NULL;
}

void sg_workers_flush(softgl_ctx *c) {
    sg_worker_pool *p = (sg_worker_pool*)c->workers;
    if (!p) return;

    /* Short-circuit if no pending work — avoids the condvar round-trip on
     * drivers where flush is called defensively from every state-setter. */
    int total = 0;
    for (int t = 0; t < p->nworkers; t++) total += p->bins[t].count;
    if (total == 0) return;

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
}
