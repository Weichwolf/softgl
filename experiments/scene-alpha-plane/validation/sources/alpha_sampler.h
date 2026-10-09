#ifndef SOFTGL_SCENE_ALPHA_SAMPLER_H
#define SOFTGL_SCENE_ALPHA_SAMPLER_H

#ifndef SG_SCENE_ALPHA_PAIRED
#define SG_SCENE_ALPHA_PAIRED 0
#endif
#ifndef SG_SCENE_ALPHA_CENSUS
#define SG_SCENE_ALPHA_CENSUS 0
#endif

#if SG_SCENE_ALPHA_CENSUS
void sg_scene_alpha_census_count(unsigned kind, unsigned live);
#define SCENE_ALPHA_CENSUS(kind, live) sg_scene_alpha_census_count(kind, live)
#else
#define SCENE_ALPHA_CENSUS(kind, live) ((void)0)
#endif

#if SG_SCENE_ALPHA_PAIRED
/* Both supported targets are little-endian; the adjacency guard below keeps
 * these two-byte loads within a row, including one-pixel and wrap cases. */
SG_INLINE void scene_alpha_gather_pairs(const uint8_t *data,
    const int address[4], sg_f32x4 *left, sg_f32x4 *right) {
    uint16_t pair[4];
    for (int lane = 0; lane < 4; lane++) {
        memcpy(&pair[lane], data + address[lane], sizeof(pair[lane]));
    }
    sg_i32x4 packed = sg_i32x4_set(pair[0], pair[1], pair[2], pair[3]);
    *left = _mm_cvtepi32_ps(sg_i32x4_and(packed, sg_i32x4_splat(255)));
    *right = _mm_cvtepi32_ps(_mm_srli_epi32(packed, 8));
}
#endif

SG_INLINE sg_f32x4 scene_alpha_gather(const uint8_t *data,
    const int address[4], unsigned live) {
    return _mm_cvtepi32_ps(sg_i32x4_set(
        (live & 1u) ? data[address[0]] : 0,
        (live & 2u) ? data[address[1]] : 0,
        (live & 4u) ? data[address[2]] : 0,
        (live & 8u) ? data[address[3]] : 0));
}

/* Preserve the original float bilinear operation grouping and addressing. */
SG_INLINE sg_f32x4 scene_alpha_sample_2d(const sg_tex_unit_tri *u,
    const uint8_t *data, sg_f32x4 x, sg_f32x4 y, unsigned live) {
    sg_f32x4 fx = sg_f32x4_mul(sg_packet_wrap(x, u->wrap_s), sg_f32x4_splat((float)u->tw));
    sg_f32x4 fy = sg_f32x4_mul(sg_packet_wrap(y, u->wrap_t), sg_f32x4_splat((float)u->th));
    int linear = u->filter_mag != GL_NEAREST;
    if (linear) {
        fx = sg_f32x4_sub(fx, sg_f32x4_splat(.5f));
        fy = sg_f32x4_sub(fy, sg_f32x4_splat(.5f));
    }
    sg_f32x4 bx = _mm_floor_ps(fx), by = _mm_floor_ps(fy);
    sg_i32x4 xi = sg_f32x4_trunc_i32(bx), yi = sg_f32x4_trunc_i32(by);
    sg_i32x4 x0 = sg_packet_address4(xi, u->tw, u->wrap_s, u->tw_mask_pot);
    sg_i32x4 y0 = sg_packet_address4(yi, u->th, u->wrap_t, u->th_mask_pot);
    sg_i32x4 row0 = _mm_mullo_epi32(y0, sg_i32x4_splat(u->tw));
    SG_ALIGN16 int address[4][4];
    _mm_store_si128((sg_i32x4 *)address[0], sg_i32x4_add(row0, x0));
    sg_f32x4 taps[4];
    if (!linear) return sg_f32x4_mul(scene_alpha_gather(data, address[0], live),
                                    sg_f32x4_splat(1.f / 255.f));
    sg_i32x4 x1 = sg_packet_address4(sg_i32x4_add(xi, sg_i32x4_splat(1)), u->tw, u->wrap_s, u->tw_mask_pot);
    sg_i32x4 y1 = sg_packet_address4(sg_i32x4_add(yi, sg_i32x4_splat(1)), u->th, u->wrap_t, u->th_mask_pot);
    sg_i32x4 row1 = _mm_mullo_epi32(y1, sg_i32x4_splat(u->tw));
    _mm_store_si128((sg_i32x4 *)address[1], sg_i32x4_add(row0, x1));
    _mm_store_si128((sg_i32x4 *)address[2], sg_i32x4_add(row1, x0));
    _mm_store_si128((sg_i32x4 *)address[3], sg_i32x4_add(row1, x1));
#if SG_SCENE_ALPHA_PAIRED
    int paired = live == 15 && sg_mask4_live(_mm_cmpeq_epi32(x1,
        sg_i32x4_add(x0, sg_i32x4_splat(1)))) == 15;
    if (paired) {
        SCENE_ALPHA_CENSUS(3, 0);
        scene_alpha_gather_pairs(data, address[0], &taps[0], &taps[1]);
        scene_alpha_gather_pairs(data, address[2], &taps[2], &taps[3]);
    } else
#endif
    {
        for (int k = 0; k < 4; k++) taps[k] = scene_alpha_gather(data, address[k], live);
    }
    sg_f32x4 fu = sg_f32x4_sub(fx, bx), fv = sg_f32x4_sub(fy, by);
    sg_f32x4 ifu = sg_f32x4_sub(sg_f32x4_splat(1.f), fu);
    sg_f32x4 ifv = sg_f32x4_sub(sg_f32x4_splat(1.f), fv);
    sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(taps[0], ifu), sg_f32x4_mul(taps[1], fu));
    sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(taps[2], ifu), sg_f32x4_mul(taps[3], fu));
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top, ifv),
                                  sg_f32x4_mul(bot, fv)), sg_f32x4_splat(1.f / 255.f));
}

SG_INLINE sg_f32x4 scene_alpha_sample_unit(const sg_tex_unit_tri *u,
    const uint8_t *data, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse, unsigned live) {
    SCENE_ALPHA_CENSUS(u->constant_color_valid ? 0u : data ? 1u : 2u, live);
    if (u->constant_color_valid) return sg_f32x4_splat(u->constant_color[3]);
    if (!data) {
        sg_f32x4 tex[4];
        sg_packet_sample_unit(u, 2, v0, v1, v2, w0, w1, w2, inverse, live, 0, tex);
        return tex[3];
    }
    sg_f32x4 x = sg_packet_lerp(v0->uv[2].x, v1->uv[2].x, v2->uv[2].x, w0, w1, w2, inverse);
    sg_f32x4 y = sg_packet_lerp(v0->uv[2].y, v1->uv[2].y, v2->uv[2].y, w0, w1, w2, inverse);
    return scene_alpha_sample_2d(u, data, x, y, live);
}

#endif
