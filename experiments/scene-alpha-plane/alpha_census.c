#include <stdint.h>
#include <stdatomic.h>

/* Diagnostic only: off the acceptance binaries and never a speed estimate. */
static atomic_uint_fast64_t counts[4][16];

void sg_scene_alpha_census_count(unsigned kind, unsigned live) {
    atomic_fetch_add_explicit(&counts[kind][live], 1, memory_order_relaxed);
}

void sg_scene_alpha_census_reset(void) {
    for (int kind = 0; kind < 4; kind++) for (int live = 0; live < 16; live++) {
        atomic_store_explicit(&counts[kind][live], 0, memory_order_relaxed);
    }
}

void sg_scene_alpha_census_read(uint64_t out[4][16]) {
    for (int kind = 0; kind < 4; kind++) for (int live = 0; live < 16; live++) {
        out[kind][live] = atomic_load_explicit(&counts[kind][live], memory_order_relaxed);
    }
}
