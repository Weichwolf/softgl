#include "types.h"
#include "fp_types.h"
#include "fp_simd.h"
#include <math.h>

/* =====================================================================
 * Phase FP-2: real fixed-point triangle rasterizer (scalar).
 * Phase FP-3: 2x2-quad SIMD coverage (SSE4.1 / wasm_simd128) layered on
 *             top of the FP-2 edge-function core. Coverage decision is
 *             SIMD; fragment shading stays scalar (FP-5 target).
 *
 * Edge functions evaluated in 16.8 subpixel screen space. Accumulators
 * are i64 (32.16 product, stepped by i64 deltas). Top-left fill rule
 * applied via per-edge bias so edge pixels hitting exactly E==0 are
 * included for top/left edges and excluded otherwise.
 *
 * The SIMD path iterates over 2x2 pixel quads. Per quad we compute a
 * 4-bit coverage mask in one SIMD compare per edge, AND the three
 * edge masks, AND with per-lane bounds (in case the quad straddles
 * the framebuffer edge), and only invoke the scalar fragment shader
 * for lanes that survive.
 *
 * If SG_HAVE_SIMD is 0 (neither SSE4.1 nor wasm_simd128 available),
 * the rasterizer falls back to the plain per-pixel Pineda loop from
 * FP-2.
 * ===================================================================== */

/* Float rasterizer helpers we reuse. */
extern void sg_write_fragment  (softgl_ctx *c, int x, int y, float z,
                                float r, float g, float b, float a);

/* Texture samplers + combiner are identical to the float path. */
void sg_sample_tex2d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t,
                     float u, float v, int mag, float out[4]);
void sg_sample_tex1d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, float u, int mag, float out[4]);
void sg_sample_tex3d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t, GLenum wrap_r,
                     float u, float v, float r, int mag, float out[4]);
void sg_sample_tex_cube(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                        GLenum wrap_s, GLenum wrap_t,
                        float x, float y, float z, int mag, float out[4]);
void sg_tex_env_combine_full(const sg_tex_env *env, int current_unit,
                             const float primary[4],
                             const float previous[4],
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             float out[4]);

/* Perspective-correct vec4 lerp (local copy of rasterizer.c::sg_lerp_pc). */
SG_INLINE void fp_lerp_pc(float out[4],
                                 const sg_vec4 *a0, const sg_vec4 *a1, const sg_vec4 *a2,
                                 float w0, float w1, float w2, float one_over_w) {
    float s = one_over_w;
    out[0] = (a0->x * w0 + a1->x * w1 + a2->x * w2) * s;
    out[1] = (a0->y * w0 + a1->y * w1 + a2->y * w2) * s;
    out[2] = (a0->z * w0 + a1->z * w1 + a2->z * w2) * s;
    out[3] = (a0->w * w0 + a1->w * w1 + a2->w * w2) * s;
}

/* Top-left edge classification. Edge (a -> b):
 *   - top  = horizontal edge running leftward (dy==0 && dx<0)
 *   - left = edge going upward (dy<0)
 * For a CCW-wound triangle, top and left edges "own" their boundary
 * pixels (E==0 counted as inside), matching the GL/D3D fill rule.
 */
SG_INLINE int fp_is_top_left(sg_screen_t ax, sg_screen_t ay,
                             sg_screen_t bx, sg_screen_t by) {
    int dx = (int)(bx - ax);
    int dy = (int)(by - ay);
    if (dy == 0 && dx < 0) return 1;   /* top */
    if (dy <  0)           return 1;   /* left */
    return 0;
}

/* Saturating cast i64 -> i32. Keeps the sign for coverage testing even
 * when the full-precision edge value would overflow i32. For realistic
 * 640x360 framebuffers at 16.8 subpixel precision the product
 * (dx * dy) in i64 is ~2^34 peak, well above i32. Saturation preserves
 * the "deep inside/outside" classification the coverage mask needs. */
SG_INLINE int32_t fp_sat_i64_to_i32(int64_t v) {
    if (v >  (int64_t)0x7FFFFFFF) return  0x7FFFFFFF;
    if (v < -(int64_t)0x7FFFFFFF - 1) return -0x7FFFFFFF - 1;
    return (int32_t)v;
}

/* =====================================================================
 * Fragment shader body -- identical to FP-2, extracted so the SIMD
 * quad loop and the scalar fallback share one copy.
 *
 * Preconditions: caller has already verified (E + bias) >= 0 for all
 * three edges at (x, y). E0/E1/E2 are the full-precision i64 edge
 * values for this specific pixel, used to build the float barycentrics.
 * ===================================================================== */
