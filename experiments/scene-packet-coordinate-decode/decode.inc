/* Exact unsigned division by a runtime width using ceil(2^32 / width).
 * Width is positive and <= INT32_MAX. The estimate is exact or one high;
 * its wrapped remainder is in [-(width-1), width-1], so a sign correction
 * restores the exact quotient and remainder, including UINT32_MAX inputs. */
static inline uint32_t scene_coordinate_magic(unsigned width) {
    return width > 1 ? (uint32_t)(((UINT64_C(1) << 32)+width-1)/width) : 0;
}

static inline void scene_decode_pixels(const uint32_t input[4], unsigned width,
    unsigned samples, uint32_t magic, uint32_t pixel[4], uint32_t x[4], uint32_t y[4]) {
    if (samples != 0 && samples != 2 && samples != 4) {
        for (unsigned i = 0; i < 4; i++) {
            pixel[i] = input[i]/samples;
            x[i] = pixel[i]%width; y[i] = pixel[i]/width;
        }
        return;
    }
    __m128i p = _mm_loadu_si128((const __m128i *)input);
    __m128i shift = _mm_cvtsi32_si128(samples == 4 ? 2 : samples == 2 ? 1 : 0);
    p = _mm_srl_epi32(p,shift);
    _mm_storeu_si128((__m128i *)pixel,p);
    if (width == 1) {
        _mm_storeu_si128((__m128i *)x,_mm_setzero_si128());
        _mm_storeu_si128((__m128i *)y,p);
        return;
    }
    __m128i m = _mm_set1_epi32((int32_t)magic);
    __m128i even = _mm_mul_epu32(p,m);
    __m128i odd = _mm_mul_epu32(_mm_srli_si128(p,4),m);
    even = _mm_shuffle_epi32(even,_MM_SHUFFLE(3,1,3,1));
    odd = _mm_shuffle_epi32(odd,_MM_SHUFFLE(3,1,3,1));
    __m128i q = _mm_unpacklo_epi32(even,odd);
    __m128i w = _mm_set1_epi32((int32_t)width);
    __m128i r = _mm_sub_epi32(p,_mm_mullo_epi32(q,w));
    __m128i high = _mm_srai_epi32(r,31);
    q = _mm_add_epi32(q,high);
    r = _mm_add_epi32(r,_mm_and_si128(high,w));
    _mm_storeu_si128((__m128i *)x,r);
    _mm_storeu_si128((__m128i *)y,q);
}
