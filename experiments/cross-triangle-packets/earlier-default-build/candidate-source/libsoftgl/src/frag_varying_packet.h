#ifndef SOFTGL_FRAG_VARYING_PACKET_H
#define SOFTGL_FRAG_VARYING_PACKET_H

/* Four independently owned triangles. Each expression retains the original
 * packet/scalar grouping; only shared-vertex broadcasts become lane loads. */
typedef struct SG_ALIGN16 {
    float inv_area[4], inv_w[3][4];
    float color[3][4][4], uv[3][4][3][4];
    int64_t edge0[4], edge1[4];
} sg_varying_packet;

SG_INLINE sg_f32x4 sg_varying_lerp(const float a[4], const float b[4], const float d[4],
                                  sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                  sg_f32x4 inverse) {
    return sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_load(a), w0),
        sg_f32x4_mul(sg_f32x4_load(b), w1)),
        sg_f32x4_mul(sg_f32x4_load(d), w2)), inverse);
}

SG_INLINE void sg_varying_sample_unit(const sg_tex_unit_tri *u, int unit,
                                      const sg_varying_packet *p,
                                      sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                      sg_f32x4 inverse, unsigned live, int integer_filter,
                                      sg_f32x4 out[4]) {
    if (u->constant_color_valid) {
        for (int k = 0; k < 4; k++) out[k] = sg_f32x4_splat(u->constant_color[k]);
        return;
    }
    sg_f32x4 x = sg_varying_lerp(p->uv[0][unit][0], p->uv[1][unit][0], p->uv[2][unit][0],
                                w0, w1, w2, inverse);
    sg_f32x4 y = sg_varying_lerp(p->uv[0][unit][1], p->uv[1][unit][1], p->uv[2][unit][1],
                                w0, w1, w2, inverse);
    if (u->active_slot == SG_TEX_TARGET_2D && u->data0 && u->tw > 0 && u->th > 0) {
        sg_packet_sample_2d(u, x, y, live, integer_filter, out);
        return;
    }
    sg_f32x4 z = sg_varying_lerp(p->uv[0][unit][2], p->uv[1][unit][2], p->uv[2][unit][2],
                                w0, w1, w2, inverse);
    if (u->active_slot == SG_TEX_TARGET_CUBE) {
        sg_packet_sample_cube_target(u, x, y, z, live, out);
        return;
    }
    float xx[4], yy[4], zz[4], tex[4][4] = {{0}};
    sg_f32x4_store(xx, x); sg_f32x4_store(yy, y); sg_f32x4_store(zz, z);

    for (int l = 0; l < 4; l++) {
        if (!(live & (1u << l))) continue;
        if (u->active_slot == SG_TEX_TARGET_3D)
            sg_sample_tex3d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, u->wrap_t, u->wrap_r,
                           xx[l], yy[l], zz[l], 1, tex[l]);
        else if (u->active_slot == SG_TEX_TARGET_1D)
            sg_sample_tex1d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, xx[l], 1, tex[l]);
        else sg_sample_tex2d(u->tex, u->filter_min, u->filter_mag, u->wrap_s, u->wrap_t,
                            xx[l], yy[l], 1, tex[l]);
    }
    sg_f32x4 a = sg_f32x4_load(tex[0]), b = sg_f32x4_load(tex[1]);
    sg_f32x4 d = sg_f32x4_load(tex[2]), e = sg_f32x4_load(tex[3]);
    _MM_TRANSPOSE4_PS(a, b, d, e);
    out[0] = a; out[1] = b; out[2] = d; out[3] = e;
}

SG_INLINE unsigned sg_shade_varying_packet(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    const sg_varying_packet *p, unsigned live,
                                    float result[4][4]) {
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)p->edge0[0], (float)p->edge0[1],
        (float)p->edge0[2], (float)p->edge0[3]), sg_f32x4_load(p->inv_area));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)p->edge1[0], (float)p->edge1[1],
        (float)p->edge1[2], (float)p->edge1[3]), sg_f32x4_load(p->inv_area));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);
    sg_f32x4 w0 = sg_f32x4_mul(b0, sg_f32x4_load(p->inv_w[0]));
    sg_f32x4 w1 = sg_f32x4_mul(b1, sg_f32x4_load(p->inv_w[1]));
    sg_f32x4 w2 = sg_f32x4_mul(b2, sg_f32x4_load(p->inv_w[2]));
    sg_f32x4 sum = sg_f32x4_add(sg_f32x4_add(w0, w1), w2);
    live &= ~sg_mask4_live(sg_f32x4_le(sum, sg_f32x4_splat(0.f)));
    if (!live) return 0;
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f), sum);
    sg_f32x4 color[4];
    color[0] = sg_varying_lerp(p->color[0][0], p->color[1][0], p->color[2][0], w0, w1, w2, inverse);
    color[1] = sg_varying_lerp(p->color[0][1], p->color[1][1], p->color[2][1], w0, w1, w2, inverse);
    color[2] = sg_varying_lerp(p->color[0][2], p->color[1][2], p->color[2][2], w0, w1, w2, inverse);
    color[3] = sg_varying_lerp(p->color[0][3], p->color[1][3], p->color[2][3], w0, w1, w2, inverse);
    if (t->fastpath_kind == 1 || t->fastpath_kind == 2) {
        sg_f32x4 tex[4];
        sg_varying_sample_unit(&t->unit[0], 0, p, w0, w1, w2, inverse, live, 1, tex);
        for (int k = 0; k < 4; k++) color[k] = t->fastpath_kind == 2 ? tex[k] : sg_f32x4_mul(color[k], tex[k]);
    } else if (t->combine_kind) {
        sg_f32x4 tex[4][4];
        for (int u = 0; u < 4; u++) {
            if (t->sample_mask & (1u << u))
                sg_varying_sample_unit(&t->unit[u], u, p, w0, w1, w2, inverse, live, 0, tex[u]);
            else for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(1.f);
        }
        sg_f32x4 dot[3], half = sg_f32x4_splat(.5f);
        for (int k = 0; k < 3; k++)
            dot[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(color[k], half));
        sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
            sg_f32x4_add(sg_f32x4_add(dot[0], dot[1]), dot[2])));
        color[3] = sg_chain_clamp(color[3]);
        for (int k = 0; k < 3; k++) {
            sg_f32x4 s = t->combine_kind == 1
                ? sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])) : sg_f32x4_mul(d, d);
            s = sg_chain_clamp(s);
            s = sg_chain_clamp(sg_f32x4_mul(s, t->combine_kind == 3 ? s : tex[2][k]));
            color[k] = sg_chain_clamp(t->combine_kind == 1 ? sg_f32x4_add(s, tex[3][k])
                : sg_f32x4_mul(s, sg_f32x4_splat(c->tex_env[3].env_color[k])));
        }
        color[3] = t->combine_kind == 1 ? sg_chain_clamp(sg_f32x4_mul(color[3], tex[2][3]))
            : sg_f32x4_splat(sg_clampf(c->tex_env[3].env_color[3], 0.f, 1.f));
    }
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);
    for (int l = 0; l < 4; l++) sg_f32x4_store(result[l], color[l]);
    return live;
}
#endif
