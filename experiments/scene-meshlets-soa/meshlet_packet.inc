/* Emit packet data while the small group's transformed positions are live. */
#if SG_MESHLET_PACKET_SIMD
static int scene_meshlet_flush_packet(struct sg_scene_visibility *f, scene_geometry_task *task, unsigned count) {
    scene_triangle_packet *packet = &task->packets[task->count/4];
    __m128 eligible = _mm_castsi128_ps(_mm_set1_epi32(-1));
    for (unsigned j = 0; j < 3; j++) {
        __m128 ndc[4];
        for (unsigned lane = 0; lane < 4; lane++)
            ndc[lane] = _mm_load_ps(&task->packet_input[j][lane < count ? lane : 0].x);
        _MM_TRANSPOSE4_PS(ndc[0],ndc[1],ndc[2],ndc[3]);
        eligible = _mm_and_ps(eligible,_mm_and_ps(
            _mm_and_ps(_mm_cmpge_ps(ndc[0],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[0],_mm_set1_ps(641.f))),
            _mm_and_ps(_mm_cmpge_ps(ndc[1],_mm_set1_ps(-1.f)),_mm_cmple_ps(ndc[1],_mm_set1_ps(361.f)))));
        __m128i x = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[0],_mm_set1_ps(16.f)));
        __m128i y = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[1],_mm_set1_ps(16.f)));
        __m128i xy = _mm_or_si128(_mm_and_si128(x,_mm_set1_epi32(65535)),_mm_slli_epi32(y,16));
        _mm_store_si128((__m128i *)packet->xy[j],xy);
        _mm_store_ps(packet->zw[j][0],ndc[2]); _mm_store_ps(packet->zw[j][1],ndc[3]);
    }
    unsigned active = (1u << count)-1u;
    packet->eligible = (unsigned)_mm_movemask_ps(eligible) & active;
    if (packet->eligible != active) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0; }
    SCENE_MESHLET_AUDIT(6,1);
    return 1;
}
#endif

static int scene_meshlet_store_packet(struct sg_scene_visibility *f, scene_geometry_task *task,
    const sg_vec4 ndc[3], int reverse, int clipped) {
    unsigned at = task->count/4;
    if (at >= task->packet_capacity) {
        unsigned capacity = task->packet_capacity ? task->packet_capacity*2 : 64;
        size_t delta = (size_t)(capacity-task->packet_capacity)*sizeof(scene_triangle_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->packets = next; task->packet_capacity = capacity; f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0; }
    }
    unsigned lane = task->count & 3u;
#if SG_MESHLET_PACKET_SIMD
    for (unsigned j = 0; j < 3; j++)
        task->packet_input[j][lane] = ndc[reverse && !clipped && j ? 3-j : j];
    if (lane == 3 && !scene_meshlet_flush_packet(f,task,4)) return 0;
#else
    scene_triangle_packet *packet = &task->packets[at];
    if (!lane) memset(packet,0,sizeof(*packet));
    for (unsigned j = 0; j < 3; j++) {
        const sg_vec4 *v = &ndc[reverse && !clipped && j ? 3-j : j];
        if (v->x < -1.f || v->x > 641.f || v->y < -1.f || v->y > 361.f) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0;
        }
        int32_t x = (int32_t)(v->x*16.f), y = (int32_t)(v->y*16.f);
        packet->xy[j][lane] = ((uint32_t)y << 16)|((uint32_t)x & 65535u);
        packet->zw[j][0][lane] = v->z; packet->zw[j][1][lane] = v->w;
    }
    packet->eligible |= 1u << lane;
#endif
    SCENE_MESHLET_AUDIT(5,1);
    return 1;
}
