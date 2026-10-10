/* Private trial: each provisional depth is a conservative upper bound.
 * Keep original edge conversion and sample coverage; exact ties fall back. */
#define SCENE_DEPTH_GUARD_EPSILON 0x1p-18f
#define SCENE_DEPTH_GUARD_WIDTH (2.f*SCENE_DEPTH_GUARD_EPSILON)

static int scene_guarded_supported(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (!f->deferred_meshes || !f->bins[c->workers->column_bin[tile_ix0]].current_primitive) return 0;
    if (f->materials[c->scene_material].alpha_test) return 0;
    const sg_vert *v[3] = {v0,v1,v2};
    for (int i = 0; i < 3; i++) {
        if (!(v[i]->ndc.z >= 0.f && v[i]->ndc.z <= 1.f &&
              v[i]->ndc.x >= -1.f && v[i]->ndc.x <= c->fb.w+1.f &&
              v[i]->ndc.y >= -1.f && v[i]->ndc.y <= c->fb.h+1.f)) return 0;
    }
    return 1;
}

static __attribute__((noinline)) sg_f32x4 scene_guarded_exact_old(
    softgl_ctx *c, size_t base) {
    struct sg_scene_visibility *f = c->scene_visibility;
    int x = (int)((base/4)%(size_t)c->fb.w), y = (int)((base/4)/(size_t)c->fb.w);
    float edge0[4], edge1[4], inverse[4], z0[4], z1[4], z2[4];
    int uniform = f->shade_mask[base] == 0x80;
    for (int s = 0; s < 4; s++) {
        size_t at = uniform ? base : base+(unsigned)s;
        if (f->pixel_material[at] == UINT16_MAX) {
            edge0[s] = inverse[s] = 1.f; edge1[s] = 0.f;
            z0[s] = c->fb.sample_depth[base+(unsigned)s]; z1[s] = z2[s] = 0.f;
            continue;
        }
        uint32_t id = f->winner[at];
        const scene_triangle *t = &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];
        int sx, sy; sg_sample_position(4,s,&sx,&sy);
        int64_t e[2];
        for (int k = 0; k < 2; k++) e[k] = t->edge[k][0]+t->edge[k][1]*x+t->edge[k][2]*y+
            (t->edge[k][1]/256)*(sx-128)+(t->edge[k][2]/256)*(sy-128);
        edge0[s] = (float)e[0]; edge1[s] = (float)e[1]; inverse[s] = t->inverse_area;
        z0[s] = t->visibility_depth[0]; z1[s] = t->visibility_depth[1]; z2[s] = t->visibility_depth[2];
    }
    sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(edge0),sg_f32x4_load(inverse));
    sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(edge1),sg_f32x4_load(inverse));
    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
    sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(b0,sg_f32x4_load(z0)),sg_f32x4_mul(b1,sg_f32x4_load(z1))),
        sg_f32x4_mul(b2,sg_f32x4_load(z2))),sg_f32x4_splat(0.f));
    z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
    return sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
}

static void scene_guarded_materialize_bin(struct sg_scene_visibility *f, int bin) {
    if (!f->bins[bin].pending_depth) return;
    softgl_ctx *c = f->context;
    for (int y = 0; y < c->fb.h; y++) {
        size_t base = ((size_t)y*c->fb.w+c->workers->bins[bin].ix0)*4;
        size_t end = ((size_t)y*c->fb.w+c->workers->bins[bin].ix1)*4;
        for (; base < end; base += 4) {
            int live = f->pixel_material[base] != UINT16_MAX;
            if (!live) for (int s = 1; s < 4; s++) live |= f->pixel_material[base+s] != UINT16_MAX;
            if (live) sg_f32x4_store(c->fb.sample_depth+base,scene_guarded_exact_old(c,base));
        }
    }
    f->bins[bin].pending_depth = 0;
}

static void scene_guarded_materialize(void *data) {
    struct sg_scene_visibility *f = data;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= f->context->workers->nbins) return;
        scene_guarded_materialize_bin(f,bin);
    }
}

static inline unsigned scene_guarded_compare(softgl_ctx *c, size_t base,
    unsigned coverage, sg_f32x4 b0, sg_f32x4 b1,
    sg_f32x4 z0, sg_f32x4 z1, sg_f32x4 z2, sg_f32x4 *stored) {
    sg_f32x4 approximate = sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(b0,sg_f32x4_sub(z0,z2)),sg_f32x4_mul(b1,sg_f32x4_sub(z1,z2))),z2);
    sg_f32x4 upper = _mm_min_ps(_mm_max_ps(sg_f32x4_add(approximate,
        sg_f32x4_splat(SCENE_DEPTH_GUARD_EPSILON)),sg_f32x4_splat(0.f)),sg_f32x4_splat(1.f));
    sg_f32x4 old = sg_f32x4_load(c->fb.sample_depth+base);
    sg_f32x4 width = sg_f32x4_splat(SCENE_DEPTH_GUARD_WIDTH);
    unsigned passed = coverage & sg_mask4_live(sg_f32x4_lt(upper,sg_f32x4_sub(old,width)));
    unsigned rejected = coverage & sg_mask4_live(sg_f32x4_ge(sg_f32x4_sub(upper,width),old));
    unsigned uncertain = coverage & ~(passed | rejected);
    if (uncertain) {
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 exact = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
            sg_f32x4_mul(b0,z0),sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
        exact = sg_f32x4_select(sg_f32x4_lt(exact,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),exact);
        exact = sg_f32x4_select(sg_f32x4_gt(exact,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),exact);
        passed |= uncertain & sg_mask4_live(sg_f32x4_lt(exact,scene_guarded_exact_old(c,base)));
        sg_i32x4 mask = sg_i32x4_set(uncertain&1 ? -1:0,uncertain&2 ? -1:0,
            uncertain&4 ? -1:0,uncertain&8 ? -1:0);
        upper = sg_f32x4_select(_mm_castsi128_ps(mask),exact,upper);
    }
    *stored = upper;
    if (passed) {
        struct sg_scene_visibility *f = c->scene_visibility;
        f->bins[c->workers->column_bin[(base/4)%(size_t)c->fb.w]].pending_depth = 1;
    }
    return passed;
}
