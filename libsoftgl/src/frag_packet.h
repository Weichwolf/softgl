#ifndef SOFTGL_FRAG_PACKET_H
#define SOFTGL_FRAG_PACKET_H

#include "material_blend.h"

/* All lanes are independent pixels. Coverage and fragment writes remain ordered
 * in the caller; interpolation, addressing and combiners share SIMD work. */
int sg_packet_sample_cube_coherent(const sg_tex_unit_tri *u,
    const float xx[4], const float yy[4], const float zz[4],
    unsigned live, sg_f32x4 out[4]);

void sg_packet_sample_cube_target(const sg_tex_unit_tri *u,
    sg_f32x4 x, sg_f32x4 y, sg_f32x4 z, unsigned live, sg_f32x4 out[4]);

SG_INLINE sg_f32x4 sg_packet_lerp(float a, float b, float d,
                                  sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                  sg_f32x4 inverse) {
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_splat(a), w0),
        sg_f32x4_mul(sg_f32x4_splat(b), w1)),
        sg_f32x4_mul(sg_f32x4_splat(d), w2)), inverse);
}

SG_INLINE sg_f32x4 sg_packet_wrap(sg_f32x4 v, GLenum wrap) {
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE) return sg_chain_clamp(v);
    return sg_f32x4_sub(v, _mm_floor_ps(v));
}

SG_INLINE int sg_packet_address(int x, int size, GLenum wrap) {
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE) {
        if (x < 0) return 0;
        if (x >= size) return size - 1;
    } else {
        if (x < 0) return x + size;
        if (x >= size) return x - size;
    }
    return x;
}

/* Address all pixels together; masked lanes remain unread by the gather. */
SG_INLINE sg_i32x4 sg_packet_address4(sg_i32x4 x, int size, GLenum wrap, int pot_mask) {
    sg_i32x4 zero = sg_i32x4_splat(0), limit = sg_i32x4_splat(size - 1);
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE)
        return _mm_min_epi32(_mm_max_epi32(x, zero), limit);
    if (pot_mask) return _mm_and_si128(x, sg_i32x4_splat(pot_mask));
    sg_i32x4 low = _mm_cmpgt_epi32(zero, x), high = _mm_cmpgt_epi32(x, limit);
    sg_i32x4 lower = sg_i32x4_add(x, sg_i32x4_splat(size));
    sg_i32x4 upper = _mm_sub_epi32(x, sg_i32x4_splat(size));
    sg_i32x4 result = _mm_or_si128(_mm_and_si128(high, upper), _mm_andnot_si128(high, x));
    return _mm_or_si128(_mm_and_si128(low, lower), _mm_andnot_si128(low, result));
}

SG_INLINE sg_i32x4 sg_packet_gather(const uint8_t *data, const int address[4],
                                    unsigned live) {
    uint32_t rgba[4] = {0, 0, 0, 0};
    if (live == 15) {
        memcpy(&rgba[0], data + (size_t)address[0] * 4, 4);
        memcpy(&rgba[1], data + (size_t)address[1] * 4, 4);
        memcpy(&rgba[2], data + (size_t)address[2] * 4, 4);
        memcpy(&rgba[3], data + (size_t)address[3] * 4, 4);
        return sg_i32x4_set((int32_t)rgba[0], (int32_t)rgba[1],
                             (int32_t)rgba[2], (int32_t)rgba[3]);
    }
    for (int l = 0; l < 4; l++) {
        if (live & (1u << l)) memcpy(&rgba[l], data + (size_t)address[l] * 4, 4);
    }
    return sg_i32x4_set((int32_t)rgba[0], (int32_t)rgba[1],
                         (int32_t)rgba[2], (int32_t)rgba[3]);
}

/* Each horizontal pair is proven adjacent inside its texture row.
 * Full packets can gather eight-byte pairs, then separate left/right taps. */
