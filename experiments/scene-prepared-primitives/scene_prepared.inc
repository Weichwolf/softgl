/* Current-frame setup shared by every stripe. Original int64 interpolation. */
static int scene_prepared_triangle(softgl_ctx *c, const scene_primitive *prepared,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed, memory_order_relaxed)) return 0;
    if (c->scene_material < 0 || c->scene_material >= SCENE_MATERIALS) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return 0;
    }
    const scene_material *m = &f->materials[c->scene_material];
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[tile_ix0];
    scene_bin *b = &f->bins[bin];
    int ix0 = prepared->bounds[0], ix1 = prepared->bounds[1];
    int iy0 = prepared->bounds[2], iy1 = prepared->bounds[3];
    if (ix0 < tile_ix0) ix0 = tile_ix0;
    if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    int64_t area = prepared->area;
    const int8_t *bias = prepared->bias;
    const int64_t (*edge)[3] = prepared->edge;
    float inverse_area = prepared->inverse_area;
    int coverage32 = prepared->coverage32;
    sg_i32x4 coverage_delta[3];
    if (coverage32) for (int k = 0; k < 3; k++) {
        int64_t delta = k < 2 ? edge[k][1] : -edge[0][1]-edge[1][1];
        int32_t sx = (int32_t)(delta >> 8);
        coverage_delta[k] = sg_i32x4_set(0,sx,sx*2,sx*3);
    }
    uint32_t record = UINT32_MAX;
    int64_t dx[3] = {edge[0][1], edge[1][1], -edge[0][1]-edge[1][1]};
    int64_t lo[3], hi[3];
    for (int k = 0; k < 3; k++) {
        lo[k] = dx[k] < 0 ? dx[k]*3 : 0;
        hi[k] = dx[k] > 0 ? dx[k]*3 : 0;
    }
    sg_i32x4 step[3];
    if (coverage32) for (int k = 0; k < 3; k++)
        step[k] = sg_i32x4_splat((int32_t)(dx[k] >> 8)*4);
    for (int y = iy0; y < iy1; y++) {
        int64_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int64_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0, q1, q2;
        if (coverage32) {
            q0 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e0+bias[0]) >> 8)),coverage_delta[0]);
            q1 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e1+bias[1]) >> 8)),coverage_delta[1]);
            q2 = sg_i32x4_add(sg_i32x4_splat((int32_t)((area-e0-e1+bias[2]) >> 8)),coverage_delta[2]);
        }
        for (int x = ix0; x < ix1; x += 4, e0 += edge[0][1]*4, e1 += edge[1][1]*4) {
            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            if (coverage32) {
                unsigned inside = (unsigned)~_mm_movemask_ps(_mm_castsi128_ps(_mm_or_si128(_mm_or_si128(q0,q1),q2))) & 15u;
                q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]); q2 = sg_i32x4_add(q2,step[2]);
                live &= inside;
            } else {
                int64_t e2 = area-e0-e1;
                if (e0+bias[0]+hi[0] < 0 || e1+bias[1]+hi[1] < 0 || e2+bias[2]+hi[2] < 0) continue;
                if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 || e2+bias[2]+lo[2] < 0) {
                    unsigned inside = 0;
                    for (int l = 0; l < 4; l++) {
                        int64_t a = e0+edge[0][1]*l, d = e1+edge[1][1]*l;
                        if (a+bias[0] >= 0 && d+bias[1] >= 0 && area-a-d+bias[2] >= 0) inside |= 1u << l;
                    }
                    live &= inside;
                }
            }
            if (!live) continue;
            int64_t a[4], d[4];
            for (int l = 0; l < 4; l++) {
                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;
            }
            sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)d[0],(float)d[1],(float)d[2],(float)d[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),
                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));
            float depths[4]; sg_f32x4_store(depths,z);
            if (x+3 < tile_ix1) {
                sg_f32x4 old = sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                /* No vector access crosses this worker's stripe. */
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)y*c->fb.w+x+l;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] < c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
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
                record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    /* Unknown rather than empty: do not cache a depth-rejected primitive as
     * generally invisible when its material shading has been deferred. */
    return 0;
}
