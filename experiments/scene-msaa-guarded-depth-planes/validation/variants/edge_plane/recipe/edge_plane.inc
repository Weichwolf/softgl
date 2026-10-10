/* Approximate directly from raw integer edges; exact weights are cold. */
static inline unsigned scene_plane_prepare(softgl_ctx *c, size_t base,
    unsigned coverage, sg_f32x4 approximate, sg_f32x4 *stored, unsigned *uncertain) {
    sg_f32x4 upper = _mm_min_ps(_mm_max_ps(sg_f32x4_add(approximate,
        sg_f32x4_splat(SCENE_DEPTH_GUARD_EPSILON)),sg_f32x4_splat(0.f)),sg_f32x4_splat(1.f));
    sg_f32x4 old = sg_f32x4_load(c->fb.sample_depth+base);
    sg_f32x4 width = sg_f32x4_splat(SCENE_DEPTH_GUARD_WIDTH);
    unsigned passed = coverage & sg_mask4_live(sg_f32x4_lt(upper,sg_f32x4_sub(old,width)));
    unsigned rejected = coverage & sg_mask4_live(sg_f32x4_ge(sg_f32x4_sub(upper,width),old));
    *uncertain = coverage & ~(passed | rejected);
    *stored = upper;
    return passed;
}

static inline unsigned scene_plane_finish(softgl_ctx *c, size_t base,
    unsigned passed, unsigned uncertain, sg_f32x4 b0, sg_f32x4 b1,
    sg_f32x4 z0, sg_f32x4 z1, sg_f32x4 z2, sg_f32x4 *stored) {
    if (uncertain) {
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 exact = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
            sg_f32x4_mul(b0,z0),sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
        exact = sg_f32x4_select(sg_f32x4_lt(exact,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),exact);
        exact = sg_f32x4_select(sg_f32x4_gt(exact,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),exact);
        passed |= uncertain & sg_mask4_live(sg_f32x4_lt(exact,scene_guarded_exact_old(c->scene_visibility,base)));
        sg_i32x4 mask = sg_i32x4_set(uncertain&1 ? -1:0,uncertain&2 ? -1:0,
            uncertain&4 ? -1:0,uncertain&8 ? -1:0);
        *stored = sg_f32x4_select(_mm_castsi128_ps(mask),exact,*stored);
    }
    if (passed) {
        struct sg_scene_visibility *f = c->scene_visibility;
        sg_worker_pool *pool = c->workers;
        f->bins[pool->column_bin[(base/4)%(size_t)c->fb.w]].pending_depth = 1;
    }
    return passed;
}
