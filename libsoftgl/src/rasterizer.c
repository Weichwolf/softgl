#include "types.h"
#include "raster_types.h"
#include "simd.h"
#include "frag_hot.h"
#include <math.h>

/* Under Emscripten (-msimd128), <smmintrin.h> remaps _mm_* onto
 * wasm_simd128. simd.h only pulls it on native SSE4.1, so include
 * here for the raw _mm_* intrinsics in the bilinear/UV hotpath. */
#if !defined(SG_DISABLE_SIMD) && defined(__wasm_simd128__) && !defined(__SSE4_1__)
  #include <smmintrin.h>
#endif

/* Edge functions in 16.8 subpixel space, i64 accumulators. Top-left
 * bias: E==0 inside for top/left edges. SIMD path iterates 2x2 quads. */

extern void sg_write_fragment  (softgl_ctx *c, int x, int y, float z,
                                float r, float g, float b, float a);


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

SG_INLINE void sg_lerp_pc(float out[4],
                                 const sg_vec4 *a0, const sg_vec4 *a1, const sg_vec4 *a2,
                                 float w0, float w1, float w2, float one_over_w) {
    float s = one_over_w;
    out[0] = (a0->x * w0 + a1->x * w1 + a2->x * w2) * s;
    out[1] = (a0->y * w0 + a1->y * w1 + a2->y * w2) * s;
    out[2] = (a0->z * w0 + a1->z * w1 + a2->z * w2) * s;
    out[3] = (a0->w * w0 + a1->w * w1 + a2->w * w2) * s;
}

/* Top-left edge classification (CCW): top/left edges own their boundary pixels. */
SG_INLINE int sg_is_top_left(sg_screen_t ax, sg_screen_t ay,
                             sg_screen_t bx, sg_screen_t by) {
    int dx = (int)(bx - ax);
    int dy = (int)(by - ay);
    if (dy == 0 && dx < 0) return 1;
    if (dy <  0)           return 1;
    return 0;
}

/* Saturating i64->i32. Edge product peaks ~2^34; saturation preserves sign
 * bit for coverage compare. */
SG_INLINE int32_t sg_sat_i64_to_i32(int64_t v) {
    if (v >  (int64_t)0x7FFFFFFF) return  0x7FFFFFFF;
    if (v < -(int64_t)0x7FFFFFFF - 1) return -0x7FFFFFFF - 1;
    return (int32_t)v;
}

/* Per-pixel shader. Caller has verified coverage; E0/E1 are raw i64
 * edge values used to build float barycentrics. */
SG_INLINE void sg_shade_pixel(softgl_ctx *c,
                              const sg_tex_tri_ctx *tctx,
                              const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                              int x, int y,
                              int64_t E0, int64_t E1,
                              float inv_area_f,
                              float invw0, float invw1, float invw2,
                              float z_offset) {
    if (c->polygon_stipple_enable) {
        int sx = x & 31;
        int sy = y & 31;
        GLubyte row = c->polygon_stipple[sy * 4 + (sx >> 3)];
        if (!(row & (0x80u >> (sx & 7)))) return;
    }

    float b0 = (float)E0 * inv_area_f;
    float b1 = (float)E1 * inv_area_f;
    float b2 = 1.f - b0 - b1;

    float w0 = b0 * invw0;
    float w1 = b1 * invw1;
    float w2 = b2 * invw2;
    float wsum = w0 + w1 + w2;
    if (wsum <= 0.f) return;
    float one_over_wsum = 1.0f / wsum;

    /* Depth: screen-linear, not perspective-corrected. */
    float z = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;

    float col[4];
    sg_lerp_pc(col, &v0->color, &v1->color, &v2->color,
               w0, w1, w2, one_over_wsum);

    float eye_z = (v0->eye.z * w0 + v1->eye.z * w1 + v2->eye.z * w2) * one_over_wsum;

    float primary[4] = { col[0], col[1], col[2], col[3] };

    /* Fast-path: 2D LINEAR REPEAT MODULATE/REPLACE, no fog. Integer
     * bilinear variant (up to 1 LSB drift vs float sampler). */
    if (tctx->fastpath_kind == 1 || tctx->fastpath_kind == 2) {
        float uu = (v0->uv[0].x * w0 + v1->uv[0].x * w1 + v2->uv[0].x * w2) * one_over_wsum;
        float vv = (v0->uv[0].y * w0 + v1->uv[0].y * w1 + v2->uv[0].y * w2) * one_over_wsum;
        float out[4];
        sg_hot_fastpath_shade_fast(tctx, tctx->fastpath_kind, uu, vv, primary, out);
        col[0] = out[0]; col[1] = out[1]; col[2] = out[2]; col[3] = out[3];
    } else if (tctx->any_active) {
        float unit_tex[SG_MAX_TEX_UNITS][4];
        int   unit_active[SG_MAX_TEX_UNITS];
        sg_tex_tri_sample_units(tctx, v0, v1, v2,
                                w0, w1, w2, one_over_wsum,
                                unit_tex, unit_active);
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            if (!unit_active[u]) continue;
            float out[4];
            sg_tex_env_combine_full(&c->tex_env[u], u, primary, col, unit_tex, out);
            col[0] = out[0]; col[1] = out[1]; col[2] = out[2]; col[3] = out[3];
        }
    }

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

#if SG_HAVE_SIMD
/* SIMD 2x2-quad shader. Lanes: 0=TL, 1=TR, 2=BL, 3=BR. */

/* Flags that force per-lane scalar fallback. */
SG_INLINE int sg_quad_needs_scalar(const softgl_ctx *c, const sg_tex_tri_ctx *tctx) {
    if (c->stencil_test)             return 1;
    if (c->color_logic_op_enabled)   return 1;
    if (c->polygon_stipple_enable)   return 1;
    if (c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED])     return 1;
    if (c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED]) return 1;
    /* Only LINEAR REPEAT MODULATE/REPLACE fastpath tolerates SIMD
     * barycentric drift; NEAREST / generic combiner force scalar. */
    if (tctx->any_active && tctx->fastpath_kind != 1 && tctx->fastpath_kind != 2)
        return 1;
    return 0;
}

