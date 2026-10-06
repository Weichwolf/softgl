#ifndef SG_PREPACK_DIAG_H
#define SG_PREPACK_DIAG_H
#ifdef SG_PREPACK_DIAG
#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#else
#include <time.h>
#endif
enum {
    SG_PP_TRANSFORM,
    SG_PP_TRIANGLE_PREPARE,
    SG_PP_STREAM_SUBMIT,
    SG_PP_EARLY_PREPARE,
    SG_PP_QUEUE_RESERVE,
    SG_PP_LATE_ORDERED_PACK,
    SG_PP_LARGE_PACK,
    SG_PP_PHASE_COUNT
};
enum {
    SG_PP_PREPARE_CALLS,
    SG_PP_SCOPE_REJECT,
    SG_PP_COMBINE_REJECT,
    SG_PP_PAYLOAD_REJECT,
    SG_PP_ELIGIBLE,
    SG_PP_ELIGIBLE_VERTICES,
    SG_PP_ELIGIBLE_BYTES,
    SG_PP_EXISTING_BUFFER,
    SG_PP_BORROWED_BUFFER,
    SG_PP_ALLOC_ATTEMPTS,
    SG_PP_ALLOC_SUCCESS,
    SG_PP_ALLOC_FAILURE,
    SG_PP_BUDGET_UNAVAILABLE,
    SG_PP_IDLE_RECLAIMED_SLOTS,
    SG_PP_IDLE_RECLAIMED_BYTES,
    SG_PP_READY,
    SG_PP_READY_VERTICES,
    SG_PP_READY_BYTES,
    SG_PP_ORDERED_PACKED,
    SG_PP_ORDERED_TRANSFORMED_VERTICES,
    SG_PP_ORDERED_CLIPPED_VERTICES,
    SG_PP_ORDERED_BYTES,
    SG_PP_ADOPTED,
    SG_PP_ADOPTED_VERTICES,
    SG_PP_ADOPTED_BYTES,
    SG_PP_LATE,
    SG_PP_LATE_VERTICES,
    SG_PP_LATE_BYTES,
    SG_PP_DISCARDED,
    SG_PP_DISCARDED_VERTICES,
    SG_PP_DISCARDED_BYTES,
    SG_PP_LARGE_PACKED,
    SG_PP_LARGE_VERTICES,
    SG_PP_LARGE_BYTES,
    SG_PP_COUNT_COUNT
};
static _Thread_local double sg_pp_ms[SG_PP_PHASE_COUNT];
static _Thread_local unsigned sg_pp_calls[SG_PP_PHASE_COUNT];
static _Thread_local uint64_t sg_pp_counts[SG_PP_COUNT_COUNT];
static inline double sg_pp_now(void) {
#ifdef __EMSCRIPTEN__
    return emscripten_get_now();
#else
    struct timespec now; clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)now.tv_sec * 1000.0 + (double)now.tv_nsec * .000001;
#endif
}
static inline void sg_pp_end(int phase, double start) {
    sg_pp_ms[phase] += sg_pp_now() - start; sg_pp_calls[phase]++;
}
#define SG_PP_BEGIN(n) double sg_pp_##n##_start = sg_pp_now()
#define SG_PP_END(n) sg_pp_end(SG_PP_##n, sg_pp_##n##_start)
#define SG_PP_ADD(n,x) (sg_pp_counts[SG_PP_##n] += (uint64_t)(x))
#else
#define SG_PP_BEGIN(n) ((void)0)
#define SG_PP_END(n) ((void)0)
#define SG_PP_ADD(n,x) ((void)0)
#endif
#endif
