/* Pending full pixels keep an upper physical depth and a lower bound in an
 * unused winner slot. Exact sample depths are derived from immutable geometry. */
static void scene_pending_depth_materialize(struct sg_scene_visibility *f,
    softgl_ctx *c, size_t base) {
    if (f->shade_mask[base] != 0xc0) return;
    uint32_t id = f->winner[base];
    unsigned bin = id >> SCENE_INDEX_BITS, index = id & SCENE_INDEX_MASK;
    if (bin >= SG_MAX_BINS || index >= f->bins[bin].count) {
        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return;
    }
    const scene_triangle *t = &f->bins[bin].triangles[index];
    const scene_primitive *p = t->primitive;
    if (!p || !f->geometry) {
        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return;
    }
    const scene_mesh *mesh = &f->materials[t->material].mesh;
    const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL :
        &f->geometry->tasks[p->task].clipped[p->clipped];
    float vertex_z[3];
    for (int j = 0; j < 3; j++) vertex_z[j] = clipped ? clipped->ndc[j].z :
        f->geometry->positions[mesh->offset+p->indices[j]-mesh->minimum].ndc.z;
    size_t pixel = base/4;
    int x = (int)(pixel%(size_t)c->fb.w), y = (int)(pixel/(size_t)c->fb.w);
    float raw[2][4];
    for (int e = 0; e < 2; e++) {
        int64_t center = t->edge[e][0]+t->edge[e][1]*x+t->edge[e][2]*y;
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            int64_t sample = center+(t->edge[e][1]/256)*(sx-128)+
                (t->edge[e][2]/256)*(sy-128);
            raw[e][s] = (float)sample;
        }
    }
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(raw[0]),sg_f32x4_splat(t->inverse_area));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(raw[1]),sg_f32x4_splat(t->inverse_area));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
    sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(b0,sg_f32x4_splat(vertex_z[0])),
        sg_f32x4_mul(b1,sg_f32x4_splat(vertex_z[1]))),
        sg_f32x4_mul(b2,sg_f32x4_splat(vertex_z[2]))),sg_f32x4_splat(0.f));
    z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
    z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
    _mm_storeu_ps(c->fb.sample_depth+base,z);
    f->shade_mask[base] = 0x80;
}

void sg_scene_pending_depth_materialize(softgl_ctx *c, size_t base) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (f && c->fb.samples == 4) scene_pending_depth_materialize(f,c,base);
}
