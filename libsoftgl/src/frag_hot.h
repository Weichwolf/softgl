#ifndef SOFTGL_FRAG_HOT_H
#define SOFTGL_FRAG_HOT_H

/* =====================================================================
 * Hot fragment helpers. These inline into both the float and fixed
 * rasterizers so the common single-unit 2D LINEAR REPEAT MODULATE path
 * — the Tank bench case — skips the generic tex-env dispatch entirely.
 *
 * Bit-identical to sg_sample_tex2d(GL_LINEAR, REPEAT, REPEAT) followed by
 * GL_MODULATE / GL_REPLACE. Test parity (216 scene cases) hinges on that.
 * ===================================================================== */

#include "types.h"
#include <math.h>

/* Inline bilinear-REPEAT 2D sample, returning u8 per channel. Matches
 * sg_sample_tex2d exactly for the LINEAR + REPEAT + REPEAT case. */
static inline void sg_hot_sample_2d_linear_repeat_u8(
    const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4])
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
    x0 %= tw; if (x0 < 0) x0 += tw;
    x1 %= tw; if (x1 < 0) x1 += tw;
    y0 %= th; if (y0 < 0) y0 += th;
    y1 %= th; if (y1 < 0) y1 += th;
    const uint8_t *p00 = data + (y0 * tw + x0) * 4;
    const uint8_t *p10 = data + (y0 * tw + x1) * 4;
    const uint8_t *p01 = data + (y1 * tw + x0) * 4;
    const uint8_t *p11 = data + (y1 * tw + x1) * 4;
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

/* Integer-arithmetic bilinear-REPEAT sample. Uses 8-bit fractional
 * interpolation weights (0..256). Result differs from the float sampler
 * by at most 1 LSB per channel due to the 8-bit quantised weights —
 * comfortably inside the per-pixel backend-compare tolerance (max_delta=2).
 * Saves ~3 floorfs + 16 u8->float conversions + 12 float multiplies +
 * 16 float->int conversions per fetch.
 *
 * Fast-enough-and-known-good version of the common case the Tank bench
 * drowns in (14k textured tris × thousands of shaded pixels each). */
static inline void sg_hot_sample_2d_linear_repeat_u8_fast(
    const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4])
{
    /* REPEAT wrap into [0,1). Bias trick avoids floorf by exploiting
     * the finite magnitude of u/v in the tank case — but stay correct
     * across the full float range via explicit floorf. GCC compiles
     * floorf(x) to cvttss2si+compare under -ffast-math, which is cheap. */
    float uu = u - floorf(u);
    float vv = v - floorf(v);
    /* Scale to texel space and split integer/fractional at 8-bit precision. */
    float fx = uu * (float)tw - 0.5f;
    float fy = vv * (float)th - 0.5f;
    int x0 = (int)floorf(fx);
    int y0 = (int)floorf(fy);
    /* Quantise fractions to 0..256. */
    int fu8 = (int)((fx - (float)x0) * 256.f + 0.5f);
    int fv8 = (int)((fy - (float)y0) * 256.f + 0.5f);
    if (fu8 > 256) fu8 = 256; else if (fu8 < 0) fu8 = 0;
    if (fv8 > 256) fv8 = 256; else if (fv8 < 0) fv8 = 0;
    int ifu = 256 - fu8;
    int ifv = 256 - fv8;

    int x1 = x0 + 1;
    int y1 = y0 + 1;
    x0 %= tw; if (x0 < 0) x0 += tw;
    x1 %= tw; if (x1 < 0) x1 += tw;
    y0 %= th; if (y0 < 0) y0 += th;
    y1 %= th; if (y1 < 0) y1 += th;
    const uint8_t *p00 = data + (y0 * tw + x0) * 4;
    const uint8_t *p10 = data + (y0 * tw + x1) * 4;
    const uint8_t *p01 = data + (y1 * tw + x0) * 4;
    const uint8_t *p11 = data + (y1 * tw + x1) * 4;
    /* 4 u8 × 8-bit weights = 16-bit intermediates, two rows then blend
     * vertically. Shift by 16 (2× 8-bit weight multiplies) keeps results
     * in 0..255 range with correct rounding bias (+32768 before shift). */
    for (int k = 0; k < 4; k++) {
        int top = p00[k] * ifu + p10[k] * fu8;   /* 0..(256*255) */
        int bot = p01[k] * ifu + p11[k] * fu8;
        /* Vertical blend: (top*ifv + bot*fv8) / (256*256). */
        int v2  = (top * ifv + bot * fv8 + (1 << 15)) >> 16;
        if (v2 > 255) v2 = 255; else if (v2 < 0) v2 = 0;
        out[k] = (uint8_t)v2;
    }
}

/* Fast-path fragment shading (bitexact-to-float-backend variant).
 * Samples unit 0 (validated as 2D LINEAR REPEAT/REPEAT by prepare), applies
 * MODULATE or REPLACE, writes float RGBA. Uses the float-arithmetic
 * bilinear sampler so the float rasterizer fastpath matches sg_sample_tex2d
 * byte-for-byte against the legacy generic path. */
static inline void sg_hot_fastpath_shade(
    const sg_tex_tri_ctx *tctx,
    int fastpath_kind,                  /* 1 = MODULATE, 2 = REPLACE */
    float u, float v,
    const float primary_rgba[4],
    float out_rgba[4])
{
    const sg_tex_unit_tri *u0 = &tctx->unit[0];
    uint8_t tx[4];
    sg_hot_sample_2d_linear_repeat_u8(u0->data0, u0->tw, u0->th, u, v, tx);
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

/* Integer-bilinear variant: up to 1-LSB drift per channel vs the float
 * sampler, well inside SG_BACKEND_COMPARE_MAX_DELTA=2. Used by the fixed
 * rasterizer only (the float rasterizer is the reference, so it sticks
 * to sg_hot_sample_2d_linear_repeat_u8). */
static inline void sg_hot_fastpath_shade_fast(
    const sg_tex_tri_ctx *tctx,
    int fastpath_kind,
    float u, float v,
    const float primary_rgba[4],
    float out_rgba[4])
{
    const sg_tex_unit_tri *u0 = &tctx->unit[0];
    uint8_t tx[4];
    sg_hot_sample_2d_linear_repeat_u8_fast(u0->data0, u0->tw, u0->th, u, v, tx);
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
