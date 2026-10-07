#ifndef SG_FRAGMENT_STREAM_CODEC_H
#define SG_FRAGMENT_STREAM_CODEC_H

/* Diagnostic wire codec only: no renderer calls this without the private observer.
 * Runs preserve quad/pixel traversal order and all geometric sample masks.
 * Each nonempty triangle has a 48-byte geometry header; each row run has an
 * 8-byte (y, first-x, cell-count, reserved) header followed by packed nibbles.
 * Original raw integer interpolation edges are recovered from geometry.
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

#define SG_FS_COLUMNS 4096
enum {
    SG_FS_REFERENCES, SG_FS_EMPTY_REFERENCES, SG_FS_BBOX_CELLS,
    SG_FS_COVERED_CELLS, SG_FS_COVERED_PIXELS, SG_FS_COVERED_SAMPLES,
    SG_FS_FULL_CELLS, SG_FS_PARTIAL_CELLS, SG_FS_RUNS, SG_FS_NIBBLE_BYTES,
    SG_FS_CODEC_BYTES, SG_FS_EXPLICIT_BYTES, SG_FS_DECODED_CELLS,
    SG_FS_EDGE_LANES, SG_FS_WIDE_EDGE_VALUES, SG_FS_COUNT
};
typedef struct {
    int32_t xy[6];
    int ix0, iy0, ix1, iy1;
    int samples, multisample;
} sg_fs_geometry;
typedef int (*sg_fs_row_callback)(void *, int, int, const uint8_t *, int);

static void sg_fs_put16(uint8_t *p, unsigned value) {
    p[0] = (uint8_t)value;
    p[1] = (uint8_t)(value >> 8);
}
static unsigned sg_fs_get16(const uint8_t *p) {
    return (unsigned)p[0] | ((unsigned)p[1] << 8);
}
static int64_t sg_fs_edge(const sg_fs_geometry *g, int e, int64_t px, int64_t py) {
    int a = (e + 1) % 3, b = (e + 2) % 3;
    return ((int64_t)g->xy[b * 2] - g->xy[a * 2]) * (py - g->xy[a * 2 + 1])
         - ((int64_t)g->xy[b * 2 + 1] - g->xy[a * 2 + 1]) * (px - g->xy[a * 2]);
}
static void sg_fs_offset(const sg_fs_geometry *g, int lane, int *sx, int *sy) {
    if (!g->samples) {
        *sx = 128 + (lane & 1) * 256;
        *sy = 128 + (lane >> 1) * 256;
    } else if (!g->multisample) {
        *sx = *sy = 128;
    } else if (g->samples == 2) {
        *sx = *sy = lane ? 192 : 64;
    } else {
        static const int offsets[4][2] = {{96,32},{224,96},{32,160},{160,224}};
        *sx = offsets[lane][0]; *sy = offsets[lane][1];
    }
}
static unsigned sg_fs_mask(const sg_fs_geometry *g, int x, int y) {
    unsigned mask = 0;
    int lanes = g->samples ? g->samples : 4;
    for (int lane = 0; lane < lanes; lane++) {
        if (!g->samples && (x + (lane & 1) >= g->ix1 || y + (lane >> 1) >= g->iy1)) continue;
        int sx, sy; sg_fs_offset(g, lane, &sx, &sy);
        int inside = 1;
        for (int e = 0; e < 3; e++) {
            int a = (e + 1) % 3, b = (e + 2) % 3;
            int64_t dx = (int64_t)g->xy[b * 2] - g->xy[a * 2];
            int64_t dy = (int64_t)g->xy[b * 2 + 1] - g->xy[a * 2 + 1];
            int bias = dy < 0 || (dy == 0 && dx < 0) ? 0 : -1;
            if (sg_fs_edge(g, e, (int64_t)x * 256 + sx, (int64_t)y * 256 + sy) + bias < 0) inside = 0;
        }
        if (inside) mask |= 1u << lane;
    }
    return mask;
}

/* callback sees the actual encoded run bytes; omitted cells decode as zero.
 * Native/WASM fixture supplies a full-frame oracle independent of this scanner.
 */
