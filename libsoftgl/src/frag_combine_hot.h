#ifndef SOFTGL_FRAG_COMBINE_HOT_H
#define SOFTGL_FRAG_COMBINE_HOT_H

#include "types.h"
#include "simd.h"

/* Classify complete GL-state chains in the prepared texture context, independent
 * of the model, texture targets and constants. Other states use the full combiner. */
SG_INLINE int sg_dot3_chain_kind(const softgl_ctx *c, const sg_tex_tri_ctx *t) {
    for (int u = 0; u < 4; u++) {
        const sg_tex_env *e = &c->tex_env[u];
        if (t->unit[u].active_slot < 0 || e->env_mode != GL_COMBINE ||
            e->rgb_scale != 1.f || e->alpha_scale != 1.f ||
            e->op_rgb[0] != GL_SRC_COLOR || e->op_rgb[1] != GL_SRC_COLOR ||
            e->op_a[0] != GL_SRC_ALPHA) return 0;
    }
    const sg_tex_env *e = c->tex_env;
    if (e[0].combine_rgb != GL_DOT3_RGB || e[0].src_rgb[0] != GL_TEXTURE ||
        e[0].src_rgb[1] != GL_PRIMARY_COLOR || e[0].combine_a != GL_REPLACE ||
        e[0].src_a[0] != GL_PREVIOUS || e[1].src_rgb[0] != GL_PREVIOUS ||
        e[1].combine_a != GL_REPLACE || e[1].src_a[0] != GL_PREVIOUS ||
        e[2].combine_rgb != GL_MODULATE || e[2].src_rgb[0] != GL_PREVIOUS ||
        e[2].src_a[0] != GL_PREVIOUS || e[3].src_rgb[0] != GL_PREVIOUS ||
        e[3].combine_a != GL_REPLACE) return 0;
    if (e[1].combine_rgb == GL_ADD && e[1].src_rgb[1] == GL_CONSTANT &&
        e[2].src_rgb[1] == GL_TEXTURE && e[2].combine_a == GL_MODULATE &&
        e[2].src_a[1] == GL_TEXTURE && e[2].op_a[1] == GL_SRC_ALPHA &&
        e[3].combine_rgb == GL_ADD && e[3].src_rgb[1] == GL_TEXTURE &&
        e[3].src_a[0] == GL_PREVIOUS) return 1;
    if (e[1].combine_rgb == GL_MODULATE && e[1].src_rgb[1] == GL_PREVIOUS &&
        e[2].combine_a == GL_REPLACE && e[3].combine_rgb == GL_MODULATE &&
        e[3].src_rgb[1] == GL_CONSTANT && e[3].src_a[0] == GL_CONSTANT) {
        if (e[2].src_rgb[1] == GL_TEXTURE) return 2;
        if (e[2].src_rgb[1] == GL_PREVIOUS) return 3;
    }
    return 0;
}

SG_INLINE sg_f32x4 sg_chain_clamp(sg_f32x4 v) {
    /* Stored IEEE bits retain zero signs and NaN payloads under fast-math,
     * including native denormals-are-zero mode. Positive finite bits are
     * ordered like their values; negative nonzero ordered values clamp to 0. */
#if defined(__wasm_simd128__)
    v128_t bits = (v128_t)v;
    v128_t zero = wasm_i32x4_splat(0);
    v128_t one = wasm_i32x4_splat(INT32_C(0x3f800000));
    v128_t magnitude = wasm_v128_and(bits, wasm_i32x4_splat(INT32_MAX));
    v128_t nan = wasm_i32x4_gt(magnitude, wasm_i32x4_splat(INT32_C(0x7f800000)));
    v128_t low = wasm_v128_and(wasm_i32x4_lt(bits, zero),
                               wasm_i32x4_gt(magnitude, zero));
    low = wasm_v128_andnot(low, nan);
    v128_t high = wasm_v128_andnot(wasm_i32x4_gt(bits, one), nan);
    bits = wasm_v128_andnot(bits, low);
    return (sg_f32x4)wasm_v128_bitselect(one, bits, high);
#else
    __m128i bits = _mm_castps_si128(v);
    __m128i zero = _mm_setzero_si128();
    __m128i one = _mm_set1_epi32(INT32_C(0x3f800000));
    __m128i magnitude = _mm_and_si128(bits, _mm_set1_epi32(INT32_MAX));
    __m128i nan = _mm_cmpgt_epi32(magnitude, _mm_set1_epi32(INT32_C(0x7f800000)));
    __m128i low = _mm_and_si128(_mm_cmplt_epi32(bits, zero),
                               _mm_cmpgt_epi32(magnitude, zero));
    low = _mm_andnot_si128(nan, low);
    __m128i high = _mm_andnot_si128(nan, _mm_cmpgt_epi32(bits, one));
    bits = _mm_andnot_si128(low, bits);
    return _mm_castsi128_ps(_mm_blendv_epi8(bits, one, high));
#endif
}

/* Keep each stage's clamp and alpha operation. In particular, constants can
 * be outside [0,1]; moving a clamp across an add or multiply changes results. */
SG_INLINE void sg_dot3_chain_shade(int kind, const sg_tex_env env[4],
                                   const float primary[4], float tex[4][4],
                                   float out[4]) {
    float d = sg_dot3_product(tex[0], primary);
    sg_f32x4 color = sg_f32x4_splat(sg_clampf(d, 0.f, 1.f));
    float alpha = sg_clampf(primary[3], 0.f, 1.f);
    if (kind == 1) color = sg_f32x4_add(color, sg_f32x4_load(env[1].env_color));
    else color = sg_f32x4_mul(color, color);
    color = sg_chain_clamp(color);
    color = sg_chain_clamp(sg_f32x4_mul(color,
                          kind == 3 ? color : sg_f32x4_load(tex[2])));
    if (kind == 1) {
        alpha = sg_clampf(alpha * tex[2][3], 0.f, 1.f);
        color = sg_f32x4_add(color, sg_f32x4_load(tex[3]));
    } else {
        alpha = sg_clampf(env[3].env_color[3], 0.f, 1.f);
        color = sg_f32x4_mul(color, sg_f32x4_load(env[3].env_color));
    }
    sg_f32x4_store(out, sg_chain_clamp(color));
    out[3] = alpha;
}

#endif