SG_INLINE void sg_packet_gather_pairs(const uint8_t *data, const int address[4],
                                       sg_i32x4 *left, sg_i32x4 *right) {
    sg_i32x4 a = _mm_loadl_epi64((const sg_i32x4 *)(data + (size_t)address[0] * 4));
    sg_i32x4 b = _mm_loadl_epi64((const sg_i32x4 *)(data + (size_t)address[1] * 4));
    sg_i32x4 d = _mm_loadl_epi64((const sg_i32x4 *)(data + (size_t)address[2] * 4));
    sg_i32x4 e = _mm_loadl_epi64((const sg_i32x4 *)(data + (size_t)address[3] * 4));
    sg_f32x4 ab = _mm_castsi128_ps(_mm_unpacklo_epi64(a, b));
    sg_f32x4 de = _mm_castsi128_ps(_mm_unpacklo_epi64(d, e));
    *left = _mm_castps_si128(_mm_shuffle_ps(ab, de, _MM_SHUFFLE(2, 0, 2, 0)));
    *right = _mm_castps_si128(_mm_shuffle_ps(ab, de, _MM_SHUFFLE(3, 1, 3, 1)));
}

/* Pair four pixels' signed-i16 tap values and weights for native WASM dot. */
SG_INLINE sg_i32x4 sg_packet_pairs(sg_i32x4 a, sg_i32x4 b) {
    sg_i32x4 p = _mm_packs_epi32(a, b);
    return _mm_unpacklo_epi16(p, _mm_srli_si128(p, 8));
}

SG_INLINE void sg_packet_sample_2d_channels(const sg_tex_unit_tri *u,
                                    sg_f32x4 x, sg_f32x4 y,
                                    unsigned live, int integer_filter,
                                    sg_f32x4 out[4], int channels) {
    const float inv255 = 1.f / 255.f;
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
    int paired = 0;
    SG_ALIGN16 int address[4][4];
    _mm_store_si128((sg_i32x4 *)address[0], sg_i32x4_add(row0, x0));
    if (linear) {
        sg_i32x4 x1 = sg_packet_address4(sg_i32x4_add(xi, sg_i32x4_splat(1)), u->tw, u->wrap_s, u->tw_mask_pot);
        sg_i32x4 y1 = sg_packet_address4(sg_i32x4_add(yi, sg_i32x4_splat(1)), u->th, u->wrap_t, u->th_mask_pot);
        sg_i32x4 row1 = _mm_mullo_epi32(y1, sg_i32x4_splat(u->tw));
        _mm_store_si128((sg_i32x4 *)address[1], sg_i32x4_add(row0, x1));
        _mm_store_si128((sg_i32x4 *)address[2], sg_i32x4_add(row1, x0));
        _mm_store_si128((sg_i32x4 *)address[3], sg_i32x4_add(row1, x1));
        paired = live == 15 && sg_mask4_live(_mm_cmpeq_epi32(x1,
            sg_i32x4_add(x0, sg_i32x4_splat(1)))) == 15;
    }
    sg_i32x4 taps[4];
    if (!linear) {
        taps[0] = sg_packet_gather(u->data0, address[0], live);
        for (int k = 0; k < channels; k++) {
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_and(taps[0],
                sg_i32x4_splat(255))), sg_f32x4_splat(inv255));
            taps[0] = _mm_srli_epi32(taps[0], 8);
        }
        return;
    }
    if (paired) {
        sg_packet_gather_pairs(u->data0, address[0], &taps[0], &taps[1]);
        sg_packet_gather_pairs(u->data0, address[2], &taps[2], &taps[3]);
    } else {
        for (int s = 0; s < 4; s++) taps[s] = sg_packet_gather(u->data0, address[s], live);
    }
    sg_f32x4 fu = sg_f32x4_sub(fx, bx), fv = sg_f32x4_sub(fy, by);
    sg_f32x4 ifu = sg_f32x4_sub(sg_f32x4_splat(1.f), fu);
    sg_f32x4 ifv = sg_f32x4_sub(sg_f32x4_splat(1.f), fv);
    sg_i32x4 iu = sg_i32x4_splat(0), iv = iu, iiv = iu, weights = iu;
    if (integer_filter) {
        iu = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(fu,
            sg_f32x4_splat(256.f)), sg_f32x4_splat(.5f)));
        iv = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(fv,
            sg_f32x4_splat(256.f)), sg_f32x4_splat(.5f)));
        weights = sg_packet_pairs(_mm_sub_epi32(sg_i32x4_splat(256), iu), iu);
        iiv = _mm_sub_epi32(sg_i32x4_splat(256), iv);
    }
    for (int k = 0; k < channels; k++) {
        sg_i32x4 channel[4];
        for (int s = 0; s < 4; s++) {
            channel[s] = sg_i32x4_and(taps[s], sg_i32x4_splat(255));
            taps[s] = _mm_srli_epi32(taps[s], 8);
        }
        if (integer_filter) {
            sg_i32x4 top = _mm_madd_epi16(sg_packet_pairs(channel[0], channel[1]), weights);
            sg_i32x4 bot = _mm_madd_epi16(sg_packet_pairs(channel[2], channel[3]), weights);
            sg_i32x4 sum = _mm_add_epi32(_mm_mullo_epi32(top, iiv), _mm_mullo_epi32(bot, iv));
            sum = _mm_srli_epi32(_mm_add_epi32(sum, sg_i32x4_splat(32768)), 16);
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps(sum), sg_f32x4_splat(inv255));
        } else {
            sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(channel[0]), ifu),
                                         sg_f32x4_mul(_mm_cvtepi32_ps(channel[1]), fu));
            sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(channel[2]), ifu),
                                         sg_f32x4_mul(_mm_cvtepi32_ps(channel[3]), fu));
            out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top, ifv),
                                                 sg_f32x4_mul(bot, fv)), sg_f32x4_splat(inv255));
        }
    }
}

