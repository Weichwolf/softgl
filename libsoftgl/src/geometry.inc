/* Whole-scene frontend. Immutable mesh commands are prepared once, then all
 * positions, primitives and finally winning vertex attributes run in batches. */
#include "index_range.h"

/* Logical sixteen-triangle masks do not require sixteen SIMD lanes. */
#ifdef SOFTGL_PACKET_BIN_AUDIT
static atomic_ullong scene_packet_audit[3];
unsigned long long softgl_scene_packet_bin_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_packet_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_PACKET_AUDIT(index,value) atomic_fetch_add_explicit(&scene_packet_audit[index],value,memory_order_relaxed)
#else
#define SCENE_PACKET_AUDIT(index,value) ((void)0)
#endif


#define SCENE_PRIMITIVE_BITS 18
#define SCENE_PRIMITIVE_MASK ((1u << SCENE_PRIMITIVE_BITS)-1)

static void scene_geometry_destroy(scene_geometry *g) {
    if (!g) return;
    if (g->tasks) for (int i = 0; i < SCENE_GEOMETRY_TASKS; i++) {
        free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].packets);
        free(g->tasks[i].occlusion_packets);
    }
    for (int i = 0; i < SG_MAX_BINS; i++) free(g->bins[i].references);
    free(g->positions); free(g->attributes); free(g->outcodes); free(g->ready);
    free(g->position_tasks); free(g->tasks); free(g);
}

static void scene_geometry_fail(struct sg_scene_visibility *f) {
    atomic_store_explicit(&f->failed,1,memory_order_relaxed);
}

int softgl_scene_visibility_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 1;
    if (!scene_state_supported(c) || c->scene_material < 0 ||
        c->scene_material >= f->material_count || c->lighting || c->shade_model != 0x1D01 /* GL_SMOOTH */ ||
        c->polygon_mode_front != GL_FILL || c->polygon_mode_back != GL_FILL ||
        c->viewport[0] || c->viewport[1] || c->viewport[2] != 640 || c->viewport[3] != 360 ||
        !positions || !coordinates || !indices || !program || stride < 12 || stride % sizeof(float) ||
        (uintptr_t)positions % sizeof(float) || (uintptr_t)coordinates % sizeof(float) ||
        (uintptr_t)indices % sizeof(uint32_t) ||
        count <= 0 || count % 3 || user_bytes > sizeof(((scene_mesh *)0)->user) ||
        (user_bytes && !user)) return 0;
    for (int i = 0; i < 6; i++) if (c->clip_plane_enabled[i]) return 0;
    scene_mesh *m = &f->materials[c->scene_material].mesh;
    if (m->positions) return 0;
    uint32_t minimum, maximum;
    sg_index_range(GL_UNSIGNED_INT,(const uint8_t *)indices,count,&minimum,&maximum);
    if (maximum >= vertex_count || maximum-minimum == UINT32_MAX) return 0;
    uint32_t span = maximum-minimum+1;
    size_t bytes = sizeof(scene_position)+sizeof(scene_attribute)+sizeof(uint8_t)+sizeof(atomic_uchar);
    if (span > SCENE_VERTEX_BYTES/bytes-f->mesh_vertices) {
        scene_geometry_fail(f); return 1;
    }
    m->positions = positions; m->coordinates = coordinates; m->indices = indices;
    m->minimum = minimum; m->span = span; m->offset = f->mesh_vertices;
    m->count = (uint32_t)count; m->stride = (size_t)stride;
    m->modelview = c->mv_stack[c->mv_top]; m->projection = c->pr_stack[c->pr_top];
    m->cull_enabled = c->cull_enabled; m->cull_face = c->cull_face; m->front_face = c->front_face;
    m->program = program;
    memset(m->user,0,sizeof(m->user)); if (user_bytes) memcpy(m->user,user,user_bytes);
    f->mesh_vertices += span; f->deferred_meshes++;
    return 1;
}