SG_INLINE int sg_blend_fastpath_supported(GLenum f) {
    switch (f) {
        case GL_ZERO:
        case GL_ONE:
        case GL_SRC_ALPHA:
        case GL_ONE_MINUS_SRC_ALPHA:
        case GL_DST_ALPHA:
        case GL_ONE_MINUS_DST_ALPHA:
            return 1;
        default:
            return 0;
    }
}

SG_INLINE sg_f32x4 sg_blend_factor(GLenum f, sg_f32x4 as, sg_f32x4 dst_a) {
    switch (f) {
        case GL_ZERO:                return sg_f32x4_splat(0.f);
        case GL_ONE:                 return sg_f32x4_splat(1.f);
        case GL_SRC_ALPHA:           return as;
        case GL_ONE_MINUS_SRC_ALPHA: return sg_f32x4_sub(sg_f32x4_splat(1.f), as);
        case GL_DST_ALPHA:           return dst_a;
        case GL_ONE_MINUS_DST_ALPHA: return sg_f32x4_sub(sg_f32x4_splat(1.f), dst_a);
        default:                     return sg_f32x4_splat(1.f);
    }
}

SG_INLINE sg_i32x4 sg_alpha_test_simd(GLenum func, sg_f32x4 a_lanes, float ref) {
    sg_f32x4 r = sg_f32x4_splat(ref);
    switch (func) {
        case GL_NEVER:    return sg_i32x4_splat(0);
        case GL_LESS:     return sg_f32x4_lt(a_lanes, r);
        case GL_LEQUAL:   return sg_f32x4_le(a_lanes, r);
        case GL_GREATER:  return sg_f32x4_gt(a_lanes, r);
        case GL_GEQUAL:   return sg_f32x4_ge(a_lanes, r);
        case GL_EQUAL:    return sg_f32x4_eq(a_lanes, r);
        case GL_NOTEQUAL: return sg_f32x4_ne(a_lanes, r);
        case GL_ALWAYS:
        default:          return sg_i32x4_splat(-1);
    }
}

SG_INLINE sg_i32x4 sg_depth_test_simd(GLenum func, sg_f32x4 new_z, sg_f32x4 fb_d) {
    switch (func) {
        case GL_NEVER:    return sg_i32x4_splat(0);
        case GL_LESS:     return sg_f32x4_lt(new_z, fb_d);
        case GL_LEQUAL:   return sg_f32x4_le(new_z, fb_d);
        case GL_GREATER:  return sg_f32x4_gt(new_z, fb_d);
        case GL_GEQUAL:   return sg_f32x4_ge(new_z, fb_d);
        case GL_EQUAL:    return sg_f32x4_eq(new_z, fb_d);
        case GL_NOTEQUAL: return sg_f32x4_ne(new_z, fb_d);
        case GL_ALWAYS:
        default:          return sg_i32x4_splat(-1);
    }
}

