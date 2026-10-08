#ifndef SOFTGL_SMALL_MSAA_EXTENT
#define SOFTGL_SMALL_MSAA_EXTENT 4
#endif
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_small_msaa_counts[3];
unsigned long long softgl_scene_small_msaa_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_small_msaa_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_SMALL_AUDIT(i,n) atomic_fetch_add_explicit(&scene_small_msaa_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_SMALL_AUDIT(i,n) ((void)0)
#endif

/* A small original bounding box proves all sample edges fit int32, without
 * the general kernel's per-edge rectangle range analysis. */
static int scene_small_msaa4(softgl_ctx *c, const sg_vert *v0,
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
    int left = minx >> 8, right = (maxx >> 8)+1;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (right-left > SOFTGL_SMALL_MSAA_EXTENT || top-bottom > SOFTGL_SMALL_MSAA_EXTENT) return 0;
    /* EXTENT <= 16 bounds coordinate differences by 4095 and raw sample
     * products/sums by 2*4095*4096, far below signed-32 overflow. */
    _Static_assert(SOFTGL_SMALL_MSAA_EXTENT > 0 && SOFTGL_SMALL_MSAA_EXTENT <= 16,
        "small sample edge range proof");
    int32_t area = (vx[1]-vx[0])*(vy[2]-vy[0])-(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return 1;
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
    int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3];
    sg_i32x4 coverage_offset[3];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        row[e] = dy[e]*(bottom*256-vy[a])+dx[e]*(left*256-vx[a]);
        bias[e] = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offsets[s][e] = dx[e]*sx+dy[e]*sy;
        }
        coverage_offset[e] = sg_i32x4_set(offsets[0][e]+bias[e],offsets[1][e]+bias[e],
            offsets[2][e]+bias[e],offsets[3][e]+bias[e]);
    }
    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);
    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);
    sg_i32x4 bias0 = sg_i32x4_splat(bias[0]), bias1 = sg_i32x4_splat(bias[1]);
    sg_pixel_packet packet; packet.count = 0;
    uint32_t record = UINT32_MAX;
    for (int y = bottom; y < top; y++) {
        int32_t edge[3] = {row[0],row[1],row[2]};
        for (int x = left; x < right; x++) {
            sg_i32x4 e0 = sg_i32x4_add(sg_i32x4_splat(edge[0]),coverage_offset[0]);
            sg_i32x4 e1 = sg_i32x4_add(sg_i32x4_splat(edge[1]),coverage_offset[1]);
            sg_i32x4 e2 = sg_i32x4_add(sg_i32x4_splat(edge[2]),coverage_offset[2]);
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(e0,e1),e2));
            SCENE_SMALL_AUDIT(1,1);
            if (coverage) {
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e0,bias0)),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e1,bias1)),inverse4);
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
                    packet.edge0[l] = edge[0]+(coverage == 15 ? (dx[0]+dy[0])*128 : offsets[first][0]);
                    packet.edge1[l] = edge[1]+(coverage == 15 ? (dx[1]+dy[1])*128 : offsets[first][1]);
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
        }
        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;
    }
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    return 1;
}
