#ifndef SOFTGL_FRAG_HOT_H
#define SOFTGL_FRAG_HOT_H

/* Hot fragment helpers for the common 2D LINEAR REPEAT MODULATE path.
 * Bit-identical to sg_sample_tex2d(LINEAR, REPEAT, REPEAT) + MODULATE/REPLACE;
 * backend parity tests depend on that. */

#include "types.h"
#include <math.h>

/* POT: dim-1 for power-of-two dims, 0 otherwise. */
static inline int sg_hot_pot_mask(int dim) {
    return (dim > 0 && (dim & (dim - 1)) == 0) ? (dim - 1) : 0;
}

/* Inline bilinear-REPEAT 2D sample. Matches sg_sample_tex2d exactly for
 * LINEAR + REPEAT. */
static inline void sg_hot_sample_2d_linear_repeat_u8_layout(
    const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4], int tiled4)
{
    float uu = u - floorf(u);
    float vv = v - floorf(v);
    float fx = uu * (float)tw - 0.5f;
    float fy = vv * (float)th - 0.5f;
    int x0 = (int)floorf(fx), y0 = (int)floorf(fy);
    float fu = fx - (float)x0;
    float fv = fy - (float)y0;
    int x1 = x0 + 1;
    int y1 = y0 + 1;
    int tw_m = sg_hot_pot_mask(tw);
    int th_m = sg_hot_pot_mask(th);
    if (tw_m) { x0 &= tw_m; x1 &= tw_m; }
    else      { x0 %= tw; if (x0 < 0) x0 += tw;
                x1 %= tw; if (x1 < 0) x1 += tw; }
    if (th_m) { y0 &= th_m; y1 &= th_m; }
    else      { y0 %= th; if (y0 < 0) y0 += th;
                y1 %= th; if (y1 < 0) y1 += th; }
    const uint8_t *p00 = data + sg_texel_offset_2d(x0, y0, tw, tiled4) * 4;
    const uint8_t *p10 = data + sg_texel_offset_2d(x1, y0, tw, tiled4) * 4;
    const uint8_t *p01 = data + sg_texel_offset_2d(x0, y1, tw, tiled4) * 4;
    const uint8_t *p11 = data + sg_texel_offset_2d(x1, y1, tw, tiled4) * 4;
    float ira = 1.f - fu, irb = fu;
    float ica = 1.f - fv, icb = fv;
    for (int k = 0; k < 4; k++) {
        float top = p00[k] * ira + p10[k] * irb;
        float bot = p01[k] * ira + p11[k] * irb;
        float v2 = top * ica + bot * icb;
        int iv = (int)v2; if (iv < 0) iv = 0; else if (iv > 255) iv = 255;
        out[k] = (uint8_t)iv;
    }
}

/* Integer-arithmetic bilinear-REPEAT sample (8-bit weights). Differs
 * from float sampler by at most 1 LSB/channel, inside compare tolerance
 * (max_delta=2). */
static inline void sg_hot_sample_2d_linear_repeat_u8_fast_layout(
    const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4], int tiled4)
{
    float uu = u - floorf(u);
    float vv = v - floorf(v);
    float fx = uu * (float)tw - 0.5f;
    float fy = vv * (float)th - 0.5f;
    int x0 = (int)floorf(fx);
    int y0 = (int)floorf(fy);
    /* Fractions quantised to 0..256. */
    int fu8 = (int)((fx - (float)x0) * 256.f + 0.5f);
    int fv8 = (int)((fy - (float)y0) * 256.f + 0.5f);
    if (fu8 > 256) fu8 = 256; else if (fu8 < 0) fu8 = 0;
    if (fv8 > 256) fv8 = 256; else if (fv8 < 0) fv8 = 0;
    int ifu = 256 - fu8;
    int ifv = 256 - fv8;

    int x1 = x0 + 1;
    int y1 = y0 + 1;
    int tw_m = sg_hot_pot_mask(tw);
    int th_m = sg_hot_pot_mask(th);
    if (tw_m) { x0 &= tw_m; x1 &= tw_m; }
    else      { x0 %= tw; if (x0 < 0) x0 += tw;
                x1 %= tw; if (x1 < 0) x1 += tw; }
    if (th_m) { y0 &= th_m; y1 &= th_m; }
    else      { y0 %= th; if (y0 < 0) y0 += th;
                y1 %= th; if (y1 < 0) y1 += th; }
    const uint8_t *p00 = data + sg_texel_offset_2d(x0, y0, tw, tiled4) * 4;
    const uint8_t *p10 = data + sg_texel_offset_2d(x1, y0, tw, tiled4) * 4;
    const uint8_t *p01 = data + sg_texel_offset_2d(x0, y1, tw, tiled4) * 4;
    const uint8_t *p11 = data + sg_texel_offset_2d(x1, y1, tw, tiled4) * 4;
    /* 8-bit weights → 16-bit intermediates. Shift by 16 (two 8-bit mults)
     * with +32768 rounding bias keeps result in 0..255. */
    for (int k = 0; k < 4; k++) {
        int top = p00[k] * ifu + p10[k] * fu8;
        int bot = p01[k] * ifu + p11[k] * fu8;
        int v2  = (top * ifv + bot * fv8 + (1 << 15)) >> 16;
        if (v2 > 255) v2 = 255; else if (v2 < 0) v2 = 0;
        out[k] = (uint8_t)v2;
    }
}

