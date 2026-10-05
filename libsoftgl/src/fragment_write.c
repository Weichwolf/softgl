#include "workers.h"
#include "simd.h"
#include "raster_hz.h"
#include "msaa_additive.h"
#include <math.h>

/* Per-fragment write in GL spec order: scissor -> alpha test -> stencil ->
 * depth -> stencil op -> depth write -> occlusion -> logic-op -> blend ->
 * color mask. y=0 is bottom (matches glReadPixels). Used as scalar fallback
 * from SIMD quad path; primary path for lines/points/pixels. */

SG_INLINE void sg_write_sample(softgl_ctx *c, size_t idx, uint8_t *color,
                                float *depth, uint8_t *stencil,
                                float z, float r, float g, float b, float a, int track_hz) {

    /* Alpha test before stencil (spec 4.1). */
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

    /* Stencil op runs even if depth fails; depth write needs both. */
    uint8_t s_cur = stencil[idx];
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

    /* Test only; write deferred until stencil+depth both pass. */
    int d_pass = 1;
    if (c->depth_test) {
        float d = depth[idx];
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
        stencil[idx] = (uint8_t)((s_new & wm) | (s_cur & (uint8_t)~wm));
    }

    if (!s_pass) return;
    if (!d_pass) return;

    if (c->depth_test && c->depth_mask) {
        depth[idx] = z;
        if (track_hz == 4 && sg_hz_active4(c)) sg_hz_record_sample4(c, idx, z);
        else if (track_hz == 2 && sg_hz_active2(c)) sg_hz_record_sample2(c, idx, z);
    }

    /* Queries count surviving fragments even if color writes are masked
     * or a logic operation leaves the framebuffer unchanged. Workers own
     * their counters; only the calling thread writes query objects. */
    GLuint qsid = c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED];
    GLuint qaid = c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED];
    if (qsid || qaid) {
        if (sg_raster_bin) {
            sg_raster_bin->query_samples++;
        } else {
            sg_query *qs = sg_query_get(c, qsid);
            sg_query *qa = sg_query_get(c, qaid);
            if (qs && qs->active) qs->result++;
            if (qa && qa->active) qa->result = 1;
        }
    }

    uint8_t *px = color + idx * 4;
    /* COLOR_LOGIC_OP takes priority over BLEND (spec). */
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

}

SG_INLINE int sg_fragment_in_bounds(const softgl_ctx *c, int x, int y) {
    if (x < 0 || y < 0 || x >= c->fb.w || y >= c->fb.h) return 0;
    if (c->scissor_enabled &&
        (x < c->scissor[0] || y < c->scissor[1] ||
         x >= c->scissor[0] + c->scissor[2] ||
         y >= c->scissor[1] + c->scissor[3])) return 0;
    return 1;
}

/* Stable window-coordinate rotation decorrelates coverage masks across pixels.
 * Endpoints are exact; rounding gives monotonically increasing covered area. */
static unsigned sg_coverage_mask(float value, int n, int x, int y) {
    int count = value <= 0.f ? 0 : value >= 1.f ? n : (int)(value * n + .5f);
    unsigned mask = (1u << count) - 1u;
    unsigned full = (1u << n) - 1u;
    unsigned rotation = ((unsigned)x * 73u ^ (unsigned)y * 151u) % (unsigned)n;
    return ((mask << rotation) | (mask >> (n - rotation))) & full;
}

/* Common four-sample writes use lanes for samples of one pixel. Special
 * fragment operations retain the ordered scalar implementation below. */
