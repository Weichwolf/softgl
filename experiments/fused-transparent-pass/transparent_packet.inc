static __attribute__((noinline)) unsigned sg_shade_transparent_packet(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                    const int64_t edge0[4], const int64_t edge1[4],
                                    float inv_area, unsigned live, float result[4][4]) {
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)edge0[0], (float)edge0[1],
        (float)edge0[2], (float)edge0[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)edge1[0], (float)edge1[1],
        (float)edge1[2], (float)edge1[3]), sg_f32x4_splat(inv_area));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);
    sg_f32x4 w0 = sg_f32x4_mul(b0, sg_f32x4_splat(v0->ndc.w));
    sg_f32x4 w1 = sg_f32x4_mul(b1, sg_f32x4_splat(v1->ndc.w));
    sg_f32x4 w2 = sg_f32x4_mul(b2, sg_f32x4_splat(v2->ndc.w));
    sg_f32x4 sum = sg_f32x4_add(sg_f32x4_add(w0, w1), w2);
    live &= ~sg_mask4_live(sg_f32x4_le(sum, sg_f32x4_splat(0.f)));
    if (!live) return 0;
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f), sum);
    sg_f32x4 color[4];
    color[0] = sg_packet_lerp(v0->color.x, v1->color.x, v2->color.x, w0, w1, w2, inverse);
    color[1] = sg_packet_lerp(v0->color.y, v1->color.y, v2->color.y, w0, w1, w2, inverse);
    color[2] = sg_packet_lerp(v0->color.z, v1->color.z, v2->color.z, w0, w1, w2, inverse);
    color[3] = sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse);
    sg_f32x4 tex[4][4];
    for (int u = 0; u < 4; u++) {
        if (t->sample_mask & (1u << u))
            sg_packet_sample_unit(&t->unit[u],u,v0,v1,v2,w0,w1,w2,inverse,live,0,tex[u]);
        else for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(1.f);
    }
    sg_f32x4 dot[3], half = sg_f32x4_splat(.5f);
    for (int k = 0; k < 3; k++)
        dot[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k],half),sg_f32x4_sub(color[k],half));
    sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
        sg_f32x4_add(sg_f32x4_add(dot[0],dot[1]),dot[2])));
    sg_f32x4 h[3];
    for (int k = 0; k < 3; k++) {
        const float *a = &v0->uv[1].x, *b = &v1->uv[1].x, *e = &v2->uv[1].x;
        sg_f32x4 encoded = sg_packet_lerp(a[k], b[k], e[k], w0, w1, w2, inverse);
        h[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(encoded, half));
    }
    sg_f32x4 specular = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
        sg_f32x4_add(sg_f32x4_add(h[0], h[1]), h[2])));
    specular = sg_f32x4_mul(specular, specular);
    if (t->combine_kind == 5 || t->combine_kind == 7) specular = sg_f32x4_mul(specular, specular);
    sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(
        sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
    for (int k = 0; k < 3; k++) {
        sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])));
        diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse, tex[2][k]));
        diffuse = sg_chain_clamp(sg_f32x4_add(diffuse, tex[3][k]));
        diffuse = sg_f32x4_mul(diffuse,alpha);
        sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular, sg_f32x4_splat(c->fused_dot3_tint[k])));
        color[k] = sg_chain_clamp(sg_f32x4_add(diffuse, sg_f32x4_mul(tinted,
            sg_f32x4_splat(sg_clampf(c->fused_dot3_tint[3], 0.f, 1.f)))));
    }
    color[3] = alpha;
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);
    for (int l = 0; l < 4; l++) sg_f32x4_store(result[l], color[l]);
    return live;
}
