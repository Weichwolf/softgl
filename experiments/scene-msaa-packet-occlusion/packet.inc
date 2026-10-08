#ifdef SOFTGL_MSAA_PACKET_OCCLUSION_AUDIT
static atomic_ullong scene_occlusion_counts[4];
unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_occlusion_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_OCCLUSION_AUDIT(i,n) atomic_fetch_add_explicit(&scene_occlusion_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_OCCLUSION_AUDIT(i,n) ((void)0)
#endif

static void scene_geometry_occlusion_packets(struct sg_scene_visibility *f,
    scene_geometry_task *task) {
    if (!f->context->fb.samples || !task->count ||
        atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    unsigned packets = (task->count+SCENE_OCCLUSION_PACKET_TRIANGLES-1)/SCENE_OCCLUSION_PACKET_TRIANGLES;
    if (packets > task->occlusion_capacity) {
        unsigned capacity = task->occlusion_capacity ? task->occlusion_capacity : 64;
        while (capacity < packets) capacity *= 2;
        size_t delta = (size_t)(capacity-task->occlusion_capacity)*sizeof(scene_occlusion_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_occlusion_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->occlusion_packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->occlusion_packets = next; task->occlusion_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }
    }
    const scene_mesh *m = &f->materials[task->material].mesh;
    for (unsigned first = 0; first < task->count; first += SCENE_OCCLUSION_PACKET_TRIANGLES) {
        scene_occlusion_packet *packet = &task->occlusion_packets[first/SCENE_OCCLUSION_PACKET_TRIANGLES];
        __m128 minimum = _mm_set1_ps(INFINITY), maximum = _mm_set1_ps(-INFINITY);
        unsigned count = task->count-first;
        if (count > SCENE_OCCLUSION_PACKET_TRIANGLES) count = SCENE_OCCLUSION_PACKET_TRIANGLES;
        for (unsigned lane = 0; lane < count; lane++) {
            const scene_primitive *p = &task->primitives[first+lane];
            for (unsigned vertex = 0; vertex < 3; vertex++) {
                const sg_vec4 *v = p->clipped == UINT32_MAX ?
                    &f->geometry->positions[m->offset+p->indices[vertex]-m->minimum].ndc :
                    &task->clipped[p->clipped].ndc[vertex];
                __m128 ndc = _mm_load_ps(&v->x);
                minimum = _mm_min_ps(minimum,ndc); maximum = _mm_max_ps(maximum,ndc);
            }
        }
        SG_ALIGN16 float lo[4], hi[4];
        _mm_store_ps(lo,minimum); _mm_store_ps(hi,maximum);
        packet->eligible = 0;
        /* Positions are already finite; unsupported/clipped depth ranges
         * and uncertain coordinates retain individual rasterization. */
        if (!(f->context->fb.w <= UINT16_MAX && f->context->fb.h <= UINT16_MAX &&
              lo[0] >= -1.f && hi[0] <= (float)f->context->fb.w+1.f &&
              lo[1] >= -1.f && hi[1] <= (float)f->context->fb.h+1.f &&
              lo[2] >= 0.f && hi[2] <= 1.f)) continue;
        int left = sg_fp_screen_from_float(lo[0]) >> 8;
        int right = (sg_fp_screen_from_float(hi[0]) >> 8)+1;
        int bottom = sg_fp_screen_from_float(lo[1]) >> 8;
        int top = (sg_fp_screen_from_float(hi[1]) >> 8)+1;
        if (left < 0) left = 0; if (right > f->context->fb.w) right = f->context->fb.w;
        if (bottom < 0) bottom = 0; if (top > f->context->fb.h) top = f->context->fb.h;
        if (left >= right || bottom >= top) continue;
        packet->left = (uint16_t)left; packet->right = (uint16_t)right;
        packet->bottom = (uint16_t)bottom; packet->top = (uint16_t)top;
        packet->near = lo[2]; packet->eligible = 1;
        SCENE_OCCLUSION_AUDIT(0,1);
    }
}

static inline int scene_occlusion_packet_hidden(softgl_ctx *c,
    const scene_geometry_task *task, unsigned first, unsigned live, int bin) {
    if (!c->fb.samples) return 0;
    const scene_occlusion_packet *packet = &task->occlusion_packets[first/SCENE_OCCLUSION_PACKET_TRIANGLES];
    if (!packet->eligible) return 0;
    const sg_worker_pool *pool = c->workers;
    const sg_worker_bin *stripe = &pool->bins[bin];
    int left = packet->left > stripe->ix0 ? packet->left : stripe->ix0;
    int right = packet->right < stripe->ix1 ? packet->right : stripe->ix1;
    if (left >= right) return 0;
    SCENE_OCCLUSION_AUDIT(1,1);
    /* A group minimum bounds every covered vertex-depth interpolation.
     * The existing query subtracts its proven 2e-6 margin and requires all
     * actual samples in every intersecting cell to be written. */
    int hidden = sg_hz_occluded(c,left,packet->bottom,right,packet->top,
        packet->near,packet->near,packet->near,0.f);
    if (hidden) {
        SCENE_OCCLUSION_AUDIT(2,1);
        SCENE_OCCLUSION_AUDIT(3,(unsigned)__builtin_popcount(live));
    }
#ifdef SOFTGL_OCCLUSION_CENSUS_ONLY
    return 0;
#else
    return hidden;
#endif
}
