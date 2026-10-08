#if SG_MESHLET_CLIP_BOUNDS
/* Float interval operations follow the fast shader's exact arithmetic tree.
 * IEEE multiplication/addition are monotone; uncertainty never rejects. */
static int scene_meshlet_classify(const scene_mesh *m, const float lower[3], const float upper[3]) {
    if (!scene_geometry_fast_matrix(m)) return 0;
    float eye[3][2], clip[4][2], low[6], high[6];
    for (int row = 0; row < 3; row++) {
        const float *v = m->modelview.m;
        for (int bound = 0; bound < 2; bound++) {
            float values[3];
            for (int axis = 0; axis < 3; axis++) {
                float coefficient = v[row+axis*4];
                values[axis] = coefficient*((coefficient < 0.f) != bound ? upper[axis] : lower[axis]);
            }
            eye[row][bound] = (values[0]+values[1])+(values[2]+v[row+12]);
            if (!isfinite(eye[row][bound])) return 0;
        }
    }
    for (int axis = 0; axis < 3; axis++) {
        float coefficient = m->projection.m[axis*5];
        for (int bound = 0; bound < 2; bound++) {
            float value = coefficient*eye[axis][bound ^ (coefficient < 0.f)];
            clip[axis][bound] = axis == 2 ? value+m->projection.m[14] : value;
        }
    }
    clip[3][0] = -eye[2][1]; clip[3][1] = -eye[2][0];
    for (int axis = 0; axis < 4; axis++) for (int bound = 0; bound < 2; bound++)
        if (!isfinite(clip[axis][bound])) return 0;
    for (int axis = 0; axis < 3; axis++) {
        low[axis*2] = clip[axis][0]+clip[3][0]; high[axis*2] = clip[axis][1]+clip[3][1];
        low[axis*2+1] = -clip[axis][1]+clip[3][0]; high[axis*2+1] = -clip[axis][0]+clip[3][1];
        if (!isfinite(low[axis*2]) || !isfinite(high[axis*2]) ||
            !isfinite(low[axis*2+1]) || !isfinite(high[axis*2+1])) return 0;
    }
    int inside = 1;
    for (int plane = 0; plane < 6; plane++) {
        if (high[plane] < 0.f) return -1;
        if (low[plane] < 0.f) inside = 0;
    }
    return inside;
}
#endif

static int scene_meshlet_positions(struct sg_scene_visibility *f, const scene_mesh *m,
    const scene_meshlet *group, scene_position out[64], uint8_t codes[64], int fully_inside) {
    if (scene_geometry_fast_matrix(m)) {
        SCENE_MESHLET_AUDIT(9,group->vertex_count);
        __m128 matrix[3][4];
        for (int row = 0; row < 3; row++) for (int col = 0; col < 4; col++)
            matrix[row][col] = _mm_set1_ps(m->modelview.m[row+col*4]);
        __m128 px = _mm_set1_ps(m->projection.m[0]), py = _mm_set1_ps(m->projection.m[5]);
        __m128 pz = _mm_set1_ps(m->projection.m[10]), pt = _mm_set1_ps(m->projection.m[14]);
        for (unsigned i = 0; i < group->vertex_count; i += 4) {
            __m128 x = _mm_load_ps(group->positions[0]+i);
            __m128 y = _mm_load_ps(group->positions[1]+i);
            __m128 z = _mm_load_ps(group->positions[2]+i);
            __m128 eye[3];
            for (int row = 0; row < 3; row++)
                eye[row] = _mm_add_ps(_mm_add_ps(_mm_mul_ps(matrix[row][0],x),_mm_mul_ps(matrix[row][1],y)),
                    _mm_add_ps(_mm_mul_ps(matrix[row][2],z),matrix[row][3]));
            __m128 clip[4] = {_mm_mul_ps(px,eye[0]),_mm_mul_ps(py,eye[1]),
                _mm_add_ps(_mm_mul_ps(pz,eye[2]),pt),_mm_xor_ps(eye[2],_mm_set1_ps(-0.f))};
            _MM_TRANSPOSE4_PS(clip[0],clip[1],clip[2],clip[3]);
            for (unsigned lane = 0; lane < 4 && i+lane < group->vertex_count; lane++) {
                sg_vec4 v; _mm_store_ps(&v.x,clip[lane]);
                if (!isfinite(v.x) || !isfinite(v.y) || !isfinite(v.z) || !isfinite(v.w)) {
                    scene_geometry_fail(f); return 0;
                }
                out[i+lane].clip = v; out[i+lane].ndc = scene_viewport(v);
                unsigned outside = 0;
                if (!fully_inside) for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&v,plane) < 0.f) outside |= 1u << plane;
                codes[i+lane] = (uint8_t)outside;
            }
        }
    } else for (unsigned i = 0; i < group->vertex_count; i++) {
        sg_vec4 source = {group->positions[0][i],group->positions[1][i],group->positions[2][i],1.f}, eye, clip;
        sg_mat4_mul_vec4(&eye,&m->modelview,&source); sg_mat4_mul_vec4(&clip,&m->projection,&eye);
        if (!isfinite(clip.x) || !isfinite(clip.y) || !isfinite(clip.z) || !isfinite(clip.w)) {
            scene_geometry_fail(f); return 0;
        }
        out[i].clip = clip; out[i].ndc = scene_viewport(clip);
        unsigned outside = 0;
        for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&clip,plane) < 0.f) outside |= 1u << plane;
        codes[i] = (uint8_t)outside;
    }
    SCENE_MESHLET_AUDIT(2,group->vertex_count);
    return 1;
}