static float scene_clip_distance(const sg_vec4 *v, int plane) {
    switch (plane) {
        case 0: return v->x+v->w;
        case 1: return -v->x+v->w;
        case 2: return v->y+v->w;
        case 3: return -v->y+v->w;
        case 4: return v->z+v->w;
        default: return -v->z+v->w;
    }
}

static sg_vec4 scene_viewport(sg_vec4 clip) {
    float w = clip.w == 0.f ? 1e-20f : clip.w, inverse = 1.f/w;
    return (sg_vec4){(clip.x*inverse*.5f+.5f)*640.f,
        (clip.y*inverse*.5f+.5f)*360.f,clip.z*inverse*.5f+.5f,inverse};
}

static int scene_geometry_fast_matrix(const scene_mesh *m) {
    const float *v = m->modelview.m, *p = m->projection.m;
    if (v[3] != 0.f || v[7] != 0.f || v[11] != 0.f || v[15] != 1.f || p[11] != -1.f) return 0;
    for (int i = 0; i < 16; i++) {
        if (i == 0 || i == 5 || i == 10 || i == 11 || i == 14) continue;
        if (p[i] != 0.f) return 0;
    }
    return 1;
}

static void scene_geometry_positions_fast(struct sg_scene_visibility *f,
    const scene_mesh *m, uint32_t first, uint32_t end) {
    scene_geometry *g = f->geometry;
    __m128 matrix[3][4];
    for (int row = 0; row < 3; row++) for (int col = 0; col < 4; col++)
        matrix[row][col] = _mm_set1_ps(m->modelview.m[row+col*4]);
    __m128 px = _mm_set1_ps(m->projection.m[0]), py = _mm_set1_ps(m->projection.m[5]);
    __m128 pz = _mm_set1_ps(m->projection.m[10]), pt = _mm_set1_ps(m->projection.m[14]);
    for (uint32_t i = first; i < end; i += 4) {
        const float *p[4];
        for (int l = 0; l < 4; l++) {
            uint32_t local = i+(unsigned)l < end ? i+(unsigned)l : i;
            p[l] = (const float *)((const uint8_t *)m->positions+(size_t)(m->minimum+local)*m->stride);
        }
        __m128 x = _mm_setr_ps(p[0][0],p[1][0],p[2][0],p[3][0]);
        __m128 y = _mm_setr_ps(p[0][1],p[1][1],p[2][1],p[3][1]);
        __m128 z = _mm_setr_ps(p[0][2],p[1][2],p[2][2],p[3][2]);
        __m128 eye[3];
        for (int row = 0; row < 3; row++)
            eye[row] = _mm_add_ps(_mm_add_ps(_mm_mul_ps(matrix[row][0],x),_mm_mul_ps(matrix[row][1],y)),
                _mm_add_ps(_mm_mul_ps(matrix[row][2],z),matrix[row][3]));
        __m128 clip[4] = {_mm_mul_ps(px,eye[0]),_mm_mul_ps(py,eye[1]),
            _mm_add_ps(_mm_mul_ps(pz,eye[2]),pt),_mm_xor_ps(eye[2],_mm_set1_ps(-0.f))};
        _MM_TRANSPOSE4_PS(clip[0],clip[1],clip[2],clip[3]);
        for (int l = 0; l < 4 && i+(unsigned)l < end; l++) {
            uint32_t at = m->offset+i+(unsigned)l; sg_vec4 v;
            _mm_store_ps(&v.x,clip[l]);
            if (!isfinite(v.x) || !isfinite(v.y) || !isfinite(v.z) || !isfinite(v.w)) {
                scene_geometry_fail(f); return;
            }
            g->positions[at].clip = v; g->positions[at].ndc = scene_viewport(v);
            unsigned outside = 0;
            for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&v,plane) < 0.f) outside |= 1u << plane;
            g->outcodes[at] = (uint8_t)outside; atomic_store_explicit(&g->ready[at],0,memory_order_relaxed);
        }
    }
}

