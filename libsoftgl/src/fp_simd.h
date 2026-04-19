#ifndef SOFTGL_FP_SIMD_H
#define SOFTGL_FP_SIMD_H

/* =====================================================================
 * Phase FP-3: SIMD wrapper layer for the 2x2-quad rasterizer.
 *
 * We expose a tiny vector ABI over SSE4.1 (native x86-64) or
 * wasm_simd128 (Emscripten). The ABI is the minimal surface the
 * rasterizer touches: 4-lane i32 arithmetic, 4-lane compare, mask
 * extract. Everything else stays scalar.
 *
 * Lane layout for a 2x2 quad:
 *   lane 0 = TL (ix,   iy)
 *   lane 1 = TR (ix+1, iy)
 *   lane 2 = BL (ix,   iy+1)
 *   lane 3 = BR (ix+1, iy+1)
 *
 * All "edge values" are i32 representations of the 16.8-stepped edge
 * function. The full i64 precision from FP-2 is NOT preserved inside
 * the SIMD register — we use the *sign bit* of the (E + bias) test to
 * form the coverage mask, which only needs the i32 MSB. For the exact
 * attribute computation path (when a lane passes coverage) we still
 * rebuild the i64 edge value from the scalar starting point + steps.
 *
 * The wrapper is header-only and compiled into every TU that includes
 * it. Keep it small. All functions are static inline so the compiler
 * can pick exactly what it needs.
 * ===================================================================== */

#include <stdint.h>

#if defined(SG_DISABLE_SIMD)
    #define SG_HAVE_SIMD 0
#elif defined(__SSE4_1__)
    #include <smmintrin.h>
    #define SG_HAVE_SIMD 1
    #define SG_SIMD_SSE4 1

    typedef __m128i sg_i32x4;

    static inline sg_i32x4 sg_i32x4_set(int32_t a, int32_t b, int32_t c, int32_t d) {
        /* lane 0 = a, 1 = b, 2 = c, 3 = d */
        return _mm_setr_epi32(a, b, c, d);
    }
    static inline sg_i32x4 sg_i32x4_splat(int32_t a) { return _mm_set1_epi32(a); }
    static inline sg_i32x4 sg_i32x4_add(sg_i32x4 a, sg_i32x4 b) { return _mm_add_epi32(a, b); }

    /* Coverage mask: 4-bit mask from the SIGN bit of each lane.
     * A lane is "inside" iff (E + bias) >= 0, i.e. sign bit clear.
     * We compute ~sign_bits, then AND with 0xF. */
    static inline unsigned sg_i32x4_mask_nonneg(sg_i32x4 v) {
        /* movemask_ps reads the top bit of each 32-bit lane. */
        int neg = _mm_movemask_ps(_mm_castsi128_ps(v));
        return (unsigned)(~neg) & 0xFu;
    }

#elif defined(__wasm_simd128__)
    #include <wasm_simd128.h>
    #define SG_HAVE_SIMD 1
    #define SG_SIMD_WASM 1

    typedef v128_t sg_i32x4;

    static inline sg_i32x4 sg_i32x4_set(int32_t a, int32_t b, int32_t c, int32_t d) {
        return wasm_i32x4_make(a, b, c, d);
    }
    static inline sg_i32x4 sg_i32x4_splat(int32_t a) { return wasm_i32x4_splat(a); }
    static inline sg_i32x4 sg_i32x4_add(sg_i32x4 a, sg_i32x4 b) { return wasm_i32x4_add(a, b); }

    static inline unsigned sg_i32x4_mask_nonneg(sg_i32x4 v) {
        /* wasm bitmask returns 1 bit per lane from the sign bit. */
        int neg = wasm_i32x4_bitmask(v);
        return (unsigned)(~neg) & 0xFu;
    }

#else
    #define SG_HAVE_SIMD 0
#endif

#endif /* SOFTGL_FP_SIMD_H */