SG_INLINE void sg_shade_quad(softgl_ctx *c,
                             const sg_tex_tri_ctx *tctx,
                             const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                             int ix, int iy, unsigned cov,
                             int64_t E0_tl, int64_t E1_tl,
                             int64_t dE0_dx, int64_t dE0_dy,
                             int64_t dE1_dx, int64_t dE1_dy,
                             float inv_area_f,
                             float invw0, float invw1, float invw2,
                             float z_offset) {
    sg_f32x4 e0 = sg_f32x4_set(
        (float) E0_tl,
        (float)(E0_tl + dE0_dx),
        (float)(E0_tl + dE0_dy),
        (float)(E0_tl + dE0_dx + dE0_dy));
    sg_f32x4 e1 = sg_f32x4_set(
        (float) E1_tl,
        (float)(E1_tl + dE1_dx),
        (float)(E1_tl + dE1_dy),
        (float)(E1_tl + dE1_dx + dE1_dy));
    sg_f32x4 inv_a = sg_f32x4_splat(inv_area_f);
    sg_f32x4 b0 = sg_f32x4_mul(e0, inv_a);
    sg_f32x4 b1 = sg_f32x4_mul(e1, inv_a);
    /* Left-associative `1 - b0 - b1` matches scalar path; other
     * groupings drift few ULP, enough to cross NEAREST texel boundaries. */
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);

    sg_f32x4 w0v = sg_f32x4_mul(b0, sg_f32x4_splat(invw0));
    sg_f32x4 w1v = sg_f32x4_mul(b1, sg_f32x4_splat(invw1));
    sg_f32x4 w2v = sg_f32x4_mul(b2, sg_f32x4_splat(invw2));
    sg_f32x4 wsum = sg_f32x4_add(sg_f32x4_add(w0v, w1v), w2v);

    sg_i32x4 wsum_ok = sg_f32x4_gt(wsum, sg_f32x4_splat(0.f));
    sg_i32x4 mask = sg_i32x4_and(sg_mask4_expand(cov), wsum_ok);

    /* Depth: screen-linear, not perspective-corrected. */
    sg_f32x4 z = sg_f32x4_add(
                   sg_f32x4_add(
                       sg_f32x4_mul(b0, sg_f32x4_splat(v0->ndc.z)),
                       sg_f32x4_mul(b1, sg_f32x4_splat(v1->ndc.z))),
                   sg_f32x4_mul(b2, sg_f32x4_splat(v2->ndc.z)));
    z = sg_f32x4_add(z, sg_f32x4_splat(z_offset));

    /* FB address table for the 4 lanes (shared with packed 64-bit I/O). */
    const int fbw        = c->fb.w;
    const int row1_in_fb = (iy + 1) < c->fb.h;
    const int idx_row0   = iy * fbw + ix;
    const int idx_row1   = (iy + 1) * fbw + ix;
    int idxL[4];
    idxL[0] = idx_row0;
    idxL[1] = idx_row0 + 1;
    idxL[2] = idx_row1;
    idxL[3] = idx_row1 + 1;

    /* Early-Z safe only when alpha test off (else alpha could still kill
     * a lane and must not update fb.depth). row1 load gated on iy+1<fb.h. */
    const int early_z = c->depth_test && !c->alpha_test;
    if (early_z) {
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
        __m128i dr0 = _mm_loadl_epi64((const __m128i*)&c->fb.depth[idx_row0]);
        __m128i dr1 = row1_in_fb
            ? _mm_loadl_epi64((const __m128i*)&c->fb.depth[idx_row1])
            : _mm_setzero_si128();
        sg_f32x4 fb_d_early = _mm_castsi128_ps(_mm_unpacklo_epi64(dr0, dr1));
#else
        SG_ALIGN16 float dL0[4];
        dL0[0] = c->fb.depth[idxL[0]];
        dL0[1] = c->fb.depth[idxL[1]];
        dL0[2] = row1_in_fb ? c->fb.depth[idxL[2]] : 0.f;
        dL0[3] = row1_in_fb ? c->fb.depth[idxL[3]] : 0.f;
        sg_f32x4 fb_d_early = sg_f32x4_load(dL0);
#endif
        sg_i32x4 dm_early = sg_depth_test_simd(c->depth_func, z, fb_d_early);
        mask = sg_i32x4_and(mask, dm_early);
        if (!sg_mask4_live(mask)) return;
    }

    sg_f32x4 one = sg_f32x4_splat(1.f);
    sg_f32x4 inv_wsum = sg_f32x4_div(one, sg_f32x4_max(wsum, sg_f32x4_splat(1e-30f)));

    /* Perspective-correct colour. */
    sg_f32x4 cr = sg_f32x4_mul(sg_f32x4_add(
                    sg_f32x4_add(sg_f32x4_mul(w0v, sg_f32x4_splat(v0->color.x)),
                                 sg_f32x4_mul(w1v, sg_f32x4_splat(v1->color.x))),
                    sg_f32x4_mul(w2v, sg_f32x4_splat(v2->color.x))), inv_wsum);
    sg_f32x4 cg = sg_f32x4_mul(sg_f32x4_add(
                    sg_f32x4_add(sg_f32x4_mul(w0v, sg_f32x4_splat(v0->color.y)),
                                 sg_f32x4_mul(w1v, sg_f32x4_splat(v1->color.y))),
                    sg_f32x4_mul(w2v, sg_f32x4_splat(v2->color.y))), inv_wsum);
    sg_f32x4 cb = sg_f32x4_mul(sg_f32x4_add(
                    sg_f32x4_add(sg_f32x4_mul(w0v, sg_f32x4_splat(v0->color.z)),
                                 sg_f32x4_mul(w1v, sg_f32x4_splat(v1->color.z))),
                    sg_f32x4_mul(w2v, sg_f32x4_splat(v2->color.z))), inv_wsum);
    sg_f32x4 ca = sg_f32x4_mul(sg_f32x4_add(
                    sg_f32x4_add(sg_f32x4_mul(w0v, sg_f32x4_splat(v0->color.w)),
                                 sg_f32x4_mul(w1v, sg_f32x4_splat(v1->color.w))),
                    sg_f32x4_mul(w2v, sg_f32x4_splat(v2->color.w))), inv_wsum);

    /* Bilinear LINEAR REPEAT fastpath: the filter absorbs ~1-ULP UV
     * reassociation drift without crossing texel boundaries. */
    if (tctx->fastpath_kind == 1 || tctx->fastpath_kind == 2) {
        const sg_tex_unit_tri *u0 = &tctx->unit[0];
        const uint8_t *data = u0->data0;
        int tw = u0->tw, th = u0->th;
        sg_f32x4 tw_v = sg_f32x4_splat((float)tw);
        sg_f32x4 th_v = sg_f32x4_splat((float)th);
        sg_f32x4 half = sg_f32x4_splat(0.5f);
        sg_f32x4 one4 = sg_f32x4_splat(1.f);

        sg_f32x4 uxv = sg_f32x4_mul(
            sg_f32x4_add(sg_f32x4_add(
                sg_f32x4_mul(w0v, sg_f32x4_splat(v0->uv[0].x)),
                sg_f32x4_mul(w1v, sg_f32x4_splat(v1->uv[0].x))),
                sg_f32x4_mul(w2v, sg_f32x4_splat(v2->uv[0].x))), inv_wsum);
        sg_f32x4 uyv = sg_f32x4_mul(
            sg_f32x4_add(sg_f32x4_add(
                sg_f32x4_mul(w0v, sg_f32x4_splat(v0->uv[0].y)),
                sg_f32x4_mul(w1v, sg_f32x4_splat(v1->uv[0].y))),
                sg_f32x4_mul(w2v, sg_f32x4_splat(v2->uv[0].y))), inv_wsum);

        /* REPEAT wrap into [0,1). */
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
        sg_f32x4 uu = sg_f32x4_sub(uxv, _mm_floor_ps(uxv));
        sg_f32x4 vv = sg_f32x4_sub(uyv, _mm_floor_ps(uyv));
#else
        SG_ALIGN16 float uxS[4], uyS[4];
        sg_f32x4_store(uxS, uxv); sg_f32x4_store(uyS, uyv);
        SG_ALIGN16 float uuS[4], vvS[4];
        for (int l = 0; l < 4; l++) { uuS[l] = uxS[l] - floorf(uxS[l]); vvS[l] = uyS[l] - floorf(uyS[l]); }
        sg_f32x4 uu = sg_f32x4_load(uuS), vv = sg_f32x4_load(vvS);
#endif

        /* Continuous texel coord: f = wrap * dim - 0.5. */
        sg_f32x4 fxv = sg_f32x4_sub(sg_f32x4_mul(uu, tw_v), half);
        sg_f32x4 fyv = sg_f32x4_sub(sg_f32x4_mul(vv, th_v), half);

        SG_ALIGN16 int32_t x0A[4], y0A[4];
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
        /* fxfl/fyfl are floor output (integer-valued floats), so SSE
         * trunc and wasm_i32x4_trunc_sat_f32x4 yield identical i32 values. */
        sg_f32x4 fxfl = _mm_floor_ps(fxv);
        sg_f32x4 fyfl = _mm_floor_ps(fyv);
        sg_i32x4 x0v = _mm_cvttps_epi32(fxfl);
        sg_i32x4 y0v = _mm_cvttps_epi32(fyfl);
        _mm_store_si128((__m128i*)x0A, x0v);
        _mm_store_si128((__m128i*)y0A, y0v);
#else
        SG_ALIGN16 float fxS[4], fyS[4], fxflS[4], fyflS[4];
        sg_f32x4_store(fxS, fxv); sg_f32x4_store(fyS, fyv);
        for (int l = 0; l < 4; l++) {
            fxflS[l] = floorf(fxS[l]); fyflS[l] = floorf(fyS[l]);
            x0A[l] = (int32_t)fxflS[l]; y0A[l] = (int32_t)fyflS[l];
        }
        sg_f32x4 fxfl = sg_f32x4_load(fxflS), fyfl = sg_f32x4_load(fyflS);
#endif
        sg_f32x4 fu = sg_f32x4_sub(fxv, fxfl);
        sg_f32x4 fv = sg_f32x4_sub(fyv, fyfl);

        SG_ALIGN16 float fuS[4], fvS[4];
        sg_f32x4_store(fuS, fu);
        sg_f32x4_store(fvS, fv);

        sg_f32x4 fu256 = sg_f32x4_mul(fu, sg_f32x4_splat(256.f));
        sg_f32x4 fv256 = sg_f32x4_mul(fv, sg_f32x4_splat(256.f));
        SG_ALIGN16 int32_t fu8A[4], fv8A[4];
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
        /* Round-half-up via +0.5 + trunc. Bridges SSE RNE cvtps vs
         * WASM trunc_sat; fu256/fv256 are in [0,256] so well-defined. */
        __m128 half256 = _mm_set1_ps(0.5f);
        _mm_store_si128((__m128i*)fu8A, _mm_cvttps_epi32(_mm_add_ps(fu256, half256)));
        _mm_store_si128((__m128i*)fv8A, _mm_cvttps_epi32(_mm_add_ps(fv256, half256)));
#else
        SG_ALIGN16 float fu256S[4], fv256S[4];
        sg_f32x4_store(fu256S, fu256); sg_f32x4_store(fv256S, fv256);
        for (int l = 0; l < 4; l++) {
            fu8A[l] = (int32_t)(fu256S[l] + 0.5f);
            fv8A[l] = (int32_t)(fv256S[l] + 0.5f);
        }
#endif

        SG_ALIGN16 float crL[4], cgL[4], cbL[4], caL[4];
        sg_f32x4_store(crL, cr);  sg_f32x4_store(cgL, cg);
        sg_f32x4_store(cbL, cb);  sg_f32x4_store(caL, ca);
        int replace = (tctx->fastpath_kind == 2);
        const float inv255 = 1.f / 255.f;

        /* POT mask 0 for non-POT dims; replaces y*tw with y<<tw_log2. */
        const int tw_m = u0->tw_mask_pot;
        const int th_m = u0->th_mask_pot;
        const int tw_lg = u0->tw_log2;
        for (int l = 0; l < 4; l++) {
            if (!(cov & (1u << l))) continue;
            int x0i = x0A[l], y0i = y0A[l];
            int x1i = x0i + 1, y1i = y0i + 1;
            if (tw_m) { x0i &= tw_m; x1i &= tw_m; }
            else      { x0i %= tw; if (x0i < 0) x0i += tw;
                        x1i %= tw; if (x1i < 0) x1i += tw; }
            if (th_m) { y0i &= th_m; y1i &= th_m; }
            else      { y0i %= th; if (y0i < 0) y0i += th;
                        y1i %= th; if (y1i < 0) y1i += th; }
            int row0, row1;
            if (tw_m) { row0 = y0i << tw_lg; row1 = y1i << tw_lg; }
            else      { row0 = y0i * tw;     row1 = y1i * tw; }
            const uint8_t *p00 = data + (row0 + x0i) * 4;
            const uint8_t *p10 = data + (row0 + x1i) * 4;
            const uint8_t *p01 = data + (row1 + x0i) * 4;
            const uint8_t *p11 = data + (row1 + x1i) * 4;
            int fu8 = fu8A[l]; if (fu8 < 0) fu8 = 0; else if (fu8 > 256) fu8 = 256;
            int fv8 = fv8A[l]; if (fv8 < 0) fv8 = 0; else if (fv8 > 256) fv8 = 256;
            int ifu = 256 - fu8, ifv = 256 - fv8;
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
            /* Integer-bilinear over 4 RGBA8 channels via _mm_madd_epi16. */
            __m128i c00 = _mm_cvtepu8_epi16(_mm_cvtsi32_si128(*(const int32_t*)p00));
            __m128i c10 = _mm_cvtepu8_epi16(_mm_cvtsi32_si128(*(const int32_t*)p10));
            __m128i c01 = _mm_cvtepu8_epi16(_mm_cvtsi32_si128(*(const int32_t*)p01));
            __m128i c11 = _mm_cvtepu8_epi16(_mm_cvtsi32_si128(*(const int32_t*)p11));
            __m128i row0_lo = _mm_unpacklo_epi16(c00, c10);
            __m128i row1_lo = _mm_unpacklo_epi16(c01, c11);
            __m128i w_u     = _mm_set1_epi32((int32_t)((uint32_t)(uint16_t)ifu |
                                                        ((uint32_t)(uint16_t)fu8 << 16)));
            __m128i top32 = _mm_madd_epi16(row0_lo, w_u);
            __m128i bot32 = _mm_madd_epi16(row1_lo, w_u);
            __m128i vifv = _mm_set1_epi32(ifv);
            __m128i vfv8 = _mm_set1_epi32(fv8);
            __m128i acc32 = _mm_add_epi32(_mm_mullo_epi32(top32, vifv),
                                           _mm_mullo_epi32(bot32, vfv8));
            acc32 = _mm_add_epi32(acc32, _mm_set1_epi32(1 << 15));
            acc32 = _mm_srai_epi32(acc32, 16);
            __m128i p16 = _mm_packus_epi32(acc32, acc32);
            __m128i p8  = _mm_packus_epi16(p16, p16);
            uint32_t rgba = (uint32_t)_mm_cvtsi128_si32(p8);
            uint8_t tx0 = (uint8_t) rgba;
            uint8_t tx1 = (uint8_t)(rgba >> 8);
            uint8_t tx2 = (uint8_t)(rgba >> 16);
            uint8_t tx3 = (uint8_t)(rgba >> 24);
#else
            uint8_t tx[4];
            for (int k = 0; k < 4; k++) {
                int top = p00[k] * ifu + p10[k] * fu8;
                int bot = p01[k] * ifu + p11[k] * fu8;
                int v2  = (top * ifv + bot * fv8 + (1 << 15)) >> 16;
                if (v2 > 255) v2 = 255; else if (v2 < 0) v2 = 0;
                tx[k] = (uint8_t)v2;
            }
            uint8_t tx0 = tx[0], tx1 = tx[1], tx2 = tx[2], tx3 = tx[3];
#endif
            if (replace) {
                crL[l] = tx0 * inv255;
                cgL[l] = tx1 * inv255;
                cbL[l] = tx2 * inv255;
                caL[l] = tx3 * inv255;
            } else {
                crL[l] *= tx0 * inv255;
                cgL[l] *= tx1 * inv255;
                cbL[l] *= tx2 * inv255;
                caL[l] *= tx3 * inv255;
            }
        }
        cr = sg_f32x4_load(crL); cg = sg_f32x4_load(cgL);
        cb = sg_f32x4_load(cbL); ca = sg_f32x4_load(caL);
        (void)one4;
    }

    /* Fog: LINEAR SIMD; EXP/EXP2 use scalar expf per lane. */
    if (c->fog_enabled) {
        sg_f32x4 ez = sg_f32x4_mul(
            sg_f32x4_add(
                sg_f32x4_add(sg_f32x4_mul(w0v, sg_f32x4_splat(v0->eye.z)),
                             sg_f32x4_mul(w1v, sg_f32x4_splat(v1->eye.z))),
                sg_f32x4_mul(w2v, sg_f32x4_splat(v2->eye.z))),
            inv_wsum);
        sg_f32x4 zero4 = sg_f32x4_splat(0.f);
        sg_f32x4 aez = sg_f32x4_max(ez, sg_f32x4_sub(zero4, ez));
        sg_f32x4 f;
        if (c->fog_mode == GL_LINEAR_FOG) {
            float range = c->fog_end - c->fog_start;
            sg_f32x4 end = sg_f32x4_splat(c->fog_end);
            if (range != 0.f) {
                f = sg_f32x4_mul(sg_f32x4_sub(end, aez), sg_f32x4_splat(1.f / range));
            } else {
                f = sg_f32x4_splat(1.f);
            }
        } else {
            SG_ALIGN16 float aezL[4];
            sg_f32x4_store(aezL, aez);
            SG_ALIGN16 float fL[4];
            for (int l = 0; l < 4; l++) {
                float fv;
                if (c->fog_mode == GL_EXP) {
                    fv = expf(-c->fog_density * aezL[l]);
                } else {
                    float e = c->fog_density * aezL[l];
                    fv = expf(-(e * e));
                }
                fL[l] = fv;
            }
            f = sg_f32x4_load(fL);
        }
        f = sg_f32x4_max(sg_f32x4_splat(0.f), sg_f32x4_min(sg_f32x4_splat(1.f), f));
        sg_f32x4 omf = sg_f32x4_sub(sg_f32x4_splat(1.f), f);
        cr = sg_f32x4_madd(f, cr, sg_f32x4_mul(omf, sg_f32x4_splat(c->fog_color[0])));
        cg = sg_f32x4_madd(f, cg, sg_f32x4_mul(omf, sg_f32x4_splat(c->fog_color[1])));
        cb = sg_f32x4_madd(f, cb, sg_f32x4_mul(omf, sg_f32x4_splat(c->fog_color[2])));
        /* alpha untouched */
    }

    if (c->alpha_test) {
        sg_i32x4 am = sg_alpha_test_simd(c->alpha_func, ca, c->alpha_ref);
        mask = sg_i32x4_and(mask, am);
    }

    unsigned live = sg_mask4_live(mask);
    if (!live) return;

    if (c->scissor_enabled) {
        int sx0 = c->scissor[0], sy0 = c->scissor[1];
        int sx1 = sx0 + c->scissor[2], sy1 = sy0 + c->scissor[3];
        int scL[4];
        scL[0] = (ix     >= sx0 && ix     < sx1 &&  iy      >= sy0 &&  iy      < sy1) ? -1 : 0;
        scL[1] = (ix + 1 >= sx0 && ix + 1 < sx1 &&  iy      >= sy0 &&  iy      < sy1) ? -1 : 0;
        scL[2] = (ix     >= sx0 && ix     < sx1 && (iy + 1) >= sy0 && (iy + 1) < sy1) ? -1 : 0;
        scL[3] = (ix + 1 >= sx0 && ix + 1 < sx1 && (iy + 1) >= sy0 && (iy + 1) < sy1) ? -1 : 0;
        mask = sg_i32x4_and(mask, sg_i32x4_set(scL[0], scL[1], scL[2], scL[3]));
        live = sg_mask4_live(mask);
        if (!live) return;
    }

    /* Depth: late test if early-Z suppressed; deferred write gated by mask. */
    if (c->depth_test) {
        if (!early_z) {
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
            __m128i dr0 = _mm_loadl_epi64((const __m128i*)&c->fb.depth[idx_row0]);
            __m128i dr1 = row1_in_fb
                ? _mm_loadl_epi64((const __m128i*)&c->fb.depth[idx_row1])
                : _mm_setzero_si128();
            sg_f32x4 fb_d = _mm_castsi128_ps(_mm_unpacklo_epi64(dr0, dr1));
#else
            SG_ALIGN16 float dL[4];
            dL[0] = c->fb.depth[idxL[0]];
            dL[1] = c->fb.depth[idxL[1]];
            dL[2] = row1_in_fb ? c->fb.depth[idxL[2]] : 0.f;
            dL[3] = row1_in_fb ? c->fb.depth[idxL[3]] : 0.f;
            sg_f32x4 fb_d = sg_f32x4_load(dL);
#endif
            sg_i32x4 dm = sg_depth_test_simd(c->depth_func, z, fb_d);
            mask = sg_i32x4_and(mask, dm);
            live = sg_mask4_live(mask);
            if (!live) return;
        }
        if (c->depth_mask) {
            SG_ALIGN16 float zL[4];
            sg_f32x4_store(zL, z);
            if (live & 0x1u) c->fb.depth[idxL[0]] = zL[0];
            if (live & 0x2u) c->fb.depth[idxL[1]] = zL[1];
            if (live & 0x4u) c->fb.depth[idxL[2]] = zL[2];
            if (live & 0x8u) c->fb.depth[idxL[3]] = zL[3];
        }
    }

    /* Blend: SIMD fast-path, else scalar per lane. */
    if (c->blend &&
        sg_blend_fastpath_supported(c->blend_src) &&
        sg_blend_fastpath_supported(c->blend_dst)) {
#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
        __m128i crow0 = _mm_loadl_epi64((const __m128i*)&c->fb.color[idx_row0 * 4]);
        __m128i crow1 = row1_in_fb
            ? _mm_loadl_epi64((const __m128i*)&c->fb.color[idx_row1 * 4])
            : _mm_setzero_si128();
        __m128i dst_packed = _mm_unpacklo_epi64(crow0, crow1);
        const __m128i dshuf_R = _mm_setr_epi8( 0,-1,-1,-1,  4,-1,-1,-1,  8,-1,-1,-1, 12,-1,-1,-1);
        const __m128i dshuf_G = _mm_setr_epi8( 1,-1,-1,-1,  5,-1,-1,-1,  9,-1,-1,-1, 13,-1,-1,-1);
        const __m128i dshuf_B = _mm_setr_epi8( 2,-1,-1,-1,  6,-1,-1,-1, 10,-1,-1,-1, 14,-1,-1,-1);
        const __m128i dshuf_A = _mm_setr_epi8( 3,-1,-1,-1,  7,-1,-1,-1, 11,-1,-1,-1, 15,-1,-1,-1);
        __m128 d_inv255 = _mm_set1_ps(1.f / 255.f);
        sg_f32x4 dRv = _mm_mul_ps(_mm_cvtepi32_ps(_mm_shuffle_epi8(dst_packed, dshuf_R)), d_inv255);
        sg_f32x4 dGv = _mm_mul_ps(_mm_cvtepi32_ps(_mm_shuffle_epi8(dst_packed, dshuf_G)), d_inv255);
        sg_f32x4 dBv = _mm_mul_ps(_mm_cvtepi32_ps(_mm_shuffle_epi8(dst_packed, dshuf_B)), d_inv255);
        sg_f32x4 dAv = _mm_mul_ps(_mm_cvtepi32_ps(_mm_shuffle_epi8(dst_packed, dshuf_A)), d_inv255);
#else
        SG_ALIGN16 float dR[4], dG[4], dB[4], dA[4];
        for (int l = 0; l < 4; l++) {
            const uint8_t *p = c->fb.color + idxL[l] * 4;
            const float inv255 = 1.f / 255.f;
            dR[l] = p[0] * inv255;
            dG[l] = p[1] * inv255;
            dB[l] = p[2] * inv255;
            dA[l] = p[3] * inv255;
        }
        sg_f32x4 dRv = sg_f32x4_load(dR), dGv = sg_f32x4_load(dG);
        sg_f32x4 dBv = sg_f32x4_load(dB), dAv = sg_f32x4_load(dA);
#endif
        sg_f32x4 sf = sg_blend_factor(c->blend_src, ca, dAv);
        sg_f32x4 df = sg_blend_factor(c->blend_dst, ca, dAv);

        cr = sg_f32x4_add(sg_f32x4_mul(cr, sf), sg_f32x4_mul(dRv, df));
        cg = sg_f32x4_add(sg_f32x4_mul(cg, sf), sg_f32x4_mul(dGv, df));
        cb = sg_f32x4_add(sg_f32x4_mul(cb, sf), sg_f32x4_mul(dBv, df));
        ca = sg_f32x4_add(sg_f32x4_mul(ca, sf), sg_f32x4_mul(dAv, df));
    } else if (c->blend) {
        /* Rare blend combo → per-lane scalar. Depth was already speculatively
         * written; sg_write_fragment re-tests (idempotent). */
        SG_ALIGN16 float crL[4], cgL[4], cbL[4], caL[4], zL[4];
        sg_f32x4_store(crL, cr); sg_f32x4_store(cgL, cg);
        sg_f32x4_store(cbL, cb); sg_f32x4_store(caL, ca);
        sg_f32x4_store(zL, z);
        int lane_ix[4] = { ix, ix + 1, ix,     ix + 1 };
        int lane_iy[4] = { iy, iy,     iy + 1, iy + 1 };
        for (int l = 0; l < 4; l++) {
            if (!(live & (1u << l))) continue;
            sg_write_fragment(c, lane_ix[l], lane_iy[l], zL[l],
                              crL[l], cgL[l], cbL[l], caL[l]);
        }
        return;
    }

    /* Quantise to u8 and write via (live & color_mask) bit-select. */
    uint32_t qR = sg_f32x4_quantize_u8(cr);
    uint32_t qG = sg_f32x4_quantize_u8(cg);
    uint32_t qB = sg_f32x4_quantize_u8(cb);
    uint32_t qA = sg_f32x4_quantize_u8(ca);

    uint8_t mr = c->color_mask[0] ? 0xFF : 0x00;
    uint8_t mg = c->color_mask[1] ? 0xFF : 0x00;
    uint8_t mb = c->color_mask[2] ? 0xFF : 0x00;
    uint8_t ma = c->color_mask[3] ? 0xFF : 0x00;

