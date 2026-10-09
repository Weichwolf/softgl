/* Explicit primitive/reciprocal-W capture; no temporary full vertices. */
static uint32_t scene_small_setup_record(struct sg_scene_visibility *f, int bin,
    const scene_primitive *p, const sg_vec4 *ndc[3], int64_t edges[2][3], float inverse) {
    scene_bin *b = &f->bins[bin];
    if (b->count == b->capacity) {
        uint32_t capacity = b->capacity ? b->capacity*2 : 1024;
        size_t delta = (size_t)(capacity-b->capacity)*sizeof(scene_triangle);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle *next = NULL;
        if (delta <= SCENE_TRIANGLE_BYTES-f->triangle_bytes)
            next = realloc(b->triangles,(size_t)capacity*sizeof(*next));
        if (next) {
            b->triangles = next; b->capacity = capacity; f->triangle_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed); return UINT32_MAX;
        }
    }
    uint32_t index = b->count++;
    scene_triangle *t = &b->triangles[index];
    t->primitive = p;
    for (int j = 0; j < 3; j++) t->inverse_w[j] = ndc[j]->w;
    memcpy(t->edge,edges,sizeof(t->edge)); t->inverse_area = inverse;
    t->material = p->material;
    return ((uint32_t)bin << SCENE_INDEX_BITS) | index;
}

static void scene_small_setup_draw(softgl_ctx *c, scene_geometry_task *task,
    unsigned index, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    const scene_primitive *p = &task->primitives[index];
    const scene_small_setup *setup = &task->small_setups[index];
    const scene_mesh *m = &f->materials[p->material].mesh;
    const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL :
        &task->clipped[p->clipped];
    const sg_vec4 *ndc[3];
    for (int j = 0; j < 3; j++) ndc[j] = clipped ? &clipped->ndc[j] :
        &f->geometry->positions[m->offset+p->indices[j]-m->minimum].ndc;
    int origin_x = (int)(setup->origin & 1023u)-1;
    int origin_y = (int)((setup->origin >> 10) & 511u)-1;
    int left = origin_x, right = origin_x+(int)((setup->origin >> 19) & 15u)+1;
    int bottom = origin_y, top = origin_y+(int)((setup->origin >> 23) & 15u)+1;
    sg_worker_pool *pool = c->workers;
    if (left < pool->bins[bin].ix0) left = pool->bins[bin].ix0;
    if (right > pool->bins[bin].ix1) right = pool->bins[bin].ix1;
    if (bottom < 0) bottom = 0; if (top > c->fb.h) top = c->fb.h;
    if (left >= right || bottom >= top) return;
    if (sg_hz_occluded4(c,left,bottom,right,top,ndc[0]->z,ndc[1]->z,ndc[2]->z,0.f)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return;
    }
    int32_t vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        vx[j] = (int32_t)(setup->xy[j] & 65535u);
        vy[j] = (int32_t)(setup->xy[j] >> 16);
    }
    /* Local coordinates fit 12 bits. Every rectangle/sample product remains
     * below 2*4095*4352; global reconstruction is used only for the record. */
    _Static_assert(SOFTGL_SMALL_MSAA_EXTENT > 0 && SOFTGL_SMALL_MSAA_EXTENT <= 16,
        "exact local edge and origin encoding proof");
    int32_t area = (vx[1]-vx[0])*(vy[2]-vy[0])-(vy[1]-vy[0])*(vx[2]-vx[0]);
    if (area <= 0) return;
    int32_t dx[3], dy[3], row[3], bias[3];
    sg_i32x4 coverage_offset[3];
    for (int e = 0; e < 3; e++) {
        int a = (e+1)%3, b = (e+2)%3;
        dx[e] = -(vy[b]-vy[a]); dy[e] = vx[b]-vx[a];
        row[e] = dy[e]*((bottom-origin_y)*256-vy[a])+
            dx[e]*((left-origin_x)*256-vx[a]);
        bias[e] = (vy[b]-vy[a] < 0 || (vy[b] == vy[a] && vx[b]-vx[a] < 0)) ? 0 : -1;
        int32_t offset[4];
        for (int s = 0; s < 4; s++) {
            int sx, sy; sg_sample_position(4,s,&sx,&sy);
            offset[s] = dx[e]*sx+dy[e]*sy+bias[e];
        }
        coverage_offset[e] = sg_i32x4_set(offset[0],offset[1],offset[2],offset[3]);
    }
    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);
    sg_f32x4 z0 = sg_f32x4_splat(ndc[0]->z), z1 = sg_f32x4_splat(ndc[1]->z);
    sg_f32x4 z2 = sg_f32x4_splat(ndc[2]->z);
    sg_i32x4 bias0 = sg_i32x4_splat(bias[0]), bias1 = sg_i32x4_splat(bias[1]);
    uint32_t record = UINT32_MAX;
    f->bins[bin].current_primitive = p; c->scene_material = p->material;
    SCENE_LOCAL_SETUP_AUDIT(2,1);
    for (int y = bottom; y < top; y++) {
        int32_t edge[3] = {row[0],row[1],row[2]};
        for (int x = left; x < right; x++) {
            sg_i32x4 e0 = sg_i32x4_add(sg_i32x4_splat(edge[0]),coverage_offset[0]);
            sg_i32x4 e1 = sg_i32x4_add(sg_i32x4_splat(edge[1]),coverage_offset[1]);
            sg_i32x4 e2 = sg_i32x4_add(sg_i32x4_splat(edge[2]),coverage_offset[2]);
            unsigned coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(e0,e1),e2));
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
                    if (record == UINT32_MAX) {
                        if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
                        int64_t stored[2][3];
                        for (int k = 0; k < 2; k++) {
                            int a = (k+1)%3;
                            stored[k][0] = (int64_t)dy[k]*(128-(vy[a]+origin_y*256))+
                                (int64_t)dx[k]*(128-(vx[a]+origin_x*256));
                            stored[k][1] = (int64_t)dx[k]*256;
                            stored[k][2] = (int64_t)dy[k]*256;
                        }
                        record = scene_small_setup_record(f,bin,p,ndc,stored,inverse);
                        if (record == UINT32_MAX) return;
                        SCENE_MSAA_AUDIT(1,1);
                    }
                    float depths[4]; sg_f32x4_store(depths,z);
                    uint8_t point = coverage == 15 ? 4 : (uint8_t)__builtin_ctz(coverage);
                    SCENE_MSAA_AUDIT(3,point == 4);
                    scene_msaa_store_pixel(f,c,bin,base,4,coverage,record,point,depths);
                    sg_hz_record_pixel4(c,x,y,coverage,depths);
                    SCENE_LOCAL_SETUP_AUDIT(3,1);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
                    sg_scene_msaa_hz_count(0);
#endif
                }
            }
            for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
        }
        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;
    }
}
