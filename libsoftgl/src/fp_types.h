#ifndef SOFTGL_FP_TYPES_H
#define SOFTGL_FP_TYPES_H

#include <stdint.h>

/* Fixed-point format conventions for the FP backend.
 *
 * Screen coords: signed 16.8 (i24 stored in i32, subpixel precision 1/256).
 * 1/w:          signed 16.16 (i32).
 * Depth:        signed 0.31 normalized (f32 [0,1] -> i32 [0, 2^31-1]).
 * Colors:       u8 native for framebuffer; u8.8 fixed (i16) for interpolation.
 * Tex coords:   signed 16.16 (i32), already divided by w at vertex.
 */

typedef int32_t  sg_fixed_t;     /* generic 16.16 signed */
typedef int32_t  sg_screen_t;    /* 16.8 signed screen space */
typedef int32_t  sg_invw_t;      /* 16.16 signed 1/w */
typedef int32_t  sg_depth_t;     /* 0.31 (fits in signed i32) */

#define SG_FP_SUBPIXEL_BITS   8
#define SG_FP_SUBPIXEL_ONE   (1 << SG_FP_SUBPIXEL_BITS)  /* 256 */

/* Screen-space vertex in fixed-point (after viewport xform).
 * This is the input to the FP rasterizer. */
typedef struct {
    sg_screen_t x;           /* 16.8 */
    sg_screen_t y;           /* 16.8 */
    sg_depth_t  z;           /* 0.31, for depth test */
    sg_invw_t   inv_w;       /* 16.16 */
    /* Interpolated attributes are kept as float for now; FP-2 will convert
     * to fixed-point as well. */
    float       color[4];
    float       normal[3];
    float       eye_z;
    float       uv[4][4];    /* per-unit (u,v,r,q) */
} sg_fp_vert;

/* Convert a float in [0,1] to 0.31 fixed. */
static inline sg_depth_t sg_fp_depth_from_float(float f) {
    if (f < 0.f) f = 0.f;
    if (f > 1.f) f = 1.f;
    /* 2^31 - 1 = 0x7FFFFFFF; using 0x7FFF0000 keeps room and avoids
     * issues with exactly-1.0 -> overflow. */
    return (sg_depth_t)(f * 2147483392.0f);
}

/* Inverse: 0.31 -> float [0,1] */
static inline float sg_fp_depth_to_float(sg_depth_t d) {
    return (float)d * (1.0f / 2147483392.0f);
}

/* Float screen coord -> 16.8 fixed. Uses round-half-to-even approx via
 * truncation of (x * 256 + 0.5) which is round-half-up -- close enough. */
static inline sg_screen_t sg_fp_screen_from_float(float f) {
    return (sg_screen_t)(f * (float)SG_FP_SUBPIXEL_ONE);
}

static inline float sg_fp_screen_to_float(sg_screen_t s) {
    return (float)s * (1.0f / (float)SG_FP_SUBPIXEL_ONE);
}

/* Float 1/w -> 16.16 fixed. */
static inline sg_invw_t sg_fp_invw_from_float(float f) {
    return (sg_invw_t)(f * 65536.0f);
}

#endif
