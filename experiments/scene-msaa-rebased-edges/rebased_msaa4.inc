/* Keep coverage as floor((raw_edge+top_left_bias)/256). Pixel steps are
 * multiples of 256, so signed-32 recurrences retain the exact predicate.
 * The original low eight bits are constant across the pixel grid. */
static inline sg_f32x4 scene_rebased_edge_float(sg_i32x4 coarse,
    sg_i32x4 remainder, int small_edges) {
    if (small_edges)
        return _mm_cvtepi32_ps(_mm_or_si128(_mm_slli_epi32(coarse,8),remainder));
    /* Both integer components are exactly representable as float. One final
     * addition rounds the original signed-64 edge, without double rounding. */
    sg_f32x4 high = _mm_cvtepi32_ps(_mm_srai_epi32(coarse,8));
    sg_i32x4 low = _mm_or_si128(_mm_slli_epi32(_mm_and_si128(coarse,
        sg_i32x4_splat(255)),8),remainder);
    return sg_f32x4_add(sg_f32x4_mul(high,sg_f32x4_splat(65536.f)),_mm_cvtepi32_ps(low));
}

static int scene_rebased_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4) return 0;
    const sg_vert *vertices[3] = {v0,v1,v2};
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = vx[0], maxx = vx[0], miny = vy[0], maxy = vy[0];
    for (int j = 1; j < 3; j++) {
        if (vx[j] < minx) minx = vx[j]; if (vx[j] > maxx) maxx = vx[j];
        if (vy[j] < miny) miny = vy[j]; if (vy[j] > maxy) maxy = vy[j];
    }
    int64_t area = (int64_t)(vx[1]-vx[0])*(vy[2]-vy[0])-(int64_t)(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    SCENE_SMALL_AUDIT(0,1);
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], max_coarse[3];
    int64_t offsets[4][3];
    int remainder[2][4], center_delta[2], center_remainder[2];
    sg_i32x4 rows[3], corrections[2], remainders[2];
    int small_edges = 1;
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        int64_t row = (int64_t)dy[e]*(bottom*256-vy[a])+(int64_t)dx[e]*(left*256-vx[a]);
        int bias = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        int32_t values[4], correct[4];
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = (int64_t)dx[e]*sx+(int64_t)dy[e]*sy;
            int64_t raw = row+offsets[s][e];
            values[s] = (int32_t)((raw+bias) >> 8);
            correct[s] = bias && ((uint64_t)raw & 255u) == 0;
            if (e < 2) remainder[e][s] = (int)((uint64_t)raw & 255u);
        }
        rows[e] = _mm_loadu_si128((const sg_i32x4 *)values);
        max_coarse[e] = values[0];
        for (int s = 1; s < 4; s++) if (values[s] > max_coarse[e]) max_coarse[e] = values[s];
        if (e < 2) {
            corrections[e] = _mm_loadu_si128((const sg_i32x4 *)correct);
            remainders[e] = _mm_loadu_si128((const sg_i32x4 *)remainder[e]);
            int64_t center = row+(int64_t)(dx[e]+dy[e])*128;
            center_delta[e] = (int32_t)(center >> 8)-(values[0]+correct[0]);
            center_remainder[e] = (int)((uint64_t)center & 255u);
            int64_t span = 256*((int64_t)abs(dx[e])+abs(dy[e]));
            if (span > INT32_MAX || area > INT32_MAX-span) small_edges = 0;
        }
    }
    /* Scene admission bounds to a 640x360 viewport. Even a rectangle's edge
     * extrema divided by 256 stay below 2*643*363*256 < INT32_MAX. */
    int use_spans = right-left >= 8 && (right-left)*(top-bottom) >= 64;
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float inverse_step = 1.f/(float)dx[e];
        intersection_x[e] = -(float)max_coarse[e]*inverse_step;
        intersection_step[e] = (float)dy[e]*inverse_step;
    }
    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);
    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int first_x = left, end_x = right;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int32_t step = dx[e], at_first = max_coarse[e];
            if (step > 0) {
                if (at_first+step*(right-left-1) < 0) { end_x = first_x; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? left : intersection >= (float)(right-left) ? right : left+(int)intersection;
                if (candidate > first_x && at_first+step*(candidate-left-1) < 0) first_x = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end_x = first_x; break; }
                if (at_first+step*(right-left-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? left : intersection >= (float)(right-left-2) ? right : left+(int)intersection+2;
                if (candidate < end_x && at_first+step*(candidate-left) < 0) end_x = candidate;
            } else if (at_first < 0) { end_x = first_x; break; }
        }
        sg_i32x4 edge[3];
        for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dx[e]*(first_x-left)));
        for (int x = first_x; x < end_x; x++) {
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(edge[0],edge[1]),edge[2]));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_i32x4 raw0 = sg_i32x4_add(edge[0],corrections[0]);
                sg_i32x4 raw1 = sg_i32x4_add(edge[1],corrections[1]);
                sg_f32x4 b0 = sg_f32x4_mul(scene_rebased_edge_float(raw0,remainders[0],small_edges),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(scene_rebased_edge_float(raw1,remainders[1],small_edges),inverse4);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (coverage) {
                    SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    int32_t point0, point1;
                    if (coverage == 15) {
                        point0 = _mm_cvtsi128_si32(raw0)+center_delta[0];
                        point1 = _mm_cvtsi128_si32(raw1)+center_delta[1];
                        packet.edge0[l] = (int64_t)point0*256+center_remainder[0];
                        packet.edge1[l] = (int64_t)point1*256+center_remainder[1];
                    } else {
                        SG_ALIGN16 int values0[4], values1[4];
                        _mm_store_si128((sg_i32x4 *)values0,raw0); _mm_store_si128((sg_i32x4 *)values1,raw1);
                        packet.edge0[l] = (int64_t)values0[first]*256+remainder[0][first];
                        packet.edge1[l] = (int64_t)values1[first]*256+remainder[1][first];
                    }
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(edge[e],sg_i32x4_splat(dx[e]));
        }
        for (int e = 0; e < 3; e++) {
            rows[e] = sg_i32x4_add(rows[e],sg_i32x4_splat(dy[e])); max_coarse[e] += dy[e];
        }
        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}
