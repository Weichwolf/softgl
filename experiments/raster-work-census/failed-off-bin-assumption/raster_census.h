#ifndef SOFTGL_RASTER_CENSUS_H
#define SOFTGL_RASTER_CENSUS_H

/* Diagnostic-only: exclusively owned raster bins need no atomics. The caller
 * uses the final row for synchronous fallback. Read only after framebuffer
 * resolve has joined all work. Exactly 640 pixels / 32 equal bins are required.
 * No diagnostic counters, exports or state layout enter the accepted viewer. */
typedef struct {
    uint64_t counts[4][24];
} sg_census_row;
_Static_assert(sizeof(sg_census_row) % 64 == 0, "separate counter cache lines");
static sg_census_row sg_census[33] __attribute__((aligned(64)));

SG_INLINE uint64_t *sg_census_bind(softgl_ctx *c, int group) {
    int index = 32;
    if (c->fb.w != 640) abort();
    if (sg_raster_bin) {
        if (sg_raster_bin->ix0 % 20 || sg_raster_bin->ix1 != sg_raster_bin->ix0 + 20)
            abort();
        index = sg_raster_bin->ix0 / 20;
        if (index < 0 || index >= 32) abort();
    }
    return sg_census[index].counts[group];
}

__attribute__((used, noinline))
double sg_raster_census_counter(int group, int counter) {
    if (group < 0 || group >= 4 || counter < 0 || counter >= 24) return -1.;
    uint64_t total = 0;
    for (int row = 0; row < 33; row++) total += sg_census[row].counts[group][counter];
    return (double)total;
}

#define SG_CENSUS_BIND(c, group) uint64_t *census = sg_census_bind(c, group)
#define SG_CENSUS_ADD(counter, amount) (census[(counter)] += (uint64_t)(amount))
#endif
