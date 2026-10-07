#include "types.h"
#include "sampler_footprints_diag.h"
#if defined(SG_SAMPLER_FOOTPRINTS_DIAG) && SG_SAMPLER_FOOTPRINTS_DIAG
#include <stdatomic.h>
#include <limits.h>

_Alignas(64) uint64_t sg_tex_diag_rows[SG_TEX_DIAG_THREADS][SG_TEX_DIAG_KEYS][SG_TEX_DIAG_CELLS];
static _Thread_local unsigned sg_tex_diag_slot = UINT_MAX;
static atomic_uint sg_tex_diag_next;
static atomic_uint sg_tex_diag_thread_overflow;
static atomic_uint sg_tex_diag_key_overflow;
static atomic_uint sg_tex_diag_value_overflow;
static atomic_uint sg_tex_diag_invalid;
static unsigned sg_tex_diag_key_count[SG_TEX_DIAG_THREADS];
static unsigned char sg_tex_diag_key_failed[SG_TEX_DIAG_THREADS];

unsigned sg_tex_diag_claim_slot(void) {
    unsigned slot = atomic_fetch_add_explicit(&sg_tex_diag_next, 1, memory_order_relaxed);
    if (slot >= SG_TEX_DIAG_THREADS)
        atomic_fetch_add_explicit(&sg_tex_diag_thread_overflow, 1, memory_order_relaxed);
    sg_tex_diag_slot = slot;
    return slot;
}

void sg_tex_diag_reset(void) {
    /* The caller must have joined all producers. Slots/overflow are lifetime
     * metadata; reset only the completed interval's key tables and counts. */
    unsigned slots = atomic_load_explicit(&sg_tex_diag_next, memory_order_relaxed);
    if (slots > SG_TEX_DIAG_THREADS) slots = SG_TEX_DIAG_THREADS;
    memset(sg_tex_diag_rows, 0, slots * sizeof(sg_tex_diag_rows[0]));
    memset(sg_tex_diag_key_count, 0, slots * sizeof(sg_tex_diag_key_count[0]));
}

double sg_tex_diag_meta(int field) {
    switch (field) {
    case 0: return atomic_load_explicit(&sg_tex_diag_next, memory_order_relaxed);
    case 1: return atomic_load_explicit(&sg_tex_diag_thread_overflow, memory_order_relaxed);
    case 2: return atomic_load_explicit(&sg_tex_diag_key_overflow, memory_order_relaxed);
    case 3: return atomic_load_explicit(&sg_tex_diag_value_overflow, memory_order_relaxed);
    case 4: return atomic_load_explicit(&sg_tex_diag_invalid, memory_order_relaxed);
    case 5: return SG_TEX_DIAG_THREADS;
    case 6: return SG_TEX_DIAG_KEYS;
    case 7: return SG_TEX_DIAG_CELLS;
    case 8: return SG_TEX_DIAG_PATHS;
    default: return -1;
    }
}

uintptr_t sg_tex_diag_data(void) { return (uintptr_t)sg_tex_diag_rows; }

static uint64_t *sg_tex_diag_entry(int path, int width, int height, int depth,
                                  int filter, unsigned wrap_s, unsigned wrap_t) {
    unsigned slot = sg_tex_diag_slot;
    if (slot == UINT_MAX) slot = sg_tex_diag_claim_slot();
    if (slot >= SG_TEX_DIAG_THREADS) return NULL;
    if (path < 0 || path >= SG_TEX_DIAG_PATHS || width < 0 || height < 0 || depth < 0 ||
        filter < 0 || filter > 2) {
        atomic_fetch_add_explicit(&sg_tex_diag_invalid, 1, memory_order_relaxed);
        return NULL;
    }
    unsigned count = sg_tex_diag_key_count[slot];
    for (unsigned k = 0; k < count; k++) {
        uint64_t *row = sg_tex_diag_rows[slot][k];
        if (row[1] == (unsigned)path && row[2] == (unsigned)width && row[3] == (unsigned)height &&
            row[4] == (unsigned)depth && row[5] == (unsigned)filter && row[6] == wrap_s && row[7] == wrap_t)
            return row;
    }
    if (count == SG_TEX_DIAG_KEYS) {
        if (!sg_tex_diag_key_failed[slot]) {
            sg_tex_diag_key_failed[slot] = 1;
            atomic_fetch_add_explicit(&sg_tex_diag_key_overflow, 1, memory_order_relaxed);
        }
        return NULL;
    }
    uint64_t *row = sg_tex_diag_rows[slot][count];
    sg_tex_diag_key_count[slot]++;
    row[0] = 1; row[1] = (unsigned)path; row[2] = (unsigned)width; row[3] = (unsigned)height;
    row[4] = (unsigned)depth; row[5] = (unsigned)filter; row[6] = wrap_s; row[7] = wrap_t;
    return row;
}

