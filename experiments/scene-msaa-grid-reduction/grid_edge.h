#ifndef SOFTGL_RASTER_GRID_EDGE_H
#define SOFTGL_RASTER_GRID_EDGE_H

#ifndef SG_GRID_AUDIT
#define SG_GRID_AUDIT(index, count) ((void)0)
#endif

/* Every original sample offset and pixel step is divisible by sixteen.
 * Both supported Clang targets use arithmetic signed right shift. */
SG_INLINE int64_t sg_grid_edge_floor(int64_t edge) {
    return edge >> 4;
}

/* Reconstruct in double before a single float rounding. All inputs represent
 * integers of magnitude at most 2^35 exactly in f64; direct f32 reconstruction
 * can round twice. */
SG_INLINE sg_f32x4 sg_grid_edge_float(sg_i32x4 reduced, sg_i32x4 remainder) {
    __m128d scale = _mm_set1_pd(16.0);
    __m128d lo = _mm_add_pd(_mm_mul_pd(_mm_cvtepi32_pd(reduced), scale),
                            _mm_cvtepi32_pd(remainder));
    __m128d hi = _mm_add_pd(_mm_mul_pd(_mm_cvtepi32_pd(_mm_srli_si128(reduced, 8)), scale),
                            _mm_cvtepi32_pd(_mm_srli_si128(remainder, 8)));
    return _mm_movelh_ps(_mm_cvtpd_ps(lo), _mm_cvtpd_ps(hi));
}

#endif
