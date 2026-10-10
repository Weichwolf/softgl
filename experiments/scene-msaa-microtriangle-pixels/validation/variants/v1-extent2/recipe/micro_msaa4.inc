#ifndef SOFTGL_MICRO_MSAA_EXTENT
#define SOFTGL_MICRO_MSAA_EXTENT 2
#endif
_Static_assert(SOFTGL_MICRO_MSAA_EXTENT > 0 && SOFTGL_MICRO_MSAA_EXTENT <= 8,
    "micro packet signed-32 sample edge proof");

#ifdef SOFTGL_MICRO_MSAA_AUDIT
static atomic_ullong scene_micro_counts[4];
unsigned long long softgl_scene_micro_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_micro_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_MICRO_AUDIT(i,n) atomic_fetch_add_explicit(&scene_micro_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_MICRO_AUDIT(i,n) ((void)0)
#endif

static int scene_micro_msaa4(softgl_ctx *c, scene_geometry_task *task,
    unsigned first, unsigned live, int bin) {
    if (c->fb.samples != 4 || __builtin_popcount(live) < 2) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    const scene_material *material = &f->materials[task->material];
    if (material->alpha_test) return 0;
    const scene_occlusion_packet *bounds = &task->occlusion_packets[first/4];
    if (!bounds->eligible || bounds->right-bounds->left > SOFTGL_MICRO_MSAA_EXTENT ||
        bounds->top-bounds->bottom > SOFTGL_MICRO_MSAA_EXTENT) return 0;
    const sg_worker_pool *pool = c->workers;
    int left = bounds->left > pool->bins[bin].ix0 ? bounds->left : pool->bins[bin].ix0;
    int right = bounds->right < pool->bins[bin].ix1 ? bounds->right : pool->bins[bin].ix1;
    if (left >= right) return 1;
    int bottom = bounds->bottom, top = bounds->top;
    const scene_mesh *mesh = &material->mesh;
    const scene_primitive *primitives[4];
    const sg_vec4 *positions[3][4];
    sg_i32x4 vx[3], vy[3], dx[3], dy[3], rows[3], bias[3];
    sg_f32x4 z_vertex[3];
    SG_ALIGN16 int32_t x_coords[3][4], y_coords[3][4], areas[4];
    unsigned first_live = (unsigned)__builtin_ctz(live);
    for (unsigned lane = 0; lane < 4; lane++)
        primitives[lane] = &task->primitives[first+((live & (1u << lane)) ? lane : first_live)];
    for (int vertex = 0; vertex < 3; vertex++) {
        sg_f32x4 ndc[4];
        for (unsigned lane = 0; lane < 4; lane++) {
            const scene_primitive *p = primitives[lane];
            positions[vertex][lane] = p->clipped == UINT32_MAX ?
                &f->geometry->positions[mesh->offset+p->indices[vertex]-mesh->minimum].ndc :
                &task->clipped[p->clipped].ndc[vertex];
            ndc[lane] = _mm_load_ps(&positions[vertex][lane]->x);
        }
        _MM_TRANSPOSE4_PS(ndc[0],ndc[1],ndc[2],ndc[3]);
        vx[vertex] = sg_f32x4_trunc_i32(sg_f32x4_mul(ndc[0],sg_f32x4_splat(256.f)));
        vy[vertex] = sg_f32x4_trunc_i32(sg_f32x4_mul(ndc[1],sg_f32x4_splat(256.f)));
        z_vertex[vertex] = ndc[2];
        _mm_store_si128((sg_i32x4 *)x_coords[vertex],vx[vertex]);
        _mm_store_si128((sg_i32x4 *)y_coords[vertex],vy[vertex]);
    }
    sg_i32x4 area = _mm_sub_epi32(_mm_mullo_epi32(_mm_sub_epi32(vx[1],vx[0]),
        _mm_sub_epi32(vy[2],vy[0])),_mm_mullo_epi32(_mm_sub_epi32(vy[1],vy[0]),
        _mm_sub_epi32(vx[2],vx[0])));
    live &= sg_mask4_live(_mm_cmpgt_epi32(area,_mm_setzero_si128()));
    if (!live) return 1;
    _mm_store_si128((sg_i32x4 *)areas,area);
    /* Inactive/degenerate lanes must not divide by zero. Each active scalar
     * division has the same expression as the accepted small-triangle kernel. */
    SG_ALIGN16 float inverses[4];
    for (unsigned lane = 0; lane < 4; lane++)
        inverses[lane] = live & (1u << lane) ? 1.f/(float)areas[lane] : 0.f;
    sg_f32x4 inverse = sg_f32x4_load(inverses);
    for (int edge = 0; edge < 3; edge++) {
        int a = (edge+1)%3, b = (edge+2)%3;
        sg_i32x4 vertical = _mm_sub_epi32(vy[b],vy[a]);
        dx[edge] = _mm_sub_epi32(_mm_setzero_si128(),vertical);
        dy[edge] = _mm_sub_epi32(vx[b],vx[a]);
        rows[edge] = _mm_add_epi32(_mm_mullo_epi32(dy[edge],
            _mm_sub_epi32(sg_i32x4_splat(bottom*256),vy[a])),
            _mm_mullo_epi32(dx[edge],_mm_sub_epi32(sg_i32x4_splat(left*256),vx[a])));
        sg_i32x4 top_left = _mm_or_si128(_mm_cmplt_epi32(vertical,_mm_setzero_si128()),
            _mm_and_si128(_mm_cmpeq_epi32(vertical,_mm_setzero_si128()),
                _mm_cmplt_epi32(dy[edge],_mm_setzero_si128())));
        bias[edge] = _mm_xor_si128(top_left,sg_i32x4_splat(-1));
    }
    /* With extent <= 8, border vertices enlarge each axis by at most two
     * pixels: |edge| <= 2*2815*3072 < INT32_MAX, including loop-end advances. */
    uint32_t records[4] = {UINT32_MAX,UINT32_MAX,UINT32_MAX,UINT32_MAX};
    SCENE_MICRO_AUDIT(0,1);
    SCENE_MICRO_AUDIT(1,__builtin_popcount(live));
    for (int y = bottom; y < top; y++) {
        sg_i32x4 pixel_edge[3] = {rows[0],rows[1],rows[2]};
        for (int x = left; x < right; x++) {
            unsigned covered[4];
            sg_f32x4 depths[4];
            unsigned any = 0;
            for (int sample = 0; sample < 4; sample++) {
                int sx, sy; sg_sample_position(4,sample,&sx,&sy);
                sg_i32x4 raw[3];
                for (int edge = 0; edge < 3; edge++)
                    raw[edge] = _mm_add_epi32(pixel_edge[edge],_mm_add_epi32(
                        _mm_mullo_epi32(dx[edge],sg_i32x4_splat(sx)),
                        _mm_mullo_epi32(dy[edge],sg_i32x4_splat(sy))));
                covered[sample] = live & sg_i32x4_mask_nonneg(_mm_or_si128(
                    _mm_or_si128(_mm_add_epi32(raw[0],bias[0]),_mm_add_epi32(raw[1],bias[1])),
                    _mm_add_epi32(raw[2],bias[2])));
                any |= covered[sample];
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(raw[0]),inverse);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(raw[1]),inverse);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                depths[sample] = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(b0,z_vertex[0]),sg_f32x4_mul(b1,z_vertex[1])),
                    sg_f32x4_mul(b2,z_vertex[2])),sg_f32x4_splat(0.f));
                depths[sample] = sg_f32x4_select(sg_f32x4_lt(depths[sample],sg_f32x4_splat(0.f)),
                    sg_f32x4_splat(0.f),depths[sample]);
                depths[sample] = sg_f32x4_select(sg_f32x4_gt(depths[sample],sg_f32x4_splat(1.f)),
                    sg_f32x4_splat(1.f),depths[sample]);
            }
            if (any) {
                _MM_TRANSPOSE4_PS(depths[0],depths[1],depths[2],depths[3]);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                for (unsigned lane = 0; lane < 4; lane++) if (any & (1u << lane)) {
                    unsigned coverage = ((covered[0] >> lane)&1u) |
                        (((covered[1] >> lane)&1u)<<1) | (((covered[2] >> lane)&1u)<<2) |
                        (((covered[3] >> lane)&1u)<<3);
                    /* Previous packet lanes may cover this same sample. */
                    coverage &= sg_mask4_live(sg_f32x4_lt(depths[lane],
                        _mm_loadu_ps(c->fb.sample_depth+base)));
                    if (!coverage) continue;
                    const scene_primitive *p = primitives[lane];
                    f->bins[bin].current_primitive = p;
                    c->scene_material = (int)p->material;
                    if (records[lane] == UINT32_MAX) {
                        sg_vert v[3];
                        for (int j = 0; j < 3; j++) v[j].ndc = *positions[j][lane];
                        int64_t edges[2][3];
                        for (int e = 0; e < 2; e++) {
                            int a = (e+1)%3, b = (e+2)%3;
                            int64_t ex = -(int64_t)(y_coords[b][lane]-y_coords[a][lane]);
                            int64_t ey = (int64_t)(x_coords[b][lane]-x_coords[a][lane]);
                            edges[e][0] = ey*(128-y_coords[a][lane])+ex*(128-x_coords[a][lane]);
                            edges[e][1] = ex*256; edges[e][2] = ey*256;
                        }
                        records[lane] = scene_triangle_record(f,bin,v,v+1,v+2,edges,inverses[lane],p->material);
                        if (records[lane] == UINT32_MAX) return 1;
                        SCENE_MSAA_AUDIT(1,1);
                    }
                    SG_ALIGN16 float depth[4];
                    sg_f32x4_store(depth,depths[lane]);
                    uint8_t point = coverage == 15 ? 4 : (uint8_t)__builtin_ctz(coverage);
                    scene_msaa_store_pixel(f,c,bin,base,4,coverage,records[lane],point,depth);
                    sg_hz_record_pixel(c,x,y,coverage,depth);
                    SCENE_MICRO_AUDIT(2,__builtin_popcount(coverage));
                }
            }
            for (int edge = 0; edge < 3; edge++)
                pixel_edge[edge] = _mm_add_epi32(pixel_edge[edge],_mm_slli_epi32(dx[edge],8));
            SCENE_MICRO_AUDIT(3,1);
        }
        for (int edge = 0; edge < 3; edge++)
            rows[edge] = _mm_add_epi32(rows[edge],_mm_slli_epi32(dy[edge],8));
    }
    return 1;
}
