#ifdef SOFTGL_TRIANGLE_PACKET_AUDIT
static atomic_ullong scene_triangle_packet_audit[7];
unsigned long long softgl_scene_triangle_packet_audit(unsigned index) {
    return index < 7 ? atomic_load_explicit(&scene_triangle_packet_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_TRI_PACKET_AUDIT(index,value) atomic_fetch_add_explicit(&scene_triangle_packet_audit[index],value,memory_order_relaxed)
#else
#define SCENE_TRI_PACKET_AUDIT(index,value) ((void)0)
#endif

static void scene_geometry_make_packets(struct sg_scene_visibility *f, scene_geometry_task *task) {
    if (!f->quantized || !task->count || atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    unsigned packets = (task->count+3u)/4u;
    if (packets > task->packet_capacity) {
        unsigned capacity = task->packet_capacity ? task->packet_capacity : 64;
        while (capacity < packets) capacity *= 2;
        size_t delta = (size_t)(capacity-task->packet_capacity)*sizeof(scene_triangle_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->packets = next; task->packet_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }
    }
    const scene_mesh *m = &f->materials[task->material].mesh;
    for (unsigned k = 0; k < task->count; k += 4) {
        scene_triangle_packet *packet = &task->packets[k/4];
        unsigned count = task->count-k; if (count > 4) count = 4;
        __m128 eligible = _mm_castsi128_ps(_mm_set1_epi32(-1));
        for (unsigned vertex = 0; vertex < 3; vertex++) {
            __m128 ndc[4];
            for (unsigned lane = 0; lane < 4; lane++) {
                const scene_primitive *p = &task->primitives[k+(lane < count ? lane : 0)];
                const sg_vec4 *v = p->clipped == UINT32_MAX ?
                    &f->geometry->positions[m->offset+p->indices[vertex]-m->minimum].ndc :
                    &task->clipped[p->clipped].ndc[vertex];
                ndc[lane] = _mm_load_ps(&v->x);
            }
            _MM_TRANSPOSE4_PS(ndc[0],ndc[1],ndc[2],ndc[3]);
            eligible = _mm_and_ps(eligible,_mm_and_ps(
                _mm_and_ps(_mm_cmpge_ps(ndc[0],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[0],_mm_set1_ps(641.f))),
                _mm_and_ps(_mm_cmpge_ps(ndc[1],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[1],_mm_set1_ps(361.f)))));
            __m128i x = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[0],_mm_set1_ps(16.f)));
            __m128i y = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[1],_mm_set1_ps(16.f)));
            __m128i xy = _mm_or_si128(_mm_and_si128(x,_mm_set1_epi32(65535)),_mm_slli_epi32(y,16));
            _mm_store_si128((__m128i *)packet->xy[vertex],xy);
            _mm_store_ps(packet->zw[vertex][0],ndc[2]);
            _mm_store_ps(packet->zw[vertex][1],ndc[3]);
        }
        packet->eligible = (unsigned)_mm_movemask_ps(eligible) & ((1u << count)-1u);
        SCENE_TRI_PACKET_AUDIT(0,count);
        SCENE_TRI_PACKET_AUDIT(1,1);
    }
}

static void scene_packet_fallback(softgl_ctx *c, const scene_primitive *p, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_geometry *g = f->geometry; sg_worker_pool *pool = c->workers;
    const scene_mesh *m = &f->materials[p->material].mesh;
    const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL : &g->tasks[p->task].clipped[p->clipped];
    sg_vert v[3];
    for (int j = 0; j < 3; j++) {
        v[j].ndc = clipped ? clipped->ndc[j] : g->positions[m->offset+p->indices[j]-m->minimum].ndc;
        v[j].color.w = 1.f;
        if (f->materials[p->material].alpha_test) {
            const float *uv = clipped ? clipped->coordinates[j] :
                (const float *)((const uint8_t *)m->coordinates+(size_t)p->indices[j]*m->stride);
            v[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
        }
    }
    f->current_primitive[bin] = p; c->scene_material = (int)p->material;
    sg_scene_visibility_triangle(c,v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);
}

static void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,
    unsigned first, unsigned live, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    sg_worker_pool *pool = c->workers;
    SCENE_TRI_PACKET_AUDIT(2,1);
    SCENE_TRI_PACKET_AUDIT(5,live != 15);
    SCENE_TRI_PACKET_AUDIT(6,live == 15);
    if (!f->quantized) {
        for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
            SCENE_TRI_PACKET_AUDIT(4,1);
            scene_packet_fallback(c,&task->primitives[first+lane],bin);
        }
        return;
    }
    const scene_triangle_packet *packet = &task->packets[first/4];
    int32_t x[3][4], y[3][4], areas[4], left[4], right[4], bottom[4], top[4];
    __m128i vx[3], vy[3];
    for (unsigned j = 0; j < 3; j++) {
        __m128i xy = _mm_load_si128((const __m128i *)packet->xy[j]);
        vx[j] = _mm_srai_epi32(_mm_slli_epi32(xy,16),16);
        vy[j] = _mm_srai_epi32(xy,16);
        _mm_storeu_si128((__m128i *)x[j],vx[j]);
        _mm_storeu_si128((__m128i *)y[j],vy[j]);
    }
    __m128i area = _mm_sub_epi32(
        _mm_mullo_epi32(_mm_sub_epi32(vx[1],vx[0]),_mm_sub_epi32(vy[2],vy[0])),
        _mm_mullo_epi32(_mm_sub_epi32(vy[1],vy[0]),_mm_sub_epi32(vx[2],vx[0])));
    __m128i minx = _mm_min_epi32(_mm_min_epi32(vx[0],vx[1]),vx[2]);
    __m128i maxx = _mm_max_epi32(_mm_max_epi32(vx[0],vx[1]),vx[2]);
    __m128i miny = _mm_min_epi32(_mm_min_epi32(vy[0],vy[1]),vy[2]);
    __m128i maxy = _mm_max_epi32(_mm_max_epi32(vy[0],vy[1]),vy[2]);
    __m128i one = _mm_set1_epi32(1);
    _mm_storeu_si128((__m128i *)areas,area);
    _mm_storeu_si128((__m128i *)left,_mm_max_epi32(_mm_srai_epi32(minx,4),_mm_set1_epi32(pool->bins[bin].ix0)));
    _mm_storeu_si128((__m128i *)right,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxx,4),one),_mm_set1_epi32(pool->bins[bin].ix1)));
    _mm_storeu_si128((__m128i *)bottom,_mm_max_epi32(_mm_srai_epi32(miny,4),_mm_setzero_si128()));
    _mm_storeu_si128((__m128i *)top,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxy,4),one),_mm_set1_epi32(c->fb.h)));
    for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
        const scene_primitive *p = &task->primitives[first+lane];
        if (!(packet->eligible & (1u << lane))) {
            SCENE_TRI_PACKET_AUDIT(4,1);
            scene_packet_fallback(c,p,bin); continue;
        }
        SCENE_TRI_PACKET_AUDIT(3,1);
        if (areas[lane] <= 0 || left[lane] >= right[lane] || bottom[lane] >= top[lane]) continue;
        f->current_primitive[bin] = p; c->scene_material = (int)p->material;
        scene_packet_triangle(c,p,packet,lane,x,y,areas[lane],left[lane],right[lane],bottom[lane],top[lane],bin);
    }
}
