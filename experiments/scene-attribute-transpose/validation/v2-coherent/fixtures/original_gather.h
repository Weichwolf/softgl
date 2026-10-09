static sg_f32x4 scene_gather_lerp(const scene_triangle *t[4], int field, int channel,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse) {
    float value[3][4];
    for (int v = 0; v < 3; v++) for (int l = 0; l < 4; l++) {
        sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];
        value[v][l] = channel == 0 ? a.x : channel == 1 ? a.y : channel == 2 ? a.z : a.w;
    }
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(sg_f32x4_load(value[0]),w0),
        sg_f32x4_mul(sg_f32x4_load(value[1]),w1)),sg_f32x4_mul(sg_f32x4_load(value[2]),w2)),inverse);
}