static inline void sg_hot_sample_2d_linear_repeat_u8(const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4]) {
    sg_hot_sample_2d_linear_repeat_u8_layout(data, tw, th, u, v, out, 0);
}

static inline void sg_hot_sample_2d_linear_repeat_u8_fast(const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4]) {
    sg_hot_sample_2d_linear_repeat_u8_fast_layout(data, tw, th, u, v, out, 0);
}

/* Fast-path shading: unit 0 (2D LINEAR REPEAT, validated by prepare)
 * with MODULATE or REPLACE. Float-arithmetic sampler for byte-exact
 * parity with the generic path. */
static inline void sg_hot_fastpath_shade(
    const sg_tex_tri_ctx *tctx,
    int fastpath_kind,                  /* 1 = MODULATE, 2 = REPLACE */
    float u, float v,
    const float primary_rgba[4],
    float out_rgba[4])
{
    const sg_tex_unit_tri *u0 = &tctx->unit[0];
    uint8_t tx[4];
#if SG_TEXTURE_TILES4
    sg_hot_sample_2d_linear_repeat_u8_layout(u0->data0, u0->tw, u0->th, u, v, tx, u0->tiled4);
#else
    sg_hot_sample_2d_linear_repeat_u8(u0->data0, u0->tw, u0->th, u, v, tx);
#endif
    const float inv255 = 1.f / 255.f;
    if (fastpath_kind == 2) {
        out_rgba[0] = tx[0] * inv255;
        out_rgba[1] = tx[1] * inv255;
        out_rgba[2] = tx[2] * inv255;
        out_rgba[3] = tx[3] * inv255;
    } else {
        out_rgba[0] = primary_rgba[0] * (tx[0] * inv255);
        out_rgba[1] = primary_rgba[1] * (tx[1] * inv255);
        out_rgba[2] = primary_rgba[2] * (tx[2] * inv255);
        out_rgba[3] = primary_rgba[3] * (tx[3] * inv255);
    }
}

/* Integer-bilinear variant: up to 1-LSB drift vs float sampler. */
static inline void sg_hot_fastpath_shade_fast(
    const sg_tex_tri_ctx *tctx,
    int fastpath_kind,
    float u, float v,
    const float primary_rgba[4],
    float out_rgba[4])
{
    const sg_tex_unit_tri *u0 = &tctx->unit[0];
    uint8_t tx[4];
#if SG_TEXTURE_TILES4
    sg_hot_sample_2d_linear_repeat_u8_fast_layout(u0->data0, u0->tw, u0->th, u, v, tx, u0->tiled4);
#else
    sg_hot_sample_2d_linear_repeat_u8_fast(u0->data0, u0->tw, u0->th, u, v, tx);
#endif
    const float inv255 = 1.f / 255.f;
    if (fastpath_kind == 2) {
        out_rgba[0] = tx[0] * inv255;
        out_rgba[1] = tx[1] * inv255;
        out_rgba[2] = tx[2] * inv255;
        out_rgba[3] = tx[3] * inv255;
    } else {
        out_rgba[0] = primary_rgba[0] * (tx[0] * inv255);
        out_rgba[1] = primary_rgba[1] * (tx[1] * inv255);
        out_rgba[2] = primary_rgba[2] * (tx[2] * inv255);
        out_rgba[3] = primary_rgba[3] * (tx[3] * inv255);
    }
}

#endif /* SOFTGL_FRAG_HOT_H */
