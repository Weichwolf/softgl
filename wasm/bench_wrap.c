/* WASM bench wrapper. Reuses the existing sg_test_* dispatch machinery
 * (which already links in every test_*.c case) to time any scene by index.
 *
 * Exported:
 *   sg_bench_run_idx(int test_idx, int iters, int _ignored) -> double ms/frame
 *   sg_bench_scene_table(int slot) -> int test_idx  (-1 end)
 *   sg_bench_scene_label(int slot) -> const char* (short tag)
 *
 * The `backend` argument is retained for ABI stability but ignored (the
 * float backend was removed in favour of the SIMD fp pipeline).
 *
 * Timing uses emscripten_get_now() which is performance.now() in the
 * browser. Accuracy is typically ~5 us, enough for our ms-scale numbers.
 */

#include <GL/softgl.h>
#include <string.h>
#include <stddef.h>

#ifdef __EMSCRIPTEN__
  #include <emscripten.h>
  #define NOW() emscripten_get_now()
#else
  #include <time.h>
  static double NOW(void) {
      struct timespec ts;
      clock_gettime(CLOCK_MONOTONIC, &ts);
      return ts.tv_sec * 1000.0 + ts.tv_nsec * 1e-6;
  }
#endif

/* Existing dispatch surface from dispatch.c */
extern int         sg_test_count(void);
extern const char *sg_test_name(int i);
extern void        sg_test_run(int i, int w, int h);

#define W 640
#define H 360

/* Map FP-6 scene tags → test_* basenames. The WASM dispatch table stores
 * names in the form "test_NNN_name" (full filename stem). We look them up
 * at bench time. */
typedef struct { const char *tag; const char *test_name; } bench_slot_t;
static const bench_slot_t g_slots[] = {
    { "showcase",   "test_100_showcase" },
    { "shadow",     "test_202_shadow_volume" },
    { "particles",  "test_209_particles_additive" },
    { "city",       "test_098_city_block" },
    { "sphere_lit", "test_057_icosphere_lit" },
    { NULL, NULL }
};

int sg_bench_slot_count(void) {
    int n = 0;
    while (g_slots[n].tag) n++;
    return n;
}

const char *sg_bench_slot_tag(int slot) {
    int n = sg_bench_slot_count();
    if (slot < 0 || slot >= n) return "";
    return g_slots[slot].tag;
}

/* Return the dispatch-table index for the given FP-6 slot, or -1. */
int sg_bench_slot_test_index(int slot) {
    int n = sg_bench_slot_count();
    if (slot < 0 || slot >= n) return -1;
    const char *target = g_slots[slot].test_name;
    int tc = sg_test_count();
    for (int i = 0; i < tc; i++) {
        if (strcmp(sg_test_name(i), target) == 0) return i;
    }
    return -1;
}

/* Core timing loop. `backend` is ignored (kept for ABI stability).
 * Creates one context, runs warm-up, then `iters` timed frames. */
double sg_bench_run_idx(int test_idx, int iters, int backend) {
    (void)backend;
    if (iters <= 0) return -1.0;
    if (test_idx < 0 || test_idx >= sg_test_count()) return -1.0;
    softgl_ctx *c = softgl_create(W, H);
    if (!c) return -1.0;
    softgl_make_current(c);
    sg_test_run(test_idx, W, H);    /* warm-up */
    double t0 = NOW();
    for (int i = 0; i < iters; i++) sg_test_run(test_idx, W, H);
    double t1 = NOW();
    softgl_destroy(c);
    return (t1 - t0) / (double)iters;
}

/* Convenience: time by FP-6 slot (0..slot_count-1). */
double sg_bench_run_slot(int slot, int iters, int backend) {
    int idx = sg_bench_slot_test_index(slot);
    if (idx < 0) return -1.0;
    return sg_bench_run_idx(idx, iters, backend);
}