static void sg_tex_diag_add(uint64_t *row, unsigned field, uint64_t amount) {
    if (row[field] > UINT64_MAX - amount) {
        if (!row[63]) atomic_fetch_add_explicit(&sg_tex_diag_value_overflow, 1, memory_order_relaxed);
        row[63] = 1;
    } else row[field] += amount;
}

static unsigned sg_tex_diag_distinct(const uint64_t indices[4]) {
    unsigned unique = 0;
    for (int k = 0; k < 4; k++) {
        int duplicate = 0;
        for (int j = 0; j < k; j++) if (indices[j] == indices[k]) duplicate = 1;
        unique += !duplicate;
    }
    return unique;
}

static void sg_tex_diag_footprint(uint64_t *row, int x0, int y0, int x1, int y1, int paired) {
    int width = (int)row[2], height = (int)row[3], linear = (int)row[5];
    if (width <= 0 || height <= 0 || x0 < 0 || x0 >= width || y0 < 0 || y0 >= height ||
        x1 < 0 || x1 >= width || y1 < 0 || y1 >= height) {
        atomic_fetch_add_explicit(&sg_tex_diag_invalid, 1, memory_order_relaxed);
        return;
    }
    sg_tex_diag_add(row, SG_TEX_DIAG_SAMPLES, 1);
    sg_tex_diag_add(row, linear ? SG_TEX_DIAG_LINEAR : SG_TEX_DIAG_NEAREST, 1);
    sg_tex_diag_add(row, SG_TEX_DIAG_FOOTPRINTS, 1);
    uint64_t offsets[4] = {(uint64_t)y0 * (unsigned)width + (unsigned)x0,
                          (uint64_t)y0 * (unsigned)width + (unsigned)x1,
                          (uint64_t)y1 * (unsigned)width + (unsigned)x0,
                          (uint64_t)y1 * (unsigned)width + (unsigned)x1};
    uint32_t hash = 2166136261u;
    for (int k = 0; k < 4; k++) hash = (hash ^ (uint32_t)offsets[k]) * 16777619u;
    row[SG_TEX_DIAG_COORD_HASH] = (uint32_t)(row[SG_TEX_DIAG_COORD_HASH] + hash);
    sg_tex_diag_add(row, SG_TEX_DIAG_TAPS, linear ? 4 : 1);
    sg_tex_diag_add(row, SG_TEX_DIAG_UNIQUE_TEXELS, linear ? sg_tex_diag_distinct(offsets) : 1);
    if (!linear) return;
    if (paired) sg_tex_diag_add(row, SG_TEX_DIAG_ACTUAL_PAIRS, 1);
    if (x1 == x0 + 1) sg_tex_diag_add(row, SG_TEX_DIAG_ADJACENT_X, 1);
    if (x0 == x1) sg_tex_diag_add(row, SG_TEX_DIAG_COLLAPSED_X, 1);
    if (y0 == y1) sg_tex_diag_add(row, SG_TEX_DIAG_COLLAPSED_Y, 1);
    if (x0 == x1 && y0 == y1) sg_tex_diag_add(row, SG_TEX_DIAG_COLLAPSED_BOTH, 1);
    uint64_t groups[4], tile4[4], y8[4];
    unsigned xs[4] = {(unsigned)x0, (unsigned)x1, (unsigned)x0, (unsigned)x1};
    unsigned ys[4] = {(unsigned)y0, (unsigned)y0, (unsigned)y1, (unsigned)y1};
    for (int k = 0; k < 4; k++) {
        /* Logical 16-texel groups rooted at level offset zero, not physical
         * cache lines. Tile4 pads width/height to four; Y8 pads height to eight. */
        groups[k] = offsets[k] / 16;
        tile4[k] = (uint64_t)(ys[k] / 4) * (((unsigned)width + 3) / 4) + xs[k] / 4;
        uint64_t vertical = ((uint64_t)(ys[k] / 8) * (unsigned)width + xs[k]) * 8 + ys[k] % 8;
        y8[k] = vertical / 16;
    }
    unsigned nr = sg_tex_diag_distinct(groups), nt = sg_tex_diag_distinct(tile4), ny = sg_tex_diag_distinct(y8);
    sg_tex_diag_add(row, SG_TEX_DIAG_ROW_GROUPS, nr);
    sg_tex_diag_add(row, SG_TEX_DIAG_TILE4_GROUPS, nt);
    sg_tex_diag_add(row, SG_TEX_DIAG_Y8_GROUPS, ny);
    if (nr == 1) sg_tex_diag_add(row, SG_TEX_DIAG_ROW_SINGLE, 1);
    if (nt == 1) sg_tex_diag_add(row, SG_TEX_DIAG_TILE4_SINGLE, 1);
    if (ny == 1) sg_tex_diag_add(row, SG_TEX_DIAG_Y8_SINGLE, 1);
    if (x1 == x0 + 1 && x0 / 4 == x1 / 4)
        sg_tex_diag_add(row, SG_TEX_DIAG_TILE4_ADJACENT_X, 1);
    if (y1 == y0 + 1 && y0 / 8 == y1 / 8)
        sg_tex_diag_add(row, SG_TEX_DIAG_Y8_ADJACENT_Y, 1);
}

