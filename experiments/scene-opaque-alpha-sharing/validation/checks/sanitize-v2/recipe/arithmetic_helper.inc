static inline sg_f32x4 scene_rebased_edge_float(sg_i32x4 coarse,
    sg_i32x4 remainder, int small_edges) {
    if (small_edges)
        return _mm_cvtepi32_ps(_mm_or_si128(_mm_slli_epi32(coarse,8),remainder));
    /* Both integer components are exactly representable as float. One final
     * addition rounds the original signed-64 edge, without double rounding. */
    sg_f32x4 high = _mm_cvtepi32_ps(_mm_srai_epi32(coarse,8));
    sg_i32x4 low = _mm_or_si128(_mm_slli_epi32(_mm_and_si128(coarse,
        sg_i32x4_splat(255)),8),remainder);
    return sg_f32x4_add(sg_f32x4_mul(high,sg_f32x4_splat(65536.f)),_mm_cvtepi32_ps(low));
}

