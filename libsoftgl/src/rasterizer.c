#include "types.h"
#include "frag_hot.h"
#include <math.h>
#include <string.h>

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
void sg_tex_env_combine(const sg_tex_env *env, const float in[4], const float tex[4], float out[4]);
void sg_tex_env_combine_full(const sg_tex_env *env, int current_unit,
                             const float primary[4],
                             const float previous[4],
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             float out[4]);

/* =====================================================================
 * Triangle rasterizer. Pineda edge functions, tile-by-tile traversal,
 * scalar-per-pixel evaluation for now. The inner loop is structured so
 * a 2x2 or 4x1 SIMD quad can slot in by replacing the per-pixel edge
 * accumulator with a SIMD vector + per-step constants.
 *
 * Coordinate convention: y=0 is the bottom row of the framebuffer, matching
 * OpenGL's glReadPixels memory layout.
 * ===================================================================== */

/* Edge function: 2D signed area * 2 for edge (a,b), positive if p is on CCW side. */
SG_INLINE float sg_edge(float ax, float ay, float bx, float by, float px, float py) {
    return (bx - ax) * (py - ay) - (by - ay) * (px - ax);
}

/* Blend a fragment into the framebuffer at (x, y). Exported so lines.c reuses it. */
void sg_write_fragment(softgl_ctx *c, int x, int y, float z, float r, float g, float b, float a);
void sg_write_fragment(softgl_ctx *c, int x, int y, float z, float r, float g, float b, float a) {
    if (x < 0 || y < 0 || x >= c->fb.w || y >= c->fb.h) return;
    if (c->scissor_enabled) {
        if (x < c->scissor[0] || y < c->scissor[1] ||
            x >= c->scissor[0] + c->scissor[2] ||
            y >= c->scissor[1] + c->scissor[3]) return;
    }
    int idx = y * c->fb.w + x;

    /* Alpha test (spec §4.1 before stencil). */
    if (c->alpha_test) {
        int pass = 0;
        switch (c->alpha_func) {
            case GL_NEVER:    pass = 0; break;
            case GL_LESS:     pass = a < c->alpha_ref; break;
            case GL_EQUAL:    pass = a == c->alpha_ref; break;
            case GL_LEQUAL:   pass = a <= c->alpha_ref; break;
            case GL_GREATER:  pass = a > c->alpha_ref; break;
            case GL_NOTEQUAL: pass = a != c->alpha_ref; break;
            case GL_GEQUAL:   pass = a >= c->alpha_ref; break;
            case GL_ALWAYS:   pass = 1; break;
            default:          pass = 1; break;
        }
        if (!pass) return;
    }

    /* Stencil test. Stencil op is applied even if the later depth test fails;
     * depth write however is gated on both tests passing. */
    uint8_t s_cur = c->fb.stencil[idx];
    int s_pass = 1;
    if (c->stencil_test) {
        uint8_t s_ref = (uint8_t)(((uint32_t)c->stencil_ref) & c->stencil_value_mask);
        uint8_t s_val = (uint8_t)(s_cur & c->stencil_value_mask);
        switch (c->stencil_func) {
            case GL_NEVER:    s_pass = 0; break;
            case GL_LESS:     s_pass = s_ref <  s_val; break;
            case GL_LEQUAL:   s_pass = s_ref <= s_val; break;
            case GL_GREATER:  s_pass = s_ref >  s_val; break;
            case GL_GEQUAL:   s_pass = s_ref >= s_val; break;
            case GL_EQUAL:    s_pass = s_ref == s_val; break;
            case GL_NOTEQUAL: s_pass = s_ref != s_val; break;
            case GL_ALWAYS:   s_pass = 1; break;
            default:          s_pass = 1; break;
        }
    }

    /* Depth test (result only — write deferred until we know stencil+depth pass). */
    int d_pass = 1;
    if (c->depth_test) {
        float d = c->fb.depth[idx];
        switch (c->depth_func) {
            case GL_NEVER:    d_pass = 0; break;
            case GL_LESS:     d_pass = z < d; break;
            case GL_EQUAL:    d_pass = z == d; break;
            case GL_LEQUAL:   d_pass = z <= d; break;
            case GL_GREATER:  d_pass = z > d; break;
            case GL_NOTEQUAL: d_pass = z != d; break;
            case GL_GEQUAL:   d_pass = z >= d; break;
            case GL_ALWAYS:   d_pass = 1; break;
            default:          d_pass = z < d; break;
        }
    }

    /* Stencil op selection + update. */
    if (c->stencil_test) {
        GLenum op;
        if      (!s_pass) op = c->stencil_sfail;
        else if (!d_pass) op = c->stencil_dpfail;
        else              op = c->stencil_dppass;

        uint8_t s_new = s_cur;
        switch (op) {
            case GL_KEEP:      s_new = s_cur; break;
            case GL_ZERO:      s_new = 0; break;
            case GL_REPLACE:   s_new = (uint8_t)(c->stencil_ref & 0xFF); break;
            case GL_INCR:      s_new = (s_cur < 0xFF) ? (uint8_t)(s_cur + 1) : 0xFF; break;
            case GL_INCR_WRAP: s_new = (uint8_t)(s_cur + 1); break;
            case GL_DECR:      s_new = (s_cur > 0) ? (uint8_t)(s_cur - 1) : 0; break;
            case GL_DECR_WRAP: s_new = (uint8_t)(s_cur - 1); break;
            case GL_INVERT:    s_new = (uint8_t)(~s_cur); break;
            default:           s_new = s_cur; break;
        }
        uint8_t wm = (uint8_t)(c->stencil_write_mask & 0xFFu);
        c->fb.stencil[idx] = (uint8_t)((s_new & wm) | (s_cur & (uint8_t)~wm));
    }

    if (!s_pass) return;
    if (!d_pass) return;

    /* Depth write now that both tests passed. */
    if (c->depth_test && c->depth_mask) c->fb.depth[idx] = z;

    uint8_t *px = c->fb.color + idx * 4;
    /* Per spec, when COLOR_LOGIC_OP is enabled it takes priority over BLEND. */
    if (c->color_logic_op_enabled) {
        uint8_t sr = sg_quantize(r), sg_ = sg_quantize(g),
                sb = sg_quantize(b), sa = sg_quantize(a);
        uint8_t dr = px[0], dg = px[1], db = px[2], da = px[3];
        uint8_t nr = sr, ng = sg_, nb = sb, na = sa;
        switch (c->logic_op) {
            case GL_CLEAR:         nr = ng = nb = na = 0x00; break;
            case GL_SET:           nr = ng = nb = na = 0xFF; break;
            case GL_COPY:          nr = sr; ng = sg_; nb = sb; na = sa; break;
            case GL_COPY_INVERTED: nr = (uint8_t)~sr; ng = (uint8_t)~sg_;
                                   nb = (uint8_t)~sb; na = (uint8_t)~sa; break;
            case GL_NOOP:          nr = dr; ng = dg; nb = db; na = da; break;
            case GL_INVERT:        nr = (uint8_t)~dr; ng = (uint8_t)~dg;
                                   nb = (uint8_t)~db; na = (uint8_t)~da; break;
            case GL_AND:           nr = sr & dr; ng = sg_ & dg;
                                   nb = sb & db; na = sa & da; break;
            case GL_NAND:          nr = (uint8_t)~(sr & dr); ng = (uint8_t)~(sg_ & dg);
                                   nb = (uint8_t)~(sb & db); na = (uint8_t)~(sa & da); break;
            case GL_OR:            nr = sr | dr; ng = sg_ | dg;
                                   nb = sb | db; na = sa | da; break;
            case GL_NOR:           nr = (uint8_t)~(sr | dr); ng = (uint8_t)~(sg_ | dg);
                                   nb = (uint8_t)~(sb | db); na = (uint8_t)~(sa | da); break;
            case GL_XOR:           nr = sr ^ dr; ng = sg_ ^ dg;
                                   nb = sb ^ db; na = sa ^ da; break;
            case GL_EQUIV:         nr = (uint8_t)~(sr ^ dr); ng = (uint8_t)~(sg_ ^ dg);
                                   nb = (uint8_t)~(sb ^ db); na = (uint8_t)~(sa ^ da); break;
            case GL_AND_REVERSE:   nr = sr & (uint8_t)~dr; ng = sg_ & (uint8_t)~dg;
                                   nb = sb & (uint8_t)~db; na = sa & (uint8_t)~da; break;
            case GL_AND_INVERTED:  nr = (uint8_t)~sr & dr; ng = (uint8_t)~sg_ & dg;
                                   nb = (uint8_t)~sb & db; na = (uint8_t)~sa & da; break;
            case GL_OR_REVERSE:    nr = sr | (uint8_t)~dr; ng = sg_ | (uint8_t)~dg;
                                   nb = sb | (uint8_t)~db; na = sa | (uint8_t)~da; break;
            case GL_OR_INVERTED:   nr = (uint8_t)~sr | dr; ng = (uint8_t)~sg_ | dg;
                                   nb = (uint8_t)~sb | db; na = (uint8_t)~sa | da; break;
            default: break;
        }
        if (c->color_mask[0]) px[0] = nr;
        if (c->color_mask[1]) px[1] = ng;
        if (c->color_mask[2]) px[2] = nb;
        if (c->color_mask[3]) px[3] = na;
        return;
    }
    if (c->blend) {
        /* Simple blend: only SRC_ALPHA/ONE_MINUS_SRC_ALPHA and ONE/ONE for now. */
        float dr = px[0] * (1.0f / 255.0f);
        float dg = px[1] * (1.0f / 255.0f);
        float db = px[2] * (1.0f / 255.0f);
        float da = px[3] * (1.0f / 255.0f);
        float sf_r = 1.f, sf_g = 1.f, sf_b = 1.f, sf_a = 1.f;
        float df_r = 0.f, df_g = 0.f, df_b = 0.f, df_a = 0.f;
        switch (c->blend_src) {
            case GL_ZERO: sf_r = sf_g = sf_b = sf_a = 0.f; break;
            case GL_ONE:  sf_r = sf_g = sf_b = sf_a = 1.f; break;
            case GL_SRC_ALPHA: sf_r = sf_g = sf_b = sf_a = a; break;
            case GL_ONE_MINUS_SRC_ALPHA: sf_r = sf_g = sf_b = sf_a = 1.f - a; break;
            case GL_DST_ALPHA: sf_r = sf_g = sf_b = sf_a = da; break;
            case GL_ONE_MINUS_DST_ALPHA: sf_r = sf_g = sf_b = sf_a = 1.f - da; break;
            default: break;
        }
        switch (c->blend_dst) {
            case GL_ZERO: df_r = df_g = df_b = df_a = 0.f; break;
            case GL_ONE:  df_r = df_g = df_b = df_a = 1.f; break;
            case GL_SRC_ALPHA: df_r = df_g = df_b = df_a = a; break;
            case GL_ONE_MINUS_SRC_ALPHA: df_r = df_g = df_b = df_a = 1.f - a; break;
            case GL_DST_ALPHA: df_r = df_g = df_b = df_a = da; break;
            case GL_ONE_MINUS_DST_ALPHA: df_r = df_g = df_b = df_a = 1.f - da; break;
            default: break;
        }
        r = r * sf_r + dr * df_r;
        g = g * sf_g + dg * df_g;
        b = b * sf_b + db * df_b;
        a = a * sf_a + da * df_a;
    }

    if (c->color_mask[0]) px[0] = sg_quantize(r);
    if (c->color_mask[1]) px[1] = sg_quantize(g);
    if (c->color_mask[2]) px[2] = sg_quantize(b);
    if (c->color_mask[3]) px[3] = sg_quantize(a);

    /* Occlusion-query sample counting (Phase 9). Only fragments that passed
     * the full test stack (scissor/alpha/stencil/depth) AND actually wrote
     * color participate per spec — we reach this point exactly when that
     * holds. GL_SAMPLES_PASSED accumulates the per-fragment count (we run
     * at 1 sample/pixel); GL_ANY_SAMPLES_PASSED is a sticky boolean. */
    GLuint qsid = c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED];
    if (qsid) {
        sg_query *q = sg_query_get(c, qsid);
        if (q && q->active) q->result += 1;
    }
    GLuint qaid = c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED];
    if (qaid) {
        sg_query *q = sg_query_get(c, qaid);
        if (q && q->active) q->result = 1;
    }
}

