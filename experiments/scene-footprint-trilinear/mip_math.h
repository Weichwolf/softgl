#ifndef SOFTGL_MIP_MATH_H
#define SOFTGL_MIP_MATH_H
#include <math.h>

/* Gradients of the homogeneous U,V,W interpolation planes. */
static inline int sg_mip_plane_gradients(const float inverse_w[3], const sg_vec4 uv[3],
    const int64_t edges[2][3], float inverse_area, float out[2][3]) {
    for (int axis = 0; axis < 2; axis++) {
        float db[3] = {(float)edges[0][axis+1]*inverse_area,
                       (float)edges[1][axis+1]*inverse_area,0.f};
        db[2] = -db[0]-db[1];
        float gradient[3] = {0.f,0.f,0.f};
        for (int j = 0; j < 3; j++) {
            float d = db[j]*inverse_w[j];
            gradient[0] += uv[j].x*d; gradient[1] += uv[j].y*d; gradient[2] += d;
        }
        for (int k = 0; k < 3; k++) {
            if (!isfinite(gradient[k])) return 0;
            out[axis][k] = gradient[k];
        }
    }
    return 1;
}

static inline void sg_mip_pixel_gradients(sg_f32x4 plane[2][3], sg_f32x4 u,
    sg_f32x4 v, sg_f32x4 reciprocal_w, sg_f32x4 out[2][2]) {
    for (int axis = 0; axis < 2; axis++) {
        out[axis][0] = sg_f32x4_mul(sg_f32x4_sub(plane[axis][0],sg_f32x4_mul(u,plane[axis][2])),reciprocal_w);
        out[axis][1] = sg_f32x4_mul(sg_f32x4_sub(plane[axis][1],sg_f32x4_mul(v,plane[axis][2])),reciprocal_w);
    }
}
#endif