SG_INLINE void sg_packet_sample_2d(const sg_tex_unit_tri *u,
    sg_f32x4 x, sg_f32x4 y, unsigned live, int integer_filter, sg_f32x4 out[4]) {
    sg_packet_sample_2d_channels(u,x,y,live,integer_filter,out,4);
}

SG_INLINE void sg_packet_sample_2d_rgb(const sg_tex_unit_tri *u,
    sg_f32x4 x, sg_f32x4 y, unsigned live, sg_f32x4 out[4]) {
    sg_packet_sample_2d_channels(u,x,y,live,0,out,3);
}

SG_INLINE void sg_packet_sample_unit(const sg_tex_unit_tri *u, int unit,
                                      const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                      sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                      sg_f32x4 inverse, unsigned live, int integer_filter,
                                      sg_f32x4 out[4]) {
    if (u->constant_color_valid) {
        for (int k = 0; k < 4; k++) out[k] = sg_f32x4_splat(u->constant_color[k]);
        return;
    }
    sg_f32x4 x = sg_packet_lerp(v0->uv[unit].x, v1->uv[unit].x, v2->uv[unit].x,
                                w0, w1, w2, inverse);
    sg_f32x4 y = sg_packet_lerp(v0->uv[unit].y, v1->uv[unit].y, v2->uv[unit].y,
                                w0, w1, w2, inverse);
    if (u->active_slot == SG_TEX_TARGET_2D && u->data0 && u->tw > 0 && u->th > 0) {
        sg_packet_sample_2d(u, x, y, live, integer_filter, out);
        return;
    }
    sg_f32x4 z = sg_packet_lerp(v0->uv[unit].z, v1->uv[unit].z, v2->uv[unit].z,
                                w0, w1, w2, inverse);
    if (u->active_slot == SG_TEX_TARGET_CUBE) {
        sg_packet_sample_cube_target(u, x, y, z, live, out);
        return;
    }
    float xx[4], yy[4], zz[4], tex[4][4] = {{0}};
    sg_f32x4_store(xx, x); sg_f32x4_store(yy, y); sg_f32x4_store(zz, z);

    for (int l = 0; l < 4; l++) {
        if (!(live & (1u << l))) continue;
        if (u->active_slot == SG_TEX_TARGET_3D)
            sg_sample_tex3d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, u->wrap_t, u->wrap_r,
                           xx[l], yy[l], zz[l], 1, tex[l]);
        else if (u->active_slot == SG_TEX_TARGET_1D)
            sg_sample_tex1d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, xx[l], 1, tex[l]);
        else sg_sample_tex2d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, u->wrap_t,
                            xx[l], yy[l], 1, tex[l]);
    }
    sg_f32x4 a = sg_f32x4_load(tex[0]), b = sg_f32x4_load(tex[1]);
    sg_f32x4 d = sg_f32x4_load(tex[2]), e = sg_f32x4_load(tex[3]);
    _MM_TRANSPOSE4_PS(a, b, d, e);
    out[0] = a; out[1] = b; out[2] = d; out[3] = e;
}