static void scene_geometry_positions(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        int id = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (id >= g->position_count) break;
        scene_position_task *task = &g->position_tasks[id];
        const scene_mesh *m = &f->materials[task->material].mesh;
        if (scene_geometry_fast_matrix(m)) {
            scene_geometry_positions_fast(f,m,task->first,task->end); continue;
        }
        for (uint32_t i = task->first; i < task->end; i++) {
            const float *p = (const float *)((const uint8_t *)m->positions+(size_t)(m->minimum+i)*m->stride);
            sg_vec4 source = {p[0],p[1],p[2],1.f}, eye, clip;
            sg_mat4_mul_vec4(&eye,&m->modelview,&source);
            sg_mat4_mul_vec4(&clip,&m->projection,&eye);
            if (!isfinite(clip.x) || !isfinite(clip.y) || !isfinite(clip.z) || !isfinite(clip.w)) {
                scene_geometry_fail(f); return;
            }
            uint32_t at = m->offset+i;
            g->positions[at].clip = clip; g->positions[at].ndc = scene_viewport(clip);
            unsigned outside = 0;
            for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&clip,plane) < 0.f) outside |= 1u << plane;
            g->outcodes[at] = (uint8_t)outside;
            atomic_store_explicit(&g->ready[at],0,memory_order_relaxed);
        }
    }
}

typedef struct { sg_vec4 clip; float basis[3], uv[2]; } scene_clip_vertex;

static scene_clip_vertex scene_clip_lerp(const scene_clip_vertex *a, const scene_clip_vertex *b, float t) {
    scene_clip_vertex v;
    const float *x = &a->clip.x, *y = &b->clip.x; float *z = &v.clip.x;
    for (int k = 0; k < 4; k++) z[k] = x[k]+(y[k]-x[k])*t;
    for (int k = 0; k < 3; k++) v.basis[k] = a->basis[k]+(b->basis[k]-a->basis[k])*t;
    for (int k = 0; k < 2; k++) v.uv[k] = a->uv[k]+(b->uv[k]-a->uv[k])*t;
    return v;
}

static int scene_clip_polygon(const scene_clip_vertex *in, int count, int plane, scene_clip_vertex *out) {
    int n = 0; const scene_clip_vertex *a = &in[count-1];
    float ad = scene_clip_distance(&a->clip,plane);
    for (int i = 0; i < count; i++) {
        const scene_clip_vertex *b = &in[i]; float bd = scene_clip_distance(&b->clip,plane);
        if ((ad >= 0.f) != (bd >= 0.f)) {
            float t = ad/(ad-bd); if (t < 0.f) t = 0.f; else if (t > 1.f) t = 1.f;
            out[n++] = scene_clip_lerp(a,b,t);
        }
        if (bd >= 0.f) out[n++] = *b;
        a = b; ad = bd;
    }
    return n;
}

