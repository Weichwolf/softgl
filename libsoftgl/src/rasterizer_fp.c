#include "types.h"
#include "fp_types.h"
#include <math.h>

/* =====================================================================
 * Phase FP-2: real fixed-point triangle rasterizer (scalar).
 *
 * Edge functions evaluated in 16.8 subpixel screen space. Accumulators
 * are i64 (32.16 product, stepped by i64 deltas). Top-left fill rule
 * applied via per-edge bias so edge pixels hitting exactly E==0 are
 * included for top/left edges and excluded otherwise.
 *
 * Barycentrics and attribute interpolation still run in float in FP-2:
 * the dominant FP-2 payoff is fill-rule parity with llvmpipe, not
 * interpolation precision (that ships in FP-3).
 *
 * Lines and points remain fallback via float rasterizer (FP-4 port).
 * ===================================================================== */

/* Float rasterizer helpers we reuse. */
extern void sg_raster_line_1px (softgl_ctx *c, const sg_vert *v0, const sg_vert *v1);
extern void sg_raster_line_wide(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, int width);
extern void sg_raster_point    (softgl_ctx *c, const sg_vert *v);
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

    /* --- Signed area × 2 in fixed-point.
     * (x1-x0) is 16.8, (y2-y0) is 16.8 => product is 32.16 in i64. */
    int64_t area2 = (int64_t)(x1 - x0) * (int64_t)(y2 - y0)
                  - (int64_t)(y1 - y0) * (int64_t)(x2 - x0);
    if (area2 <= 0) return;   /* degenerate or CW (back-face) */

    /* --- B. Top-left biases. Inside iff (E + bias) >= 0. ---
     * bias = 0 for top/left edges (E==0 counts as inside),
     * bias = -1 otherwise (E==0 pushed to outside). */
    int bias0 = fp_is_top_left(x1, y1, x2, y2) ? 0 : -1;   /* edge opposite v0 */
    int bias1 = fp_is_top_left(x2, y2, x0, y0) ? 0 : -1;   /* edge opposite v1 */
    int bias2 = fp_is_top_left(x0, y0, x1, y1) ? 0 : -1;   /* edge opposite v2 */

    /* --- C. Bounding box in pixels, clipped to viewport + scissor. ---
     * Float coords use pixel-center sampling at x+0.5. Convert the
     * fixed-point AABB so we include every pixel whose center might
     * lie inside the triangle.
     *
     * Pixel x is "in" iff its center (x+0.5) lies within [min/256, max/256].
     * A conservative and simple range is:
     *   ix_min = floor(min_fp / 256)
     *   ix_max = floor(max_fp / 256) + 1  (exclusive upper bound)
     * The edge test will reject pixels whose center actually sits off
     * the triangle. */
    sg_screen_t min_x_fp = x0; if (x1 < min_x_fp) min_x_fp = x1; if (x2 < min_x_fp) min_x_fp = x2;
    sg_screen_t max_x_fp = x0; if (x1 > max_x_fp) max_x_fp = x1; if (x2 > max_x_fp) max_x_fp = x2;
    sg_screen_t min_y_fp = y0; if (y1 < min_y_fp) min_y_fp = y1; if (y2 < min_y_fp) min_y_fp = y2;
    sg_screen_t max_y_fp = y0; if (y1 > max_y_fp) max_y_fp = y1; if (y2 > max_y_fp) max_y_fp = y2;

    int ix0 = (int)(min_x_fp >> SG_FP_SUBPIXEL_BITS);
    int iy0 = (int)(min_y_fp >> SG_FP_SUBPIXEL_BITS);
    int ix1 = (int)(max_x_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    int iy1 = (int)(max_y_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    /* Negative values truncate toward zero for arithmetic shift of a
     * negative i32 — but sg_screen_t is i32 and >> on signed is impl-
     * defined in C89/C99 (implementation-defined in C11, "arithmetic
     * shift" on every compiler we build with). Guard anyway: */
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

    /* --- Start sample: pixel center at (ix0+0.5, iy0+0.5) in 16.8.
     * px_fp = ix0*256 + 128, same for py. */
    const sg_screen_t half = SG_FP_SUBPIXEL_ONE >> 1;   /* 128 */
    sg_screen_t px_start = (sg_screen_t)ix0 * SG_FP_SUBPIXEL_ONE + half;
    sg_screen_t py_start = (sg_screen_t)iy0 * SG_FP_SUBPIXEL_ONE + half;

    /* --- Edge functions at the start sample. Each E is 32.16 in i64. ---
     * E(p) = (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x)
     * Stepping:
     *   dE/dx = -(b.y - a.y)   (one 16.8 delta)
     *   dE/dy =  (b.x - a.x)   (one 16.8 delta)
     * Per pixel/row step adds the delta multiplied by SUBPIXEL_ONE
     * (since p advances by one whole pixel = 256 in subpixel units).
     * We fold that 256 into the step constant. */
    int64_t E0_row = (int64_t)(x2 - x1) * (int64_t)(py_start - y1)
                   - (int64_t)(y2 - y1) * (int64_t)(px_start - x1);
    int64_t E1_row = (int64_t)(x0 - x2) * (int64_t)(py_start - y2)
                   - (int64_t)(y0 - y2) * (int64_t)(px_start - x2);
    int64_t E2_row = (int64_t)(x1 - x0) * (int64_t)(py_start - y0)
                   - (int64_t)(y1 - y0) * (int64_t)(px_start - x0);

    /* Per-pixel (dx) and per-row (dy) step constants — pre-multiplied
     * by SUBPIXEL_ONE so a whole-pixel step just adds them once. */
    int64_t dE0_dx = -(int64_t)(y2 - y1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE0_dy =  (int64_t)(x2 - x1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dx = -(int64_t)(y0 - y2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dy =  (int64_t)(x0 - x2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dx = -(int64_t)(y1 - y0) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dy =  (int64_t)(x1 - x0) * (int64_t)SG_FP_SUBPIXEL_ONE;

    /* Scale for bary normalization. Both E and area2 are 32.16, so
     * the ratio is dimensionless — no shift needed. */
    float inv_area_f = 1.0f / (float)area2;

    /* --- Polygon offset (fill): same formula as the float path. --- */
    float z_offset = 0.f;
    if (c->polygon_offset_fill && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        /* Operate in float: dz/dx and dz/dy in screen space.
         * Use float x/y (pre-fp) for max fidelity. */
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

    /* --- F. Per-pixel loop, Pineda-style. --- */
    for (int y = iy0; y < iy1; y++) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        for (int x = ix0; x < ix1; x++) {
            /* Inside iff all three (E + bias) >= 0. */
            if ((E0 + bias0) >= 0 && (E1 + bias1) >= 0 && (E2 + bias2) >= 0) {
                /* Polygon stipple (same window-space convention as float). */
                if (c->polygon_stipple_enable) {
                    int sx = x & 31;
                    int sy = y & 31;
                    GLubyte row = c->polygon_stipple[sy * 4 + (sx >> 3)];
                    if (!(row & (0x80u >> (sx & 7)))) goto step;
                }

                /* Float barycentrics from i64 edge values. E values are
                 * already signed — just cast and normalize. */
                float b0 = (float)E0 * inv_area_f;
                float b1 = (float)E1 * inv_area_f;
                float b2 = 1.f - b0 - b1;   /* algebraic closure */

                /* Perspective-correct: w_i = b_i * inv_w_i. */
                float w0 = b0 * invw0;
                float w1 = b1 * invw1;
                float w2 = b2 * invw2;
                float wsum = w0 + w1 + w2;
                if (wsum <= 0.f) goto step;
                float one_over_wsum = 1.0f / wsum;

                /* Depth: screen-linear, not perspective-corrected. */
                float z = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;

                /* Color (perspective-correct). */
                float col[4];
                fp_lerp_pc(col, &v0->color, &v1->color, &v2->color,
                           w0, w1, w2, one_over_wsum);

                float eye_z = (v0->eye.z * w0 + v1->eye.z * w1 + v2->eye.z * w2) * one_over_wsum;

                float primary[4] = { col[0], col[1], col[2], col[3] };

                /* Texture sampling per unit + combiner — unchanged. */
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
        step:
            E0 += dE0_dx;
            E1 += dE1_dx;
            E2 += dE2_dx;
        }
        E0_row += dE0_dy;
        E1_row += dE1_dy;
        E2_row += dE2_dy;
    }
}

/* Lines + points: FP-4 will port these. For now keep the float path via
 * an inline float->fp->float round-trip so the FIXED backend still runs
 * through the fp_types quantization on the geometry channels. */
static sg_fp_vert sg_fp_from_vert(const sg_vert *v) {
    sg_fp_vert out;
    out.x     = sg_fp_screen_from_float(v->ndc.x);
    out.y     = sg_fp_screen_from_float(v->ndc.y);
    out.z     = sg_fp_depth_from_float (v->ndc.z);
    out.inv_w = sg_fp_invw_from_float  (v->ndc.w);
    out.color[0] = v->color.x; out.color[1] = v->color.y;
    out.color[2] = v->color.z; out.color[3] = v->color.w;
    out.normal[0] = v->normal.x; out.normal[1] = v->normal.y; out.normal[2] = v->normal.z;
    out.eye_z = v->eye.z;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        out.uv[u][0] = v->uv[u].x; out.uv[u][1] = v->uv[u].y;
        out.uv[u][2] = v->uv[u].z; out.uv[u][3] = v->uv[u].w;
    }
    return out;
}

static sg_vert sg_vert_from_fp(const sg_fp_vert *fp, const sg_vert *src) {
    sg_vert out = *src;
    out.ndc.x = sg_fp_screen_to_float(fp->x);
    out.ndc.y = sg_fp_screen_to_float(fp->y);
    out.ndc.z = sg_fp_depth_to_float (fp->z);
    out.ndc.w = (float)fp->inv_w * (1.0f / 65536.0f);
    out.color.x = fp->color[0]; out.color.y = fp->color[1];
    out.color.z = fp->color[2]; out.color.w = fp->color[3];
    out.normal.x = fp->normal[0]; out.normal.y = fp->normal[1]; out.normal.z = fp->normal[2];
    out.eye.z = fp->eye_z;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        out.uv[u].x = fp->uv[u][0]; out.uv[u].y = fp->uv[u][1];
        out.uv[u].z = fp->uv[u][2]; out.uv[u].w = fp->uv[u][3];
    }
    return out;
}

void sg_raster_line_fp(softgl_ctx *c,
                       const sg_vert *v0,
                       const sg_vert *v1,
                       int width) {
    sg_fp_vert fp0 = sg_fp_from_vert(v0);
    sg_fp_vert fp1 = sg_fp_from_vert(v1);
    sg_vert f0 = sg_vert_from_fp(&fp0, v0);
    sg_vert f1 = sg_vert_from_fp(&fp1, v1);
    if (width <= 1) sg_raster_line_1px (c, &f0, &f1);
    else            sg_raster_line_wide(c, &f0, &f1, width);
}

void sg_raster_point_fp(softgl_ctx *c, const sg_vert *v0) {
    sg_fp_vert fp0 = sg_fp_from_vert(v0);
    sg_vert    f0  = sg_vert_from_fp(&fp0, v0);
    sg_raster_point(c, &f0);
}
