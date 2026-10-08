/* Gather aligned AoS attribute vectors, transpose to four independent pixels,
 * and preserve the accepted per-channel interpolation operation sequence. */
static inline void scene_gather_vector(const scene_triangle *t[4], int field,
    sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2, sg_f32x4 inverse, sg_f32x4 out[4]) {
    sg_f32x4 values[3][4];
    for (int v = 0; v < 3; v++) {
        const sg_vec4 *a = field < 0 ? &t[0]->color[v] : &t[0]->uv[field][v];
        const sg_vec4 *b = field < 0 ? &t[1]->color[v] : &t[1]->uv[field][v];
        const sg_vec4 *c = field < 0 ? &t[2]->color[v] : &t[2]->uv[field][v];
        const sg_vec4 *d = field < 0 ? &t[3]->color[v] : &t[3]->uv[field][v];
        sg_f32x4 x = sg_f32x4_load(&a->x), y = sg_f32x4_load(&b->x);
        sg_f32x4 z = sg_f32x4_load(&c->x), w = sg_f32x4_load(&d->x);
        _MM_TRANSPOSE4_PS(x,y,z,w);
        values[v][0] = x; values[v][1] = y; values[v][2] = z; values[v][3] = w;
    }
    int channels = field < 0 ? 4 : 3;
    for (int k = 0; k < channels; k++) out[k] = sg_f32x4_mul(sg_f32x4_add(
        sg_f32x4_add(sg_f32x4_mul(values[0][k],w0),sg_f32x4_mul(values[1][k],w1)),
        sg_f32x4_mul(values[2][k],w2)),inverse);
}