SG_INLINE sg_i32x4 sg_sample_depth_mask(GLenum func, sg_f32x4 z, sg_f32x4 d) {
    switch (func) {
        case GL_NEVER: return sg_i32x4_splat(0);
        case GL_LESS: return sg_f32x4_lt(z, d);
        case GL_EQUAL: return sg_f32x4_eq(z, d);
        case GL_LEQUAL: return sg_f32x4_le(z, d);
        case GL_GREATER: return sg_f32x4_gt(z, d);
        case GL_NOTEQUAL: return sg_f32x4_ne(z, d);
        case GL_GEQUAL: return sg_f32x4_ge(z, d);
        case GL_ALWAYS: return sg_i32x4_splat(-1);
        default: return sg_f32x4_lt(z, d);
    }
}

SG_INLINE sg_i32x4 sg_quantize_samples(sg_f32x4 value) {
    value = sg_f32x4_select(sg_f32x4_lt(value, sg_f32x4_splat(0.f)), sg_f32x4_splat(0.f), value);
    value = sg_f32x4_select(sg_f32x4_gt(value, sg_f32x4_splat(1.f)), sg_f32x4_splat(1.f), value);
    return sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(value, sg_f32x4_splat(255.f)),
                                         sg_f32x4_splat(.5f)));
}

SG_INLINE sg_i32x4 sg_blend_sample_channel(float source, sg_i32x4 packed,
                                           int shift, float sf, float df) {
    sg_i32x4 bytes = _mm_and_si128(_mm_srli_epi32(packed, shift), _mm_set1_epi32(255));
    sg_f32x4 dest = sg_f32x4_mul(_mm_cvtepi32_ps(bytes), sg_f32x4_splat(1.f / 255.f));
    sg_f32x4 value = sg_f32x4_add(sg_f32x4_splat(source * sf),
                                 sg_f32x4_mul(dest, sg_f32x4_splat(df)));
    return sg_quantize_samples(value);
}

#ifdef __EMSCRIPTEN__
/* Retain a separate WASM root so the additive conversion scratch and guard
 * stay outside the general writer's other fragment states. */
__attribute__((used, noinline))
int sg_blend_additive_msaa4_bytes(const float color[4], float alpha, float factor,
                                 sg_i32x4 destination, sg_i32x4 *result) {
    return sg_try_blend_additive_msaa4(color, alpha, factor, destination, result);
}
#else
#define sg_blend_additive_msaa4_bytes sg_try_blend_additive_msaa4
#endif

SG_INLINE void sg_write_msaa2_fast(softgl_ctx *c, int x, int y, unsigned coverage,
                         const float z[4], const float color[4], float alpha, size_t first) {
    sg_i32x4 mask = sg_mask4_expand(coverage & 3u);
    if (c->depth_test) {
        sg_f32x4 zv = _mm_castsi128_ps(_mm_loadl_epi64((const sg_i32x4 *)z));
        sg_f32x4 old_depth = _mm_castsi128_ps(_mm_loadl_epi64((const sg_i32x4 *)&c->fb.sample_depth[first]));
        mask = sg_i32x4_and(mask, sg_sample_depth_mask(c->depth_func, zv, old_depth));
        coverage = sg_mask4_live(mask);
        if (!coverage) return;
        if (c->depth_mask) {
            _mm_storel_epi64((sg_i32x4 *)&c->fb.sample_depth[first],
                _mm_castps_si128(sg_f32x4_select(mask, zv, old_depth)));
            sg_hz_record_pixel2(c, x, y, coverage, z);
        }
    } else if (!coverage) return;
    uint8_t *px = &c->fb.sample_color[first * 4];
    sg_i32x4 packed;
    if (c->blend) {
        sg_i32x4 old_color = _mm_loadl_epi64((const sg_i32x4 *)px);
        float sf = c->blend_src == GL_SRC_ALPHA ? alpha : 1.f;
        float df = c->blend_dst == GL_ONE ? 1.f : 1.f - alpha;
        if (c->blend_dst != GL_ONE ||
            !sg_blend_additive_msaa4_bytes(color, alpha, sf, old_color, &packed)) {
            sg_i32x4 r = sg_blend_sample_channel(color[0], old_color, 0, sf, df);
            sg_i32x4 g = sg_blend_sample_channel(color[1], old_color, 8, sf, df);
            sg_i32x4 b = sg_blend_sample_channel(color[2], old_color, 16, sf, df);
            sg_i32x4 a = sg_blend_sample_channel(alpha, old_color, 24, sf, df);
            packed = _mm_or_si128(_mm_or_si128(r, _mm_slli_epi32(g, 8)),
                                 _mm_or_si128(_mm_slli_epi32(b, 16), _mm_slli_epi32(a, 24)));
        }
    } else {
        uint32_t rgba = (uint32_t)sg_quantize(color[0]) |
                        ((uint32_t)sg_quantize(color[1]) << 8) |
                        ((uint32_t)sg_quantize(color[2]) << 16) |
                        ((uint32_t)sg_quantize(alpha) << 24);
        packed = sg_i32x4_splat((int32_t)rgba);
    }
    if (coverage != 3) {
        sg_i32x4 old_color = _mm_loadl_epi64((const sg_i32x4 *)px);
        packed = _mm_or_si128(_mm_and_si128(mask, packed), _mm_andnot_si128(mask, old_color));
    }
    _mm_storel_epi64((sg_i32x4 *)px, packed);
    return;
}