static void scene_geometry_append(struct sg_scene_visibility *f, scene_geometry_task *task,
    scene_primitive *p, const sg_vec4 ndc[3], scene_clipped_primitive *clipped) {
    const scene_mesh *m = &f->materials[task->material].mesh;
    float area = (ndc[1].x-ndc[0].x)*(ndc[2].y-ndc[0].y)-
        (ndc[1].y-ndc[0].y)*(ndc[2].x-ndc[0].x);
    if (fabsf(area) < 1e-10f) return;
    int front = m->front_face == GL_CCW ? area > 0.f : area < 0.f;
    if (m->cull_enabled && (m->cull_face == GL_FRONT_AND_BACK ||
        (m->cull_face == GL_FRONT && front) || (m->cull_face == GL_BACK && !front))) return;
    if (area < 0.f) {
        if (clipped) {
            sg_vec4 v = clipped->ndc[1]; clipped->ndc[1] = clipped->ndc[2]; clipped->ndc[2] = v;
            for (int k = 0; k < 2; k++) { float t = clipped->coordinates[1][k]; clipped->coordinates[1][k] = clipped->coordinates[2][k]; clipped->coordinates[2][k] = t; }
            for (int k = 0; k < 3; k++) { float t = clipped->basis[1][k]; clipped->basis[1][k] = clipped->basis[2][k]; clipped->basis[2][k] = t; }
        } else { uint32_t t = p->indices[1]; p->indices[1] = p->indices[2]; p->indices[2] = t; }
    }
    int32_t x[3], y[3];
    for (int i = 0; i < 3; i++) {
        if (!isfinite(ndc[i].x) || !isfinite(ndc[i].y) || !isfinite(ndc[i].z) || !isfinite(ndc[i].w)) {
            scene_geometry_fail(f); return;
        }
        x[i] = sg_fp_screen_from_float(ndc[i].x); y[i] = sg_fp_screen_from_float(ndc[i].y);
    }
    if (!clipped && area < 0.f) {
        int32_t t = x[1]; x[1] = x[2]; x[2] = t;
        t = y[1]; y[1] = y[2]; y[2] = t;
    }
    int64_t fixed_area = (int64_t)(x[1]-x[0])*(y[2]-y[0])-(int64_t)(y[1]-y[0])*(x[2]-x[0]);
    if (fixed_area <= 0) return;
    int minx = x[0], maxx = x[0], miny = y[0], maxy = y[0];
    for (int i = 1; i < 3; i++) {
        if (x[i] < minx) minx = x[i]; if (x[i] > maxx) maxx = x[i];
        if (y[i] < miny) miny = y[i]; if (y[i] > maxy) maxy = y[i];
    }
    int first = minx >> 8, last = (maxx >> 8)+1;
    if (first < 0) first = 0; if (last > 640) last = 640;
    if (first >= last || maxy < 0 || (miny >> 8) >= 360) return;
    int bottom = miny >> 8, top = (maxy >> 8)+1;
    if (bottom < 0) bottom = 0; if (top > 360) top = 360;
    if (f->context->fb.samples && f->context->multisample &&
        minx >= -262144 && maxx <= 262144 && miny >= -262144 && maxy <= 262144 &&
        (maxx-minx < 256 || maxy-miny < 256)) {
        unsigned n = (unsigned)f->context->fb.samples;
        unsigned full = (1u << n)-1u;
        SCENE_BETWEEN_AUDIT(0,1);
        int phase[4][2];
        for (unsigned s = 0; s < 4; s++) sg_sample_position((int)n,(int)(s < n ? s : 0),&phase[s][0],&phase[s][1]);
        sg_i32x4 phase_x = sg_i32x4_set(phase[0][0],phase[1][0],phase[2][0],phase[3][0]);
        sg_i32x4 phase_y = sg_i32x4_set(phase[0][1],phase[1][1],phase[2][1],phase[3][1]);
        sg_i32x4 next_x = _mm_add_epi32(_mm_slli_epi32(_mm_srai_epi32(_mm_add_epi32(
            _mm_sub_epi32(sg_i32x4_splat(minx),phase_x),sg_i32x4_splat(255)),8),8),phase_x);
        sg_i32x4 next_y = _mm_add_epi32(_mm_slli_epi32(_mm_srai_epi32(_mm_add_epi32(
            _mm_sub_epi32(sg_i32x4_splat(miny),phase_y),sg_i32x4_splat(255)),8),8),phase_y);
        unsigned possible = full & sg_i32x4_mask_nonneg(_mm_sub_epi32(sg_i32x4_splat(maxx),next_x)) &
            sg_i32x4_mask_nonneg(_mm_sub_epi32(sg_i32x4_splat(maxy),next_y));
        if (!possible) { SCENE_BETWEEN_AUDIT(1,1); return; }
        if ((minx >> 8) == (maxx >> 8) && (miny >> 8) == (maxy >> 8)) {
            SCENE_BETWEEN_AUDIT(2,1);
            /* Coordinate differences are <=255; even an inactive phase's
             * next sample differs by <=510. Two products remain below 2^19. */
            for (int i = 0; i < 3; i++) {
                int j = (i+1)%3;
                int32_t dx = x[j]-x[i], dy = y[j]-y[i];
                int bias = (dy < 0 || (dy == 0 && dx < 0)) ? 0 : -1;
                sg_i32x4 edge = _mm_sub_epi32(_mm_mullo_epi32(sg_i32x4_splat(dx),
                    _mm_sub_epi32(next_y,sg_i32x4_splat(y[i]))),
                    _mm_mullo_epi32(sg_i32x4_splat(dy),_mm_sub_epi32(next_x,sg_i32x4_splat(x[i]))));
                possible &= sg_i32x4_mask_nonneg(_mm_add_epi32(edge,sg_i32x4_splat(bias)));
            }
            if (!possible) { SCENE_BETWEEN_AUDIT(3,1); return; }
        }
    }
    if (!f->context->fb.samples && last-first == 1 && top-bottom == 1) {
        /* Subpixel triangles often cover no sample. Reject them before bin
         * storage using the rasterizer's exact 16.8 top-left rule. */
        int32_t px = first*256+128, py = bottom*256+128;
        for (int i = 0; i < 3; i++) {
            int j = (i+1)%3;
            int64_t edge = (int64_t)(x[j]-x[i])*(py-y[i])-(int64_t)(y[j]-y[i])*(px-x[i]);
            int bias = (y[j]-y[i] < 0 || (y[j] == y[i] && x[j]-x[i] < 0)) ? 0 : -1;
            if (edge+bias < 0) return;
        }
    }
    sg_worker_pool *pool = f->context->workers;
    p->first_bin = pool->column_bin[first]; p->last_bin = pool->column_bin[last-1];
    p->material = (uint16_t)task->material;
    p->task = (uint16_t)(task-f->geometry->tasks);
    if (task->count == task->capacity) {
        uint32_t capacity = task->capacity ? task->capacity*2 : 256;
        size_t delta = (size_t)(capacity-task->capacity)*sizeof(scene_primitive);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_primitive *next = NULL;
        if (capacity <= SCENE_PRIMITIVE_MASK && delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->primitives,(size_t)capacity*sizeof(*next));
        if (next) { task->primitives = next; task->capacity = capacity; f->geometry->primitive_bytes += delta; }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { scene_geometry_fail(f); return; }
    }
    p->clipped = UINT32_MAX;
    if (clipped) {
        if (task->clipped_count == task->clipped_capacity) {
            uint32_t capacity = task->clipped_capacity ? task->clipped_capacity*2 : 16;
            size_t delta = (size_t)(capacity-task->clipped_capacity)*sizeof(scene_clipped_primitive);
            pthread_mutex_lock(&f->allocation_mutex);
            scene_clipped_primitive *next = NULL;
            if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
                next = realloc(task->clipped,(size_t)capacity*sizeof(*next));
            if (next) { task->clipped = next; task->clipped_capacity = capacity; f->geometry->primitive_bytes += delta; }
            pthread_mutex_unlock(&f->allocation_mutex);
            if (!next) { scene_geometry_fail(f); return; }
        }
        p->clipped = task->clipped_count;
        task->clipped[task->clipped_count++] = *clipped;
    }
    if (!(task->count & 15u)) task->packet_bins = 0;
    task->primitives[task->count++] = *p;
    for (int bin = p->first_bin; bin <= p->last_bin; bin++) {
        uint32_t bit = UINT32_C(1) << bin;
        if (!(task->packet_bins & bit)) task->bin_counts[bin]++;
        task->packet_bins |= bit;
    }
}

