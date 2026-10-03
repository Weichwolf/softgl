#ifndef SG_RASTER_STORE_H
#define SG_RASTER_STORE_H
#include "types.h"
#include "simd.h"

/* Triangle bounds include framebuffer/scissor. Its early depth test already
 * selected these samples. Each triangle flushes its distinct pixel packet
 * before the next triangle; bins own disjoint X ranges. */
SG_INLINE int sg_can_store_opaque_msaa4(const softgl_ctx *c) {
    return c->fb.samples == 4 && !c->alpha_test && !c->stencil_test &&
           !c->blend && !c->color_logic_op_enabled &&
           !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
           !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
           c->color_mask[0] && c->color_mask[1] && c->color_mask[2] && c->color_mask[3] &&
           (!c->multisample || (!c->sample_alpha_to_coverage &&
                                !c->sample_alpha_to_one && !c->sample_coverage));
}

SG_INLINE uint32_t sg_store_quantize_rgba(const float color[4]) {
    sg_f32x4 value = sg_f32x4_load(color);
    value = sg_f32x4_select(sg_f32x4_lt(value, sg_f32x4_splat(0.f)), sg_f32x4_splat(0.f), value);
    value = sg_f32x4_select(sg_f32x4_gt(value, sg_f32x4_splat(1.f)), sg_f32x4_splat(1.f), value);
    sg_i32x4 i = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(value,
        sg_f32x4_splat(255.f)), sg_f32x4_splat(.5f)));
    sg_i32x4 words = _mm_packus_epi32(i, i);
    return (uint32_t)_mm_cvtsi128_si32(_mm_packus_epi16(words, words));
}

/* Coverage is post-Z. Color conversion is four channels in one vector; no
 * second depth test or per-pixel state dispatch is needed for this draw. */
SG_INLINE void sg_store_opaque_msaa4(softgl_ctx *c, int x, int y, unsigned coverage,
                                     const float depths[4], const float color[4]) {
    size_t first = ((size_t)y * c->fb.w + x) * 4;
    uint8_t *px = c->fb.sample_color + first * 4;
    sg_i32x4 packed = sg_i32x4_splat((int32_t)sg_store_quantize_rgba(color));
    if (coverage == 15) {
        if (c->depth_test && c->depth_mask)
            sg_f32x4_store(c->fb.sample_depth + first, sg_f32x4_load(depths));
    } else {
        sg_i32x4 mask = sg_mask4_expand(coverage);
        if (c->depth_test && c->depth_mask) {
            sg_f32x4 old = sg_f32x4_load(c->fb.sample_depth + first);
            sg_f32x4_store(c->fb.sample_depth + first,
                sg_f32x4_select(mask, sg_f32x4_load(depths), old));
        }
        sg_i32x4 old = _mm_loadu_si128((const sg_i32x4 *)px);
        packed = _mm_or_si128(_mm_and_si128(mask, packed), _mm_andnot_si128(mask, old));
    }
    _mm_storeu_si128((sg_i32x4 *)px, packed);
}
#endif