SG_INLINE void fp_shade_pixel(softgl_ctx *c,
                              const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                              int x, int y,
                              int64_t E0, int64_t E1,
                              float inv_area_f,
                              float invw0, float invw1, float invw2,
                              float z_offset) {
    /* Polygon stipple (same window-space convention as float). */
    if (c->polygon_stipple_enable) {
        int sx = x & 31;
        int sy = y & 31;
        GLubyte row = c->polygon_stipple[sy * 4 + (sx >> 3)];
        if (!(row & (0x80u >> (sx & 7)))) return;
    }

    /* Float barycentrics from i64 edge values. */
    float b0 = (float)E0 * inv_area_f;
    float b1 = (float)E1 * inv_area_f;
    float b2 = 1.f - b0 - b1;   /* algebraic closure */

    /* Perspective-correct: w_i = b_i * inv_w_i. */
    float w0 = b0 * invw0;
    float w1 = b1 * invw1;
    float w2 = b2 * invw2;
    float wsum = w0 + w1 + w2;
    if (wsum <= 0.f) return;
    float one_over_wsum = 1.0f / wsum;

    /* Depth: screen-linear, not perspective-corrected. */
    float z = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;

    /* Color (perspective-correct). */
    float col[4];
    fp_lerp_pc(col, &v0->color, &v1->color, &v2->color,
               w0, w1, w2, one_over_wsum);

    float eye_z = (v0->eye.z * w0 + v1->eye.z * w1 + v2->eye.z * w2) * one_over_wsum;

    float primary[4] = { col[0], col[1], col[2], col[3] };

    /* Texture sampling per unit + combiner. */
    float unit_tex[SG_MAX_TEX_UNITS][4];
    int   unit_active[SG_MAX_TEX_UNITS];
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        sg_tex_env *env = &c->tex_env[u];
        int active_slot = -1;
        if      (env->enabled_target[SG_TEX_TARGET_CUBE] &&
                 env->bound_tex_target[SG_TEX_TARGET_CUBE])
            active_slot = SG_TEX_TARGET_CUBE;
        else if (env->enabled_target[SG_TEX_TARGET_3D] &&
                 env->bound_tex_target[SG_TEX_TARGET_3D])
            active_slot = SG_TEX_TARGET_3D;
        else if (env->enabled_target[SG_TEX_TARGET_2D] &&
                 env->bound_tex_target[SG_TEX_TARGET_2D])
            active_slot = SG_TEX_TARGET_2D;
        else if (env->enabled_target[SG_TEX_TARGET_1D] &&
                 env->bound_tex_target[SG_TEX_TARGET_1D])
            active_slot = SG_TEX_TARGET_1D;

        unit_tex[u][0] = unit_tex[u][1] = unit_tex[u][2] = unit_tex[u][3] = 1.f;
        unit_active[u] = 0;
        if (active_slot < 0) continue;

        sg_texture *tex = sg_texture_get(c, env->bound_tex_target[active_slot]);
        if (!tex) continue;

        float uvp[4];
        fp_lerp_pc(uvp, &v0->uv[u], &v1->uv[u], &v2->uv[u],
                   w0, w1, w2, one_over_wsum);

        float *tx = unit_tex[u];
        switch (active_slot) {
            case SG_TEX_TARGET_1D:
                if (tex->levels == 0) break;
                sg_sample_tex1d(tex, tex->min_filter, tex->mag_filter,
                                tex->wrap_s, uvp[0], 1, tx);
                break;
            case SG_TEX_TARGET_3D:
                if (tex->levels == 0) break;
                sg_sample_tex3d(tex, tex->min_filter, tex->mag_filter,
                                tex->wrap_s, tex->wrap_t, tex->wrap_r,
                                uvp[0], uvp[1], uvp[2], 1, tx);
                break;
            case SG_TEX_TARGET_CUBE:
                sg_sample_tex_cube(tex, tex->min_filter, tex->mag_filter,
                                   tex->wrap_s, tex->wrap_t,
                                   uvp[0], uvp[1], uvp[2], 1, tx);
                break;
            case SG_TEX_TARGET_2D:
            default:
                if (tex->levels == 0) break;
                sg_sample_tex2d(tex, tex->min_filter, tex->mag_filter,
                                tex->wrap_s, tex->wrap_t,
                                uvp[0], uvp[1], 1, tx);
                break;
        }
        unit_active[u] = 1;
    }

    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (!unit_active[u]) continue;
        float out[4];
        sg_tex_env_combine_full(&c->tex_env[u], u, primary, col, unit_tex, out);
        col[0] = out[0]; col[1] = out[1]; col[2] = out[2]; col[3] = out[3];
    }

    /* Fog. */
    if (c->fog_enabled) {
        float ez = eye_z < 0.f ? -eye_z : eye_z;
        float f = 1.f;
        switch (c->fog_mode) {
            case GL_EXP:
                f = expf(-c->fog_density * ez);
                break;
            case GL_EXP2: {
                float e = c->fog_density * ez;
                f = expf(-(e * e));
                break;
            }
            case GL_LINEAR_FOG:
            default: {
                float range = c->fog_end - c->fog_start;
                if (range != 0.f)
                    f = (c->fog_end - ez) / range;
                break;
            }
        }
        if (f < 0.f) f = 0.f; else if (f > 1.f) f = 1.f;
        col[0] = f * col[0] + (1.f - f) * c->fog_color[0];
        col[1] = f * col[1] + (1.f - f) * c->fog_color[1];
        col[2] = f * col[2] + (1.f - f) * c->fog_color[2];
    }

    sg_write_fragment(c, x, y, z, col[0], col[1], col[2], col[3]);
}