static void scene_geometry_triangles(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        int id = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (id >= g->task_count || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_task *task = &g->tasks[id]; const scene_mesh *m = &f->materials[task->material].mesh;
        for (uint32_t i = task->first; i < task->end; i += 3) {
            uint32_t indices[3], positions[3]; unsigned any = 0, all = 63;
            for (int k = 0; k < 3; k++) {
                indices[k] = m->indices[i+(unsigned)k]; positions[k] = m->offset+indices[k]-m->minimum;
                any |= g->outcodes[positions[k]]; all &= g->outcodes[positions[k]];
            }
            if (all) continue;
            scene_primitive p; memcpy(p.indices,indices,sizeof(indices));
            if (!any) {
                sg_vec4 ndc[3]; for (int k = 0; k < 3; k++) ndc[k] = g->positions[positions[k]].ndc;
                scene_geometry_append(f,task,&p,ndc,NULL); continue;
            }
            scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS];
            scene_clip_vertex *cur = a, *other = b;
            for (int k = 0; k < 3; k++) {
                cur[k].clip = g->positions[positions[k]].clip;
                for (int j = 0; j < 3; j++) cur[k].basis[j] = k == j ? 1.f : 0.f;
                const float *uv = (const float *)((const uint8_t *)m->coordinates+(size_t)indices[k]*m->stride);
                memcpy(cur[k].uv,uv,2*sizeof(float));
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
        scene_geometry_make_packets(f,task);
        scene_geometry_occlusion_packets(f,task);
    }
}

static void scene_geometry_raster(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    softgl_ctx local = *f->context; sg_worker_pool *pool = local.workers;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_bin *list = &g->bins[bin];
        for (uint32_t i = 0; i < list->count; i++) {
            uint64_t reference = list->references[i];
            unsigned mask = (unsigned)reference & 65535u;
            uint32_t base = (uint32_t)(reference >> 16);
            scene_geometry_task *task = &g->tasks[base >> SCENE_PRIMITIVE_BITS];
            unsigned first = base & SCENE_PRIMITIVE_MASK;
            for (unsigned offset = 0; offset < 16; offset += 4) {
                unsigned live = (mask >> offset)&15u;
                if (live && !scene_occlusion_packet_hidden(&local,task,first+offset,live,bin))
                    scene_packet_draw(&local,task,first+offset,live,bin);
            }
        }
        f->bins[bin].current_primitive = NULL;
    }
}

