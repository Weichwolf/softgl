#ifndef SOFTGL_FRAGMENT_MASK_STREAM_H
#define SOFTGL_FRAGMENT_MASK_STREAM_H

#include <stdint.h>
#include <stddef.h>
#include <string.h>

typedef struct {
    uint32_t start, capacity, used, first, end;
    uint32_t retained, overflow;
    uint8_t pad[36];
} sg_fragment_mask_bin;

typedef struct sg_fragment_mask_cache {
    size_t allocation;
    size_t *owner_bytes;
    unsigned refs;
    int width, height, samples, multisample, nbins;
    uint32_t count;
    uint32_t *offsets;
    uint8_t *data;
    sg_fragment_mask_bin bins[SG_MAX_BINS];
} sg_fragment_mask_cache;

typedef struct {
    sg_fragment_mask_bin *bin;
    uint32_t *offset_slot;
    uint8_t *data;
    const uint8_t *read, *end;
    uint32_t start, used, run, cells;
    int capture, started, overflow, last_x, last_y;
} sg_fragment_mask_cursor;

extern _Thread_local sg_fragment_mask_cursor sg_fragment_mask_current;

static inline void sg_fragment_put16(uint8_t *p, unsigned n) {
    p[0] = (uint8_t)n; p[1] = (uint8_t)(n >> 8);
}
static inline unsigned sg_fragment_get16(const uint8_t *p) {
    return p[0] | ((unsigned)p[1] << 8);
}
static inline void sg_fragment_put32(uint8_t *p, uint32_t n) {
    for (int i = 0; i < 4; i++) p[i] = (uint8_t)(n >> (8 * i));
}
static inline uint32_t sg_fragment_get32(const uint8_t *p) {
    return p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}

static inline int sg_fragment_mask_matches(int ix0, int iy0, int ix1, int iy1) {
    const sg_fragment_mask_cursor *r = &sg_fragment_mask_current;
    return !r->capture && r->read &&
        sg_fragment_get16(r->read + 4) == (unsigned)ix0 &&
        sg_fragment_get16(r->read + 6) == (unsigned)iy0 &&
        sg_fragment_get16(r->read + 8) == (unsigned)ix1 &&
        sg_fragment_get16(r->read + 10) == (unsigned)iy1;
}

static inline void sg_fragment_mask_start(int ix0, int iy0, int ix1, int iy1) {
    sg_fragment_mask_cursor *r = &sg_fragment_mask_current;
    if (!r->capture || r->overflow) return;
    if (r->bin->capacity - r->used < 12 || ix0 < 0 || iy0 < 0 || ix1 > 65535 || iy1 > 65535) {
        r->overflow = 1; return;
    }
    r->started = 1;
    sg_fragment_put16(r->data + r->used + 4, (unsigned)ix0);
    sg_fragment_put16(r->data + r->used + 6, (unsigned)iy0);
    sg_fragment_put16(r->data + r->used + 8, (unsigned)ix1);
    sg_fragment_put16(r->data + r->used + 10, (unsigned)iy1);
    r->used += 12;
    r->last_x = r->last_y = -1;
    r->cells = 0;
}

/* Only geometric masks are recorded. Depth failures do not erase a bit. */
static inline void sg_fragment_mask_put(sg_fragment_mask_cursor *r, int x, int y, unsigned mask) {
    if (!r || !mask || r->overflow || !r->started) return;
    if (r->last_y != y || r->last_x + 1 != x) {
        if (r->bin->capacity - r->used < 9) { r->overflow = 1; return; }
        r->run = r->used; r->cells = 0;
        sg_fragment_put16(r->data + r->run, (unsigned)y);
        sg_fragment_put16(r->data + r->run + 2, (unsigned)x);
        sg_fragment_put16(r->data + r->run + 6, 0);
        r->used += 8;
    }
    if (!(r->cells & 1)) {
        if (r->used == r->bin->capacity) { r->overflow = 1; return; }
        r->data[r->used++] = 0;
    }
    r->data[r->used - 1] |= (uint8_t)(mask << (4 * (r->cells & 1)));
    r->cells++;
    sg_fragment_put16(r->data + r->run + 4, r->cells);
    r->last_x = x; r->last_y = y;
}

static inline void sg_fragment_mask_read_start(void) {
    sg_fragment_mask_cursor *r = &sg_fragment_mask_current;
    r->started = 1;
    r->read += 12;
}

static inline int sg_fragment_mask_span(int *y, int *x0, int *x1, const uint8_t **masks) {
    sg_fragment_mask_cursor *r = &sg_fragment_mask_current;
    if (r->read == r->end) return 0;
    const uint8_t *p = r->read;
    unsigned n = sg_fragment_get16(p + 4);
    *y = (int)sg_fragment_get16(p);
    *x0 = (int)sg_fragment_get16(p + 2); *x1 = *x0 + (int)n;
    *masks = p + 8;
    r->read += 8 + (n + 1) / 2;
    return 1;
}

#endif
