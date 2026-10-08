/* Four triangles share fixed-coordinate conversion, bounds and exact i64 area
 * preparation. Packets survive all immutable references of this frame. */
static void scene_geometry_make_msaa_packets(struct sg_scene_visibility *f, scene_geometry_task *task) {
    if (!task->count || atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    unsigned packets = (task->count+3u)/4u;
    if (packets > task->msaa_packet_capacity) {
        unsigned capacity = task->msaa_packet_capacity ? task->msaa_packet_capacity : 64;
        while (capacity < packets) capacity *= 2;
        size_t delta = (size_t)(capacity-task->msaa_packet_capacity)*sizeof(scene_msaa_triangle_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_msaa_triangle_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->msaa_packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->msaa_packets = next; task->msaa_packet_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }
    }
    const scene_mesh *m = &f->materials[task->material].mesh;
    for (unsigned k = 0; k < task->count; k += 4) {
        scene_msaa_triangle_packet *packet = &task->msaa_packets[k/4];
        unsigned count = task->count-k; if (count > 4) count = 4;
        __m128 eligible = _mm_castsi128_ps(_mm_set1_epi32(-1));
        __m128i x[3], y[3];
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
                _mm_and_ps(_mm_cmpge_ps(ndc[0],_mm_set1_ps(-1.f)),
                    _mm_cmple_ps(ndc[0],_mm_set1_ps((float)f->context->fb.w+1.f))),
                _mm_and_ps(_mm_cmpge_ps(ndc[1],_mm_set1_ps(-1.f)),
                    _mm_cmple_ps(ndc[1],_mm_set1_ps((float)f->context->fb.h+1.f)))));
            x[vertex] = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[0],_mm_set1_ps(256.f)));
            y[vertex] = sg_f32x4_trunc_i32(_mm_mul_ps(ndc[1],_mm_set1_ps(256.f)));
            _mm_store_si128((__m128i *)packet->x[vertex],x[vertex]);
            _mm_store_si128((__m128i *)packet->y[vertex],y[vertex]);
            _mm_store_ps(packet->zw[vertex][0],ndc[2]);
            _mm_store_ps(packet->zw[vertex][1],ndc[3]);
        }
        /* SSE4.1/WASM SIMD128 signed 32x32 -> 64 products retain large areas.
         * Bounded eligible screen coordinates make the subtractions exact. */
        __m128i ax = _mm_sub_epi32(x[1],x[0]), ay = _mm_sub_epi32(y[1],y[0]);
        __m128i bx = _mm_sub_epi32(x[2],x[0]), by = _mm_sub_epi32(y[2],y[0]);
        __m128i even = _mm_sub_epi64(_mm_mul_epi32(ax,by),_mm_mul_epi32(ay,bx));
        __m128i odd = _mm_sub_epi64(_mm_mul_epi32(_mm_srli_si128(ax,4),_mm_srli_si128(by,4)),
            _mm_mul_epi32(_mm_srli_si128(ay,4),_mm_srli_si128(bx,4)));
        _mm_store_si128((__m128i *)packet->area,_mm_unpacklo_epi64(even,odd));
        _mm_store_si128((__m128i *)(packet->area+2),_mm_unpackhi_epi64(even,odd));
        __m128i minx = _mm_min_epi32(_mm_min_epi32(x[0],x[1]),x[2]);
        __m128i maxx = _mm_max_epi32(_mm_max_epi32(x[0],x[1]),x[2]);
        __m128i miny = _mm_min_epi32(_mm_min_epi32(y[0],y[1]),y[2]);
        __m128i maxy = _mm_max_epi32(_mm_max_epi32(y[0],y[1]),y[2]);
        __m128i zero = _mm_setzero_si128(), one = _mm_set1_epi32(1);
        _mm_store_si128((__m128i *)packet->bounds[0],_mm_max_epi32(_mm_srai_epi32(minx,8),zero));
        _mm_store_si128((__m128i *)packet->bounds[1],_mm_min_epi32(
            _mm_add_epi32(_mm_srai_epi32(maxx,8),one),_mm_set1_epi32(f->context->fb.w)));
        _mm_store_si128((__m128i *)packet->bounds[2],_mm_max_epi32(_mm_srai_epi32(miny,8),zero));
        _mm_store_si128((__m128i *)packet->bounds[3],_mm_min_epi32(
            _mm_add_epi32(_mm_srai_epi32(maxy,8),one),_mm_set1_epi32(f->context->fb.h)));
        packet->eligible = (unsigned)_mm_movemask_ps(eligible) & ((1u << count)-1u);
#ifdef SOFTGL_MSAA_PACKET_FORCE_FALLBACK
        packet->eligible = 0; /* Private guard-path oracle, never timed. */
#endif
        SCENE_MSAA_PACKET_AUDIT(0,count);
    }
}