#if defined(SG_SIMD_SSE4) || defined(SG_SIMD_WASM)
    __m128i v_R = _mm_cvtsi32_si128((int32_t)qR);
    __m128i v_G = _mm_cvtsi32_si128((int32_t)qG);
    __m128i v_B = _mm_cvtsi32_si128((int32_t)qB);
    __m128i v_A = _mm_cvtsi32_si128((int32_t)qA);
    __m128i RG  = _mm_unpacklo_epi8(v_R, v_G);
    __m128i BA  = _mm_unpacklo_epi8(v_B, v_A);
    __m128i new_q = _mm_unpacklo_epi16(RG, BA);

    const uint32_t cmask_w = (uint32_t)mr
                           | ((uint32_t)mg << 8)
                           | ((uint32_t)mb << 16)
                           | ((uint32_t)ma << 24);
    __m128i live_v = sg_mask4_expand(live);
    __m128i eff    = _mm_and_si128(live_v, _mm_set1_epi32((int32_t)cmask_w));

    __m128i cr0 = _mm_loadl_epi64((const __m128i*)&c->fb.color[idx_row0 * 4]);
    __m128i cr1 = row1_in_fb
        ? _mm_loadl_epi64((const __m128i*)&c->fb.color[idx_row1 * 4])
        : _mm_setzero_si128();
    __m128i fb_q   = _mm_unpacklo_epi64(cr0, cr1);
    __m128i blended = _mm_or_si128(_mm_and_si128(new_q, eff),
                                   _mm_andnot_si128(eff, fb_q));

    /* Row-gated stores; row1 guards iy+1 >= fb.h OOB. */
    if (live & 0x3u) {
        _mm_storel_epi64((__m128i*)&c->fb.color[idx_row0 * 4], blended);
    }
    if (row1_in_fb && (live & 0xCu)) {
        _mm_storel_epi64((__m128i*)&c->fb.color[idx_row1 * 4],
                         _mm_unpackhi_epi64(blended, blended));
    }
