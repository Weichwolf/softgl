#ifndef SOFTGL_ATTRIBUTE_PLANES_H
#define SOFTGL_ATTRIBUTE_PLANES_H

/* Material IDs occupy twelve bits. Records reset this bit every frame. */
#define SCENE_PLANES_READY UINT32_C(0x80000000)

static int scene_prepare_attribute_planes(scene_triangle *t) {
    if (t->material & SCENE_PLANES_READY) return 1;
    for (int v = 0; v < 3; v++)
        if (!(t->inverse_w[v] > 0.f) || !isfinite(t->inverse_w[v])) return 0;
    sg_vec4 coefficients[5][3];
    for (int field = 0; field < 5; field++) {
        const sg_vec4 *a = field ? t->uv[field-1] : t->color;
        __m128 c = _mm_mul_ps(_mm_load_ps(&a[2].x), _mm_set1_ps(t->inverse_w[2]));
        __m128 x = _mm_sub_ps(_mm_mul_ps(_mm_load_ps(&a[0].x),
            _mm_set1_ps(t->inverse_w[0])), c);
        __m128 y = _mm_sub_ps(_mm_mul_ps(_mm_load_ps(&a[1].x),
            _mm_set1_ps(t->inverse_w[1])), c);
        _mm_store_ps(&coefficients[field][0].x, x);
        _mm_store_ps(&coefficients[field][1].x, y);
        _mm_store_ps(&coefficients[field][2].x, c);
        for (int v = 0; v < 3; v++) {
            const sg_vec4 *p = &coefficients[field][v];
            if (!isfinite(p->x) || !isfinite(p->y) || !isfinite(p->z) || !isfinite(p->w)) return 0;
        }
    }
    memcpy(t->color, coefficients[0], sizeof(t->color));
    for (int field = 0; field < 4; field++)
        memcpy(t->uv[field], coefficients[field+1], sizeof(t->uv[field]));
    t->material |= SCENE_PLANES_READY;
    return 1;
}

static sg_f32x4 scene_gather_plane(const scene_triangle *t[4], int field, int channel,
    sg_f32x4 b0, sg_f32x4 b1, sg_f32x4 inverse) {
    float value[3][4];
    for (int v = 0; v < 3; v++) for (int l = 0; l < 4; l++) {
        sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];
        value[v][l] = channel == 0 ? a.x : channel == 1 ? a.y : channel == 2 ? a.z : a.w;
    }
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_load(value[0]), b0),
        sg_f32x4_mul(sg_f32x4_load(value[1]), b1)), sg_f32x4_load(value[2])), inverse);
}

/* Mixed records retain the original denominator. Prepared lanes use b0,b1,1;
 * unprepared lanes use original perspective weights. No raw record is read
 * as coefficients, including overflow/legacy fallback records. */
static sg_f32x4 scene_interpolate_attribute(const scene_triangle *t[4], int field, int channel,
    sg_f32x4 b0, sg_f32x4 b1, sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
    sg_f32x4 inverse, unsigned prepared) {
    if (prepared == 15) return scene_gather_plane(t, field, channel, b0, b1, inverse);
    if (!prepared) return scene_gather_lerp(t, field, channel, w0, w1, w2, inverse);
    sg_f32x4 mask = _mm_castsi128_ps(_mm_setr_epi32(
        -(int)(prepared & 1u), -(int)((prepared >> 1) & 1u),
        -(int)((prepared >> 2) & 1u), -(int)((prepared >> 3) & 1u)));
    return scene_gather_lerp(t, field, channel,
        _mm_blendv_ps(w0, b0, mask), _mm_blendv_ps(w1, b1, mask),
        _mm_blendv_ps(w2, sg_f32x4_splat(1.f), mask), inverse);
}

#ifdef SCENE_PLANES_PACKED
#include "plane_packet.h"
#endif

#endif
