#ifndef SOFTGL_FP_SIMD_H
#define SOFTGL_FP_SIMD_H

/* =====================================================================
 * Phase FP-3: SIMD wrapper for the 2x2-quad coverage mask.
 * Phase FP-5: extended with f32 arithmetic + masked byte stores so the
 *             whole fragment pipeline can run 4-wide per quad.
 *
 * Lane layout for a 2x2 quad:
 *   lane 0 = TL (ix,   iy)
 *   lane 1 = TR (ix+1, iy)
 *   lane 2 = BL (ix,   iy+1)
 *   lane 3 = BR (ix+1, iy+1)
 *
 * Coverage/compare masks are 4 i32 lanes where 0xFFFFFFFF means "lane
 * live" and 0x00000000 means "lane killed" — i.e. the sign bit of a
 * subtract is not used for test results, we use full lane-wide masks
 * so a single _mm_and_si128 composes them.
 *
 * The header is deliberately small. It wraps only the handful of
 * operations the rasterizer actually touches so the non-SIMD fallback
 * stays easy to read.
 * ===================================================================== */

#include <stdint.h>

#if defined(SG_DISABLE_SIMD)
    #define SG_HAVE_SIMD 0
#elif defined(__SSE4_1__)
    #include <smmintrin.h>
    #define SG_HAVE_SIMD 1
    #define SG_SIMD_SSE4 1

    typedef __m128i sg_i32x4;
    typedef __m128  sg_f32x4;

    /* ---- i32 ------------------------------------------------------ */
    static inline sg_i32x4 sg_i32x4_set(int32_t a, int32_t b, int32_t c, int32_t d) {
        return _mm_setr_epi32(a, b, c, d);
    }
    static inline sg_i32x4 sg_i32x4_splat(int32_t a) { return _mm_set1_epi32(a); }
    static inline sg_i32x4 sg_i32x4_add(sg_i32x4 a, sg_i32x4 b) { return _mm_add_epi32(a, b); }
    static inline sg_i32x4 sg_i32x4_and(sg_i32x4 a, sg_i32x4 b) { return _mm_and_si128(a, b); }

    /* Coverage: build a 4-bit mask from SIGN bits (one per lane).
     * A lane is inside iff (E + bias) >= 0, i.e. sign bit clear. */
    static inline unsigned sg_i32x4_mask_nonneg(sg_i32x4 v) {
        int neg = _mm_movemask_ps(_mm_castsi128_ps(v));
        return (unsigned)(~neg) & 0xFu;
    }

    /* 4-bit -> 4-lane full-mask vector (0xFFFFFFFF or 0 per lane). */
    static inline sg_i32x4 sg_mask4_expand(unsigned m) {
        int32_t a = (m & 1) ? -1 : 0;
        int32_t b = (m & 2) ? -1 : 0;
        int32_t c = (m & 4) ? -1 : 0;
        int32_t d = (m & 8) ? -1 : 0;
        return _mm_setr_epi32(a, b, c, d);
    }

    /* 4-lane full-mask vector -> 4-bit: lane l contributes bit l when
     * its sign bit is set (i.e. lane was 0xFFFFFFFF from a compare or
     * a truthy sg_mask4_expand input). */
    static inline unsigned sg_mask4_live(sg_i32x4 v) {
        return (unsigned)_mm_movemask_ps(_mm_castsi128_ps(v)) & 0xFu;
    }

    /* ---- f32 ------------------------------------------------------ */
    static inline sg_f32x4 sg_f32x4_set(float a, float b, float c, float d) {
        return _mm_setr_ps(a, b, c, d);
    }
    static inline sg_f32x4 sg_f32x4_splat(float a) { return _mm_set1_ps(a); }
    static inline sg_f32x4 sg_f32x4_add(sg_f32x4 a, sg_f32x4 b) { return _mm_add_ps(a, b); }
    static inline sg_f32x4 sg_f32x4_sub(sg_f32x4 a, sg_f32x4 b) { return _mm_sub_ps(a, b); }
    static inline sg_f32x4 sg_f32x4_mul(sg_f32x4 a, sg_f32x4 b) { return _mm_mul_ps(a, b); }
    static inline sg_f32x4 sg_f32x4_div(sg_f32x4 a, sg_f32x4 b) { return _mm_div_ps(a, b); }
    static inline sg_f32x4 sg_f32x4_min(sg_f32x4 a, sg_f32x4 b) { return _mm_min_ps(a, b); }
    static inline sg_f32x4 sg_f32x4_max(sg_f32x4 a, sg_f32x4 b) { return _mm_max_ps(a, b); }
    /* a*b + c (mul-add; we don't gate on FMA, the compiler can fuse if available). */
    static inline sg_f32x4 sg_f32x4_madd(sg_f32x4 a, sg_f32x4 b, sg_f32x4 c) {
        return _mm_add_ps(_mm_mul_ps(a, b), c);
    }

    /* Compares: return a full-lane mask as i32x4 (0xFFFFFFFF or 0). */
    static inline sg_i32x4 sg_f32x4_lt(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmplt_ps(a, b));
    }
    static inline sg_i32x4 sg_f32x4_le(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmple_ps(a, b));
    }
    static inline sg_i32x4 sg_f32x4_gt(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmpgt_ps(a, b));
    }
    static inline sg_i32x4 sg_f32x4_ge(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmpge_ps(a, b));
    }
    static inline sg_i32x4 sg_f32x4_eq(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmpeq_ps(a, b));
    }
    static inline sg_i32x4 sg_f32x4_ne(sg_f32x4 a, sg_f32x4 b) {
        return _mm_castps_si128(_mm_cmpneq_ps(a, b));
    }

    /* Select: per-lane (mask ? a : b). */
    static inline sg_f32x4 sg_f32x4_select(sg_i32x4 mask, sg_f32x4 a, sg_f32x4 b) {
        return _mm_blendv_ps(b, a, _mm_castsi128_ps(mask));   /* SSE4.1 */
    }

    /* Quantize 4 floats in [0,1] to 4 u8 (saturating, round-to-nearest),
     * returns a 32-bit packed value low byte = lane 0 … high byte = lane 3. */
    static inline uint32_t sg_f32x4_quantize_u8(sg_f32x4 v) {
        __m128 vv = _mm_max_ps(_mm_setzero_ps(), _mm_min_ps(_mm_set1_ps(1.0f), v));
        vv = _mm_mul_ps(vv, _mm_set1_ps(255.0f));
        __m128i i = _mm_cvtps_epi32(vv);                    /* round-to-nearest-even */
        __m128i s16 = _mm_packs_epi32(i, i);                /* i32->i16 saturating */
        __m128i u8  = _mm_packus_epi16(s16, s16);           /* i16->u8 saturating */
        return (uint32_t)_mm_cvtsi128_si32(u8);
    }

    /* Lane extract: lane 0..3 as float. */
    static inline float sg_f32x4_extract0(sg_f32x4 v) { return _mm_cvtss_f32(v); }
    static inline float sg_f32x4_extract1(sg_f32x4 v) {
        return _mm_cvtss_f32(_mm_shuffle_ps(v, v, _MM_SHUFFLE(1,1,1,1)));
    }
    static inline float sg_f32x4_extract2(sg_f32x4 v) {
        return _mm_cvtss_f32(_mm_shuffle_ps(v, v, _MM_SHUFFLE(2,2,2,2)));
    }
    static inline float sg_f32x4_extract3(sg_f32x4 v) {
        return _mm_cvtss_f32(_mm_shuffle_ps(v, v, _MM_SHUFFLE(3,3,3,3)));
    }

    /* Store 4 floats aligned (16B). Rarely used but handy for spilling. */
    static inline void sg_f32x4_store(float *p, sg_f32x4 v) { _mm_storeu_ps(p, v); }
    static inline sg_f32x4 sg_f32x4_load(const float *p) { return _mm_loadu_ps(p); }