static int scene_geometry_allocate(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
    if (!g) {
        g = calloc(1,sizeof(*g)); if (!g) return 0;
        atomic_init(&g->next_task,0); f->geometry = g;
        g->position_tasks = malloc(SCENE_GEOMETRY_TASKS*sizeof(*g->position_tasks));
        g->tasks = calloc(SCENE_GEOMETRY_TASKS,sizeof(*g->tasks));
    }
    if (!g->tasks || !g->position_tasks) return 0;
    if (g->vertex_capacity < f->mesh_vertices) {
        uint32_t capacity = g->vertex_capacity ? g->vertex_capacity : 4096;
        while (capacity < f->mesh_vertices) capacity *= 2;
        size_t bytes = sizeof(scene_position)+sizeof(scene_attribute)+sizeof(uint8_t)+sizeof(atomic_uchar);
        if (capacity > SCENE_VERTEX_BYTES/bytes) capacity = f->mesh_vertices;
        scene_position *p = malloc((size_t)capacity*sizeof(*p));
        scene_attribute *a = malloc((size_t)capacity*sizeof(*a));
        uint8_t *o = malloc(capacity); atomic_uchar *r = malloc((size_t)capacity*sizeof(*r));
        if (!p || !a || !o || !r) { free(p); free(a); free(o); free(r); return 0; }
        for (uint32_t i = 0; i < capacity; i++) atomic_init(&r[i],0);
        free(g->positions); free(g->attributes); free(g->outcodes); free(g->ready);
        g->positions = p; g->attributes = a; g->outcodes = o; g->ready = r; g->vertex_capacity = capacity;
    }
    g->vertices = f->mesh_vertices; g->position_count = 0; g->task_count = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_mesh *m = &f->materials[i].mesh; if (!m->positions) continue;
        for (uint32_t first = 0; first < m->span; first += 512) {
            if (g->position_count == SCENE_GEOMETRY_TASKS) return 0;
            g->position_tasks[g->position_count++] = (scene_position_task){(uint32_t)i,first,m->span-first > 512 ? first+512 : m->span};
        }
        for (uint32_t first = 0; first < m->count; first += 3072) {
            if (g->task_count == SCENE_GEOMETRY_TASKS) return 0;
            scene_geometry_task *task = &g->tasks[g->task_count++];
            task->material = (uint32_t)i; task->first = first; task->end = m->count-first > 3072 ? first+3072 : m->count;
            task->count = 0; task->clipped_count = 0;
            memset(task->bin_counts,0,sizeof(task->bin_counts));
        }
    }
    return 1;
}