SG_INLINE sg_f32x4 sg_packet_gather_alpha(const uint8_t *data,
    const int address[4], unsigned live) {
    uint32_t bytes = 0;
    for (unsigned l = 0; l < 4; l++) {
        if (live & (1u << l)) bytes |= (uint32_t)data[address[l]] << (l*8);
    }
    return _mm_cvtepi32_ps(_mm_cvtepu8_epi32(_mm_cvtsi32_si128((int32_t)bytes)));
}

/* Visibility needs the exact filtered alpha but none of the RGB channels.
 * The optional byte plane keeps the GL texture dimensions and filtering. */
SG_INLINE sg_f32x4 sg_packet_sample_unit_alpha(const sg_tex_unit_tri *u, int unit,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse, unsigned live) {
    if (u->constant_color_valid) return sg_f32x4_splat(u->constant_color[3]);
    if (!u->alpha_data0 || u->active_slot != SG_TEX_TARGET_2D) {
        sg_f32x4 rgba[4];
        sg_packet_sample_unit(u,unit,v0,v1,v2,w0,w1,w2,inverse,live,0,rgba);
        return rgba[3];
    }
    sg_f32x4 x = sg_packet_lerp(v0->uv[unit].x,v1->uv[unit].x,v2->uv[unit].x,w0,w1,w2,inverse);
    sg_f32x4 y = sg_packet_lerp(v0->uv[unit].y,v1->uv[unit].y,v2->uv[unit].y,w0,w1,w2,inverse);
    sg_f32x4 fx = sg_f32x4_mul(sg_packet_wrap(x,u->wrap_s),sg_f32x4_splat((float)u->tw));
    sg_f32x4 fy = sg_f32x4_mul(sg_packet_wrap(y,u->wrap_t),sg_f32x4_splat((float)u->th));
    int linear = u->filter_mag != GL_NEAREST;
    if (linear) {
        fx = sg_f32x4_sub(fx,sg_f32x4_splat(.5f));
        fy = sg_f32x4_sub(fy,sg_f32x4_splat(.5f));
    }
    sg_f32x4 bx = _mm_floor_ps(fx), by = _mm_floor_ps(fy);
    sg_i32x4 xi = sg_f32x4_trunc_i32(bx), yi = sg_f32x4_trunc_i32(by);
    sg_i32x4 x0 = sg_packet_address4(xi,u->tw,u->wrap_s,u->tw_mask_pot);
    sg_i32x4 y0 = sg_packet_address4(yi,u->th,u->wrap_t,u->th_mask_pot);
    sg_i32x4 row0 = _mm_mullo_epi32(y0,sg_i32x4_splat(u->tw));
    SG_ALIGN16 int address[4][4];
    _mm_store_si128((sg_i32x4 *)address[0],sg_i32x4_add(row0,x0));
    sg_f32x4 inv255 = sg_f32x4_splat(1.f/255.f);
    sg_f32x4 taps[4];
    taps[0] = sg_packet_gather_alpha(u->alpha_data0,address[0],live);
    if (!linear) return sg_f32x4_mul(taps[0],inv255);
    sg_f32x4 fu = sg_f32x4_sub(fx,bx), fv = sg_f32x4_sub(fy,by);
    sg_f32x4 ifu = sg_f32x4_sub(sg_f32x4_splat(1.f),fu);
    sg_f32x4 ifv = sg_f32x4_sub(sg_f32x4_splat(1.f),fv);
    if (u->alpha_uniform) {
        unsigned uniform = 0;
        for (unsigned l = 0; l < 4; l++) if (live & (1u << l)) {
            size_t i = (size_t)address[0][l];
            if (u->alpha_uniform[i/8] & (1u << (i%8))) uniform |= 1u << l;
        }
        if (uniform == live) {
            if ((sg_mask4_live(sg_f32x4_eq(taps[0],sg_f32x4_splat(0.f))) & live) == live)
                return sg_f32x4_splat(0.f);
            /* Equal taps still use the original arithmetic: alpha-test cutoffs
             * can observe a float ULP even when RGBA8 output cannot. */
            sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(taps[0],ifu),sg_f32x4_mul(taps[0],fu));
            return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top,ifv),sg_f32x4_mul(top,fv)),inv255);
        }
    }
    sg_i32x4 x1 = sg_packet_address4(sg_i32x4_add(xi,sg_i32x4_splat(1)),u->tw,u->wrap_s,u->tw_mask_pot);
    sg_i32x4 y1 = sg_packet_address4(sg_i32x4_add(yi,sg_i32x4_splat(1)),u->th,u->wrap_t,u->th_mask_pot);
    sg_i32x4 row1 = _mm_mullo_epi32(y1,sg_i32x4_splat(u->tw));
    _mm_store_si128((sg_i32x4 *)address[1],sg_i32x4_add(row0,x1));
    _mm_store_si128((sg_i32x4 *)address[2],sg_i32x4_add(row1,x0));
    _mm_store_si128((sg_i32x4 *)address[3],sg_i32x4_add(row1,x1));
    for (int s = 1; s < 4; s++) taps[s] = sg_packet_gather_alpha(u->alpha_data0,address[s],live);
    sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(taps[0],ifu),sg_f32x4_mul(taps[1],fu));
    sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(taps[2],ifu),sg_f32x4_mul(taps[3],fu));
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top,ifv),sg_f32x4_mul(bot,fv)),inv255);
}