/* Linear-interpolate a vec4 attribute perspective-correctly. */
SG_INLINE void sg_lerp_pc(float out[4], const sg_vec4 *a0, const sg_vec4 *a1, const sg_vec4 *a2,
                          float w0, float w1, float w2, float one_over_w) {
    /* bary weights w0..w2 are barycentric * 1/w at that vertex; one_over_w is reciprocal
     * of (w0+w1+w2). */
    float s = one_over_w;
    out[0] = (a0->x * w0 + a1->x * w1 + a2->x * w2) * s;
    out[1] = (a0->y * w0 + a1->y * w1 + a2->y * w2) * s;
    out[2] = (a0->z * w0 + a1->z * w1 + a2->z * w2) * s;
    out[3] = (a0->w * w0 + a1->w * w1 + a2->w * w2) * s;
}

void sg_raster_triangle(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2) {
    /* Screen-space coords live in v->ndc.xy. 1/w lives in ndc.w. depth in ndc.z. */
    float x0 = v0->ndc.x, y0 = v0->ndc.y;
    float x1 = v1->ndc.x, y1 = v1->ndc.y;
    float x2 = v2->ndc.x, y2 = v2->ndc.y;

    /* Bounding box clipped to framebuffer / scissor. */
    float minx = floorf(fminf(x0, fminf(x1, x2)));
    float maxx = ceilf(fmaxf(x0, fmaxf(x1, x2)));
    float miny = floorf(fminf(y0, fminf(y1, y2)));
    float maxy = ceilf(fmaxf(y0, fmaxf(y1, y2)));
    int ix0 = (int)minx; int ix1 = (int)maxx;
    int iy0 = (int)miny; int iy1 = (int)maxy;
    if (ix0 < 0) ix0 = 0;
    if (iy0 < 0) iy0 = 0;
    if (ix1 > c->fb.w)  ix1 = c->fb.w;
    if (iy1 > c->fb.h)  iy1 = c->fb.h;
    if (c->scissor_enabled) {
        int sx0 = c->scissor[0], sy0 = c->scissor[1];
        int sx1 = sx0 + c->scissor[2], sy1 = sy0 + c->scissor[3];
        if (ix0 < sx0) ix0 = sx0;
        if (iy0 < sy0) iy0 = sy0;
        if (ix1 > sx1) ix1 = sx1;
        if (iy1 > sy1) iy1 = sy1;
    }
    if (ix0 >= ix1 || iy0 >= iy1) return;

    /* Precompute area (edge function for full triangle). Triangle is CCW by caller. */
    float area = sg_edge(x0, y0, x1, y1, x2, y2);
    if (area <= 0.f) return;
    float inv_area = 1.0f / area;

    float invw0 = v0->ndc.w;
    float invw1 = v1->ndc.w;
    float invw2 = v2->ndc.w;

    /* Hoist all triangle-invariant tex-env / texture state out of the
     * per-pixel loop. Each pixel now does an O(1) lookup into the prepared
     * context instead of walking env->enabled_target[] and hitting
     * sg_texture_get() 4× per unit. */
    sg_tex_tri_ctx tctx;
    sg_tex_tri_prepare(c, &tctx);

    /* Polygon offset (fill): constant bias added to z. slope = max(|dz/dx|,|dz/dy|). */
    float z_offset = 0.f;
    if (c->polygon_offset_fill && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        float z0v = v0->ndc.z, z1v = v1->ndc.z, z2v = v2->ndc.z;
        float dzdx = ((z1v - z0v) * (y2 - y0) - (z2v - z0v) * (y1 - y0)) / area;
        float dzdy = ((z2v - z0v) * (x1 - x0) - (z1v - z0v) * (x2 - x0)) / area;
        float adx = dzdx < 0.f ? -dzdx : dzdx;
        float ady = dzdy < 0.f ? -dzdy : dzdy;
        float slope = adx > ady ? adx : ady;
        z_offset = c->polygon_offset_factor * slope
                 + c->polygon_offset_units  * 1e-6f;
    }

    /* Per-pixel loop. Sample at pixel centers (x+0.5, y+0.5). */
    for (int y = iy0; y < iy1; y++) {
        float py = (float)y + 0.5f;
        for (int x = ix0; x < ix1; x++) {
            float px = (float)x + 0.5f;
            float e0 = sg_edge(x1, y1, x2, y2, px, py);  /* opposite v0 */
            float e1 = sg_edge(x2, y2, x0, y0, px, py);  /* opposite v1 */
            float e2 = sg_edge(x0, y0, x1, y1, px, py);  /* opposite v2 */
            if (e0 < 0.f || e1 < 0.f || e2 < 0.f) continue;
            /* Polygon stipple (Phase X): 32x32 bit pattern in window coords. */
            if (c->polygon_stipple_enable) {
                int sx = x & 31;
                int sy = y & 31;
                GLubyte row = c->polygon_stipple[sy * 4 + (sx >> 3)];
                if (!(row & (0x80u >> (sx & 7)))) continue;
            }

            /* Barycentric weights, with top-left fill rule applied implicitly by >= 0. */
            float b0 = e0 * inv_area;
            float b1 = e1 * inv_area;
            float b2 = e2 * inv_area;

            /* Perspective-correct interpolation: divide each bary by w, renormalize. */
            float w0 = b0 * invw0;
            float w1 = b1 * invw1;
            float w2 = b2 * invw2;
            float wsum = w0 + w1 + w2;
            if (wsum <= 0.f) continue;
            float one_over_wsum = 1.0f / wsum;

            /* Depth is linear in screen space, interpolate with raw bary. */
            float z = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;

            /* Color (perspective-correct). */
            float col[4];
            sg_lerp_pc(col, &v0->color, &v1->color, &v2->color, w0, w1, w2, one_over_wsum);

            /* Eye-space z for fog (interpolate perspective-correct). */
            float eye_z = (v0->eye.z * w0 + v1->eye.z * w1 + v2->eye.z * w2) * one_over_wsum;

            /* Primary color: the post-lighting vertex color BEFORE any combiner
             * touches it. Snapshot here so per-unit combiners can reference it
             * via GL_PRIMARY_COLOR independently from GL_PREVIOUS (the running
             * fragment color). */
            float primary[4] = { col[0], col[1], col[2], col[3] };

            /* Texture sampling + combiner. Three paths:
             *   - no units active: skip entirely (col already holds primary)
             *   - fastpath_kind 1/2: single-unit 2D LINEAR REPEAT MODULATE/REPLACE,
             *                        no fog, inlined bilinear fetch, zero function calls
             *   - generic: prepared per-unit context feeds sample + combiner */
            if (tctx.fastpath_kind == 1 || tctx.fastpath_kind == 2) {
                float uu = (v0->uv[0].x * w0 + v1->uv[0].x * w1 + v2->uv[0].x * w2) * one_over_wsum;
                float vv = (v0->uv[0].y * w0 + v1->uv[0].y * w1 + v2->uv[0].y * w2) * one_over_wsum;
                float out[4];
                sg_hot_fastpath_shade(&tctx, tctx.fastpath_kind, uu, vv, primary, out);
                col[0] = out[0]; col[1] = out[1]; col[2] = out[2]; col[3] = out[3];
            } else if (tctx.any_active) {
                float unit_tex[SG_MAX_TEX_UNITS][4];
                int   unit_active[SG_MAX_TEX_UNITS];
                sg_tex_tri_sample_units(&tctx, v0, v1, v2,
                                        w0, w1, w2, one_over_wsum,
                                        unit_tex, unit_active);
                for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
                    if (!unit_active[u]) continue;
                    float out[4];
                    sg_tex_env_combine_full(&c->tex_env[u], u, primary, col, unit_tex, out);
                    col[0] = out[0]; col[1] = out[1]; col[2] = out[2]; col[3] = out[3];
                }
            }

            /* Fog blend (after texturing). Fog coordinate is |eye.z|. */
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
                /* alpha untouched by fog per spec */
            }

            sg_write_fragment(c, x, y, z, col[0], col[1], col[2], col[3]);
        }
    }
}
