/* Four independent unclipped triangles, preserving accepted 16.8 setup. */
static int scene_geometry_packet(struct sg_scene_visibility *f, scene_geometry_task *task,
    const scene_mesh *m, uint32_t first) {
    uint32_t indices[4][3], positions[4][3];
    for (int lane = 0; lane < 4; lane++) {
        unsigned any = 0;
        for (int j = 0; j < 3; j++) {
            indices[lane][j] = m->indices[first+(uint32_t)lane*3+(uint32_t)j];
            positions[lane][j] = m->offset+indices[lane][j]-m->minimum;
            any |= f->geometry->outcodes[positions[lane][j]];
        }
        if (any) return 0; /* Original scalar clipping at the original position. */
    }
    __m128 vx[3], vy[3];
    for (int j = 0; j < 3; j++) {
        __m128 a = _mm_load_ps(&f->geometry->positions[positions[0][j]].ndc.x);
        __m128 b = _mm_load_ps(&f->geometry->positions[positions[1][j]].ndc.x);
        __m128 c = _mm_load_ps(&f->geometry->positions[positions[2][j]].ndc.x);
        __m128 d = _mm_load_ps(&f->geometry->positions[positions[3][j]].ndc.x);
        _MM_TRANSPOSE4_PS(a,b,c,d);
        /* Finite canonical coordinates fit signed 16.8 screen arithmetic.
         * Unexpected ranges keep the old complete scalar failure behavior. */
        unsigned safe = (unsigned)_mm_movemask_ps(_mm_and_ps(
            _mm_and_ps(_mm_cmpge_ps(a,_mm_set1_ps(-1.f)),_mm_cmple_ps(a,_mm_set1_ps(641.f))),
            _mm_and_ps(_mm_cmpge_ps(b,_mm_set1_ps(-1.f)),_mm_cmple_ps(b,_mm_set1_ps(361.f)))));
        if (safe != 15) return 0;
        vx[j] = a; vy[j] = b;
    }
    __m128 area = _mm_sub_ps(_mm_mul_ps(_mm_sub_ps(vx[1],vx[0]),_mm_sub_ps(vy[2],vy[0])),
                            _mm_mul_ps(_mm_sub_ps(vy[1],vy[0]),_mm_sub_ps(vx[2],vx[0])));
    unsigned live = (unsigned)_mm_movemask_ps(_mm_cmpge_ps(
        _mm_andnot_ps(_mm_set1_ps(-0.f),area),_mm_set1_ps(1e-10f)));
    unsigned negative = (unsigned)_mm_movemask_ps(_mm_cmplt_ps(area,_mm_setzero_ps()));
    if (m->cull_enabled) {
        unsigned front = m->front_face == GL_CCW ? (unsigned)_mm_movemask_ps(_mm_cmpgt_ps(area,_mm_setzero_ps())) : negative;
        if (m->cull_face == GL_FRONT_AND_BACK) live = 0;
        else if (m->cull_face == GL_FRONT) live &= ~front;
        else if (m->cull_face == GL_BACK) live &= front;
    }
    if (!live) return 1;
    __m128i x[3], y[3]; int32_t sx[3][4], sy[3][4], first_x[4], last_x[4], bottom[4], top[4];
    for (int j = 0; j < 3; j++) {
        x[j] = sg_f32x4_trunc_i32(_mm_mul_ps(vx[j],_mm_set1_ps(256.f)));
        y[j] = sg_f32x4_trunc_i32(_mm_mul_ps(vy[j],_mm_set1_ps(256.f)));
        _mm_storeu_si128((__m128i *)sx[j],x[j]); _mm_storeu_si128((__m128i *)sy[j],y[j]);
    }
    __m128i minx = _mm_min_epi32(_mm_min_epi32(x[0],x[1]),x[2]);
    __m128i maxx = _mm_max_epi32(_mm_max_epi32(x[0],x[1]),x[2]);
    __m128i miny = _mm_min_epi32(_mm_min_epi32(y[0],y[1]),y[2]);
    __m128i maxy = _mm_max_epi32(_mm_max_epi32(y[0],y[1]),y[2]);
    _mm_storeu_si128((__m128i *)first_x,_mm_max_epi32(_mm_srai_epi32(minx,8),_mm_setzero_si128()));
    _mm_storeu_si128((__m128i *)last_x,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxx,8),_mm_set1_epi32(1)),_mm_set1_epi32(640)));
    _mm_storeu_si128((__m128i *)bottom,_mm_max_epi32(_mm_srai_epi32(miny,8),_mm_setzero_si128()));
    _mm_storeu_si128((__m128i *)top,_mm_min_epi32(_mm_add_epi32(_mm_srai_epi32(maxy,8),_mm_set1_epi32(1)),_mm_set1_epi32(360)));
    for (int lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
        scene_primitive p; memcpy(p.indices,indices[lane],sizeof(p.indices));
        int32_t px[3], py[3];
        for (int j = 0; j < 3; j++) { px[j] = sx[j][lane]; py[j] = sy[j][lane]; }
        if (negative & (1u << lane)) {
            uint32_t index = p.indices[1]; p.indices[1] = p.indices[2]; p.indices[2] = index;
            int32_t temp = px[1]; px[1] = px[2]; px[2] = temp;
            temp = py[1]; py[1] = py[2]; py[2] = temp;
        }
        int64_t fixed_area = (int64_t)(px[1]-px[0])*(py[2]-py[0])-(int64_t)(py[1]-py[0])*(px[2]-px[0]);
        if (fixed_area <= 0 || first_x[lane] >= last_x[lane] || bottom[lane] >= top[lane]) continue;
        if (last_x[lane]-first_x[lane] == 1 && top[lane]-bottom[lane] == 1) {
            int32_t x_sample = first_x[lane]*256+128, y_sample = bottom[lane]*256+128;
            int covered = 1;
            for (int j = 0; j < 3; j++) {
                int k = (j+1)%3;
                int64_t edge = (int64_t)(px[k]-px[j])*(y_sample-py[j])-(int64_t)(py[k]-py[j])*(x_sample-px[j]);
                int bias = (py[k]-py[j] < 0 || (py[k] == py[j] && px[k]-px[j] < 0)) ? 0 : -1;
                if (edge+bias < 0) { covered = 0; break; }
            }
            if (!covered) continue;
        }
        scene_geometry_store(f,task,&p,first_x[lane],last_x[lane],NULL);
    }
    return 1;
}