SG_INLINE int sg_packet_supported(const softgl_ctx *c, const sg_tex_tri_ctx *t) {
    return !c->polygon_stipple_enable && !c->fog_enabled &&
           (!t->any_active || t->combine_kind || t->fastpath_kind == 1 || t->fastpath_kind == 2);
}

static __attribute__((noinline)) unsigned sg_shade_transparent_packet(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                    const int64_t edge0[4], const int64_t edge1[4],
                                    float inv_area, unsigned live, float result[4][4]) {
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)edge0[0], (float)edge0[1],
        (float)edge0[2], (float)edge0[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)edge1[0], (float)edge1[1],
        (float)edge1[2], (float)edge1[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);
    sg_f32x4 w0 = sg_f32x4_mul(b0, sg_f32x4_splat(v0->ndc.w));
    sg_f32x4 w1 = sg_f32x4_mul(b1, sg_f32x4_splat(v1->ndc.w));
    sg_f32x4 w2 = sg_f32x4_mul(b2, sg_f32x4_splat(v2->ndc.w));
    sg_f32x4 sum = sg_f32x4_add(sg_f32x4_add(w0, w1), w2);
    live &= ~sg_mask4_live(sg_f32x4_le(sum, sg_f32x4_splat(0.f)));
    if (!live) return 0;
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f), sum);
    sg_f32x4 color[4];
    color[0] = sg_packet_lerp(v0->color.x, v1->color.x, v2->color.x, w0, w1, w2, inverse);
    color[1] = sg_packet_lerp(v0->color.y, v1->color.y, v2->color.y, w0, w1, w2, inverse);
    color[2] = sg_packet_lerp(v0->color.z, v1->color.z, v2->color.z, w0, w1, w2, inverse);
    color[3] = sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse);
    sg_f32x4 tex[4][4];
    for (int u = 0; u < 4; u++) {
        if (t->sample_mask & (1u << u))
            sg_packet_sample_unit(&t->unit[u],u,v0,v1,v2,w0,w1,w2,inverse,live,0,tex[u]);
        else for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(1.f);
    }
    sg_f32x4 dot[3], half = sg_f32x4_splat(.5f);
    for (int k = 0; k < 3; k++)
        dot[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k],half),sg_f32x4_sub(color[k],half));
    sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
        sg_f32x4_add(sg_f32x4_add(dot[0],dot[1]),dot[2])));
    sg_f32x4 h[3];
    for (int k = 0; k < 3; k++) {
        const float *a = &v0->uv[1].x, *b = &v1->uv[1].x, *e = &v2->uv[1].x;
        sg_f32x4 encoded = sg_packet_lerp(a[k], b[k], e[k], w0, w1, w2, inverse);
        h[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(encoded, half));
    }
    sg_f32x4 specular = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
        sg_f32x4_add(sg_f32x4_add(h[0], h[1]), h[2])));
    specular = sg_f32x4_mul(specular, specular);
    if (t->combine_kind == 5 || t->combine_kind == 7) specular = sg_f32x4_mul(specular, specular);
    sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(
        sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
    if (t->constant_alpha_valid) alpha = sg_f32x4_splat(t->constant_alpha);
    for (int k = 0; k < 3; k++) {
        sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])));
        diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse, tex[2][k]));
        diffuse = sg_chain_clamp(sg_f32x4_add(diffuse, tex[3][k]));
        diffuse = sg_f32x4_mul(diffuse,alpha);
        sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular, sg_f32x4_splat(c->fused_dot3_tint[k])));
        sg_f32x4 contribution = sg_f32x4_mul(tinted,
            sg_f32x4_splat(sg_clampf(c->fused_dot3_tint[3], 0.f, 1.f)));
        if (c->fused_dot3_enabled == 4) contribution = sg_material_additive_round4(contribution);
        color[k] = sg_chain_clamp(sg_f32x4_add(diffuse,contribution));
    }
    color[3] = alpha;
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);
    for (int l = 0; l < 4; l++) sg_f32x4_store(result[l], color[l]);
    return live;
}

