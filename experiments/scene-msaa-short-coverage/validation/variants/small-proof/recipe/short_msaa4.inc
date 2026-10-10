#ifdef SOFTGL_MSAA_SHORT_AUDIT
static atomic_ullong scene_short_counts[5];
unsigned long long softgl_scene_short_audit(unsigned index) {
    return index < 5 ? atomic_load_explicit(&scene_short_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_SHORT_AUDIT(i,n) atomic_fetch_add_explicit(&scene_short_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_SHORT_AUDIT(i,n) ((void)0)
#endif

/* Each edge's affine extrema cover both real pixels and the inactive partner
 * of an odd row. All consumed quotient lanes must fit before narrowing. */
static int scene_short_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    if (c->fb.samples != 4) return 0;
    SCENE_SHORT_AUDIT(0,1);
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
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    const scene_material *material = &((struct sg_scene_visibility *)c->scene_visibility)->materials[c->scene_material];
    if (material->alpha_test && (right-left > SOFTGL_SMALL_MSAA_EXTENT ||
                               top-bottom > SOFTGL_SMALL_MSAA_EXTENT)) return 0;
    int64_t area = (int64_t)(vx[1]-vx[0])*(vy[2]-vy[0])-(int64_t)(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
    if (left < tile_ix0) left = tile_ix0; if (right > tile_ix1) right = tile_ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return 1;
    if (sg_hz_occluded4(c,left,bottom,right,top,v0->ndc.z,v1->ndc.z,v2->ndc.z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return 1;
    }
    int32_t dx[3], dy[3], max_coarse[3];
    int64_t offsets[4][3], center_offset[2];
    sg_i32x4 rows[3], step_x[3], step_y[3], corrections[2], remainders[2];
    /* A row span may start at either parity, so always include x == right. */
    int paired_width = right-left+1;
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        int64_t origin = (int64_t)dy[e]*(bottom*256-vy[a])+(int64_t)dx[e]*(left*256-vx[a]);
        int bias = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        int32_t values[4], correction[4], remainder[4];
        int64_t low = INT64_MAX, high = INT64_MIN;
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = (int64_t)dx[e]*sx+(int64_t)dy[e]*sy;
            int64_t raw = origin+offsets[s][e];
            int64_t quotient = (raw+bias) >> 8;
            if (quotient < low) low = quotient; if (quotient > high) high = quotient;
            values[s] = (int32_t)quotient;
            correction[s] = bias && ((uint64_t)raw & 255u) == 0;
            remainder[s] = (int)((uint64_t)raw & 255u);
        }
        int64_t x_delta = (int64_t)dx[e]*(paired_width-1);
        int64_t y_delta = (int64_t)dy[e]*(top-bottom-1);
        if (low+(x_delta < 0 ? x_delta : 0)+(y_delta < 0 ? y_delta : 0) < INT16_MIN ||
            high+(x_delta > 0 ? x_delta : 0)+(y_delta > 0 ? y_delta : 0) > INT16_MAX) {
            SCENE_SHORT_AUDIT(2,1); return 0;
        }
        sg_i32x4 first = _mm_loadu_si128((const sg_i32x4 *)values);
        rows[e] = _mm_packs_epi32(first,sg_i32x4_add(first,sg_i32x4_splat(dx[e])));
        step_x[e] = _mm_set1_epi16((int16_t)(uint16_t)(2*dx[e]));
        step_y[e] = _mm_set1_epi16((int16_t)(uint16_t)dy[e]);
        max_coarse[e] = values[0];
        for (int s = 1; s < 4; s++) if (values[s] > max_coarse[e]) max_coarse[e] = values[s];
        if (e < 2) {
            corrections[e] = _mm_loadu_si128((const sg_i32x4 *)correction);
            remainders[e] = _mm_loadu_si128((const sg_i32x4 *)remainder);
            center_offset[e] = (int64_t)(dx[e]+dy[e])*128-offsets[0][e];
        }
    }
    SCENE_SHORT_AUDIT(1,1);
    SCENE_SMALL_AUDIT(0,1);
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
        for (int e = 0; e < 3; e++)
            edge[e] = _mm_add_epi16(rows[e],_mm_set1_epi16((int16_t)(uint16_t)(dx[e]*(first_x-left))));
        for (int x = first_x; x < end_x; x += 2) {
            sg_i32x4 signs = _mm_or_si128(_mm_or_si128(edge[0],edge[1]),edge[2]);
            unsigned pair_coverage = ~(unsigned)_mm_movemask_epi8(_mm_packs_epi16(signs,signs)) & 255u;
            SCENE_SHORT_AUDIT(3,x+1 < end_x ? 2 : 1);
            for (int lane = 0; lane < 2 && x+lane < end_x; lane++) {
                unsigned coverage = (pair_coverage >> (lane*4)) & 15u;
                SCENE_SMALL_AUDIT(1,1);
                if (!coverage) continue;
                sg_i32x4 q0 = _mm_cvtepi16_epi32(lane ? _mm_srli_si128(edge[0],8) : edge[0]);
                sg_i32x4 q1 = _mm_cvtepi16_epi32(lane ? _mm_srli_si128(edge[1],8) : edge[1]);
                sg_i32x4 raw0 = _mm_or_si128(_mm_slli_epi32(sg_i32x4_add(q0,corrections[0]),8),remainders[0]);
                sg_i32x4 raw1 = _mm_or_si128(_mm_slli_epi32(sg_i32x4_add(q1,corrections[1]),8),remainders[1]);
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(raw0),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(raw1),inverse4);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                int pixel_x = x+lane;
                size_t base = ((size_t)y*c->fb.w+pixel_x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                if (!coverage) continue;
                SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                SCENE_SHORT_AUDIT(4,__builtin_popcount(coverage));
                int l = packet.count++, first = __builtin_ctz(coverage);
                packet.x[l] = pixel_x; packet.y[l] = y; packet.coverage[l] = coverage;
                if (coverage == 15) {
                    packet.edge0[l] = (int64_t)_mm_cvtsi128_si32(raw0)+center_offset[0];
                    packet.edge1[l] = (int64_t)_mm_cvtsi128_si32(raw1)+center_offset[1];
                } else {
                    SG_ALIGN16 int values0[4], values1[4];
                    _mm_store_si128((sg_i32x4 *)values0,raw0); _mm_store_si128((sg_i32x4 *)values1,raw1);
                    packet.edge0[l] = values0[first]; packet.edge1[l] = values1[first];
                }
                sg_f32x4_store(packet.depths[l],z);
                if (packet.count == 4) {
                    scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                    packet.count = 0;
                }
            }
            for (int e = 0; e < 3; e++) edge[e] = _mm_add_epi16(edge[e],step_x[e]);
        }
        for (int e = 0; e < 3; e++) {
            rows[e] = _mm_add_epi16(rows[e],step_y[e]); max_coarse[e] += dy[e];
        }
        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}
