/* Private compile-time caller diagnostic. No renderer state changes. */
#ifdef SG_CALLER_PRODUCER_DIAG
#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#else
#include <time.h>
#endif
enum {
    SG_PRODUCER_LOOKUP,
    SG_PRODUCER_INDEX_SCAN,
    SG_PRODUCER_NORMAL_CACHE,
    SG_PRODUCER_COMPACT_TRANSFORM,
    SG_PRODUCER_TRIANGLE_PREPARE,
    SG_PRODUCER_TRIANGLE_EMIT,
    SG_PRODUCER_GEOMETRY_STORE,
    SG_PRODUCER_GEOMETRY_REPLAY,
    SG_PRODUCER_STREAM_SUBMIT,
    SG_PRODUCER_PHASE_COUNT
};
enum {
    SG_PRODUCER_PARALLEL_DRAWS,
    SG_PRODUCER_GEOMETRY_HITS,
    SG_PRODUCER_GEOMETRY_ENTRIES,
    SG_PRODUCER_INDICES_SCANNED,
    SG_PRODUCER_VERTICES_REQUESTED,
    SG_PRODUCER_PREPARED_BATCHES,
    SG_PRODUCER_PREPARED_TRIANGLES,
    SG_PRODUCER_READY_TRIANGLES,
    SG_PRODUCER_REJECTED_TRIANGLES,
    SG_PRODUCER_GENERAL_TRIANGLES,
    SG_PRODUCER_UNPREPARED_TRIANGLES,
    SG_PRODUCER_EMITTED_BIN_RECORDS,
    SG_PRODUCER_BIN_GROW_CALLS,
    SG_PRODUCER_BIN_GROW_ALLOCATIONS,
    SG_PRODUCER_BIN_GROW_COPIED_BYTES,
    SG_PRODUCER_REPLAY_INPUT_BIN_RECORDS,
    SG_PRODUCER_REPLAY_OUTPUT_BIN_RECORDS,
    SG_PRODUCER_COUNTER_COUNT
};
extern _Thread_local double sg_producer_ms[SG_PRODUCER_PHASE_COUNT];
extern _Thread_local unsigned sg_producer_calls[SG_PRODUCER_PHASE_COUNT];
extern _Thread_local uint64_t sg_producer_counts[SG_PRODUCER_COUNTER_COUNT];
static inline double sg_producer_clock(void) {
#ifdef __EMSCRIPTEN__
    return emscripten_get_now();
#else
    struct timespec now;
    clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)now.tv_sec * 1000.0 + (double)now.tv_nsec * .000001;
#endif
}
static inline void sg_producer_end(int phase, double start) {
    sg_producer_ms[phase] += sg_producer_clock() - start;
    sg_producer_calls[phase]++;
}
static inline uint64_t sg_producer_bin_count(const softgl_ctx *c) {
    const sg_worker_pool *pool = (const sg_worker_pool *)c->workers;
    uint64_t count = 0;
    if (pool) for (int b = 0; b < pool->nbins; b++) count += pool->bins[b].count;
    return count;
}
#define SG_PRODUCER_BEGIN(name) double producer_##name##_start = sg_producer_clock()
#define SG_PRODUCER_END(name) sg_producer_end(SG_PRODUCER_##name, producer_##name##_start)
#define SG_PRODUCER_ADD(name, count) (sg_producer_counts[SG_PRODUCER_##name] += (uint64_t)(count))
#else
#define SG_PRODUCER_BEGIN(name) ((void)0)
#define SG_PRODUCER_END(name) ((void)0)
#define SG_PRODUCER_ADD(name, count) ((void)0)
#endif
