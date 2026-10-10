#include "raster_hz.h"

void sg_hz_refresh4(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {
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

void sg_hz_refresh2(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {
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