#else
    for (int l = 0; l < 4; l++) {
        if (!(live & (1u << l))) continue;
        uint8_t *px = c->fb.color + idxL[l] * 4;
        uint8_t r8 = (uint8_t)((qR >> (l * 8)) & 0xFF);
        uint8_t g8 = (uint8_t)((qG >> (l * 8)) & 0xFF);
        uint8_t b8 = (uint8_t)((qB >> (l * 8)) & 0xFF);
        uint8_t a8 = (uint8_t)((qA >> (l * 8)) & 0xFF);
        px[0] = (uint8_t)((r8 & mr) | (px[0] & (uint8_t)~mr));
        px[1] = (uint8_t)((g8 & mg) | (px[1] & (uint8_t)~mg));
        px[2] = (uint8_t)((b8 & mb) | (px[2] & (uint8_t)~mb));
        px[3] = (uint8_t)((a8 & ma) | (px[3] & (uint8_t)~ma));
    }
#endif
}
#endif /* SG_HAVE_SIMD */

void sg_raster_triangle(softgl_ctx *c,
                           const sg_vert *v0,
                           const sg_vert *v1,
                           const sg_vert *v2) {
    /* 16.8 fixed-point screen coords. */
    sg_screen_t x0 = sg_fp_screen_from_float(v0->ndc.x);
    sg_screen_t y0 = sg_fp_screen_from_float(v0->ndc.y);
    sg_screen_t x1 = sg_fp_screen_from_float(v1->ndc.x);
    sg_screen_t y1 = sg_fp_screen_from_float(v1->ndc.y);
    sg_screen_t x2 = sg_fp_screen_from_float(v2->ndc.x);
    sg_screen_t y2 = sg_fp_screen_from_float(v2->ndc.y);

    int64_t area2 = (int64_t)(x1 - x0) * (int64_t)(y2 - y0)
                  - (int64_t)(y1 - y0) * (int64_t)(x2 - x0);
    if (area2 <= 0) return;   /* degenerate or back-face */

    int bias0 = sg_is_top_left(x1, y1, x2, y2) ? 0 : -1;
    int bias1 = sg_is_top_left(x2, y2, x0, y0) ? 0 : -1;
    int bias2 = sg_is_top_left(x0, y0, x1, y1) ? 0 : -1;

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

    /* Start sample at pixel center (ix0+0.5, iy0+0.5) in 16.8. */
    const sg_screen_t half = SG_FP_SUBPIXEL_ONE >> 1;
    sg_screen_t px_start = (sg_screen_t)ix0 * SG_FP_SUBPIXEL_ONE + half;
    sg_screen_t py_start = (sg_screen_t)iy0 * SG_FP_SUBPIXEL_ONE + half;

    int64_t E0_row0 = (int64_t)(x2 - x1) * (int64_t)(py_start - y1)
                    - (int64_t)(y2 - y1) * (int64_t)(px_start - x1);
    int64_t E1_row0 = (int64_t)(x0 - x2) * (int64_t)(py_start - y2)
                    - (int64_t)(y0 - y2) * (int64_t)(px_start - x2);
    int64_t E2_row0 = (int64_t)(x1 - x0) * (int64_t)(py_start - y0)
                    - (int64_t)(y1 - y0) * (int64_t)(px_start - x0);

    /* Step deltas pre-scaled by SUBPIXEL_ONE. */
    int64_t dE0_dx = -(int64_t)(y2 - y1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE0_dy =  (int64_t)(x2 - x1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dx = -(int64_t)(y0 - y2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dy =  (int64_t)(x0 - x2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dx = -(int64_t)(y1 - y0) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dy =  (int64_t)(x1 - x0) * (int64_t)SG_FP_SUBPIXEL_ONE;

    float inv_area_f = 1.0f / (float)area2;

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
    sg_tex_tri_ctx tctx;
    sg_tex_tri_prepare(c, &tctx);

#if SG_HAVE_SIMD
    /* SIMD 2x2-quad path. Per-edge min/max-across-quad offsets enable
     * scalar trivial accept/reject; (E+bias) is computed per lane in
     * full i64 then saturated to i32 to avoid wrap when TL is at INT32_MAX. */
    int64_t min_off0 = 0, max_off0 = 0;
    if (dE0_dx < 0) min_off0 += dE0_dx; else max_off0 += dE0_dx;
    if (dE0_dy < 0) min_off0 += dE0_dy; else max_off0 += dE0_dy;
    int64_t min_off1 = 0, max_off1 = 0;
    if (dE1_dx < 0) min_off1 += dE1_dx; else max_off1 += dE1_dx;
    if (dE1_dy < 0) min_off1 += dE1_dy; else max_off1 += dE1_dy;
    int64_t min_off2 = 0, max_off2 = 0;
    if (dE2_dx < 0) min_off2 += dE2_dx; else max_off2 += dE2_dx;
    if (dE2_dy < 0) min_off2 += dE2_dy; else max_off2 += dE2_dy;

    int use_simd_quad = !sg_quad_needs_scalar(c, &tctx);

    int64_t E0_row = E0_row0;
    int64_t E1_row = E1_row0;
    int64_t E2_row = E2_row0;

    for (int iy = iy0; iy < iy1; iy += 2) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        /* BL/BR (lanes 2/3) valid only if iy+1 < iy1. */
        unsigned row_mask = 0x3u;
        if (iy + 1 < iy1) row_mask |= 0xCu;

        for (int ix = ix0; ix < ix1; ix += 2) {
            /* TR/BR (lanes 1/3) valid only if ix+1 < ix1. */
            unsigned col_mask = 0x5u;
            if (ix + 1 < ix1) col_mask |= 0xAu;
            unsigned bounds_mask = row_mask & col_mask;

            int64_t e0_tl = E0 + bias0;
            int64_t e1_tl = E1 + bias1;
            int64_t e2_tl = E2 + bias2;

            if ((e0_tl + max_off0) < 0 ||
                (e1_tl + max_off1) < 0 ||
                (e2_tl + max_off2) < 0) {
                goto step;
            }

            unsigned cov;
            if ((e0_tl + min_off0) >= 0 &&
                (e1_tl + min_off1) >= 0 &&
                (e2_tl + min_off2) >= 0) {
                cov = bounds_mask;
            } else {
                sg_i32x4 v0v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e0_tl),
                    sg_sat_i64_to_i32(e0_tl + dE0_dx),
                    sg_sat_i64_to_i32(e0_tl + dE0_dy),
                    sg_sat_i64_to_i32(e0_tl + dE0_dx + dE0_dy));
                sg_i32x4 v1v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e1_tl),
                    sg_sat_i64_to_i32(e1_tl + dE1_dx),
                    sg_sat_i64_to_i32(e1_tl + dE1_dy),
                    sg_sat_i64_to_i32(e1_tl + dE1_dx + dE1_dy));
                sg_i32x4 v2v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e2_tl),
                    sg_sat_i64_to_i32(e2_tl + dE2_dx),
                    sg_sat_i64_to_i32(e2_tl + dE2_dy),
                    sg_sat_i64_to_i32(e2_tl + dE2_dx + dE2_dy));

                unsigned m0 = sg_i32x4_mask_nonneg(v0v);
                unsigned m1 = sg_i32x4_mask_nonneg(v1v);
                unsigned m2 = sg_i32x4_mask_nonneg(v2v);

                cov = m0 & m1 & m2 & bounds_mask;
            }

            if (cov) {
                if (use_simd_quad) {
                    sg_shade_quad(c, &tctx, v0, v1, v2, ix, iy, cov,
                                  E0, E1,
                                  dE0_dx, dE0_dy, dE1_dx, dE1_dy,
                                  inv_area_f, invw0, invw1, invw2, z_offset);
                } else {
                    /* Per-lane scalar fallback (stencil/logic-op/stipple/
                     * occlusion); raw i64 edge values for byte-equal
                     * barycentrics with scalar reference. */
                    if (cov & 0x1u) {
                        sg_shade_pixel(c, &tctx, v0, v1, v2, ix, iy,
                                       E0, E1,
                                       inv_area_f, invw0, invw1, invw2, z_offset);
                    }
                    if (cov & 0x2u) {
                        sg_shade_pixel(c, &tctx, v0, v1, v2, ix + 1, iy,
                                       E0 + dE0_dx, E1 + dE1_dx,
                                       inv_area_f, invw0, invw1, invw2, z_offset);
                    }
                    if (cov & 0x4u) {
                        sg_shade_pixel(c, &tctx, v0, v1, v2, ix, iy + 1,
                                       E0 + dE0_dy, E1 + dE1_dy,
                                       inv_area_f, invw0, invw1, invw2, z_offset);
                    }
                    if (cov & 0x8u) {
                        sg_shade_pixel(c, &tctx, v0, v1, v2, ix + 1, iy + 1,
                                       E0 + dE0_dx + dE0_dy,
                                       E1 + dE1_dx + dE1_dy,
                                       inv_area_f, invw0, invw1, invw2, z_offset);
                    }
                }
            }

        step:
            E0 += dE0_dx * 2;
            E1 += dE1_dx * 2;
            E2 += dE2_dx * 2;
        }

        E0_row += dE0_dy * 2;
        E1_row += dE1_dy * 2;
        E2_row += dE2_dy * 2;
    }