static void scene_meshlet_triangles(struct sg_scene_visibility *f, scene_geometry_task *task,
    const scene_mesh *m) {
#if SG_MESHLET_CLIP_BOUNDS
    int parent = scene_meshlet_classify(m,m->meshlets->lower,m->meshlets->upper);
    if (parent < 0) { SCENE_MESHLET_AUDIT(7,task->end-task->first); return; }
#endif
    for (uint32_t group_id = task->first; group_id < task->end; group_id++) {
        const scene_meshlet *group = &m->meshlets->groups[group_id];
        scene_position positions[64]; uint8_t codes[64];
        int inside = 0;
#if SG_MESHLET_CLIP_BOUNDS
        int classification = parent ? parent : scene_meshlet_classify(m,group->lower,group->upper);
        if (classification < 0) { SCENE_MESHLET_AUDIT(7,1); continue; }
        inside = classification > 0;
        SCENE_MESHLET_AUDIT(8,inside);
#endif
        if (!scene_meshlet_positions(f,m,group,positions,codes,inside)) return;
        SCENE_MESHLET_AUDIT(3,1);
        for (unsigned i = 0; i < group->triangle_count; i++) {
            uint32_t indices[3], slots[3]; unsigned any = 0, all = inside ? 0 : 63;
            for (int k = 0; k < 3; k++) {
                slots[k] = group->indices[k][i]; indices[k] = group->vertices[slots[k]];
                if (!inside) { any |= codes[slots[k]]; all &= codes[slots[k]]; }
            }
            if (all) continue;
            scene_primitive p; memcpy(p.indices,indices,sizeof(indices));
            if (!any) {
                sg_vec4 ndc[3]; for (int k = 0; k < 3; k++) ndc[k] = positions[slots[k]].ndc;
                scene_geometry_append(f,task,&p,ndc,NULL); continue;
            }
            scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS];
            scene_clip_vertex *cur = a, *other = b;
            for (int k = 0; k < 3; k++) {
                cur[k].clip = positions[slots[k]].clip;
                for (int j = 0; j < 3; j++) cur[k].basis[j] = k == j ? 1.f : 0.f;
                memcpy(cur[k].uv,scene_mesh_coordinates(m,indices[k]),2*sizeof(float));
            }
            int count = 3;
            for (int plane = 0; plane < 6 && count >= 3; plane++) {
                count = scene_clip_polygon(cur,count,plane,other);
                scene_clip_vertex *swap = cur; cur = other; other = swap;
            }
            for (int k = 1; k+1 < count; k++) {
                const scene_clip_vertex *v[3] = {cur,cur+k,cur+k+1};
                memcpy(p.indices,indices,sizeof(indices));
                scene_clipped_primitive clipped;
                for (int j = 0; j < 3; j++) {
                    clipped.ndc[j] = scene_viewport(v[j]->clip);
                    memcpy(clipped.basis[j],v[j]->basis,sizeof(clipped.basis[j]));
                    memcpy(clipped.coordinates[j],v[j]->uv,sizeof(clipped.coordinates[j]));
                }
                scene_geometry_append(f,task,&p,clipped.ndc,&clipped);
            }
        }
    }
#if SG_MESHLET_PACKET_SIMD
    if (task->count & 3u) scene_meshlet_flush_packet(f,task,task->count & 3u);
#endif
}
