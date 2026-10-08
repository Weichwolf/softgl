#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_vector_counts[4];
unsigned long long softgl_scene_msaa_vector_audit(unsigned i) {
    return i < 4 ? atomic_load_explicit(&scene_vector_counts[i],memory_order_relaxed) : 0;
}
#define SCENE_VECTOR_AUDIT(i,n) atomic_fetch_add_explicit(&scene_vector_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_VECTOR_AUDIT(i,n) ((void)0)
#endif

/* Exact coverage compression, NOT vertex quantization:
 * E_s(x+1,y)=E_s(x,y)+256*dx, hence
 * floor((E_s+bias)/256) advances by the integer dx and preserves sign.
 * The omitted low eight bits are constant for each sample/edge. Restore them
 * before the original int-to-float depth conversion. The existing area/span
 * proof bounds all samples of any covered pixel in signed 32-bit raw edges.
 * Large triangles or unproved rectangle bounds use the ordinary exact kernel. */
static int sg_raster_scene_msaa_fast4(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, int ix0, int iy0, int ix1, int iy1,
    int64_t area, int bias0, int bias1, int bias2, float z_offset) {
    int32_t vx[3] = {sg_fp_screen_from_float(v0->ndc.x),sg_fp_screen_from_float(v1->ndc.x),sg_fp_screen_from_float(v2->ndc.x)};
    int32_t vy[3] = {sg_fp_screen_from_float(v0->ndc.y),sg_fp_screen_from_float(v1->ndc.y),sg_fp_screen_from_float(v2->ndc.y)};
    const int sx[4] = {96,224,32,160}, sy[4] = {32,96,160,224};
    const int bias[3] = {bias0,bias1,bias2};
    int64_t dx[3], dy[3], maximum[3];
    sg_i32x4 rows[3], steps[3], row_steps[3], remainder[2];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(int64_t)(vy[b]-vy[a]); dy[e] = (int64_t)(vx[b]-vx[a]);
        if (e < 2) {
            int64_t span = 256*(llabs(dx[e])+llabs(dy[e]));
            if (span > INT32_MAX || area > INT32_MAX-span) { SCENE_VECTOR_AUDIT(1,1); return -3; }
        }
        int64_t origin = dy[e]*((int64_t)iy0*256-vy[a])+dx[e]*((int64_t)ix0*256-vx[a]);
        int32_t q[4], r[4];
        int64_t minq = INT64_MAX, maxq = INT64_MIN;
        maximum[e] = INT64_MIN;
        for (int s = 0; s < 4; s++) {
            int64_t raw = origin+dx[e]*sx[s]+dy[e]*sy[s]+bias[e];
            int64_t scaled = raw >> 8;
            if (scaled < minq) minq = scaled; if (scaled > maxq) maxq = scaled;
            if (raw > maximum[e]) maximum[e] = raw;
            q[s] = (int32_t)scaled; r[s] = (int32_t)(raw&255)-bias[e];
        }
        int64_t xs = dx[e]*(ix1-ix0-1), ys = dy[e]*(iy1-iy0-1);
        int64_t low = minq+(xs < 0 ? xs : 0)+(ys < 0 ? ys : 0);
        int64_t high = maxq+(xs > 0 ? xs : 0)+(ys > 0 ? ys : 0);
        if (low < INT32_MIN || high > INT32_MAX) { SCENE_VECTOR_AUDIT(1,1); return -3; }
        rows[e] = _mm_loadu_si128((const __m128i *)q);
        steps[e] = _mm_set1_epi32((int32_t)dx[e]); row_steps[e] = _mm_set1_epi32((int32_t)dy[e]);
        if (e < 2) remainder[e] = _mm_loadu_si128((const __m128i *)r);
    }
    int width = c->fb.w, alpha = sg_scene_visibility_alpha(c);
    float *depth_buffer = c->fb.sample_depth;
    float inverse_area = 1.f/(float)area;
    sg_f32x4 inverse = sg_f32x4_splat(inverse_area), one = sg_f32x4_splat(1.f), zero = sg_f32x4_splat(0.f);
    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);
    sg_f32x4 offset = sg_f32x4_splat(z_offset);
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    int use_spans = ix1-ix0 >= 8 && (int64_t)(ix1-ix0)*(iy1-iy0) >= 64;
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float invstep = 1.f/(float)(dx[e]*256);
        intersection_x[e] = -(float)maximum[e]*invstep;
        intersection_step[e] = (float)(dy[e]*256)*invstep;
    }
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    int coverage_seen = 0;
    uint64_t tested = 0, passed = 0;
    for (int y = iy0; y < iy1; y++) {
        int first = ix0, end = ix1;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int64_t step = dx[e]*256, at_first = maximum[e];
            if (step > 0) {
                if (at_first+step*(ix1-ix0-1) < 0) { end = first; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? ix0 : intersection >= (float)(ix1-ix0) ? ix1 : ix0+(int)intersection;
                if (candidate > first && at_first+step*(candidate-ix0-1) < 0) first = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end = first; break; }
                if (at_first+step*(ix1-ix0-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? ix0 : intersection >= (float)(ix1-ix0-2) ? ix1 : ix0+(int)intersection+2;
                if (candidate < end && at_first+step*(candidate-ix0) < 0) end = candidate;
            } else if (at_first < 0) { end = first; break; }
        }
        sg_i32x4 q[3];
        for (int e = 0; e < 3; e++) q[e] = _mm_add_epi32(rows[e],_mm_set1_epi32((int32_t)(dx[e]*(first-ix0))));
        for (int x = first; x < end; x++) {
            tested++;
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(q[0],q[1]),q[2]));
            if (coverage) {
                coverage_seen = 1;
                sg_i32x4 raw0 = _mm_add_epi32(_mm_slli_epi32(q[0],8),remainder[0]);
                sg_i32x4 raw1 = _mm_add_epi32(_mm_slli_epi32(q[1],8),remainder[1]);
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(raw0),inverse);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(raw1),inverse);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(one,b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(b0,z0),sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),offset);
                z = sg_f32x4_select(sg_f32x4_lt(z,zero),zero,z);
                z = sg_f32x4_select(sg_f32x4_gt(z,one),one,z);
                size_t base = ((size_t)y*width+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,sg_f32x4_load(depth_buffer+base)));
                if (coverage) {
                    passed += (unsigned)__builtin_popcount(coverage);
                    int lane = packet.count++;
                    packet.x[lane] = x; packet.y[lane] = y; packet.coverage[lane] = coverage;
                    packet.edge0[lane] = packet.edge1[lane] = 0;
                    if (alpha) {
                        int32_t e0[4], e1[4]; _mm_storeu_si128((__m128i *)e0,raw0); _mm_storeu_si128((__m128i *)e1,raw1);
                        unsigned s = (unsigned)__builtin_ctz(coverage);
                        packet.edge0[lane] = coverage == 15 ? (int64_t)e0[0]+dx[0]*32+dy[0]*96 : e0[s];
                        packet.edge1[lane] = coverage == 15 ? (int64_t)e1[0]+dx[1]*32+dy[1]*96 : e1[s];
                    }
                    sg_f32x4_store(packet.depths[lane],z);
                    if (packet.count == 4) {
                        sg_scene_visibility_msaa_packet(c,v0,v1,v2,texture,&packet,inverse_area,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) q[e] = _mm_add_epi32(q[e],steps[e]);
        }
        for (int e = 0; e < 3; e++) {
            rows[e] = _mm_add_epi32(rows[e],row_steps[e]); maximum[e] += dy[e]*256;
            if (use_spans) intersection_x[e] -= intersection_step[e];
        }
    }
    if (packet.count) sg_scene_visibility_msaa_packet(c,v0,v1,v2,texture,&packet,inverse_area,&record);
    SCENE_VECTOR_AUDIT(0,1); SCENE_VECTOR_AUDIT(2,tested); SCENE_VECTOR_AUDIT(3,passed);
    return coverage_seen ? 0 : 1;
}