void sg_tex_diag_one(int path, int width, int height, int linear,
                     unsigned wrap_s, unsigned wrap_t, int x0, int y0, int x1, int y1) {
    uint64_t *row = sg_tex_diag_entry(path, width, height, 1, linear, wrap_s, wrap_t);
    if (!row) return;
    sg_tex_diag_add(row, SG_TEX_DIAG_BATCHES, 1);
    sg_tex_diag_add(row, SG_TEX_DIAG_BATCH_1, 1);
    sg_tex_diag_footprint(row, x0, y0, x1, y1, 0);
}

void sg_tex_diag_packet(int path, int width, int height, int linear,
                        unsigned wrap_s, unsigned wrap_t, unsigned live, int paired,
                        const int *address) {
    if (!live) return;
    if ((live & ~15u) || width <= 0 || height <= 0) {
        atomic_fetch_add_explicit(&sg_tex_diag_invalid, 1, memory_order_relaxed);
        return;
    }
    uint64_t *row = sg_tex_diag_entry(path, width, height, 1, linear, wrap_s, wrap_t);
    if (!row) return;
    sg_tex_diag_add(row, SG_TEX_DIAG_BATCHES, 1);
    unsigned count = 0;
    int tile_pair = linear && live == 15 && paired;
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        count++;
        int x0 = address[l] % width, y0 = address[l] / width;
        int x1 = linear ? address[4+l] % width : x0;
        int y1 = linear ? address[8+l] / width : y0;
        if (linear && ((int64_t)y0 * width + x1 != address[4+l] ||
                       (int64_t)y1 * width + x0 != address[8+l] ||
                       (int64_t)y1 * width + x1 != address[12+l])) {
            atomic_fetch_add_explicit(&sg_tex_diag_invalid, 1, memory_order_relaxed);
            continue;
        }
        if (!(x1 == x0 + 1 && x0 / 4 == x1 / 4)) tile_pair = 0;
        sg_tex_diag_footprint(row, x0, y0, x1, y1, paired);
    }
    if (tile_pair) sg_tex_diag_add(row, SG_TEX_DIAG_TILE4_BATCH_PAIRS, count);
    sg_tex_diag_add(row, SG_TEX_DIAG_BATCH_1 + count - 1, 1);
}

void sg_tex_diag_none(int path, int width, int height, int depth, int filter,
                      unsigned wrap_s, unsigned wrap_t, unsigned samples) {
    if (!samples) return;
    uint64_t *row = sg_tex_diag_entry(path, width, height, depth, filter, wrap_s, wrap_t);
    if (!row) return;
    sg_tex_diag_add(row, SG_TEX_DIAG_BATCHES, 1);
    sg_tex_diag_add(row, SG_TEX_DIAG_SAMPLES, samples);
    if (filter == 0) sg_tex_diag_add(row, SG_TEX_DIAG_NEAREST, samples);
    if (filter == 1) sg_tex_diag_add(row, SG_TEX_DIAG_LINEAR, samples);
    if (samples <= 4) sg_tex_diag_add(row, SG_TEX_DIAG_BATCH_1 + samples - 1, 1);
}
#endif