static int sg_fs_measure(const sg_fs_geometry *g, uint64_t counts[SG_FS_COUNT],
                         sg_fs_row_callback callback, void *opaque) {
    if ((g->samples != 0 && g->samples != 2 && g->samples != 4) ||
        g->ix0 < 0 || g->iy0 < 0 || g->ix1 > 65535 || g->iy1 > 65535) return 0;
    int step = g->samples ? 1 : 2;
    int columns = g->ix0 < g->ix1 ? (g->ix1 - g->ix0 + step - 1) / step : 0;
    if (columns > SG_FS_COLUMNS) return 0;
    int64_t area = ((int64_t)g->xy[2] - g->xy[0]) * ((int64_t)g->xy[5] - g->xy[1])
                 - ((int64_t)g->xy[3] - g->xy[1]) * ((int64_t)g->xy[4] - g->xy[0]);
    counts[SG_FS_REFERENCES]++;
    counts[SG_FS_CODEC_BYTES] += 4; /* original-reference offset table entry */
    counts[SG_FS_EXPLICIT_BYTES] += 4;
    if (!columns || g->iy0 >= g->iy1 || area <= 0) {
        counts[SG_FS_EMPTY_REFERENCES]++;
        return 1;
    }
    uint8_t masks[SG_FS_COLUMNS], decoded[SG_FS_COLUMNS];
    uint8_t wire[SG_FS_COLUMNS * 9];
    uint64_t initial = counts[SG_FS_COVERED_CELLS];
    unsigned full = (1u << (g->samples ? g->samples : 4)) - 1;
    for (int y = g->iy0; y < g->iy1; y += step) {
        int length = 0;
        memset(decoded, 0, (size_t)columns);
        for (int i = 0; i < columns; i++) {
            unsigned mask = sg_fs_mask(g, g->ix0 + i * step, y);
            masks[i] = (uint8_t)mask;
            counts[SG_FS_BBOX_CELLS]++;
            if (!mask) continue;
            counts[SG_FS_COVERED_CELLS]++;
            unsigned live = (unsigned)__builtin_popcount(mask);
            counts[SG_FS_COVERED_SAMPLES] += live;
            counts[SG_FS_COVERED_PIXELS] += g->samples ? 1 : live;
            counts[mask == full ? SG_FS_FULL_CELLS : SG_FS_PARTIAL_CELLS]++;
        }
        for (int i = 0; i < columns; ) {
            if (!masks[i]) { i++; continue; }
            int first = i;
            while (i < columns && masks[i]) i++;
            int n = i - first, bytes = (n + 1) / 2;
            if (length + 8 + bytes > (int)sizeof(wire)) return 0;
            sg_fs_put16(wire + length, (unsigned)y);
            sg_fs_put16(wire + length + 2, (unsigned)(g->ix0 + first * step));
            sg_fs_put16(wire + length + 4, (unsigned)n);
            sg_fs_put16(wire + length + 6, 0);
            memset(wire + length + 8, 0, (size_t)bytes);
            for (int j = 0; j < n; j++)
                wire[length + 8 + j / 2] |= masks[first + j] << ((j & 1) * 4);
            length += 8 + bytes;
            counts[SG_FS_RUNS]++;
            counts[SG_FS_NIBBLE_BYTES] += (unsigned)bytes;
        }
        counts[SG_FS_CODEC_BYTES] += (unsigned)length;
        if (callback && !callback(opaque, y, step, wire, length)) return 0;
        int at = 0, previous_end = g->ix0;
        while (at < length) {
            unsigned ry = sg_fs_get16(wire + at), rx = sg_fs_get16(wire + at + 2);
            unsigned n = sg_fs_get16(wire + at + 4);
            if (ry != (unsigned)y || (int)rx < previous_end || !n ||
                (rx - (unsigned)g->ix0) % (unsigned)step ||
                rx + (n - 1) * (unsigned)step >= (unsigned)g->ix1) return 0;
            int first = ((int)rx - g->ix0) / step;
            for (unsigned j = 0; j < n; j++) {
                unsigned mask = (wire[at + 8 + j / 2] >> ((j & 1) * 4)) & 15u;
                if (!mask || (mask & ~full)) return 0;
                decoded[first + (int)j] = (uint8_t)mask;
                counts[SG_FS_DECODED_CELLS]++;
                int x = (int)rx + (int)j * step;
                for (int lane = 0; lane < (g->samples ? g->samples : 4); lane++) {
                    int sx, sy; sg_fs_offset(g, lane, &sx, &sy);
                    for (int e = 0; e < 2; e++) {
                        int a = (e + 1) % 3, b = (e + 2) % 3;
                        int64_t dx = -((int64_t)g->xy[b * 2 + 1] - g->xy[a * 2 + 1]);
                        int64_t dy = (int64_t)g->xy[b * 2] - g->xy[a * 2];
                        int64_t raw = sg_fs_edge(g, e, (int64_t)x * 256 + sx, (int64_t)y * 256 + sy);
                        int64_t base = sg_fs_edge(g, e, (int64_t)g->ix0 * 256, (int64_t)g->iy0 * 256);
                        int64_t recovered = base + dx * ((int64_t)(x - g->ix0) * 256 + sx)
                                              + dy * ((int64_t)(y - g->iy0) * 256 + sy);
                        if (raw != recovered) return 0;
                        counts[SG_FS_EDGE_LANES]++;
                        if (raw < INT32_MIN || raw > INT32_MAX) counts[SG_FS_WIDE_EDGE_VALUES]++;
                    }
                }
            }
            previous_end = (int)rx + (int)n * step;
            at += 8 + ((int)n + 1) / 2;
        }
        if (at != length || memcmp(masks, decoded, (size_t)columns)) return 0;
    }
    uint64_t cells = counts[SG_FS_COVERED_CELLS] - initial;
    if (!cells) counts[SG_FS_EMPTY_REFERENCES]++;
    else {
        counts[SG_FS_CODEC_BYTES] += 48;
        counts[SG_FS_EXPLICIT_BYTES] += 48 + cells * 24;
    }
    return 1;
}
#endif
