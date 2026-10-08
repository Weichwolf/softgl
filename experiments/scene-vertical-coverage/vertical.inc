#ifdef SOFTGL_SCENE_VERTICAL_AUDIT
static atomic_uint scene_vertical_audit[2];
void softgl_scene_vertical_reference(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) {
        struct sg_scene_visibility *f = c->scene_visibility;
        f->vertical_reference = enabled != GL_FALSE;
    }
}
unsigned softgl_scene_vertical_audit(unsigned index) {
    return index < 2 ? atomic_load_explicit(&scene_vertical_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_VERTICAL_ENABLED(f) (!(f)->vertical_reference)
#define SCENE_VERTICAL_COUNT(i) atomic_fetch_add_explicit(&scene_vertical_audit[i],1,memory_order_relaxed)
#else
#define SCENE_VERTICAL_ENABLED(f) 1
#define SCENE_VERTICAL_COUNT(i) ((void)0)
#endif

static int scene_quantized_vertical(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int bin,
    int ix0, int ix1, int iy0, int iy1, int32_t edge[2][3],
    int32_t area, float inverse_area, const int bias[3]) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    SCENE_VERTICAL_COUNT(0);
    sg_i32x4 delta[2], step[2], bias0 = sg_i32x4_splat(bias[0]);
    sg_i32x4 bias1 = sg_i32x4_splat(bias[1]), bias2 = sg_i32x4_splat(bias[2]);
    for (int k = 0; k < 2; k++) {
        int32_t dx = edge[k][2];
        delta[k] = sg_i32x4_set(0,dx,dx*2,dx*3);
        step[k] = sg_i32x4_splat(dx*4);
    }
    sg_i32x4 area4 = sg_i32x4_splat(area);
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);
    uint32_t record = UINT32_MAX;
    for (int x = ix0; x < ix1; x++) {
        int32_t e0 = edge[0][0]+edge[0][1]*x+edge[0][2]*iy0;
        int32_t e1 = edge[1][0]+edge[1][1]*x+edge[1][2]*iy0;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int y = iy0; y < iy1; y += 4) {
            sg_i32x4 a = q0, d = q1;
            sg_i32x4 q2 = _mm_sub_epi32(_mm_sub_epi32(area4,a),d);
            unsigned live = (1u << (iy1-y < 4 ? iy1-y : 4))-1;
            sg_i32x4 coverage = _mm_or_si128(_mm_or_si128(sg_i32x4_add(a,bias0),
                sg_i32x4_add(d,bias1)),sg_i32x4_add(q2,bias2));
            live &= sg_i32x4_mask_nonneg(coverage);
            q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]);
            if (!live) continue;
            sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(a),inverse4);
            sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(d),inverse4);
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),
                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));
            float depths[4]; sg_f32x4_store(depths,z);
            if (y+3 < c->fb.h) {
                const float *depth = c->fb.depth+(size_t)y*c->fb.w+x;
                sg_f32x4 old = sg_f32x4_set(depth[0],depth[c->fb.w],depth[c->fb.w*2],depth[c->fb.w*3]);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_lt(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)(y+l)*c->fb.w+x;
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
                int64_t stored[2][3];
                for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) stored[k][j] = edge[k][j];
                record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)(y+l)*c->fb.w+x;
                SCENE_VERTICAL_COUNT(1);
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    return 0;
}

