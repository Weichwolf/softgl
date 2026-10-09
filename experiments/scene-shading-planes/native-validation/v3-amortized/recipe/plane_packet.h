#ifndef SOFTGL_PLANE_PACKET_H
#define SOFTGL_PLANE_PACKET_H

static void scene_interpolate_packet(const scene_triangle *t[4], int field, int channels,
    sg_f32x4 b0, sg_f32x4 b1, sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
    sg_f32x4 inverse, unsigned prepared, sg_f32x4 out[4]) {
    if (prepared && prepared != 15) {
        sg_f32x4 mask = _mm_castsi128_ps(_mm_setr_epi32(
            -(int)(prepared & 1u), -(int)((prepared >> 1) & 1u),
            -(int)((prepared >> 2) & 1u), -(int)((prepared >> 3) & 1u)));
        w0 = _mm_blendv_ps(w0, b0, mask); w1 = _mm_blendv_ps(w1, b1, mask);
        w2 = _mm_blendv_ps(w2, sg_f32x4_splat(1.f), mask);
    }
    sg_f32x4 value[3][4];
    for (int v = 0; v < 3; v++) {
        for (int l = 0; l < 4; l++) {
            const sg_vec4 *a = field < 0 ? &t[l]->color[v] : &t[l]->uv[field][v];
            value[v][l] = sg_f32x4_load(&a->x);
        }
        _MM_TRANSPOSE4_PS(value[v][0], value[v][1], value[v][2], value[v][3]);
    }
    if (prepared == 15) {
        for (int k = 0; k < channels; k++) out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
            sg_f32x4_mul(value[0][k], b0), sg_f32x4_mul(value[1][k], b1)), value[2][k]), inverse);
    } else {
        for (int k = 0; k < channels; k++) out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
            sg_f32x4_mul(value[0][k], w0), sg_f32x4_mul(value[1][k], w1)),
            sg_f32x4_mul(value[2][k], w2)), inverse);
    }
}

#endif
