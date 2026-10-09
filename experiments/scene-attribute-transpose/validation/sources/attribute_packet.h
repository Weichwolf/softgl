#ifndef SOFTGL_SCENE_ATTRIBUTE_PACKET_H
#define SOFTGL_SCENE_ATTRIBUTE_PACKET_H

#ifndef SG_ATTRIBUTE_COHERENT
#define SG_ATTRIBUTE_COHERENT 0
#endif

/* Load complete aligned vec4 records once, then transpose lanes to components.
 * Keep the existing interpolation grouping and four-wide arithmetic. */
SG_INLINE void scene_gather_lerp4(const scene_triangle *t[4], int field, int channels,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse, sg_f32x4 out[4]) {
#if SG_ATTRIBUTE_COHERENT
    if (t[0] == t[1] && t[0] == t[2] && t[0] == t[3]) {
        const sg_vec4 *attribute = field < 0 ? t[0]->color : t[0]->uv[field];
        for (int channel = 0; channel < channels; channel++) {
            float a[3];
            for (int v = 0; v < 3; v++) {
                a[v] = channel == 0 ? attribute[v].x : channel == 1 ? attribute[v].y :
                       channel == 2 ? attribute[v].z : attribute[v].w;
            }
            out[channel] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
                sg_f32x4_mul(sg_f32x4_splat(a[0]), w0), sg_f32x4_mul(sg_f32x4_splat(a[1]), w1)),
                sg_f32x4_mul(sg_f32x4_splat(a[2]), w2)), inverse);
        }
        return;
    }
#endif
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
