/* RGB may share a material/pixel, but alpha keeps its original winner and
 * shading point. Raw canonical UVs avoid evaluating discarded lighting. */
static void scene_msaa_alpha_restore(struct sg_scene_visibility *f,
    scene_material *m, uint32_t reference, unsigned mask) {
    softgl_ctx *c = f->context;
    size_t base = (size_t)(reference/4u)*4u;
    unsigned live = 0;
    for (unsigned l = 0; l < 4; l++) if ((mask & (1u << l)) &&
        (f->winner[base+l] != f->winner[reference] ||
         f->sample_point[base+l] != f->sample_point[reference])) live |= 1u << l;
    if (!live) return;
    float bary[3][4], coords[2][3][4];
    int x = (int)((base/4u) % (unsigned)c->fb.w);
    int y = (int)((base/4u) / (unsigned)c->fb.w);
    for (unsigned l = 0; l < 4; l++) {
        size_t at = live & (1u << l) ? base+l : reference;
        const scene_triangle *t = scene_triangle_at(f,f->winner[at]);
        const scene_primitive *p = t->primitive;
        if (!p) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
            return;
        }
        int sx = 128, sy = 128;
        if (f->sample_point[at] != 4) sg_sample_position(4,f->sample_point[at],&sx,&sy);
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y;
        e0 += (t->edge[0][1]/256)*(sx-128)+(t->edge[0][2]/256)*(sy-128);
        e1 += (t->edge[1][1]/256)*(sx-128)+(t->edge[1][2]/256)*(sy-128);
        bary[0][l] = (float)e0*t->inverse_area;
        bary[1][l] = (float)e1*t->inverse_area;
        bary[2][l] = 1.f-bary[0][l]-bary[1][l];
        const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL :
            &f->geometry->tasks[p->task].clipped[p->clipped];
        for (int j = 0; j < 3; j++) {
            bary[j][l] *= t->inverse_w[j];
            const float *uv = clipped ? clipped->coordinates[j] :
                (const float *)((const uint8_t *)m->mesh.coordinates+(size_t)p->indices[j]*m->mesh.stride);
            coords[0][j][l] = uv[0]; coords[1][j][l] = uv[1];
        }
    }
    sg_f32x4 w0 = sg_f32x4_load(bary[0]), w1 = sg_f32x4_load(bary[1]), w2 = sg_f32x4_load(bary[2]);
    sg_f32x4 sum = sg_f32x4_add(sg_f32x4_add(w0,w1),w2);
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sum);
    sg_f32x4 uv[2];
    for (int k = 0; k < 2; k++) uv[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_load(coords[k][0]),w0),
        sg_f32x4_mul(sg_f32x4_load(coords[k][1]),w1)),
        sg_f32x4_mul(sg_f32x4_load(coords[k][2]),w2)),inverse);
    sg_f32x4 tex[4];
    const sg_tex_unit_tri *unit = &m->texture.unit[2];
    if (unit->constant_color_valid) tex[3] = sg_f32x4_splat(unit->constant_color[3]);
    else sg_packet_sample_2d(unit,uv[0],uv[1],live,0,tex);
    sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_mul(sum,inverse),tex[3]));
    sg_i32x4 bytes = sg_f32x4_trunc_i32(sg_f32x4_add(
        sg_f32x4_mul(alpha,sg_f32x4_splat(255.f)),sg_f32x4_splat(.5f)));
    SG_ALIGN16 int values[4]; _mm_store_si128((sg_i32x4 *)values,bytes);
    for (unsigned l = 0; l < 4; l++) if (live & (1u << l))
        c->fb.sample_color[(base+l)*4+3] = (uint8_t)values[l];
}
