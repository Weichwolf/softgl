#ifndef SOFTGL_WORKERS_H
#define SOFTGL_WORKERS_H

/* Persistent workers share a queue of independent X-range bins. Indexed
 * triangle draws can prepare the next draw while an immutable snapshot of
 * the previous draw rasterizes. Only one raster job runs at a time: publishing
 * the next snapshot first joins the old job, with the caller claiming bins.
 * Other primitives and framebuffer/storage mutations drain pending work. */

#include "types.h"
#include <stdint.h>
#include <pthread.h>
#include <stdatomic.h>

#ifndef SG_MAX_TILES
#define SG_MAX_TILES 8
#endif
#define SG_MAX_BINS (SG_MAX_TILES * 4)

/* One triangle in a worker's bin. Vertices live in pool-global arrays
 * shared across all bins (vpool or transformed); a tri records the
 * three indices into its array plus its sort key. Triangles that span
 * multiple tiles are duplicated only as 16B index-triples instead of
 * 3×160B vertex copies. */
typedef struct {
    /* The high bit of v[0] selects transformed[]; unmarked tris use vpool.
     * Both arrays stay immutable until this raster job completes. */
    uint32_t v[3];
    float    zkey;   /* min ndc.z across the 3 verts; front-most depth */
} sg_worker_tri;

#define SG_BIN_TRANSFORMED_VERTEX UINT32_C(0x80000000)

typedef struct {
    sg_worker_tri *tris;     /* growable */
    /* Sort scratch: packed (zkey_q<<24 | tri_idx) keys. Post-sort the low
     * 24 bits hold sorted tri indices into bins->tris. */
    uint32_t      *sort_keys;
    int            count;    /* written by main, read+reset by worker */
    int            cap;
    int            ix0, ix1; /* owned X-range of the framebuffer [ix0, ix1) */
    GLuint64       query_samples; /* worker-local; merged after the raster job */
    /* Pad to keep bins on separate cachelines. */
    uint8_t        _pad[64];
} sg_worker_bin;

/* Non-NULL only while a thread drains its exclusively claimed raster bin.
 * Points/lines update query objects directly; bin drains count locally. */
extern _Thread_local sg_worker_bin *sg_raster_bin;

typedef struct softgl_ctx softgl_ctx;

typedef struct {
    pthread_t      thread;
    softgl_ctx    *ctx;
    int            tile_idx;
    int            started;
} sg_worker;

/* Jobs the worker pool can be dispatched on. Each wake carries the
 * current job type; workers branch on it. */
enum {
    SG_JOB_RASTER = 0,   /* drain shared independent raster bins (default) */
    SG_JOB_VERTEX = 1,   /* transform a slice of [job_first..job_first+job_count) */
    SG_JOB_ASYNC_RASTER = 2, /* drain the immutable draw snapshot */
};

typedef struct {
    /* One immutable in-flight draw; main owns the separate producer arrays.
     * Vertex and bin arrays exchange ownership only after all workers join. */
    struct sg_async_raster *async_raster;
    int            async_pending;
    int            prepared_transformed;
    int            job_storage_first;
    struct sg_geometry_cache *geometry_cache; /* main-only ordered bin snapshots */
    int            nworkers;
    sg_worker      workers[SG_MAX_TILES];
    sg_worker_bin  bins[SG_MAX_BINS];

    /* Shared vertex pool: main thread appends post-viewport sg_vert triples
     * as they are submitted, bin entries carry indices into this array.
     * Read-only from workers during a flush; reset to 0 after flush. */
    sg_vert       *vpool;
    int            vpool_count;
    int            vpool_cap;

    /* Pre-transform scratch used by SG_JOB_VERTEX. Workers split the
     * [job_first, job_first+job_count) range evenly and write each
     * transformed vertex into transformed[i - job_storage_first]. Main may
     * publish it to the immutable draw slot before transforming another draw. */
    sg_vert       *transformed;
    uint8_t       *inside_frustum; /* one classification per transformed vertex */
    int            transformed_cap;
    int            job_first;
    int            job_count;

    /* Wake protocol: main bumps gen + broadcasts; each worker compares its
     * local_gen to the shared gen under the mutex to decide whether there
     * is new work. Workers atomic-increment done_count when their queue
     * drains; main spins on done_count == nworkers. */
    pthread_mutex_t mtx;
    pthread_cond_t  wake;
    atomic_int      gen;
    atomic_int      done_count;
    atomic_int      alive;
    atomic_int      sort_safe;   /* main sets per-flush; 1 = worker may sort */
    atomic_int      job_type;    /* SG_JOB_*, set per wake */
    int             nbins;
    atomic_int      next_bin;    /* each claimed bin has exactly one owner */
    uint8_t        *column_bin;  /* screen column -> overlapping bin */
} sg_worker_pool;

