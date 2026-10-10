#ifndef SG_RASTER_HZ_H
#define SG_RASTER_HZ_H
#include "types.h"
#include "simd.h"
#include <math.h>
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
extern atomic_ullong sg_partial_hiz_counts[4];
#define SG_PARTIAL_HIZ_AUDIT(i,n) atomic_fetch_add_explicit(&sg_partial_hiz_counts[i],(n),memory_order_relaxed)
#else
#define SG_PARTIAL_HIZ_AUDIT(i,n) ((void)0)
#endif

SG_INLINE sg_hz_state *sg_hz_state_from_ctx4(const softgl_ctx *c) {
    return c->fb.samples == 4 && c->fb.sample_color ?
        ((sg_hz_state *)c->fb.sample_color) - 1 : NULL;
}

SG_INLINE int sg_hz_active4(const softgl_ctx *c) {
    const sg_hz_state *state = sg_hz_state_from_ctx4(c);
    return state && state->active;
}

/* Column-major 4x4 cells. Padded column planes align to cache lines, so
 * aligned X-stripe workers never write the same cache line. */
SG_INLINE sg_hz_tile *sg_hz_at4(const softgl_ctx *c, int x, int y) {
    const sg_hz_state *state = sg_hz_state_from_ctx4(c);
    return state->tiles + (size_t)(x >> 2) * state->rows + (y >> 2);
}

SG_INLINE sg_hz_state *sg_hz_state_from_ctx2(const softgl_ctx *c) {
    return c->fb.samples == 2 && c->fb.sample_color ?
        ((sg_hz_state *)c->fb.sample_color) - 1 : NULL;
}

SG_INLINE int sg_hz_active2(const softgl_ctx *c) {
    const sg_hz_state *state = sg_hz_state_from_ctx2(c);
    return state && state->active;
}

/* Column-major 4x4 cells. Padded column planes align to cache lines, so
 * aligned X-stripe workers never write the same cache line. */
SG_INLINE sg_hz_tile *sg_hz_at2(const softgl_ctx *c, int x, int y) {
    const sg_hz_state *state = sg_hz_state_from_ctx2(c);
    return state->tiles + (size_t)(x >> 2) * state->rows + (y >> 2);
}

SG_INLINE sg_hz_state *sg_hz_state_from_ctx(const softgl_ctx *c) {
    return c->fb.samples && c->fb.sample_color ?
        ((sg_hz_state *)c->fb.sample_color) - 1 : NULL;
}

SG_INLINE int sg_hz_active(const softgl_ctx *c) {
    const sg_hz_state *state = sg_hz_state_from_ctx(c);
    return state && state->active;
}

/* Column-major 4x4 cells. Padded column planes align to cache lines, so
 * aligned X-stripe workers never write the same cache line. */
SG_INLINE sg_hz_tile *sg_hz_at(const softgl_ctx *c, int x, int y) {
    const sg_hz_state *state = sg_hz_state_from_ctx(c);
    return state->tiles + (size_t)(x >> 2) * state->rows + (y >> 2);
}

