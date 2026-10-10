typedef struct {
    float inverse, coefficient[2], vertex_z2, upper_offset;
} scene_centroid_order_state;

static void scene_centroid_order_prepare(scene_centroid_order_state *state,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2, float inverse,
    const int32_t *dx, const int32_t *dy) {
    state->inverse = inverse;
    state->coefficient[0] = (v0->ndc.z-v2->ndc.z)*inverse;
    state->coefficient[1] = (v1->ndc.z-v2->ndc.z)*inverse;
    state->vertex_z2 = v2->ndc.z;
    float high = -INFINITY;
    for (int s = 0; s < 4; s++) {
        int sx, sy; sg_sample_position(4,s,&sx,&sy);
        float delta0 = (float)((int64_t)dx[0]*(sx-128)+(int64_t)dy[0]*(sy-128));
        float delta1 = (float)((int64_t)dx[1]*(sx-128)+(int64_t)dy[1]*(sy-128));
        float offset = delta0*state->coefficient[0]+delta1*state->coefficient[1];
        if (offset > high) high = offset;
    }
    state->upper_offset = high+0x1p-18f;
}

/* -1 retains the exact path; zero rejects, one records a full pixel. */
static inline __attribute__((always_inline)) int scene_centroid_order_full(
    softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    int x, int y, int64_t center0, int64_t center1,
    const int32_t *vx, const int32_t *vy, const int32_t *dx, const int32_t *dy,
    const scene_centroid_order_state *state, uint32_t *record) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 1;
    size_t base = ((size_t)y*c->fb.w+x)*4;
    float old_center;
    if (f->shade_mask[base] == 0xc0) {
        memcpy(&old_center,f->winner+base+1,sizeof(old_center));
    } else if (f->shade_mask[base] == 0x80) {
        sg_f32x4 depths = _mm_loadu_ps(c->fb.sample_depth+base);
        sg_f32x4 sum = sg_f32x4_add(depths,_mm_shuffle_ps(depths,depths,_MM_SHUFFLE(1,0,3,2)));
        sum = sg_f32x4_add(sum,_mm_shuffle_ps(sum,sum,_MM_SHUFFLE(2,3,0,1)));
        old_center = _mm_cvtss_f32(sum)*0.25f;
    } else if (f->pixel_material[base] == UINT16_MAX) {
        const float *old = c->fb.sample_depth+base;
        if (!(old[0] == old[1] && old[0] == old[2] && old[0] == old[3])) return -1;
        old_center = old[0];
    } else return -1;
    float center = ((float)center0*state->coefficient[0]+
        (float)center1*state->coefficient[1])+state->vertex_z2;
    center = center < 0.f ? 0.f : center > 1.f ? 1.f : center;
    if (!(center < old_center)) return 0;
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[x];
    if (*record == UINT32_MAX) {
        int64_t edge[2][3];
        for (int e = 0; e < 2; e++) {
            int a = (e+1)%3;
            edge[e][0] = (int64_t)dy[e]*(128-vy[a])+(int64_t)dx[e]*(128-vx[a]);
            edge[e][1] = (int64_t)dx[e]*256;
            edge[e][2] = (int64_t)dy[e]*256;
        }
        *record = scene_triangle_record(f,bin,v0,v1,v2,edge,state->inverse,(uint32_t)c->scene_material);
        if (*record == UINT32_MAX) return 1;
    }
    float upper = center+state->upper_offset;
    upper = upper < 0.f ? 0.f : upper > 1.f ? 1.f : upper;
    f->winner[base] = *record;
    memcpy(f->winner+base+1,&center,sizeof(center));
    f->sample_point[base] = 4;
    f->pixel_material[base] = (uint16_t)c->scene_material;
    f->shade_mask[base] = 0xc0;
    _mm_storeu_ps(c->fb.sample_depth+base,sg_f32x4_splat(upper));
    f->bins[bin].depth_passes += 4;
    sg_hz_record_pixel(c,x,y,15,c->fb.sample_depth+base);
    SCENE_SMALL_AUDIT(2,4);
    return 1;
}