/* Retain a separate two-sample root; the four-sample writer keeps its
 * existing fragment-state dispatch and scratch. */
#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
void sg_write_multisample2(softgl_ctx *c, int x, int y, unsigned coverage,
                          const float z[4], const float color[4]) {
    if (!sg_fragment_in_bounds(c, x, y)) return;
    const int n = 2;
    float alpha = color[3];
    if (c->multisample) {
        if (c->sample_alpha_to_coverage) coverage &= sg_coverage_mask(alpha, n, x, y);
        if (c->sample_alpha_to_one) alpha = 1.f;
        if (c->sample_coverage) {
            unsigned mask = sg_coverage_mask(c->sample_coverage_value, n, x, y);
            if (c->sample_coverage_invert) mask ^= (1u << n) - 1u;
            coverage &= mask;
        }
    }
    size_t first = ((size_t)y * c->fb.w + x) * n;
    if (!c->alpha_test && !c->stencil_test && !c->color_logic_op_enabled &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
        c->color_mask[0] && c->color_mask[1] && c->color_mask[2] && c->color_mask[3] &&
        (!c->blend || ((c->blend_src == GL_SRC_ALPHA || c->blend_src == GL_ONE) &&
                       (c->blend_dst == GL_ONE || c->blend_dst == GL_ONE_MINUS_SRC_ALPHA)))) {
        sg_write_msaa2_fast(c, x, y, coverage, z, color, alpha, first);
        return;
    }
    for (int s = 0; s < n; s++) {
        if (!(coverage & (1u << s))) continue;
        sg_write_sample(c, first + s, c->fb.sample_color, c->fb.sample_depth,
                         c->fb.sample_stencil, z[s], color[0], color[1], color[2], alpha, 2);
    }
}