SG_INLINE void sg_hz_refresh4(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {
    x &= ~3; y &= ~3;
    sg_f32x4 maximum = sg_f32x4_splat(-INFINITY);
    sg_i32x4 indices = sg_i32x4_set(0, 1, 2, 3), valid = sg_i32x4_splat(-1);
    for (int row = 0; row < 4; row++) {
        const float *depth = c->fb.sample_depth + ((size_t)(y + row) * c->fb.w + x) * 4;
        for (int col = 0; col < 4; col++) {
            sg_f32x4 z = sg_f32x4_load(depth + col * 4);
            valid = sg_i32x4_and(valid, sg_f32x4_eq(z, z));
            sg_i32x4 greater = sg_f32x4_gt(z, maximum);
            maximum = sg_f32x4_select(greater, z, maximum);
            sg_i32x4 position = sg_i32x4_set((row * 4 + col) * 4,
                (row * 4 + col) * 4 + 1, (row * 4 + col) * 4 + 2, (row * 4 + col) * 4 + 3);
            indices = _mm_castps_si128(sg_f32x4_select(greater,
                _mm_castsi128_ps(position), _mm_castsi128_ps(indices)));
        }
    }
    if (sg_mask4_live(valid) != 15) {
        tile->maximum = INFINITY; tile->maximum_sample = 0; return;
    }
    SG_ALIGN16 float values[4]; SG_ALIGN16 int where[4];
    sg_f32x4_store(values, maximum); _mm_store_si128((sg_i32x4 *)where, indices);
    int lane = 0;
    for (int i = 1; i < 4; i++) if (values[i] > values[lane]) lane = i;
    tile->maximum = values[lane]; tile->maximum_sample = (uint32_t)where[lane];
}

/* Only actual depth writes mark samples. Nonmonotonic writes invalidate the
 * affected cell. A full cell tracks a real maximum sample; reducing it scans
 * the cell again, while all other LESS/LEQUAL writes preserve the maximum. */
SG_INLINE void sg_hz_record_pixel4(const softgl_ctx *c, int x, int y,
                                  unsigned coverage, const float z[4]) {
    if (!sg_hz_active4(c)) return;
    sg_hz_tile *tile = sg_hz_at4(c, x, y);
    if (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL) {
        tile->written = 0; return;
    }
    uint64_t mask = (uint64_t)(coverage & 15u) << (((y & 3) * 4 + (x & 3)) * 4);
    if (tile->written != UINT64_MAX) {
        tile->written |= mask;
        if (tile->written == UINT64_MAX) sg_hz_refresh4(c, x, y, tile);
    } else if ((mask & (UINT64_C(1) << tile->maximum_sample)) &&
               z[tile->maximum_sample & 3] < tile->maximum) {
        sg_hz_refresh4(c, x, y, tile);
    }
}

/* Two adjacent two-sample pixels fill one SIMD vector. Cell indices refer
 * to the actual 32-sample plane; no depth or coverage values are duplicated. */
SG_INLINE void sg_hz_refresh2(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {
    x &= ~3; y &= ~3;
    sg_f32x4 maximum = sg_f32x4_splat(-INFINITY);
    sg_i32x4 indices = sg_i32x4_set(0, 1, 2, 3), valid = sg_i32x4_splat(-1);
    for (int row = 0; row < 4; row++) {
        const float *depth = c->fb.sample_depth + ((size_t)(y + row) * c->fb.w + x) * 2;
        for (int col = 0; col < 4; col += 2) {
            sg_f32x4 z = sg_f32x4_load(depth + col * 2);
            valid = sg_i32x4_and(valid, sg_f32x4_eq(z, z));
            sg_i32x4 greater = sg_f32x4_gt(z, maximum);
            maximum = sg_f32x4_select(greater, z, maximum);
            int at = row * 8 + col * 2;
            sg_i32x4 position = sg_i32x4_set(at, at + 1, at + 2, at + 3);
            indices = _mm_castps_si128(sg_f32x4_select(greater,
                _mm_castsi128_ps(position), _mm_castsi128_ps(indices)));
        }
    }
    if (sg_mask4_live(valid) != 15) {
        tile->maximum = INFINITY; tile->maximum_sample = 0; return;
    }
    SG_ALIGN16 float values[4]; SG_ALIGN16 int where[4];
    sg_f32x4_store(values, maximum); _mm_store_si128((sg_i32x4 *)where, indices);
    int lane = 0;
    for (int i = 1; i < 4; i++) if (values[i] > values[lane]) lane = i;
    tile->maximum = values[lane]; tile->maximum_sample = (uint32_t)where[lane];
}

SG_INLINE void sg_hz_record_pixel2(const softgl_ctx *c, int x, int y,
                                   unsigned coverage, const float z[4]) {
    if (!sg_hz_active2(c)) return;
    sg_hz_tile *tile = sg_hz_at2(c, x, y);
    if (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL) {
        tile->written = 0; return;
    }
    uint64_t mask = (uint64_t)(coverage & 3u) << (((y & 3) * 4 + (x & 3)) * 2);
    if (tile->written != UINT32_MAX) {
        tile->written |= mask;
        if (tile->written == UINT32_MAX) sg_hz_refresh2(c, x, y, tile);
    } else if ((mask & (UINT64_C(1) << tile->maximum_sample)) &&
               z[tile->maximum_sample & 1] < tile->maximum) {
        sg_hz_refresh2(c, x, y, tile);
    }
}

SG_INLINE void sg_hz_record_pixel(const softgl_ctx *c, int x, int y,
                                  unsigned coverage, const float z[4]) {
    if (c->fb.samples == 2) sg_hz_record_pixel2(c, x, y, coverage, z);
    else sg_hz_record_pixel4(c, x, y, coverage, z);
}

SG_INLINE void sg_hz_record_sample4(const softgl_ctx *c, size_t sample, float z) {
    size_t pixel = sample / 4;
    int x = (int)(pixel % (size_t)c->fb.w), y = (int)(pixel / (size_t)c->fb.w);
    float depths[4] = {0, 0, 0, 0}; depths[sample & 3] = z;
    sg_hz_record_pixel4(c, x, y, 1u << (sample & 3), depths);
}

SG_INLINE void sg_hz_record_sample2(const softgl_ctx *c, size_t sample, float z) {
    size_t pixel = sample / 2;
    int x = (int)(pixel % (size_t)c->fb.w), y = (int)(pixel / (size_t)c->fb.w);
    float depths[4] = {0, 0, 0, 0}; depths[sample & 1] = z;
    sg_hz_record_pixel2(c, x, y, 1u << (sample & 1), depths);
}

SG_INLINE void sg_hz_record_sample(const softgl_ctx *c, size_t sample, float z) {
    if (c->fb.samples == 2) sg_hz_record_sample2(c, sample, z);
    else sg_hz_record_sample4(c, sample, z);
}

/* Covered integer edges are nonnegative and sum to the positive area.
 * Conversion, reciprocal and multiplication put b0/b1 within about 3 f32
 * epsilons of their weights. Reconstructing b2 and summing three products
 * adds fewer than 16 epsilons of absolute error for vertex depths in [0,1].
 * The 2e-6 margin exceeds 32 unit roundoffs (FLT_EPSILON/2) and includes
 * offset-add/bound rounding.
 * Invalid vertex depths or nonfinite offsets use the ordinary rasterizer.
 * EQUAL and nonmonotonic tests, or any stencil side effect, never cull here. */
/* Class 2 additionally proves rejection by LEQUAL/EQUAL: the conservative
 * lower depth is strictly greater than every fully written cell maximum.
 * The ordinary compile-time mode retains the original LESS tie rejection. */
static __attribute__((noinline)) int sg_hz_partial_rectangle4(
    const softgl_ctx *c,const sg_hz_tile *tile,int x,int y,
    int x0,int y0,int x1,int y1,float lower) {
    float maximum;
    SG_PARTIAL_HIZ_AUDIT(0,1);
    int left = x0 > x*4 ? x0-x*4 : 0;
    int right = x1 < x*4+4 ? x1-x*4 : 4;
    int bottom = y0 > y*4 ? y0-y*4 : 0;
    int top = y1 < y*4+4 ? y1-y*4 : 4;
    /* Repeat a <=16-bit row without carry, then select its rows.
     * Every queried pixel requires its four real current samples. */
    uint64_t row = ((UINT64_C(1) << ((right-left)*4))-1) << (left*4);
    uint64_t required = row*UINT64_C(0x0001000100010001);
    required &= UINT64_MAX << (bottom*16);
    required &= UINT64_MAX >> ((4-top)*16);
    if ((tile->written & required) != required) return 0;
    SG_PARTIAL_HIZ_AUDIT(1,1);
    /* Query only this rectangle's four actual samples per pixel.
     * Recording keeps the original inexpensive written-mask update. */
    sg_f32x4 maxima = sg_f32x4_splat(-INFINITY);
    sg_i32x4 valid = sg_i32x4_splat(-1);
    for (int row_index = bottom; row_index < top; row_index++) {
        const float *depth = c->fb.sample_depth +
            ((size_t)(y*4+row_index)*c->fb.w+x*4+left)*4;
        for (int col = left; col < right; col++, depth += 4) {
            sg_f32x4 z = sg_f32x4_load(depth);
            valid = sg_i32x4_and(valid,sg_f32x4_eq(z,z));
            maxima = _mm_max_ps(maxima,z);
        }
    }
    maxima = _mm_max_ps(maxima,_mm_movehl_ps(maxima,maxima));
    maxima = _mm_max_ss(maxima,_mm_shuffle_ps(maxima,maxima,_MM_SHUFFLE(1,1,1,1)));
    maximum = sg_mask4_live(valid) == 15 ? _mm_cvtss_f32(maxima) : INFINITY;
    if (c->depth_func == GL_LESS ? lower < maximum : lower <= maximum) return 0;
    SG_PARTIAL_HIZ_AUDIT(2,1);
    return lower > maximum ? 2 : 1;
}

SG_INLINE int sg_hz_occlusion_class4(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset, int classify_strict) {
    const sg_hz_state *state = sg_hz_state_from_ctx4(c);
    if (!state || !state->active || !c->depth_test || c->stencil_test ||
        (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL)) return 0;
    if (!(z0 >= 0.f && z0 <= 1.f && z1 >= 0.f && z1 <= 1.f && z2 >= 0.f && z2 <= 1.f)) return 0;
    uint32_t bits; memcpy(&bits, &offset, 4);
    if ((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000)) return 0;
    float near = z0 < z1 ? z0 : z1; if (z2 < near) near = z2;
    float lower = near + offset - 2e-6f * (1.f + fabsf(offset));
    lower = lower < 0.f ? 0.f : lower > 1.f ? 1.f : lower;
    int strictly_hidden = 1;
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
    int used_partial = 0;
#endif
    for (int x = x0 >> 2; x <= (x1 - 1) >> 2; x++) {
        const sg_hz_tile *column = state->tiles + (size_t)x * state->rows;
        for (int y = y0 >> 2; y <= (y1 - 1) >> 2; y++) {
            const sg_hz_tile *tile = column + y;
            float maximum = tile->maximum;
            if (tile->written != UINT64_MAX) {
                if (!(state->active & 2) || !c->scene_visibility) return 0;
                int hidden = sg_hz_partial_rectangle4(c,tile,x,y,x0,y0,x1,y1,lower);
                if (!hidden) return 0;
                if (classify_strict && hidden != 2) strictly_hidden = 0;
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
                used_partial = 1;
#endif
                continue;
            }
            if (c->depth_func == GL_LESS ? lower < maximum : lower <= maximum) return 0;
            if (classify_strict && lower <= maximum) strictly_hidden = 0;
        }
    }
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
    SG_PARTIAL_HIZ_AUDIT(3,used_partial);
#endif
    return classify_strict && strictly_hidden ? 2 : 1;
}


SG_INLINE int sg_hz_occlusion_class2(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset, int classify_strict) {
    const sg_hz_state *state = sg_hz_state_from_ctx2(c);
    if (!state || !state->active || !c->depth_test || c->stencil_test ||
        (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL)) return 0;
    if (!(z0 >= 0.f && z0 <= 1.f && z1 >= 0.f && z1 <= 1.f && z2 >= 0.f && z2 <= 1.f)) return 0;
    uint32_t bits; memcpy(&bits, &offset, 4);
    if ((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000)) return 0;
    float near = z0 < z1 ? z0 : z1; if (z2 < near) near = z2;
    float lower = near + offset - 2e-6f * (1.f + fabsf(offset));
    lower = lower < 0.f ? 0.f : lower > 1.f ? 1.f : lower;
    int strictly_hidden = 1;
    for (int x = x0 >> 2; x <= (x1 - 1) >> 2; x++) {
        const sg_hz_tile *column = state->tiles + (size_t)x * state->rows;
        for (int y = y0 >> 2; y <= (y1 - 1) >> 2; y++) {
            const sg_hz_tile *tile = column + y;
            if (tile->written != UINT32_MAX ||
                (c->depth_func == GL_LESS ? lower < tile->maximum : lower <= tile->maximum)) return 0;
            if (classify_strict && lower <= tile->maximum) strictly_hidden = 0;
        }
    }
    return classify_strict && strictly_hidden ? 2 : 1;
}


SG_INLINE int sg_hz_occlusion_class(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset, int classify_strict) {
    if (c->fb.samples == 2)
        return sg_hz_occlusion_class2(c,x0,y0,x1,y1,z0,z1,z2,offset,classify_strict);
    return sg_hz_occlusion_class4(c,x0,y0,x1,y1,z0,z1,z2,offset,classify_strict);
}

SG_INLINE int sg_hz_occluded4(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset) {
    return sg_hz_occlusion_class4(c,x0,y0,x1,y1,z0,z1,z2,offset,0);
}

SG_INLINE int sg_hz_occluded2(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset) {
    return sg_hz_occlusion_class2(c,x0,y0,x1,y1,z0,z1,z2,offset,0);
}

SG_INLINE int sg_hz_occluded(const softgl_ctx *c, int x0, int y0, int x1, int y1,
                              float z0, float z1, float z2, float offset) {
    return sg_hz_occlusion_class(c, x0, y0, x1, y1, z0, z1, z2, offset, 0);
}
#endif