SG_INLINE unsigned sg_shade_packet(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                    const int64_t edge0[4], const int64_t edge1[4],
                                    float inv_area, unsigned live, float result[4][4]) {
    if (t->combine_kind >= 6) return sg_shade_transparent_packet(c,t,v0,v1,v2,edge0,edge1,inv_area,live,result);
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)edge0[0], (float)edge0[1],
        (float)edge0[2], (float)edge0[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)edge1[0], (float)edge1[1],
        (float)edge1[2], (float)edge1[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);
    sg_f32x4 w0 = sg_f32x4_mul(b0, sg_f32x4_splat(v0->ndc.w));
    sg_f32x4 w1 = sg_f32x4_mul(b1, sg_f32x4_splat(v1->ndc.w));
    sg_f32x4 w2 = sg_f32x4_mul(b2, sg_f32x4_splat(v2->ndc.w));
    sg_f32x4 sum = sg_f32x4_add(sg_f32x4_add(w0, w1), w2);
    live &= ~sg_mask4_live(sg_f32x4_le(sum, sg_f32x4_splat(0.f)));
    if (!live) return 0;
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f), sum);
    sg_f32x4 color[4];
    color[0] = sg_packet_lerp(v0->color.x, v1->color.x, v2->color.x, w0, w1, w2, inverse);
    color[1] = sg_packet_lerp(v0->color.y, v1->color.y, v2->color.y, w0, w1, w2, inverse);
    color[2] = sg_packet_lerp(v0->color.z, v1->color.z, v2->color.z, w0, w1, w2, inverse);
    color[3] = sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse);
    if (t->fastpath_kind == 1 || t->fastpath_kind == 2) {
        sg_f32x4 tex[4];
        sg_packet_sample_unit(&t->unit[0], 0, v0, v1, v2, w0, w1, w2, inverse, live, 1, tex);
        for (int k = 0; k < 4; k++) color[k] = t->fastpath_kind == 2 ? tex[k] : sg_f32x4_mul(color[k], tex[k]);
    } else if (t->combine_kind) {
        sg_f32x4 tex[4][4];
        for (int u = 0; u < 4; u++) {
            if (t->sample_mask & (1u << u))
                sg_packet_sample_unit(&t->unit[u], u, v0, v1, v2, w0, w1, w2, inverse, live, 0, tex[u]);
            else for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(1.f);
        }
        sg_f32x4 dot[3], half = sg_f32x4_splat(.5f);
        for (int k = 0; k < 3; k++)
            dot[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(color[k], half));
        sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
            sg_f32x4_add(sg_f32x4_add(dot[0], dot[1]), dot[2])));
        color[3] = sg_chain_clamp(color[3]);
        for (int k = 0; k < 3 && t->combine_kind < 4; k++) {
            sg_f32x4 s = t->combine_kind == 1
                ? sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])) : sg_f32x4_mul(d, d);
            s = sg_chain_clamp(s);
            s = sg_chain_clamp(sg_f32x4_mul(s, t->combine_kind == 3 ? s : tex[2][k]));
            color[k] = sg_chain_clamp(t->combine_kind == 1 ? sg_f32x4_add(s, tex[3][k])
                : sg_f32x4_mul(s, sg_f32x4_splat(c->tex_env[3].env_color[k])));
        }
        color[3] = t->combine_kind == 1 ? sg_chain_clamp(sg_f32x4_mul(color[3], tex[2][3]))
            : sg_f32x4_splat(sg_clampf(c->tex_env[3].env_color[3], 0.f, 1.f));
        if (t->combine_kind >= 4) {
            sg_f32x4 h[3];
            for (int k = 0; k < 3; k++) {
                const float *a = &v0->uv[1].x, *b = &v1->uv[1].x, *e = &v2->uv[1].x;
                sg_f32x4 encoded = sg_packet_lerp(a[k], b[k], e[k], w0, w1, w2, inverse);
                h[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(encoded, half));
            }
            sg_f32x4 specular = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
                sg_f32x4_add(sg_f32x4_add(h[0], h[1]), h[2])));
            specular = sg_f32x4_mul(specular, specular);
            if (t->combine_kind == 5) specular = sg_f32x4_mul(specular, specular);
            for (int k = 0; k < 3; k++) {
                sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])));
                diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse, tex[2][k]));
                diffuse = sg_chain_clamp(sg_f32x4_add(diffuse, tex[3][k]));
                sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular, sg_f32x4_splat(c->fused_dot3_tint[k])));
                color[k] = sg_chain_clamp(sg_f32x4_add(diffuse, sg_f32x4_mul(tinted,
                    sg_f32x4_splat(sg_clampf(c->fused_dot3_tint[3], 0.f, 1.f)))));
            }
            color[3] = sg_chain_clamp(sg_f32x4_mul(
                sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
        }
        if (t->constant_alpha_valid) color[3] = sg_f32x4_splat(t->constant_alpha);
    }
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);
    for (int l = 0; l < 4; l++) sg_f32x4_store(result[l], color[l]);
    return live;
}
#endif
