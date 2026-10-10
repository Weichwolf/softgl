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

static void interval_bounds(const scene_packet_depth_state *state,
    float center_edges[2][4], float lower_out[4], float upper_out[4]) {
    sg_f32x4 center = sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(sg_f32x4_load(center_edges[0]),sg_f32x4_splat(state->coefficient[0])),
        sg_f32x4_mul(sg_f32x4_load(center_edges[1]),sg_f32x4_splat(state->coefficient[1]))),
        sg_f32x4_splat(state->vertex_z[2]));
    sg_f32x4 lower = sg_f32x4_add(center,sg_f32x4_splat(state->lower_offset));
    sg_f32x4 upper = sg_f32x4_add(center,sg_f32x4_splat(state->upper_offset));
    lower = _mm_max_ps(sg_f32x4_splat(0.f),_mm_min_ps(sg_f32x4_splat(1.f),lower));
    upper = _mm_max_ps(sg_f32x4_splat(0.f),_mm_min_ps(sg_f32x4_splat(1.f),upper));
    sg_f32x4_store(lower_out,lower); sg_f32x4_store(upper_out,upper);
}
