#ifndef SOFTGL_FP_TYPES_H
#define SOFTGL_FP_TYPES_H

#include <stdint.h>

/* Fixed-point formats:
 *   Screen: 16.8 (i32, subpixel 1/256)
 *   1/w:    16.16 (i32)
 *   Depth:  0.31 (f32 [0,1] → i32 [0, 2^31-1]) */

typedef int32_t  sg_fixed_t;     /* generic 16.16 signed */
typedef int32_t  sg_screen_t;    /* 16.8 signed screen space */
typedef int32_t  sg_invw_t;      /* 16.16 signed 1/w */
typedef int32_t  sg_depth_t;     /* 0.31 (fits in signed i32) */

#define SG_FP_SUBPIXEL_BITS   8
#define SG_FP_SUBPIXEL_ONE   (1 << SG_FP_SUBPIXEL_BITS)  /* 256 */

typedef struct {
    sg_screen_t x;
    sg_screen_t y;
    sg_depth_t  z;
    sg_invw_t   inv_w;
    float       color[4];
    float       normal[3];
    float       eye_z;
    float       uv[4][4];    /* per-unit (u,v,r,q) */
} sg_fp_vert;

static inline sg_depth_t sg_fp_depth_from_float(float f) {
    if (f < 0.f) f = 0.f;
    if (f > 1.f) f = 1.f;
    /* 0x7FFF0000 not 0x7FFFFFFF: avoids 1.0 → overflow. */
    return (sg_depth_t)(f * 2147483392.0f);
}

static inline float sg_fp_depth_to_float(sg_depth_t d) {
    return (float)d * (1.0f / 2147483392.0f);
}

static inline sg_screen_t sg_fp_screen_from_float(float f) {
    return (sg_screen_t)(f * (float)SG_FP_SUBPIXEL_ONE);
}

static inline float sg_fp_screen_to_float(sg_screen_t s) {
    return (float)s * (1.0f / (float)SG_FP_SUBPIXEL_ONE);
}

static inline sg_invw_t sg_fp_invw_from_float(float f) {
    return (sg_invw_t)(f * 65536.0f);
}

#endif
