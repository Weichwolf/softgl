#ifndef SG_MATERIAL_BLEND_H
#define SG_MATERIAL_BLEND_H

#include "types.h"
#include "simd.h"

/* An additive GL pass starts from an already quantized framebuffer. Translate
 * its contribution by a whole RGBA8 step before fusing the RGB expression;
 * rounding a value plus an integer retains the diffuse pass's first rounding.
 * The caller supplies a clamped contribution in [0, 1]. */
SG_INLINE sg_f32x4 sg_material_additive_round4(sg_f32x4 contribution) {
    sg_i32x4 quantized = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(contribution,
        sg_f32x4_splat(255.f)),sg_f32x4_splat(.5f)));
    return sg_f32x4_mul(_mm_cvtepi32_ps(quantized),sg_f32x4_splat(1.f/255.f));
}

/* Preserve both GL framebuffer roundings when two transparent material passes
 * become one premultiplied RGB draw. RGB still uses the diffuse coverage alpha. */
SG_INLINE float sg_material_transparent_alpha(const softgl_ctx *c, float alpha,
    float destination) {
    if (c->fused_dot3_tint[3] >= 1.f) return 1.f;
    float first = sg_quantize(alpha*alpha+destination*(1.f-alpha))*(1.f/255.f);
    float specular = sg_clampf(c->fused_dot3_tint[3],0.f,1.f);
    return sg_clampf(first+specular*specular,0.f,1.f);
}

SG_INLINE sg_f32x4 sg_material_transparent_alpha4(const softgl_ctx *c,
    sg_f32x4 alpha, sg_f32x4 destination) {
    if (c->fused_dot3_tint[3] >= 1.f) return sg_f32x4_splat(1.f);
    sg_f32x4 first = sg_f32x4_add(sg_f32x4_mul(alpha,alpha),sg_f32x4_mul(destination,
        sg_f32x4_sub(sg_f32x4_splat(1.f),alpha)));
    first = _mm_min_ps(_mm_max_ps(first,sg_f32x4_splat(0.f)),sg_f32x4_splat(1.f));
    sg_i32x4 quantized = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(first,
        sg_f32x4_splat(255.f)),sg_f32x4_splat(.5f)));
    float specular = sg_clampf(c->fused_dot3_tint[3],0.f,1.f);
    return _mm_min_ps(sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(quantized),
        sg_f32x4_splat(1.f/255.f)),sg_f32x4_splat(specular*specular)),sg_f32x4_splat(1.f));
}

#endif