static void scene_geometry_references(void *data) {
    struct sg_scene_visibility *f = data;
    scene_geometry *g = f->geometry;
    for (;;) {
        int id = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (id >= g->task_count || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_task *task = &g->tasks[id];
        uint32_t cursor[SG_MAX_BINS];
        memcpy(cursor,task->bin_offsets,sizeof(cursor));
        for (uint32_t k = 0; k < task->count; k += 16) {
            uint16_t masks[SG_MAX_BINS] = {0};
            unsigned count = task->count-k;
            if (count > 16) count = 16;
            for (unsigned lane = 0; lane < count; lane++) {
                const scene_primitive *p = &task->primitives[k+lane];
                for (int bin = p->first_bin; bin <= p->last_bin; bin++) {
                    masks[bin] |= (uint16_t)(1u << lane);
                    SCENE_PACKET_AUDIT(0,1);
                }
            }
            uint32_t base = ((uint32_t)id << SCENE_PRIMITIVE_BITS)|k;
            for (int bin = 0; bin < SG_MAX_BINS; bin++) if (masks[bin]) {
                g->bins[bin].references[cursor[bin]++] = ((uint64_t)base << 16)|masks[bin];
                SCENE_PACKET_AUDIT(1,1);
                SCENE_PACKET_AUDIT(2,masks[bin] == 65535u);
            }
        }
    }
}

static void scene_geometry_build(struct sg_scene_visibility *f) {
    if (!scene_geometry_allocate(f)) { scene_geometry_fail(f); return; }
    scene_geometry *g = f->geometry;
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_positions,f);
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_triangles,f);
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    /* Prefixes assign each geometry task a disjoint, original-order segment
     * in every bin. Only task totals are visited by the caller. */
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        uint32_t total = 0;
        for (int i = 0; i < g->task_count; i++) {
            scene_geometry_task *task = &g->tasks[i];
            task->bin_offsets[bin] = total;
            total += task->bin_counts[bin];
        }
        g->bins[bin].count = total;
    }
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        scene_geometry_bin *b = &g->bins[bin];
        if (b->count > b->capacity) {
            uint32_t capacity = b->capacity ? b->capacity : 1024;
            while (capacity < b->count) capacity *= 2;
            size_t delta = (size_t)(capacity-b->capacity)*sizeof(*b->references);
            if (delta > SCENE_REFERENCE_BYTES-g->reference_bytes) { scene_geometry_fail(f); return; }
            uint64_t *next = realloc(b->references,(size_t)capacity*sizeof(*next));
            if (!next) { scene_geometry_fail(f); return; }
            b->references = next; b->capacity = capacity; g->reference_bytes += delta;
        }
    }
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_references,f);
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_raster,f);
}

