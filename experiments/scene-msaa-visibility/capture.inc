#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_msaa_audit[8];
unsigned long long softgl_scene_msaa_audit(unsigned index) {
    return index < 8 ? atomic_load_explicit(&scene_msaa_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_MSAA_AUDIT(i,n) atomic_fetch_add_explicit(&scene_msaa_audit[i],(n),memory_order_relaxed)
#else
#define SCENE_MSAA_AUDIT(i,n) ((void)0)
#endif

/* The ordinary MSAA kernel supplies exact coverage, depth and shading edges.
 * A record is cached for this triangle/stripe, not for each pixel packet. */
void sg_scene_visibility_msaa_packet(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, const sg_pixel_packet *packet,
    float inverse_area, uint32_t *record) {
    struct sg_scene_visibility *f = c->scene_visibility;
    SCENE_MSAA_AUDIT(0,1);
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    if (c->scene_material < 0 || c->scene_material >= f->material_count) {
        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return;
    }
    unsigned live = (1u << packet->count)-1u;
    const scene_material *m = &f->materials[c->scene_material];
    if (m->alpha_test) {
        float e0[4], e1[4];
        for (int l = 0; l < 4; l++) {
            int at = l < packet->count ? l : 0;
            e0[l] = (float)packet->edge0[at]; e1[l] = (float)packet->edge1[at];
        }
        sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(e0),sg_f32x4_splat(inverse_area));
        sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(e1),sg_f32x4_splat(inverse_area));
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
        sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
        sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
        sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
        sg_f32x4 tex[4];
        sg_packet_sample_unit(&texture->unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
        sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
            sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
        live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
        if (!live) return;
    }
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[packet->x[0]];
    if (*record == UINT32_MAX) {
        int32_t x[3] = {sg_fp_screen_from_float(v0->ndc.x),sg_fp_screen_from_float(v1->ndc.x),sg_fp_screen_from_float(v2->ndc.x)};
        int32_t y[3] = {sg_fp_screen_from_float(v0->ndc.y),sg_fp_screen_from_float(v1->ndc.y),sg_fp_screen_from_float(v2->ndc.y)};
        int64_t edge[2][3];
        for (int k = 0; k < 2; k++) {
            int a = (k+1)%3, b = (k+2)%3;
            edge[k][0] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            edge[k][1] = -(int64_t)(y[b]-y[a])*256;
            edge[k][2] = (int64_t)(x[b]-x[a])*256;
        }
        *record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
        if (*record == UINT32_MAX) return;
        SCENE_MSAA_AUDIT(1,1);
    }
    unsigned full = (1u << c->fb.samples)-1u;
    for (int l = 0; l < packet->count; l++) if (live & (1u << l)) {
        size_t base = ((size_t)packet->y[l]*c->fb.w+packet->x[l])*c->fb.samples;
        unsigned coverage = packet->coverage[l];
        uint8_t point = coverage == full ? 4 : (uint8_t)__builtin_ctz(coverage);
        SCENE_MSAA_AUDIT(3,point == 4);
        for (int s = 0; s < c->fb.samples; s++) if (coverage & (1u << s)) {
            c->fb.sample_depth[base+s] = packet->depths[l][s];
            f->winner[base+s] = *record; f->sample_point[base+s] = point;
            f->pixel_material[base+s] = (uint16_t)c->scene_material;
            f->bins[bin].depth_passes++;
            SCENE_MSAA_AUDIT(2,1);
        }
    }
}
