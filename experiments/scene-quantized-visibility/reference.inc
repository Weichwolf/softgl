static int scene_quantized_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    int32_t x0 = (int32_t)(v0->ndc.x*16.f), y0 = (int32_t)(v0->ndc.y*16.f);
    int32_t x1 = (int32_t)(v1->ndc.x*16.f), y1 = (int32_t)(v1->ndc.y*16.f);
    int32_t x2 = (int32_t)(v2->ndc.x*16.f), y2 = (int32_t)(v2->ndc.y*16.f);
    int64_t area = (int64_t)(x1-x0)*(y2-y0)-(int64_t)(y1-y0)*(x2-x0);
    if (area <= 0) return 1;
    int32_t minx = x0 < x1 ? x0 : x1; if (x2 < minx) minx = x2;
    int32_t maxx = x0 > x1 ? x0 : x1; if (x2 > maxx) maxx = x2;
    int32_t miny = y0 < y1 ? y0 : y1; if (y2 < miny) miny = y2;
    int32_t maxy = y0 > y1 ? y0 : y1; if (y2 > maxy) maxy = y2;
    int ix0 = minx >> 4, ix1 = (maxx >> 4)+1, iy0 = miny >> 4, iy1 = (maxy >> 4)+1;
    if (ix0 < tile_ix0) ix0 = tile_ix0; if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (iy0 < 0) iy0 = 0; if (iy1 > c->fb.h) iy1 = c->fb.h;
    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    int bias[3] = {((y2-y1)<0 || ((y2-y1)==0 && (x2-x1)<0)) ? 0 : -1,
                   ((y0-y2)<0 || ((y0-y2)==0 && (x0-x2)<0)) ? 0 : -1,
                   ((y1-y0)<0 || ((y1-y0)==0 && (x1-x0)<0)) ? 0 : -1};
    int64_t edge[2][3] = {
        {(int64_t)(x2-x1)*(8-y1)-(int64_t)(y2-y1)*(8-x1),-(int64_t)(y2-y1)*16,(int64_t)(x2-x1)*16},
        {(int64_t)(x0-x2)*(8-y2)-(int64_t)(y0-y2)*(8-x2),-(int64_t)(y0-y2)*16,(int64_t)(x0-x2)*16}};
    float inverse_area = 1.f/(float)area;
    uint32_t record = UINT32_MAX;
    for (int y = iy0; y < iy1; y++) {
        for (int x = ix0; x < ix1; x += 4) {
            float weights[2][4], depths[4];
            unsigned live = 0;
            for (int l = 0; l < 4; l++) {
                int64_t e0 = edge[0][0]+edge[0][1]*(x+l)+edge[0][2]*y;
                int64_t e1 = edge[1][0]+edge[1][1]*(x+l)+edge[1][2]*y;
                weights[0][l] = (float)e0*inverse_area;
                weights[1][l] = (float)e1*inverse_area;
                float w2 = 1.f-weights[0][l]-weights[1][l];
                depths[l] = (weights[0][l]*v0->ndc.z+weights[1][l]*v1->ndc.z)+w2*v2->ndc.z;
                if (x+l >= ix1 || e0+bias[0] < 0 || e1+bias[1] < 0 || area-e0-e1+bias[2] < 0) continue;
                size_t pixel = (size_t)y*c->fb.w+x+l;
                if (depths[l] >= 0.f && depths[l] <= 1.f && depths[l] < c->fb.depth[pixel]) live |= 1u << l;
            }
            sg_f32x4 b0 = sg_f32x4_load(weights[0]), b1 = sg_f32x4_load(weights[1]);
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            if (!live) continue;
            if (m->alpha_test) {
                sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
                sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
                sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
                sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
                sg_f32x4 tex[4];
                sg_packet_sample_unit(&m->texture.unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
                sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
                    sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
                live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
                if (!live) continue;
            }
            if (record == UINT32_MAX) {
                int64_t stored[2][3];
                for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) stored[k][j] = edge[k][j];
                record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    return 0;
}
