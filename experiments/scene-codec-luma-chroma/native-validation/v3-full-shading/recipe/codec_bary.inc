static inline void scene_codec_bary(struct sg_scene_visibility *f,
    const uint32_t pixels[4], const scene_triangle *tri[4],
    sg_f32x4 *w0, sg_f32x4 *w1, sg_f32x4 *w2, sg_f32x4 *inverse) {
    softgl_ctx *c = f->context;
    float bary[3][4];
    for (int l = 0; l < 4; l++) {
        tri[l] = scene_triangle_at(f,f->winner[pixels[l]]);
        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        int x = (int)(pixel % (unsigned)c->fb.w), y = (int)(pixel / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        int sx = 128, sy = 128;
        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y;
        if (c->fb.samples) {
            e0 += (t->edge[0][1]/256)*(sx-128)+(t->edge[0][2]/256)*(sy-128);
            e1 += (t->edge[1][1]/256)*(sx-128)+(t->edge[1][2]/256)*(sy-128);
        }
        bary[0][l] = (float)e0*t->inverse_area;
        bary[1][l] = (float)e1*t->inverse_area;
        bary[2][l] = 1.f-bary[0][l]-bary[1][l];
        for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];
    }
    *w0 = sg_f32x4_load(bary[0]); *w1 = sg_f32x4_load(bary[1]); *w2 = sg_f32x4_load(bary[2]);
    *inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(*w0,*w1),*w2));
}
