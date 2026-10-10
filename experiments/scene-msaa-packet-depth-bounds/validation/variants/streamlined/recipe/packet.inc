#define SCENE_PACKET_DEPTH_GUARD 0x1p-18f
typedef struct {
    sg_i32x4 sample_delta[2];
    float inverse, vertex_z[3], coefficient[2], lower_offset, upper_offset;
} scene_packet_depth_state;

static void scene_packet_depth_prepare(scene_packet_depth_state *state,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2, float inverse,
    const int32_t *dx, const int32_t *dy) {
    state->inverse = inverse;
    state->vertex_z[0] = v0->ndc.z; state->vertex_z[1] = v1->ndc.z;
    state->vertex_z[2] = v2->ndc.z;
    state->coefficient[0] = (v0->ndc.z-v2->ndc.z)*inverse;
    state->coefficient[1] = (v1->ndc.z-v2->ndc.z)*inverse;
    SG_ALIGN16 int32_t delta[2][4];
    float low = INFINITY, high = -INFINITY;
    for (int s = 0; s < 4; s++) {
        int sx, sy; sg_sample_position(4,s,&sx,&sy);
        for (int e = 0; e < 2; e++) delta[e][s] =
            (int32_t)((int64_t)dx[e]*(sx-128)+(int64_t)dy[e]*(sy-128));
        float offset = (float)delta[0][s]*state->coefficient[0]+
            (float)delta[1][s]*state->coefficient[1];
        if (offset < low) low = offset;
        if (offset > high) high = offset;
    }
    for (int e = 0; e < 2; e++) state->sample_delta[e] =
        _mm_load_si128((const sg_i32x4 *)delta[e]);
    state->lower_offset = low-SCENE_PACKET_DEPTH_GUARD;
    state->upper_offset = high+SCENE_PACKET_DEPTH_GUARD;
}