void sg_raster_triangle_fp(softgl_ctx *c,
                           const sg_vert *v0,
                           const sg_vert *v1,
                           const sg_vert *v2) {
    /* --- A. Fixed-point screen coords (16.8). --- */
    sg_screen_t x0 = sg_fp_screen_from_float(v0->ndc.x);
    sg_screen_t y0 = sg_fp_screen_from_float(v0->ndc.y);
    sg_screen_t x1 = sg_fp_screen_from_float(v1->ndc.x);
    sg_screen_t y1 = sg_fp_screen_from_float(v1->ndc.y);
    sg_screen_t x2 = sg_fp_screen_from_float(v2->ndc.x);
    sg_screen_t y2 = sg_fp_screen_from_float(v2->ndc.y);

    /* --- Signed area x 2 in fixed-point.
     * (x1-x0) is 16.8, (y2-y0) is 16.8 => product is 32.16 in i64. */
    int64_t area2 = (int64_t)(x1 - x0) * (int64_t)(y2 - y0)
                  - (int64_t)(y1 - y0) * (int64_t)(x2 - x0);
    if (area2 <= 0) return;   /* degenerate or CW (back-face) */

    /* --- B. Top-left biases. Inside iff (E + bias) >= 0. --- */
    int bias0 = fp_is_top_left(x1, y1, x2, y2) ? 0 : -1;   /* edge opposite v0 */
    int bias1 = fp_is_top_left(x2, y2, x0, y0) ? 0 : -1;   /* edge opposite v1 */
    int bias2 = fp_is_top_left(x0, y0, x1, y1) ? 0 : -1;   /* edge opposite v2 */

    /* --- C. Bounding box in pixels, clipped to viewport + scissor. --- */
    sg_screen_t min_x_fp = x0; if (x1 < min_x_fp) min_x_fp = x1; if (x2 < min_x_fp) min_x_fp = x2;
    sg_screen_t max_x_fp = x0; if (x1 > max_x_fp) max_x_fp = x1; if (x2 > max_x_fp) max_x_fp = x2;
    sg_screen_t min_y_fp = y0; if (y1 < min_y_fp) min_y_fp = y1; if (y2 < min_y_fp) min_y_fp = y2;
    sg_screen_t max_y_fp = y0; if (y1 > max_y_fp) max_y_fp = y1; if (y2 > max_y_fp) max_y_fp = y2;

    int ix0 = (int)(min_x_fp >> SG_FP_SUBPIXEL_BITS);
    int iy0 = (int)(min_y_fp >> SG_FP_SUBPIXEL_BITS);
    int ix1 = (int)(max_x_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    int iy1 = (int)(max_y_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    if (min_x_fp < 0) ix0 = (int)((min_x_fp - (SG_FP_SUBPIXEL_ONE - 1)) >> SG_FP_SUBPIXEL_BITS);
    if (min_y_fp < 0) iy0 = (int)((min_y_fp - (SG_FP_SUBPIXEL_ONE - 1)) >> SG_FP_SUBPIXEL_BITS);

    if (ix0 < 0) ix0 = 0;
    if (iy0 < 0) iy0 = 0;
    if (ix1 > c->fb.w) ix1 = c->fb.w;
    if (iy1 > c->fb.h) iy1 = c->fb.h;
    if (c->scissor_enabled) {
        int sx0 = c->scissor[0], sy0 = c->scissor[1];
        int sx1 = sx0 + c->scissor[2], sy1 = sy0 + c->scissor[3];
        if (ix0 < sx0) ix0 = sx0;
        if (iy0 < sy0) iy0 = sy0;
        if (ix1 > sx1) ix1 = sx1;
        if (iy1 > sy1) iy1 = sy1;
    }
    if (ix0 >= ix1 || iy0 >= iy1) return;

    /* --- Start sample: pixel center at (ix0+0.5, iy0+0.5) in 16.8. --- */
    const sg_screen_t half = SG_FP_SUBPIXEL_ONE >> 1;   /* 128 */
    sg_screen_t px_start = (sg_screen_t)ix0 * SG_FP_SUBPIXEL_ONE + half;
    sg_screen_t py_start = (sg_screen_t)iy0 * SG_FP_SUBPIXEL_ONE + half;

    /* --- Edge functions at the start sample. Each E is 32.16 in i64. --- */
    int64_t E0_row0 = (int64_t)(x2 - x1) * (int64_t)(py_start - y1)
                    - (int64_t)(y2 - y1) * (int64_t)(px_start - x1);
    int64_t E1_row0 = (int64_t)(x0 - x2) * (int64_t)(py_start - y2)
                    - (int64_t)(y0 - y2) * (int64_t)(px_start - x2);
    int64_t E2_row0 = (int64_t)(x1 - x0) * (int64_t)(py_start - y0)
                    - (int64_t)(y1 - y0) * (int64_t)(px_start - x0);

    /* Per-pixel (dx) and per-row (dy) step constants, pre-multiplied
     * by SUBPIXEL_ONE so a whole-pixel step just adds them once. */
    int64_t dE0_dx = -(int64_t)(y2 - y1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE0_dy =  (int64_t)(x2 - x1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dx = -(int64_t)(y0 - y2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dy =  (int64_t)(x0 - x2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dx = -(int64_t)(y1 - y0) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dy =  (int64_t)(x1 - x0) * (int64_t)SG_FP_SUBPIXEL_ONE;

    float inv_area_f = 1.0f / (float)area2;

    /* --- Polygon offset (fill): same formula as the float path. --- */
    float z_offset = 0.f;
    if (c->polygon_offset_fill && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        float fx0 = v0->ndc.x, fy0 = v0->ndc.y;
        float fx1 = v1->ndc.x, fy1 = v1->ndc.y;
        float fx2 = v2->ndc.x, fy2 = v2->ndc.y;
        float area_f = (fx1 - fx0) * (fy2 - fy0) - (fy1 - fy0) * (fx2 - fx0);
        if (area_f != 0.f) {
            float z0v = v0->ndc.z, z1v = v1->ndc.z, z2v = v2->ndc.z;
            float dzdx = ((z1v - z0v) * (fy2 - fy0) - (z2v - z0v) * (fy1 - fy0)) / area_f;
            float dzdy = ((z2v - z0v) * (fx1 - fx0) - (z1v - z0v) * (fx2 - fx0)) / area_f;
            float adx = dzdx < 0.f ? -dzdx : dzdx;
            float ady = dzdy < 0.f ? -dzdy : dzdy;
            float slope = adx > ady ? adx : ady;
            z_offset = c->polygon_offset_factor * slope
                     + c->polygon_offset_units  * 1e-6f;
        }
    }

    float invw0 = v0->ndc.w;
    float invw1 = v1->ndc.w;
    float invw2 = v2->ndc.w;

#if SG_HAVE_SIMD
    /* =================================================================
     *   SIMD 2x2-quad path (SSE4.1 / wasm_simd128).
     *
     * The outer loop advances in 2-pixel steps in both axes. For each
     * quad, we build a per-lane i32 edge value (saturating from i64)
     * plus three small delta vectors:
     *     lane 0: +0
     *     lane 1: +dE_dx     (TR)
     *     lane 2:        +dE_dy   (BL)
     *     lane 3: +dE_dx +dE_dy   (BR)
     * The coverage mask is the AND of the three sign-bit-tests for
     * (E_lane + bias) >= 0.
     *
     * We also AND a per-lane bounds mask that rejects lanes outside
     * [ix0, ix1) x [iy0, iy1) -- this handles odd-width bounding boxes
     * without requiring pixel-aligned quads.
     * ================================================================= */

    /* NB: we do NOT build the 4-lane edge values by splatting a
     * saturated i32 TL value and adding i32 offsets. That pattern
     * wraps when the saturated TL is already at INT32_MAX and the
     * offset pushes it further -- a lane that should clearly be
     * "inside" flips to negative and gets rejected. Instead we
     * compute (E_TL + lane_offset + bias) in full i64 per lane and
     * then saturate to i32 when loading the SIMD register. That
     * cost is negligible (three i64 adds per edge) and keeps the
     * sign bit truthful over the full i64 dynamic range. */

    /* Per-edge "worst" and "best" lane offsets across the quad. A
     * trivial reject is possible when the maximum achievable edge
     * value inside the quad is still < -bias; a trivial accept is
     * possible when the minimum is >= -bias (i.e. all 4 lanes are
     * strictly inside). Using these as scalar gates avoids the more
     * expensive SIMD build for the easy cases. */
    int64_t min_off0 = 0, max_off0 = 0;
    if (dE0_dx < 0) min_off0 += dE0_dx; else max_off0 += dE0_dx;
    if (dE0_dy < 0) min_off0 += dE0_dy; else max_off0 += dE0_dy;
    int64_t min_off1 = 0, max_off1 = 0;
    if (dE1_dx < 0) min_off1 += dE1_dx; else max_off1 += dE1_dx;
    if (dE1_dy < 0) min_off1 += dE1_dy; else max_off1 += dE1_dy;
    int64_t min_off2 = 0, max_off2 = 0;
    if (dE2_dx < 0) min_off2 += dE2_dx; else max_off2 += dE2_dx;
    if (dE2_dy < 0) min_off2 += dE2_dy; else max_off2 += dE2_dy;

    /* Walk the bounding box in 2-pixel-high strips. iy is the TL row
     * of the current quad. When iy+1 == iy1 (odd height), BL/BR lanes
     * will be masked out by the bounds test. Same story for ix. */
    int64_t E0_row = E0_row0;
    int64_t E1_row = E1_row0;
    int64_t E2_row = E2_row0;

    for (int iy = iy0; iy < iy1; iy += 2) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        /* Pre-compute per-row bounds mask bits: lanes 2/3 (BL/BR) are
         * only valid if iy+1 < iy1. */
        unsigned row_mask = 0x3u;                 /* TL, TR always in row */
        if (iy + 1 < iy1) row_mask |= 0xCu;       /* BL, BR valid */

        for (int ix = ix0; ix < ix1; ix += 2) {
            /* Col bounds mask: TR/BR (lanes 1/3) only valid if ix+1<ix1. */
            unsigned col_mask = 0x5u;             /* TL, BL column */
            if (ix + 1 < ix1) col_mask |= 0xAu;   /* TR, BR column */
            unsigned bounds_mask = row_mask & col_mask;

            /* (E + bias) at TL corner, full i64 precision. */
            int64_t e0_tl = E0 + bias0;
            int64_t e1_tl = E1 + bias1;
            int64_t e2_tl = E2 + bias2;

            /* --- Scalar trivial-reject: if any edge's max-across-quad
             * is < 0, no lane is inside -> skip the SIMD build entirely. */
            if ((e0_tl + max_off0) < 0 ||
                (e1_tl + max_off1) < 0 ||
                (e2_tl + max_off2) < 0) {
                goto step;
            }

            unsigned cov;
            /* --- Scalar trivial-accept: if every edge's min-across-quad
             * is >= 0, all 4 lanes are inside. Still need bounds_mask for
             * framebuffer-edge clipping. */
            if ((e0_tl + min_off0) >= 0 &&
                (e1_tl + min_off1) >= 0 &&
                (e2_tl + min_off2) >= 0) {
                cov = bounds_mask;
            } else {
                /* Build the 4-lane edge vector by evaluating (E + bias)
                 * per lane in full i64, then saturating to i32 so the
                 * sign bit survives the SIMD compare. Saturation only
                 * trims values whose magnitude already exceeds 2^31,
                 * all of which are unambiguously inside/outside. */
                sg_i32x4 v0v = sg_i32x4_set(
                    fp_sat_i64_to_i32(e0_tl),
                    fp_sat_i64_to_i32(e0_tl + dE0_dx),
                    fp_sat_i64_to_i32(e0_tl + dE0_dy),
                    fp_sat_i64_to_i32(e0_tl + dE0_dx + dE0_dy));
                sg_i32x4 v1v = sg_i32x4_set(
                    fp_sat_i64_to_i32(e1_tl),
                    fp_sat_i64_to_i32(e1_tl + dE1_dx),
                    fp_sat_i64_to_i32(e1_tl + dE1_dy),
                    fp_sat_i64_to_i32(e1_tl + dE1_dx + dE1_dy));
                sg_i32x4 v2v = sg_i32x4_set(
                    fp_sat_i64_to_i32(e2_tl),
                    fp_sat_i64_to_i32(e2_tl + dE2_dx),
                    fp_sat_i64_to_i32(e2_tl + dE2_dy),
                    fp_sat_i64_to_i32(e2_tl + dE2_dx + dE2_dy));

                unsigned m0 = sg_i32x4_mask_nonneg(v0v);
                unsigned m1 = sg_i32x4_mask_nonneg(v1v);
                unsigned m2 = sg_i32x4_mask_nonneg(v2v);

                cov = m0 & m1 & m2 & bounds_mask;
            }

            if (cov) {
                /* Per-lane shade. Reuse the scalar i64 edge values
                 * (not the saturated i32) to keep barycentric precision
                 * identical to the FP-2 path.
                 *
                 * lane 0 (TL): (ix,   iy  ), E = E0
                 * lane 1 (TR): (ix+1, iy  ), E = E0 + dE_dx
                 * lane 2 (BL): (ix,   iy+1), E = E0 + dE_dy
                 * lane 3 (BR): (ix+1, iy+1), E = E0 + dE_dx + dE_dy
                 */
                if (cov & 0x1u) {
                    fp_shade_pixel(c, v0, v1, v2, ix, iy,
                                   E0, E1,
                                   inv_area_f, invw0, invw1, invw2, z_offset);
                }
                if (cov & 0x2u) {
                    fp_shade_pixel(c, v0, v1, v2, ix + 1, iy,
                                   E0 + dE0_dx, E1 + dE1_dx,
                                   inv_area_f, invw0, invw1, invw2, z_offset);
                }
                if (cov & 0x4u) {
                    fp_shade_pixel(c, v0, v1, v2, ix, iy + 1,
                                   E0 + dE0_dy, E1 + dE1_dy,
                                   inv_area_f, invw0, invw1, invw2, z_offset);
                }
                if (cov & 0x8u) {
                    fp_shade_pixel(c, v0, v1, v2, ix + 1, iy + 1,
                                   E0 + dE0_dx + dE0_dy,
                                   E1 + dE1_dx + dE1_dy,
                                   inv_area_f, invw0, invw1, invw2, z_offset);
                }
            }

        step:
            /* Step 2 pixels right (TL of next quad). */
            E0 += dE0_dx * 2;
            E1 += dE1_dx * 2;
            E2 += dE2_dx * 2;
        }

        /* Step 2 rows down (TL of next quad row). */
        E0_row += dE0_dy * 2;
        E1_row += dE1_dy * 2;
        E2_row += dE2_dy * 2;
    }

#else
    /* =================================================================
     *   Scalar fallback (FP-2 path).
     * ================================================================= */
    int64_t E0_row = E0_row0;
    int64_t E1_row = E1_row0;
    int64_t E2_row = E2_row0;

    for (int y = iy0; y < iy1; y++) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        for (int x = ix0; x < ix1; x++) {
            if ((E0 + bias0) >= 0 && (E1 + bias1) >= 0 && (E2 + bias2) >= 0) {
                fp_shade_pixel(c, v0, v1, v2, x, y, E0, E1,
                               inv_area_f, invw0, invw1, invw2, z_offset);
            }
            E0 += dE0_dx;
            E1 += dE1_dx;
            E2 += dE2_dx;
        }
        E0_row += dE0_dy;
        E1_row += dE1_dy;
        E2_row += dE2_dy;
    }
#endif
}

/* =====================================================================
 * FP-4: fixed-point line + point rasterizers.
 *
 * Lines: scalar DDA in 16.8 screen space. Pick a major axis so the step
 * along it is exactly one subpixel-full-unit (+/- SUBPIXEL_ONE) and the
 * minor axis advances by a pre-computed fractional delta. All coordinate
 * arithmetic is integer; attribute interpolation (color, depth, eye_z)
 * stays in float for now (FP-5 tightens this). A single `t` parameter in
 * 16.16 keeps the attribute lerp monotonic and free of drift even on
 * long lines.
 *
 * Clipping happens upstream in sg_process_line() using Liang-Barsky on
 * clip-space vertices; by the time we land here both endpoints are
 * post-viewport pixel positions. Line stipple is evaluated per-emitted-
 * pixel against c->line_stipple_counter so it carries across segments
 * of a LINE_STRIP / LINE_LOOP.
 *
 * Points: integer stamp centered on the rounded pixel center. Scissor
 * + framebuffer bounds are handled inside sg_write_fragment; we keep
 * the stamp loop dumb.
 * ===================================================================== */

/* Common fog + fragment emission for a line / point sample. */
SG_INLINE void fp_line_fragment(softgl_ctx *c, int x, int y,
                                float z, float col[4], float eye_z) {
    if (c->fog_enabled) {
        float ez = eye_z < 0.f ? -eye_z : eye_z;
        float f = 1.f;
        switch (c->fog_mode) {
            case GL_EXP:
                f = expf(-c->fog_density * ez);
                break;
            case GL_EXP2: {
                float e = c->fog_density * ez;
                f = expf(-(e * e));
                break;
            }
            case GL_LINEAR_FOG:
            default: {
                float range = c->fog_end - c->fog_start;
                if (range != 0.f)
                    f = (c->fog_end - ez) / range;
                break;
            }
        }
        if (f < 0.f) f = 0.f; else if (f > 1.f) f = 1.f;
        col[0] = f * col[0] + (1.f - f) * c->fog_color[0];
        col[1] = f * col[1] + (1.f - f) * c->fog_color[1];
        col[2] = f * col[2] + (1.f - f) * c->fog_color[2];
    }
    sg_write_fragment(c, x, y, z, col[0], col[1], col[2], col[3]);
}

/* --- 1-pixel wide line (DDA in 16.8 fixed-point). --- */
static void fp_raster_line_1px(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    sg_screen_t x0 = sg_fp_screen_from_float(v0->ndc.x);
    sg_screen_t y0 = sg_fp_screen_from_float(v0->ndc.y);
    sg_screen_t x1 = sg_fp_screen_from_float(v1->ndc.x);
    sg_screen_t y1 = sg_fp_screen_from_float(v1->ndc.y);

    sg_screen_t dx = x1 - x0;
    sg_screen_t dy = y1 - y0;
    int32_t adx = dx < 0 ? -dx : dx;
    int32_t ady = dy < 0 ? -dy : dy;

    /* Step count in pixels matches the float path: max(|dx|,|dy|) rounded.
     * The subpixel magnitudes are already "pixel * 256", so we bring them
     * back to pixel space with a round-to-nearest shift. */
    int32_t steps_fp = adx > ady ? adx : ady;
    int steps = (int)((steps_fp + (SG_FP_SUBPIXEL_ONE >> 1)) >> SG_FP_SUBPIXEL_BITS);
    if (steps < 1) steps = 1;

    /* Per-step increments, in 16.8 subpixels per pixel-step.
     * major axis: exactly +/- SUBPIXEL_ONE per step.
     * minor axis: (minor_delta / step_count), rounded.
     * Using i64 for the division keeps the 8-bit fractional precision. */
    int64_t step_dx_fp, step_dy_fp;
    step_dx_fp = (int64_t)dx / (int64_t)steps;
    step_dy_fp = (int64_t)dy / (int64_t)steps;

    /* Accumulators fit in i32 easily (640*256 max + steps*step ~ same range)
     * but we step them as i64 to share the type with the pre-computed step
     * and let the compiler avoid partial-register stalls. */
    int64_t x_fp = x0;
    int64_t y_fp = y0;

    /* Polygon offset (line) - float, same formula as float path. */
    float z_offset = 0.f;
    if (c->polygon_offset_line && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        float fadx = (float)adx * (1.0f / (float)SG_FP_SUBPIXEL_ONE);
        float fady = (float)ady * (1.0f / (float)SG_FP_SUBPIXEL_ONE);
        float dz = v1->ndc.z - v0->ndc.z;
        float max_slope = 0.f;
        if (fadx > 0.f) { float s = fabsf(dz / fadx); if (s > max_slope) max_slope = s; }
        if (fady > 0.f) { float s = fabsf(dz / fady); if (s > max_slope) max_slope = s; }
        z_offset = c->polygon_offset_factor * max_slope
                 + c->polygon_offset_units  * 1e-6f;
    }

    float inv_steps = 1.f / (float)steps;

    for (int i = 0; i <= steps; i++) {
        int ix = (int)(x_fp >> SG_FP_SUBPIXEL_BITS);
        int iy = (int)(y_fp >> SG_FP_SUBPIXEL_BITS);

        /* Line stipple: same per-pixel counter semantics as the float path.
         * Increment whether or not the fragment is emitted; skip emit when
         * the pattern bit is 0. The counter is persistent across segments. */
        int emit = 1;
        if (c->line_stipple_enable) {
            int factor = c->line_stipple_factor < 1 ? 1 : c->line_stipple_factor;
            int bit = (c->line_stipple_counter / factor) & 15;
            c->line_stipple_counter++;
            if (!(c->line_stipple_pattern & (1u << bit))) emit = 0;
        }

        if (emit) {
            float t = (float)i * inv_steps;
            float z = v0->ndc.z + (v1->ndc.z - v0->ndc.z) * t + z_offset;
            float col[4];
            col[0] = v0->color.x + (v1->color.x - v0->color.x) * t;
            col[1] = v0->color.y + (v1->color.y - v0->color.y) * t;
            col[2] = v0->color.z + (v1->color.z - v0->color.z) * t;
            col[3] = v0->color.w + (v1->color.w - v0->color.w) * t;
            float ez = v0->eye.z + (v1->eye.z - v0->eye.z) * t;
            fp_line_fragment(c, ix, iy, z, col, ez);
        }

        x_fp += step_dx_fp;
        y_fp += step_dy_fp;
    }
}

/* --- Wide line (axis-aligned thickness stamp). --- */
static void fp_raster_line_wide(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, int width) {
    sg_screen_t x0 = sg_fp_screen_from_float(v0->ndc.x);
    sg_screen_t y0 = sg_fp_screen_from_float(v0->ndc.y);
    sg_screen_t x1 = sg_fp_screen_from_float(v1->ndc.x);
    sg_screen_t y1 = sg_fp_screen_from_float(v1->ndc.y);

    sg_screen_t dx = x1 - x0;
    sg_screen_t dy = y1 - y0;
    int32_t adx = dx < 0 ? -dx : dx;
    int32_t ady = dy < 0 ? -dy : dy;

    int32_t steps_fp = adx > ady ? adx : ady;
    int steps = (int)((steps_fp + (SG_FP_SUBPIXEL_ONE >> 1)) >> SG_FP_SUBPIXEL_BITS);
    if (steps < 1) steps = 1;

    int64_t step_dx_fp = (int64_t)dx / (int64_t)steps;
    int64_t step_dy_fp = (int64_t)dy / (int64_t)steps;

    int64_t x_fp = x0;
    int64_t y_fp = y0;

    /* OpenGL wide-line rule (non-smooth): thickness in the minor axis. */
    int vertical_major = (ady > adx);
    int half = width / 2;

    float inv_steps = 1.f / (float)steps;

    for (int i = 0; i <= steps; i++) {
        int ix = (int)(x_fp >> SG_FP_SUBPIXEL_BITS);
        int iy = (int)(y_fp >> SG_FP_SUBPIXEL_BITS);

        float t = (float)i * inv_steps;
        float z = v0->ndc.z + (v1->ndc.z - v0->ndc.z) * t;
        float col[4];
        col[0] = v0->color.x + (v1->color.x - v0->color.x) * t;
        col[1] = v0->color.y + (v1->color.y - v0->color.y) * t;
        col[2] = v0->color.z + (v1->color.z - v0->color.z) * t;
        col[3] = v0->color.w + (v1->color.w - v0->color.w) * t;
        float ez = v0->eye.z + (v1->eye.z - v0->eye.z) * t;

        for (int k = -half; k < width - half; k++) {
            int px, py;
            if (vertical_major) { px = ix + k; py = iy; }
            else                { px = ix;     py = iy + k; }
            float c4[4] = { col[0], col[1], col[2], col[3] };
            fp_line_fragment(c, px, py, z, c4, ez);
        }

        x_fp += step_dx_fp;
        y_fp += step_dy_fp;
    }
}

void sg_raster_line_fp(softgl_ctx *c,
                       const sg_vert *v0,
                       const sg_vert *v1,
                       int width) {
    if (width <= 1) fp_raster_line_1px (c, v0, v1);
    else            fp_raster_line_wide(c, v0, v1, width);
}

/* --- Point rasterizer: integer stamp centered on the fixed-point
 * pixel center. For point_size == 1 this emits exactly one fragment.
 * Framebuffer + scissor bounds are handled inside sg_write_fragment,
 * so out-of-bounds lanes of the stamp are silent no-ops. --- */
void sg_raster_point_fp(softgl_ctx *c, const sg_vert *v) {
    float sz = c->point_size;
    if (sz < 1.f) sz = 1.f;
    int size = (int)(sz + 0.5f);
    if (size < 1) size = 1;

    /* Round half-up to pixel center. For size==1 this matches floor()
     * of the float path (floor(x) == (x_fp >> BITS) when x_fp >= 0).
     * For larger stamps the stamp is centered with the same half-offset
     * as the float path. */
    sg_screen_t x_fp = sg_fp_screen_from_float(v->ndc.x);
    sg_screen_t y_fp = sg_fp_screen_from_float(v->ndc.y);
    int cx = (int)(x_fp >> SG_FP_SUBPIXEL_BITS);
    int cy = (int)(y_fp >> SG_FP_SUBPIXEL_BITS);
    int half = size / 2;
    int x0 = cx - half;
    int y0 = cy - half;
    int x1 = x0 + size;
    int y1 = y0 + size;

    float col[4] = { v->color.x, v->color.y, v->color.z, v->color.w };
    float ez = v->eye.z;
    float z  = v->ndc.z;
    if (c->polygon_offset_point && (c->polygon_offset_factor != 0.f ||
                                     c->polygon_offset_units  != 0.f)) {
        /* Matches the float path: points have zero screen-space z slope,
         * so only the constant units term contributes. */
        z += c->polygon_offset_units * 1e-6f;
    }

    /* Scalar stamp. SIMD would help only for size >= 4 and has to
     * coordinate with sg_write_fragment, which already does the scissor
     * + bounds test per pixel. Defer that to FP-5 if needed. */
    for (int y = y0; y < y1; y++) {
        for (int x = x0; x < x1; x++) {
            float c4[4] = { col[0], col[1], col[2], col[3] };
            fp_line_fragment(c, x, y, z, c4, ez);
        }
    }
}
