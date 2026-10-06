#ifndef SOFTGL_INDEX_RANGE_H
#define SOFTGL_INDEX_RANGE_H

#include "types.h"
#include <smmintrin.h>
#include <string.h>

/* Four independent unsigned reductions consume 64 bytes per iteration.
 * Every load fits inside the supplied index span, including unaligned spans.
 * Dispatch by index type once, instead of fetching its type for each index. */
#define SG_INDEX_RANGE_TYPED(name, scalar, lanes, min_op, max_op) \
static inline void name(const uint8_t *data, int count, uint32_t *imin, uint32_t *imax) { \
    __m128i lo0 = _mm_set1_epi32(-1), lo1 = lo0, lo2 = lo0, lo3 = lo0; \
    __m128i hi0 = _mm_setzero_si128(), hi1 = hi0, hi2 = hi0, hi3 = hi0; \
    int k = 0; \
    for (; count - k >= (lanes) * 4; k += (lanes) * 4) { \
        const uint8_t *p = data + (size_t)k * sizeof(scalar); \
        __m128i x0 = _mm_loadu_si128((const __m128i *)(const void *)(p)); \
        __m128i x1 = _mm_loadu_si128((const __m128i *)(const void *)(p + 16)); \
        __m128i x2 = _mm_loadu_si128((const __m128i *)(const void *)(p + 32)); \
        __m128i x3 = _mm_loadu_si128((const __m128i *)(const void *)(p + 48)); \
        lo0 = min_op(lo0, x0); hi0 = max_op(hi0, x0); \
        lo1 = min_op(lo1, x1); hi1 = max_op(hi1, x1); \
        lo2 = min_op(lo2, x2); hi2 = max_op(hi2, x2); \
        lo3 = min_op(lo3, x3); hi3 = max_op(hi3, x3); \
    } \
    lo0 = min_op(min_op(lo0, lo1), min_op(lo2, lo3)); \
    hi0 = max_op(max_op(hi0, hi1), max_op(hi2, hi3)); \
    for (; count - k >= (lanes); k += (lanes)) { \
        __m128i x = _mm_loadu_si128((const __m128i *)(const void *)(data + (size_t)k * sizeof(scalar))); \
        lo0 = min_op(lo0, x); hi0 = max_op(hi0, x); \
    } \
    scalar low[lanes], high[lanes]; \
    _mm_storeu_si128((__m128i *)(void *)low, lo0); \
    _mm_storeu_si128((__m128i *)(void *)high, hi0); \
    uint32_t minimum = UINT32_MAX, maximum = 0; \
    for (int lane = 0; lane < (lanes); lane++) { \
        if ((uint32_t)low[lane] < minimum) minimum = low[lane]; \
        if ((uint32_t)high[lane] > maximum) maximum = high[lane]; \
    } \
    for (; k < count; k++) { \
        scalar value; \
        memcpy(&value, data + (size_t)k * sizeof(scalar), sizeof(value)); \
        if ((uint32_t)value < minimum) minimum = value; \
        if ((uint32_t)value > maximum) maximum = value; \
    } \
    *imin = minimum; *imax = maximum; \
}

SG_INDEX_RANGE_TYPED(sg_index_range_u8, uint8_t, 16, _mm_min_epu8, _mm_max_epu8)
SG_INDEX_RANGE_TYPED(sg_index_range_u16, uint16_t, 8, _mm_min_epu16, _mm_max_epu16)
SG_INDEX_RANGE_TYPED(sg_index_range_u32, uint32_t, 4, _mm_min_epu32, _mm_max_epu32)
#undef SG_INDEX_RANGE_TYPED

static inline void sg_index_range(GLenum type, const uint8_t *data, GLsizei count,
                                  uint32_t *imin, uint32_t *imax) {
    *imin = UINT32_MAX; *imax = 0;
    if (count <= 0) return;
    /* Same zero-index fallback as sg_fetch_index for missing/invalid inputs. */
    if (!data) { *imin = 0; return; }
    switch (type) {
        case GL_UNSIGNED_BYTE: sg_index_range_u8(data, count, imin, imax); break;
        case GL_UNSIGNED_SHORT: sg_index_range_u16(data, count, imin, imax); break;
        case GL_UNSIGNED_INT: sg_index_range_u32(data, count, imin, imax); break;
        default: *imin = 0; break;
    }
}

#endif