static scene_attribute *scene_geometry_attribute(struct sg_scene_visibility *f, const scene_mesh *m, uint32_t index) {
    scene_geometry *g = f->geometry; uint32_t at = m->offset+index-m->minimum;
    scene_attribute *a = &g->attributes[at]; unsigned char empty = 0;
    if (atomic_compare_exchange_strong_explicit(&g->ready[at],&empty,1,memory_order_acquire,memory_order_relaxed)) {
        const float *uv = (const float *)((const uint8_t *)m->coordinates+(size_t)index*m->stride);
        a->color = (sg_vec4){1.f,1.f,1.f,1.f};
        for (int u = 0; u < 4; u++) a->uv[u] = (sg_vec4){uv[0],uv[1],0.f,1.f};
        m->program((void *)m->user,index,&a->color.x,(float (*)[4])a->uv);
        if (a->color.w != 1.f || a->uv[0].x != uv[0] || a->uv[0].y != uv[1] ||
            a->uv[0].z != 0.f || a->uv[0].w != 1.f ||
            a->uv[2].x != uv[0] || a->uv[2].y != uv[1] || a->uv[2].z != 0.f || a->uv[2].w != 1.f) scene_geometry_fail(f);
        atomic_store_explicit(&g->ready[at],2,memory_order_release);
    } else while (atomic_load_explicit(&g->ready[at],memory_order_acquire) != 2) { }
    return a;
}

static sg_vec4 scene_geometry_interpolate(const sg_vec4 *a, const sg_vec4 *b, const sg_vec4 *c, const float basis[3]) {
    __m128 x = _mm_mul_ps(_mm_load_ps(&a->x),_mm_set1_ps(basis[0]));
    __m128 y = _mm_mul_ps(_mm_load_ps(&b->x),_mm_set1_ps(basis[1]));
    __m128 z = _mm_mul_ps(_mm_load_ps(&c->x),_mm_set1_ps(basis[2]));
    sg_vec4 out; _mm_store_ps(&out.x,_mm_add_ps(_mm_add_ps(x,y),z)); return out;
}

static int scene_geometry_visible(struct sg_scene_visibility *f) {
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        scene_bin *b = &f->bins[bin];
        if (b->visible_capacity < b->count) {
            uint8_t *next = realloc(b->visible,b->count);
            if (!next) return 0;
            b->visible = next; b->visible_capacity = b->count;
        }
        if (b->count) memset(b->visible,0,b->count);
    }
    return 1;
}

static void scene_geometry_attribute_bins(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= SG_MAX_BINS) break;
        scene_bin *b = &f->bins[bin];
        for (uint32_t i = 0; i < b->count; i++) {
            scene_triangle *t = &b->triangles[i]; const scene_primitive *p = t->primitive;
            if (!b->visible[i] || !p) continue;
            const scene_mesh *m = &f->materials[p->material].mesh; scene_attribute *a[3];
            const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL : &g->tasks[p->task].clipped[p->clipped];
            for (int j = 0; j < 3; j++) a[j] = scene_geometry_attribute(f,m,p->indices[j]);
            for (int j = 0; j < 3; j++) {
                t->color[j] = clipped ? scene_geometry_interpolate(&a[0]->color,&a[1]->color,&a[2]->color,clipped->basis[j]) : a[j]->color;
                t->color[j].w = 1.f;
                for (int u = 0; u < 4; u++) {
                    t->uv[u][j] = clipped ? scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],clipped->basis[j]) : a[j]->uv[u];
                    if (clipped && (u == 0 || u == 2)) t->uv[u][j] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};
                }
            }
        }
    }
}

static void scene_geometry_attributes(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_attribute_bins,f);
    if (getenv("SOFTGL_POSITION_STATS")) {
        uint64_t attributes = 0, primitives = 0;
        for (uint32_t i = 0; i < g->vertices; i++) if (atomic_load_explicit(&g->ready[i],memory_order_relaxed) == 2) attributes++;
        for (int i = 0; i < g->task_count; i++) primitives += g->tasks[i].count;
        fprintf(stderr,"POSITIONS {\"meshes\":%d,\"positions\":%u,\"primitives\":%llu,\"attributes\":%llu,\"primitiveBytes\":%zu,\"referenceBytes\":%zu}\n",
            f->deferred_meshes,g->vertices,(unsigned long long)primitives,(unsigned long long)attributes,g->primitive_bytes,g->reference_bytes);
    }
}