void sg_workers_init(softgl_ctx *c, int nworkers_hint);
void sg_workers_shutdown(softgl_ctx *c);

/* Push one triangle into every tile-bin whose X-range overlaps its screen
 * bounding box. Vertices must be post-viewport-transform (ndc.xy already
 * in screen space). Called from the main thread only. */
void sg_workers_bin_tri(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2);

/* Same binning, but all three vertices must belong to transformed[].
 * Store their source indices instead of copying them into vpool. The draw
 * must flush or publish its bins before transforming another vertex range. */
void sg_workers_bin_transformed_tri(softgl_ctx *c, const sg_vert *v0,
                                    const sg_vert *v1, const sg_vert *v2);

/* Join the immutable draw and drain producer bins. Framebuffer consumers,
 * texture image mutation/deletion and query/mode handovers must drain first.
 * Ordinary GL state changes can proceed: the pending draw owns its snapshot. */
void sg_workers_flush(softgl_ctx *c);

/* Parallel vertex transform: transforms source-array vertex indices
 * [first, first+count) via sg_process_vertex into the pool's shared
 * transformed[] buffer. Returns a pointer to transformed[0] (indexed by
 * the original vertex index). Main thread must have ensured any upstream
 * state (MV/projection matrices, lighting material, sg_nm4 cache) is
 * settled before this call; workers read ctx as read-only. Returns NULL
 * and does nothing if the pool is absent (single-thread path). */
const sg_vert *sg_workers_transform_range(softgl_ctx *c, int first, int count);
const uint8_t *sg_workers_inside_frustum(softgl_ctx *c);
/* Same transform with local storage [0,count), for source [first,first+count).
 * Avoid allocating and touching an unreferenced prefix of a global VBO. */
const sg_vert *sg_workers_transform_compact(softgl_ctx *c, int first, int count);
/* Query-free filled indexed triangles may publish bounded geometry. Other
 * paths, allocation failures and oversized draw slots drain synchronously. */
int sg_workers_can_stream(softgl_ctx *c, GLenum mode, GLsizei count);
void sg_workers_submit_stream(softgl_ctx *c);

/* Reuse only geometry: refreshed vertex colors/UVs still come from each draw's
 * transform job. The ticket is valid until the next cache lookup on this pool. */
typedef struct sg_geometry_entry sg_geometry_entry;
sg_geometry_entry *sg_workers_geometry_lookup(softgl_ctx *c, GLsizei count,
    GLenum type, const void *indices, uint32_t *imin, uint32_t *imax, int *hit);
void sg_workers_geometry_replay(softgl_ctx *c, const sg_geometry_entry *entry);
void sg_workers_geometry_store(softgl_ctx *c, sg_geometry_entry *entry,
    uint32_t imin, uint32_t imax);

/* Platform CPU count (logical cores). Returns 1 if unknown. */
int sg_hwthreads(void);

/* Number of render workers actually running in this context. 0 means the
 * pool is absent (WASM without pthreads, or init failed) and the render
 * pipeline is running fully on the calling thread. UI/debug use. */
int sg_thread_count(softgl_ctx *c);

#endif