static __attribute__((noinline)) void scene_packet_depth_capture(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    sg_pixel_packet *packet, const scene_packet_depth_state *state, uint32_t *record) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    SG_ALIGN16 float center_edges[2][4], old_lower[4], old_upper[4];
    size_t bases[4]; unsigned full_lanes = 0;
    for (int l = 0; l < 4; l++) {
        int at = l < packet->count ? l : 0;
        center_edges[0][l] = (float)packet->edge0[at];
        center_edges[1][l] = (float)packet->edge1[at];
        bases[l] = ((size_t)packet->y[at]*c->fb.w+packet->x[at])*4;
        if (l >= packet->count || packet->coverage[l] != 15) {
            old_lower[l] = -INFINITY; old_upper[l] = INFINITY;
            continue;
        }
        full_lanes |= 1u << l;
        if (f->shade_mask[bases[l]] == 0xc0) {
            memcpy(old_lower+l,f->winner+bases[l]+1,sizeof(float));
            old_upper[l] = c->fb.sample_depth[bases[l]];
        } else {
            sg_f32x4 z = _mm_loadu_ps(c->fb.sample_depth+bases[l]);
            sg_f32x4 low = _mm_min_ps(z,_mm_shuffle_ps(z,z,_MM_SHUFFLE(1,0,3,2)));
            sg_f32x4 high = _mm_max_ps(z,_mm_shuffle_ps(z,z,_MM_SHUFFLE(1,0,3,2)));
            low = _mm_min_ps(low,_mm_shuffle_ps(low,low,_MM_SHUFFLE(2,3,0,1)));
            high = _mm_max_ps(high,_mm_shuffle_ps(high,high,_MM_SHUFFLE(2,3,0,1)));
            old_lower[l] = _mm_cvtss_f32(low); old_upper[l] = _mm_cvtss_f32(high);
        }
    }
    sg_f32x4 center = sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_load(center_edges[0]),sg_f32x4_splat(state->coefficient[0])),
        sg_f32x4_mul(sg_f32x4_load(center_edges[1]),sg_f32x4_splat(state->coefficient[1]))),
        sg_f32x4_splat(state->vertex_z[2]));
    sg_f32x4 lower = sg_f32x4_add(center,sg_f32x4_splat(state->lower_offset));
    sg_f32x4 upper = sg_f32x4_add(center,sg_f32x4_splat(state->upper_offset));
    lower = _mm_max_ps(sg_f32x4_splat(0.f),_mm_min_ps(sg_f32x4_splat(1.f),lower));
    upper = _mm_max_ps(sg_f32x4_splat(0.f),_mm_min_ps(sg_f32x4_splat(1.f),upper));
    unsigned pass = full_lanes & sg_mask4_live(sg_f32x4_lt(upper,sg_f32x4_load(old_lower)));
    unsigned reject = full_lanes & sg_mask4_live(sg_f32x4_ge(lower,sg_f32x4_load(old_upper)));
    SG_ALIGN16 float lows[4], highs[4];
    sg_f32x4_store(lows,lower); sg_f32x4_store(highs,upper);
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[packet->x[0]];
    for (int l = 0; l < packet->count; l++) {
        if (reject & (1u << l)) continue;
        unsigned coverage = packet->coverage[l];
        sg_f32x4 exact = sg_f32x4_splat(0.f);
        if (!(pass & (1u << l))) {
            scene_pending_depth_materialize(f,c,bases[l]);
            sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_add(
                sg_i32x4_splat((int32_t)packet->edge0[l]),state->sample_delta[0])),
                sg_f32x4_splat(state->inverse));
            sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_add(
                sg_i32x4_splat((int32_t)packet->edge1[l]),state->sample_delta[1])),
                sg_f32x4_splat(state->inverse));
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            exact = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                sg_f32x4_mul(b0,sg_f32x4_splat(state->vertex_z[0])),
                sg_f32x4_mul(b1,sg_f32x4_splat(state->vertex_z[1]))),
                sg_f32x4_mul(b2,sg_f32x4_splat(state->vertex_z[2]))),sg_f32x4_splat(0.f));
            exact = sg_f32x4_select(sg_f32x4_lt(exact,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),exact);
            exact = sg_f32x4_select(sg_f32x4_gt(exact,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),exact);
            coverage &= sg_mask4_live(sg_f32x4_lt(exact,_mm_loadu_ps(c->fb.sample_depth+bases[l])));
            if (!coverage) continue;
        }
        if (*record == UINT32_MAX) {
            int32_t vx[3] = {sg_fp_screen_from_float(v0->ndc.x),sg_fp_screen_from_float(v1->ndc.x),sg_fp_screen_from_float(v2->ndc.x)};
            int32_t vy[3] = {sg_fp_screen_from_float(v0->ndc.y),sg_fp_screen_from_float(v1->ndc.y),sg_fp_screen_from_float(v2->ndc.y)};
            int64_t edge[2][3];
            for (int e = 0; e < 2; e++) {
                int a = (e+1)%3, b = (e+2)%3;
                edge[e][0] = (int64_t)(vx[b]-vx[a])*(128-vy[a])-(int64_t)(vy[b]-vy[a])*(128-vx[a]);
                edge[e][1] = -(int64_t)(vy[b]-vy[a])*256;
                edge[e][2] = (int64_t)(vx[b]-vx[a])*256;
            }
            *record = scene_triangle_record(f,bin,v0,v1,v2,edge,state->inverse,(uint32_t)c->scene_material);
            if (*record == UINT32_MAX) return;
        }
        if (pass & (1u << l)) {
            f->winner[bases[l]] = *record;
            memcpy(f->winner+bases[l]+1,lows+l,sizeof(float));
            f->sample_point[bases[l]] = 4;
            f->pixel_material[bases[l]] = (uint16_t)c->scene_material;
            f->shade_mask[bases[l]] = 0xc0;
            _mm_storeu_ps(c->fb.sample_depth+bases[l],sg_f32x4_splat(highs[l]));
            f->bins[bin].depth_passes += 4;
            for (int s = 0; s < 4; s++) packet->depths[l][s] = highs[l];
        } else {
            uint8_t point = coverage == 15 ? 4 : (uint8_t)__builtin_ctz(coverage);
            sg_f32x4_store(packet->depths[l],exact);
            scene_msaa_store_pixel(f,c,bin,bases[l],4,coverage,*record,point,packet->depths[l]);
        }
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],coverage,packet->depths[l]);
        SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
    }
    packet->count = 0;
}
