#define SCENE_INDEPENDENT_MICRO_EXTENT @MAX_EXTENT@
_Static_assert(SCENE_INDEPENDENT_MICRO_EXTENT >= 1 && SCENE_INDEPENDENT_MICRO_EXTENT <= 2,
    "bounded signed-32 raw edges and small temporary sample buffer");

#ifdef SOFTGL_INDEPENDENT_MICRO_AUDIT
static atomic_ullong scene_independent_micro_counts[5];
unsigned long long softgl_scene_independent_micro_audit(unsigned index) {
    return index < 5 ? atomic_load_explicit(&scene_independent_micro_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_INDEPENDENT_MICRO_AUDIT(i,n) atomic_fetch_add_explicit(&scene_independent_micro_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_INDEPENDENT_MICRO_AUDIT(i,n) ((void)0)
#endif

static int scene_independent_micro_msaa4(softgl_ctx *c, scene_geometry_task *task,
    unsigned first, unsigned live, int bin) {
    if (c->fb.samples != 4 || !c->multisample || __builtin_popcount(live) < 2) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    const scene_material *material = &f->materials[task->material];
    if (material->alpha_test) return 0;
    const scene_occlusion_packet *bounds = &task->occlusion_packets[first/4];
    if (!bounds->eligible) return 0;
    SCENE_INDEPENDENT_MICRO_AUDIT(0,1);
    const scene_mesh *mesh = &material->mesh;
    const sg_worker_pool *pool = c->workers;
    const scene_primitive *primitives[4];
    const sg_vec4 *positions[3][4];
    sg_i32x4 vx[3], vy[3], dx[2], dy[2], rows[2], bias[3];
    sg_f32x4 z_vertex[3];
    SG_ALIGN16 int32_t x_coords[3][4], y_coords[3][4], areas[4], xs[4], ys[4];
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
    sg_i32x4 left = _mm_srai_epi32(_mm_min_epi32(_mm_min_epi32(vx[0],vx[1]),vx[2]),8);
    sg_i32x4 right = _mm_srai_epi32(_mm_max_epi32(_mm_max_epi32(vx[0],vx[1]),vx[2]),8);
    sg_i32x4 bottom = _mm_srai_epi32(_mm_min_epi32(_mm_min_epi32(vy[0],vy[1]),vy[2]),8);
    sg_i32x4 top = _mm_srai_epi32(_mm_max_epi32(_mm_max_epi32(vy[0],vy[1]),vy[2]),8);
    sg_i32x4 width = _mm_add_epi32(_mm_sub_epi32(right,left),sg_i32x4_splat(1));
    sg_i32x4 height = _mm_add_epi32(_mm_sub_epi32(top,bottom),sg_i32x4_splat(1));
    sg_i32x4 tiny = _mm_and_si128(_mm_cmplt_epi32(width,sg_i32x4_splat(SCENE_INDEPENDENT_MICRO_EXTENT+1)),
        _mm_cmplt_epi32(height,sg_i32x4_splat(SCENE_INDEPENDENT_MICRO_EXTENT+1)));
    tiny = _mm_and_si128(tiny,_mm_and_si128(
        _mm_and_si128(_mm_cmpgt_epi32(left,sg_i32x4_splat(pool->bins[bin].ix0-1)),
                     _mm_cmplt_epi32(right,sg_i32x4_splat(pool->bins[bin].ix1))),
        _mm_and_si128(_mm_cmpgt_epi32(bottom,sg_i32x4_splat(-1)),
                     _mm_cmplt_epi32(top,sg_i32x4_splat(c->fb.h)))));
    unsigned small = live & sg_mask4_live(tiny);
    SCENE_INDEPENDENT_MICRO_AUDIT(1,__builtin_popcount(small));
    if (__builtin_popcount(small) < 2) return 0;
    SCENE_INDEPENDENT_MICRO_AUDIT(2,1);
    SCENE_INDEPENDENT_MICRO_AUDIT(3,__builtin_popcount(small));
    _mm_store_si128((sg_i32x4 *)xs,left); _mm_store_si128((sg_i32x4 *)ys,bottom);
    /* Non-tiny lanes may span the viewport. Zero them before signed-32
     * products; every retained axis difference is strictly below 512. */
    for (int vertex = 0; vertex < 3; vertex++) {
        vx[vertex] = _mm_and_si128(vx[vertex],tiny);
        vy[vertex] = _mm_and_si128(vy[vertex],tiny);
    }
    sg_i32x4 area = _mm_sub_epi32(_mm_mullo_epi32(_mm_sub_epi32(vx[1],vx[0]),
        _mm_sub_epi32(vy[2],vy[0])),_mm_mullo_epi32(_mm_sub_epi32(vy[1],vy[0]),
        _mm_sub_epi32(vx[2],vx[0])));
    unsigned active = small & sg_mask4_live(_mm_cmpgt_epi32(area,_mm_setzero_si128()));
    _mm_store_si128((sg_i32x4 *)areas,area);
    SG_ALIGN16 float inverses[4];
    for (unsigned lane = 0; lane < 4; lane++)
        inverses[lane] = active & (1u << lane) ? 1.f/(float)areas[lane] : 0.f;
    sg_f32x4 inverse = sg_f32x4_load(inverses);
    sg_i32x4 pixel_x = _mm_and_si128(_mm_slli_epi32(left,8),tiny);
    sg_i32x4 pixel_y = _mm_and_si128(_mm_slli_epi32(bottom,8),tiny);
    for (int edge = 0; edge < 3; edge++) {
        int a = (edge+1)%3, b = (edge+2)%3;
        sg_i32x4 vertical = _mm_sub_epi32(vy[b],vy[a]);
        sg_i32x4 ex = _mm_sub_epi32(_mm_setzero_si128(),vertical);
        sg_i32x4 ey = _mm_sub_epi32(vx[b],vx[a]);
        sg_i32x4 top_left = _mm_or_si128(_mm_cmplt_epi32(vertical,_mm_setzero_si128()),
            _mm_and_si128(_mm_cmpeq_epi32(vertical,_mm_setzero_si128()),
                _mm_cmplt_epi32(ey,_mm_setzero_si128())));
        bias[edge] = _mm_xor_si128(top_left,sg_i32x4_splat(-1));
        if (edge < 2) {
            dx[edge] = ex; dy[edge] = ey;
            rows[edge] = _mm_add_epi32(_mm_mullo_epi32(ey,_mm_sub_epi32(pixel_y,vy[a])),
                _mm_mullo_epi32(ex,_mm_sub_epi32(pixel_x,vx[a])));
        }
    }
    enum { slots = SCENE_INDEPENDENT_MICRO_EXTENT*SCENE_INDEPENDENT_MICRO_EXTENT };
    unsigned covered[slots][4], any[slots];
    sg_f32x4 depths[slots][4];
    for (int py = 0; py < SCENE_INDEPENDENT_MICRO_EXTENT; py++) {
        for (int px = 0; px < SCENE_INDEPENDENT_MICRO_EXTENT; px++) {
            int slot = py*SCENE_INDEPENDENT_MICRO_EXTENT+px;
            unsigned inside = active & sg_mask4_live(_mm_and_si128(
                _mm_cmpgt_epi32(width,sg_i32x4_splat(px)),
                _mm_cmpgt_epi32(height,sg_i32x4_splat(py))));
            sg_i32x4 raw0[4], raw1[4];
            any[slot] = 0;
            for (int sample = 0; sample < 4; sample++) {
                int sx, sy; sg_sample_position(4,sample,&sx,&sy);
                sx += px*256; sy += py*256;
                raw0[sample] = _mm_add_epi32(rows[0],_mm_add_epi32(
                    _mm_mullo_epi32(dx[0],sg_i32x4_splat(sx)),_mm_mullo_epi32(dy[0],sg_i32x4_splat(sy))));
                raw1[sample] = _mm_add_epi32(rows[1],_mm_add_epi32(
                    _mm_mullo_epi32(dx[1],sg_i32x4_splat(sx)),_mm_mullo_epi32(dy[1],sg_i32x4_splat(sy))));
                sg_i32x4 raw2 = _mm_sub_epi32(_mm_sub_epi32(area,raw0[sample]),raw1[sample]);
                covered[slot][sample] = inside & sg_i32x4_mask_nonneg(_mm_or_si128(
                    _mm_or_si128(_mm_add_epi32(raw0[sample],bias[0]),_mm_add_epi32(raw1[sample],bias[1])),
                    _mm_add_epi32(raw2,bias[2])));
                any[slot] |= covered[slot][sample];
            }
            if (!any[slot]) continue;
            for (int sample = 0; sample < 4; sample++) {
                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(raw0[sample]),inverse);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(raw1[sample]),inverse);
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                depths[slot][sample] = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(b0,z_vertex[0]),sg_f32x4_mul(b1,z_vertex[1])),
                    sg_f32x4_mul(b2,z_vertex[2])),sg_f32x4_splat(0.f));
                depths[slot][sample] = sg_f32x4_select(sg_f32x4_lt(depths[slot][sample],sg_f32x4_splat(0.f)),
                    sg_f32x4_splat(0.f),depths[slot][sample]);
                depths[slot][sample] = sg_f32x4_select(sg_f32x4_gt(depths[slot][sample],sg_f32x4_splat(1.f)),
                    sg_f32x4_splat(1.f),depths[slot][sample]);
            }
            _MM_TRANSPOSE4_PS(depths[slot][0],depths[slot][1],depths[slot][2],depths[slot][3]);
        }
    }
    /* Commit every pixel of a triangle before any later triangle, including
     * fallback lanes whose boxes may overlap at different local offsets. */
    for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
        if (!(small & (1u << lane))) {
            scene_packet_fallback(c,&task->primitives[first+lane],bin);
            continue;
        }
        const scene_primitive *p = primitives[lane];
        uint32_t record = UINT32_MAX;
        for (int slot = 0; slot < slots; slot++) {
            if (!(any[slot] & (1u << lane))) continue;
            unsigned coverage = ((covered[slot][0] >> lane)&1u) |
                (((covered[slot][1] >> lane)&1u)<<1) | (((covered[slot][2] >> lane)&1u)<<2) |
                (((covered[slot][3] >> lane)&1u)<<3);
            int x = xs[lane]+slot%SCENE_INDEPENDENT_MICRO_EXTENT;
            int y = ys[lane]+slot/SCENE_INDEPENDENT_MICRO_EXTENT;
            size_t base = ((size_t)y*c->fb.w+x)*4;
            coverage &= sg_mask4_live(sg_f32x4_lt(depths[slot][lane],_mm_loadu_ps(c->fb.sample_depth+base)));
            if (!coverage) continue;
            f->bins[bin].current_primitive = p; c->scene_material = (int)p->material;
            if (record == UINT32_MAX) {
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
                record = scene_triangle_record(f,bin,v,v+1,v+2,edges,inverses[lane],p->material);
                if (record == UINT32_MAX) return 1;
                SCENE_MSAA_AUDIT(1,1);
            }
            SG_ALIGN16 float depth[4]; sg_f32x4_store(depth,depths[slot][lane]);
            uint8_t point = coverage == 15 ? 4 : (uint8_t)__builtin_ctz(coverage);
            scene_msaa_store_pixel(f,c,bin,base,4,coverage,record,point,depth);
            sg_hz_record_pixel(c,x,y,coverage,depth);
            SCENE_INDEPENDENT_MICRO_AUDIT(4,__builtin_popcount(coverage));
        }
    }
    return 1;
}
