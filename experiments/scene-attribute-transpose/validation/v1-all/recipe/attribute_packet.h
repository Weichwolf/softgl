#ifndef SOFTGL_SCENE_ATTRIBUTE_PACKET_H
#define SOFTGL_SCENE_ATTRIBUTE_PACKET_H

/* Load complete aligned vec4 records once, then transpose lanes to components.
 * Keep the existing interpolation grouping and four-wide arithmetic. */
SG_INLINE void scene_gather_lerp4(const scene_triangle *t[4], int field, int channels,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse, sg_f32x4 out[4]) {
    sg_f32x4 value[3][4];
    for (int v = 0; v < 3; v++) {
        for (int lane = 0; lane < 4; lane++) {
            const sg_vec4 *a = field < 0 ? &t[lane]->color[v] : &t[lane]->uv[field][v];
            value[v][lane] = sg_f32x4_load(&a->x);
        }
        _MM_TRANSPOSE4_PS(value[v][0], value[v][1], value[v][2], value[v][3]);
    }
    for (int channel = 0; channel < channels; channel++) {
        out[channel] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
            sg_f32x4_mul(value[0][channel], w0), sg_f32x4_mul(value[1][channel], w1)),
            sg_f32x4_mul(value[2][channel], w2)), inverse);
    }
}

#endif
