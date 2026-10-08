/* Independent int64 oracle for the producer's bounded 16.4 integer math.
 * No renderer state or helper arithmetic is used by the oracle. */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <smmintrin.h>
static uint32_t seed = 0x4b1dce21u;
static uint32_t random_u32(void) {
    seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5; return seed;
}
int main(void) {
    uint64_t comparisons = 0; int64_t maximum = 0;
    for (unsigned trial = 0; trial < 1000000; trial++) {
        int32_t vx[3], vy[3], coefficients[2][3];
        for (int v = 0; v < 3; v++) {
            vx[v] = (int32_t)(random_u32()%10273)-16;
            vy[v] = (int32_t)(random_u32()%5793)-16;
            if (trial < 64) { vx[v] = trial & (1u << v) ? 10256 : -16; vy[v] = trial & (8u << v) ? 5776 : -16; }
        }
        for (int k = 0; k < 2; k++) {
            int a = k ? 2 : 1, b = k ? 0 : 2;
            int64_t origin = (int64_t)(vx[b]-vx[a])*(8-vy[a])-(int64_t)(vy[b]-vy[a])*(8-vx[a]);
            if (origin < INT32_MIN || origin > INT32_MAX) abort();
            coefficients[k][0] = (int32_t)origin;
            coefficients[k][1] = -(vy[b]-vy[a])*16;
            coefficients[k][2] = (vx[b]-vx[a])*16;
        }
        int32_t xs[4], ys[4];
        for (int l = 0; l < 4; l++) {
            xs[l] = (int32_t)(random_u32()%640); ys[l] = (int32_t)(random_u32()%360);
            if (trial < 64) { xs[l] = l & 1 ? 639 : 0; ys[l] = l & 2 ? 359 : 0; }
        }
        for (int k = 0; k < 2; k++) {
            __m128i x = _mm_loadu_si128((const __m128i *)xs), y = _mm_loadu_si128((const __m128i *)ys);
            __m128i result = _mm_add_epi32(_mm_add_epi32(_mm_set1_epi32(coefficients[k][0]),
                _mm_mullo_epi32(_mm_set1_epi32(coefficients[k][1]),x)),
                _mm_mullo_epi32(_mm_set1_epi32(coefficients[k][2]),y));
            int32_t values[4]; _mm_storeu_si128((__m128i *)values,result);
            for (int l = 0; l < 4; l++) {
                int64_t a = coefficients[k][0], dx = (int64_t)coefficients[k][1]*xs[l], dy = (int64_t)coefficients[k][2]*ys[l];
                int64_t oracle = a+dx+dy;
                if (dx < INT32_MIN || dx > INT32_MAX || dy < INT32_MIN || dy > INT32_MAX || a+dx < INT32_MIN || a+dx > INT32_MAX || oracle < INT32_MIN || oracle > INT32_MAX) abort();
                int32_t scalar = coefficients[k][0]+coefficients[k][1]*xs[l]+coefficients[k][2]*ys[l];
                if (values[l] != oracle || scalar != oracle || (float)values[l] != (float)oracle) abort();
                int64_t absolute = oracle < 0 ? -oracle : oracle; if (absolute > maximum) maximum = absolute;
                comparisons++;
            }
        }
    }
    printf("Tagged edges: %llu independent int64/scalar32/SIMD128/float checks, extremes included; maximum=%lld PASS\n", (unsigned long long)comparisons,(long long)maximum);
    return 0;
}