void sg_write_multisample(softgl_ctx *c, int x, int y, unsigned coverage,
                          const float z[4], const float color[4]) {
    if (c->fb.samples == 2) {
        sg_write_multisample2(c, x, y, coverage, z, color);
        return;
    }
    if (!sg_fragment_in_bounds(c, x, y)) return;
    int n = c->fb.samples;
    float alpha = color[3];
    if (c->multisample) {
        if (c->sample_alpha_to_coverage) coverage &= sg_coverage_mask(alpha, n, x, y);
        if (c->sample_alpha_to_one) alpha = 1.f;
        if (c->sample_coverage) {
            unsigned mask = sg_coverage_mask(c->sample_coverage_value, n, x, y);
            if (c->sample_coverage_invert) mask ^= (1u << n) - 1u;
            coverage &= mask;
        }
    }
    size_t first = ((size_t)y * c->fb.w + x) * n;
    if (n == 4 && !c->alpha_test && !c->stencil_test && !c->color_logic_op_enabled &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
        c->color_mask[0] && c->color_mask[1] && c->color_mask[2] && c->color_mask[3] &&
        (!c->blend || ((c->blend_src == GL_SRC_ALPHA || c->blend_src == GL_ONE) &&
                       (c->blend_dst == GL_ONE || c->blend_dst == GL_ONE_MINUS_SRC_ALPHA)))) {
        sg_i32x4 mask = sg_mask4_expand(coverage);
        if (c->depth_test) {
            sg_f32x4 zv = _mm_loadu_ps(z);
            sg_f32x4 old_depth = _mm_loadu_ps(&c->fb.sample_depth[first]);
            mask = sg_i32x4_and(mask, sg_sample_depth_mask(c->depth_func, zv, old_depth));
            coverage = sg_mask4_live(mask);
            if (!coverage) return;
            if (c->depth_mask) {
                _mm_storeu_ps(&c->fb.sample_depth[first], sg_f32x4_select(mask, zv, old_depth));
                sg_hz_record_pixel4(c, x, y, coverage, z);
            }
        } else if (!coverage) return;
        uint8_t *px = &c->fb.sample_color[first * 4];
        sg_i32x4 packed;
        if (c->blend) {
            sg_i32x4 old_color = _mm_loadu_si128((const __m128i*)px);
            float sf = c->blend_src == GL_SRC_ALPHA ? alpha : 1.f;
            float df = c->blend_dst == GL_ONE ? 1.f : 1.f - alpha;
            if (c->blend_dst != GL_ONE ||
                !sg_blend_additive_msaa4_bytes(color, alpha, sf, old_color, &packed)) {
                sg_i32x4 r = sg_blend_sample_channel(color[0], old_color, 0, sf, df);
                sg_i32x4 g = sg_blend_sample_channel(color[1], old_color, 8, sf, df);
                sg_i32x4 b = sg_blend_sample_channel(color[2], old_color, 16, sf, df);
                sg_i32x4 a = sg_blend_sample_channel(alpha, old_color, 24, sf, df);
                packed = _mm_or_si128(_mm_or_si128(r, _mm_slli_epi32(g, 8)),
                                     _mm_or_si128(_mm_slli_epi32(b, 16), _mm_slli_epi32(a, 24)));
            }
        } else {
            uint32_t rgba = (uint32_t)sg_quantize(color[0]) |
                            ((uint32_t)sg_quantize(color[1]) << 8) |
                            ((uint32_t)sg_quantize(color[2]) << 16) |
                            ((uint32_t)sg_quantize(alpha) << 24);
            packed = sg_i32x4_splat((int32_t)rgba);
        }
        if (coverage != 15) {
            sg_i32x4 old_color = _mm_loadu_si128((const __m128i*)px);
            packed = _mm_or_si128(_mm_and_si128(mask, packed), _mm_andnot_si128(mask, old_color));
        }
        _mm_storeu_si128((__m128i*)px, packed);
        return;
    }
    for (int s = 0; s < n; s++) {
        if (!(coverage & (1u << s))) continue;
        sg_write_sample(c, first + s, c->fb.sample_color, c->fb.sample_depth,
                         c->fb.sample_stencil, z[s], color[0], color[1], color[2], alpha, 4);
    }
}

void sg_write_fragment(softgl_ctx *c, int x, int y, float z,
                        float r, float g, float b, float a) {
    if (!sg_fragment_in_bounds(c, x, y)) return;
    if (c->fb.samples) {
        float depths[4] = {z, z, z, z};
        float color[4] = {r, g, b, a};
        sg_write_multisample(c, x, y, (1u << c->fb.samples) - 1u, depths, color);
        return;
    }
    sg_write_sample(c, (size_t)y * c->fb.w + x, c->fb.color, c->fb.depth,
                     c->fb.stencil, z, r, g, b, a, 0);
}