#elif defined(__wasm_simd128__)
    #include <wasm_simd128.h>
    #define SG_HAVE_SIMD 1
    #define SG_SIMD_WASM 1

    typedef v128_t sg_i32x4;
    typedef v128_t sg_f32x4;

    static inline sg_i32x4 sg_i32x4_set(int32_t a, int32_t b, int32_t c, int32_t d) {
        return wasm_i32x4_make(a, b, c, d);
    }
    static inline sg_i32x4 sg_i32x4_splat(int32_t a) { return wasm_i32x4_splat(a); }
    static inline sg_i32x4 sg_i32x4_add(sg_i32x4 a, sg_i32x4 b) { return wasm_i32x4_add(a, b); }
    static inline sg_i32x4 sg_i32x4_and(sg_i32x4 a, sg_i32x4 b) { return wasm_v128_and(a, b); }

    static inline unsigned sg_i32x4_mask_nonneg(sg_i32x4 v) {
        int neg = wasm_i32x4_bitmask(v);
        return (unsigned)(~neg) & 0xFu;
    }
    static inline sg_i32x4 sg_mask4_expand(unsigned m) {
        int32_t a = (m & 1) ? -1 : 0;
        int32_t b = (m & 2) ? -1 : 0;
        int32_t c = (m & 4) ? -1 : 0;
        int32_t d = (m & 8) ? -1 : 0;
        return wasm_i32x4_make(a, b, c, d);
    }
    static inline unsigned sg_mask4_live(sg_i32x4 v) {
        return (unsigned)wasm_i32x4_bitmask(v) & 0xFu;
    }

    static inline sg_f32x4 sg_f32x4_set(float a, float b, float c, float d) {
        return wasm_f32x4_make(a, b, c, d);
    }
    static inline sg_f32x4 sg_f32x4_splat(float a) { return wasm_f32x4_splat(a); }
    static inline sg_f32x4 sg_f32x4_add(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_add(a, b); }
    static inline sg_f32x4 sg_f32x4_sub(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_sub(a, b); }
    static inline sg_f32x4 sg_f32x4_mul(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_mul(a, b); }
    static inline sg_f32x4 sg_f32x4_div(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_div(a, b); }
    static inline sg_f32x4 sg_f32x4_min(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_min(a, b); }
    static inline sg_f32x4 sg_f32x4_max(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_max(a, b); }
    static inline sg_f32x4 sg_f32x4_madd(sg_f32x4 a, sg_f32x4 b, sg_f32x4 c) {
        return wasm_f32x4_add(wasm_f32x4_mul(a, b), c);
    }
    static inline sg_i32x4 sg_f32x4_lt(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_lt(a, b); }
    static inline sg_i32x4 sg_f32x4_le(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_le(a, b); }
    static inline sg_i32x4 sg_f32x4_gt(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_gt(a, b); }
    static inline sg_i32x4 sg_f32x4_ge(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_ge(a, b); }
    static inline sg_i32x4 sg_f32x4_eq(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_eq(a, b); }
    static inline sg_i32x4 sg_f32x4_ne(sg_f32x4 a, sg_f32x4 b) { return wasm_f32x4_ne(a, b); }
    static inline sg_f32x4 sg_f32x4_select(sg_i32x4 mask, sg_f32x4 a, sg_f32x4 b) {
        return wasm_v128_bitselect(a, b, mask);
    }
    static inline uint32_t sg_f32x4_quantize_u8(sg_f32x4 v) {
        v128_t vv = wasm_f32x4_max(wasm_f32x4_splat(0.f),
                                    wasm_f32x4_min(wasm_f32x4_splat(1.0f), v));
        vv = wasm_f32x4_mul(vv, wasm_f32x4_splat(255.0f));
        /* round-to-nearest via add 0.5 then trunc (matches sg_quantize). */
        vv = wasm_f32x4_add(vv, wasm_f32x4_splat(0.5f));
        v128_t i32 = wasm_i32x4_trunc_sat_f32x4(vv);
        int32_t l0 = wasm_i32x4_extract_lane(i32, 0);
        int32_t l1 = wasm_i32x4_extract_lane(i32, 1);
        int32_t l2 = wasm_i32x4_extract_lane(i32, 2);
        int32_t l3 = wasm_i32x4_extract_lane(i32, 3);
        if (l0 < 0) l0 = 0; else if (l0 > 255) l0 = 255;
        if (l1 < 0) l1 = 0; else if (l1 > 255) l1 = 255;
        if (l2 < 0) l2 = 0; else if (l2 > 255) l2 = 255;
        if (l3 < 0) l3 = 0; else if (l3 > 255) l3 = 255;
        return (uint32_t)((uint8_t)l0 | ((uint8_t)l1 << 8) | ((uint8_t)l2 << 16) | ((uint8_t)l3 << 24));
    }
    static inline float sg_f32x4_extract0(sg_f32x4 v) { return wasm_f32x4_extract_lane(v, 0); }
    static inline float sg_f32x4_extract1(sg_f32x4 v) { return wasm_f32x4_extract_lane(v, 1); }
    static inline float sg_f32x4_extract2(sg_f32x4 v) { return wasm_f32x4_extract_lane(v, 2); }
    static inline float sg_f32x4_extract3(sg_f32x4 v) { return wasm_f32x4_extract_lane(v, 3); }
    static inline void sg_f32x4_store(float *p, sg_f32x4 v) { wasm_v128_store(p, v); }
    static inline sg_f32x4 sg_f32x4_load(const float *p) { return wasm_v128_load(p); }

#else
    #define SG_HAVE_SIMD 0
#endif

#endif /* SOFTGL_FP_SIMD_H */
