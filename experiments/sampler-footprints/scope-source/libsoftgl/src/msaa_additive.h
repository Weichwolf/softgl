#ifndef SOFTGL_MSAA_ADDITIVE_H
#define SOFTGL_MSAA_ADDITIVE_H
#include "simd.h"

/* For S in [0,1], the float path's byte-domain rounding error relative to
 * destination_byte + (S*255 + .5) is below 1/8192. Reject a wider 1/512
 * neighbourhood of every integer boundary, keeping the existing float path
 * for ties, nonfinite inputs and out-of-range effective source colors.
 * The accepted integer increment is then independent of destination bytes. */
SG_INLINE int sg_try_blend_additive_msaa4(const float color[4], float alpha,
                                           float factor, sg_i32x4 destination,
                                           sg_i32x4 *result) {
    sg_f32x4 source = _mm_blend_ps(sg_f32x4_load(color), sg_f32x4_splat(alpha), 8);
    source = sg_f32x4_mul(source, sg_f32x4_splat(factor));
    sg_i32x4 valid = sg_i32x4_and(sg_f32x4_ge(source, sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(source, sg_f32x4_splat(1.f)));
    if (sg_mask4_live(valid) != 15) return 0;
    sg_f32x4 scaled = sg_f32x4_add(sg_f32x4_mul(source, sg_f32x4_splat(255.f)),
                                    sg_f32x4_splat(.5f));
    sg_i32x4 increment = sg_f32x4_trunc_i32(scaled);
    sg_f32x4 fraction = sg_f32x4_sub(scaled, _mm_cvtepi32_ps(increment));
    valid = sg_i32x4_and(sg_f32x4_gt(fraction, sg_f32x4_splat(1.f / 512.f)),
                           sg_f32x4_lt(fraction, sg_f32x4_splat(1.f - 1.f / 512.f)));
    if (sg_mask4_live(valid) != 15) return 0;
    sg_i32x4 words = _mm_packs_epi32(increment, increment);
    sg_i32x4 bytes = _mm_packus_epi16(words, words);
    *result = _mm_adds_epu8(destination, bytes);
    return 1;
}
#endif