#else
    /* Scalar Pineda fallback. */
    int64_t E0_row = E0_row0;
    int64_t E1_row = E1_row0;
    int64_t E2_row = E2_row0;

    for (int y = iy0; y < iy1; y++) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        for (int x = ix0; x < ix1; x++) {
            if ((E0 + bias0) >= 0 && (E1 + bias1) >= 0 && (E2 + bias2) >= 0) {
                sg_shade_pixel(c, &tctx, v0, v1, v2, x, y, E0, E1,
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

/* Lines: DDA in 16.8 fixed-point, attribute lerp in float.
 * Clipping done upstream by sg_process_line. Line stipple counter
 * persists across LINE_STRIP / LINE_LOOP segments. */

SG_INLINE void sg_line_fragment(softgl_ctx *c, int x, int y,
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

static void sg_raster_line_1px(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
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

        /* Stipple counter advances whether or not we emit. */
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
            sg_line_fragment(c, ix, iy, z, col, ez);
        }

        x_fp += step_dx_fp;
        y_fp += step_dy_fp;
    }
}

/* Wide line: axis-aligned thickness stamp on minor axis. */
static void sg_raster_line_wide(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, int width) {
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
            sg_line_fragment(c, px, py, z, c4, ez);
        }

        x_fp += step_dx_fp;
        y_fp += step_dy_fp;
    }
}

void sg_raster_line_impl(softgl_ctx *c,
                       const sg_vert *v0,
                       const sg_vert *v1,
                       int width) {
    if (width <= 1) sg_raster_line_1px (c, v0, v1);
    else            sg_raster_line_wide(c, v0, v1, width);
}

/* Integer stamp centered on rounded pixel; bounds handled by sg_write_fragment. */
void sg_raster_point_impl(softgl_ctx *c, const sg_vert *v) {
    float sz = c->point_size;
    if (sz < 1.f) sz = 1.f;
    int size = (int)(sz + 0.5f);
    if (size < 1) size = 1;

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
        /* Points have zero screen-space z slope; only units contributes. */
        z += c->polygon_offset_units * 1e-6f;
    }


    for (int y = y0; y < y1; y++) {
        for (int x = x0; x < x1; x++) {
            float c4[4] = { col[0], col[1], col[2], col[3] };
            sg_line_fragment(c, x, y, z, c4, ez);
        }
    }
}
