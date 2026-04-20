#ifndef SOFTGL_WORKERS_H
#define SOFTGL_WORKERS_H

/* Persistent tile-parallel raster workers. Each worker owns a contiguous
 * X-range of the framebuffer and a growable "bin" of triangles submitted
 * under the current GL state. Main thread pushes triangles into bins
 * during primitive processing, then triggers a flush — workers wake,
 * drain their bins, signal done, and sleep again.
 *
 * Binning is primitive-agnostic: sg_worker_bin_tri is the only entry.
 * Lines/points fall back to direct raster with a prior flush for ordering. */

#include "types.h"
#include <stdint.h>
#include <pthread.h>
#include <stdatomic.h>

#ifndef SG_MAX_TILES
#define SG_MAX_TILES 8
#endif

/* One triangle in a worker's bin. Stores post-transform/viewport vertices
 * — the worker only runs the fragment pipeline, not vertex processing. */
typedef struct SG_ALIGN16 {
    sg_vert v[3];
} sg_worker_tri;

typedef struct {
    sg_worker_tri *tris;     /* growable */
    int            count;    /* written by main, read+reset by worker */
    int            cap;
    int            ix0, ix1; /* owned X-range of the framebuffer [ix0, ix1) */
    /* Pad to keep bins on separate cachelines. */
    uint8_t        _pad[64];
} sg_worker_bin;

typedef struct softgl_ctx softgl_ctx;

typedef struct {
    pthread_t      thread;
    softgl_ctx    *ctx;
    int            tile_idx;
    int            started;
} sg_worker;

typedef struct {
    int            nworkers;
    sg_worker      workers[SG_MAX_TILES];
    sg_worker_bin  bins[SG_MAX_TILES];

    /* Wake protocol: main bumps gen + broadcasts; each worker compares its
     * local_gen to the shared gen under the mutex to decide whether there
     * is new work. Workers atomic-increment done_count when their queue
     * drains; main spins on done_count == nworkers. */
    pthread_mutex_t mtx;
    pthread_cond_t  wake;
    atomic_int      gen;
    atomic_int      done_count;
    atomic_int      alive;
} sg_worker_pool;

void sg_workers_init(softgl_ctx *c, int nworkers_hint);
void sg_workers_shutdown(softgl_ctx *c);

/* Push one triangle into every tile-bin whose X-range overlaps its screen
 * bounding box. Vertices must be post-viewport-transform (ndc.xy already
 * in screen space). Called from the main thread only. */
void sg_workers_bin_tri(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2);

/* Drain every bin in parallel, then return when all workers are idle.
 * Safe to call on an empty pool — no-op. Must be called before any
 * state change that the in-flight triangles would read (glBindTexture,
 * glDepthFunc, matrix changes, etc.) or before glFinish/glReadPixels. */
void sg_workers_flush(softgl_ctx *c);

/* Platform CPU count (logical cores). Returns 1 if unknown. */
int sg_hwthreads(void);

#endif
