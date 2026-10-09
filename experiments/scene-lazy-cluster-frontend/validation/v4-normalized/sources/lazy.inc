/* Optional immutable object-space bounds precede all vertex/triangle setup.
 * Only an owning bin's actual current-frame sample depth can reject a group. */
#ifdef SOFTGL_LAZY_AUDIT
static atomic_ullong scene_lazy_counts[10];
unsigned long long softgl_scene_lazy_audit(unsigned index) {
    return index < 10 ? atomic_load_explicit(&scene_lazy_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_LAZY_COUNT(i,n) atomic_fetch_add_explicit(&scene_lazy_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_LAZY_COUNT(i,n) ((void)0)
#endif

static void scene_lazy_begin(struct sg_scene_visibility *f) {
    scene_order_storage *handle = &f->bins[SG_MAX_BINS-1].order_storage;
    if (handle->lazy && !++handle->epoch) {
        memset(handle->lazy->meshes,0,sizeof(handle->lazy->meshes));
        handle->epoch = 1;
    }
}

static void scene_lazy_destroy(struct sg_scene_visibility *f) {
    scene_lazy_storage *lazy = f->bins[SG_MAX_BINS-1].order_storage.lazy;
    if (!lazy) return;
    free(lazy->bounds); free(lazy->position_ready); free(lazy->task_ready); free(lazy);
}

int softgl_scene_visibility_cluster_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes,
    const GLfloat *bounds, GLuint group_triangles) {
    int captured = softgl_scene_visibility_positions(positions,coordinates,stride,vertex_count,
        indices,count,program,user,user_bytes);
    softgl_ctx *c = sg_current();
    if (!captured || !bounds || !group_triangles || group_triangles > 1024 ||
        !c || !c->scene_visibility || c->fb.samples != 4) return captured;
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return captured;
    scene_order_storage *handle = &f->bins[SG_MAX_BINS-1].order_storage;
    if (!handle->lazy) {
        handle->lazy = calloc(1,sizeof(*handle->lazy));
        if (!handle->lazy) return captured; /* Original frontend remains available. */
        if (!handle->epoch) handle->epoch = 1;
    }
    handle->lazy->meshes[c->scene_material] = (scene_lazy_mesh){bounds,group_triangles,handle->epoch};
    return captured;
}

/* Double interval evaluation bounds the separate float MV/projection stages.
 * Independent numerator/denominator error signs are evaluated at all eight
 * AABB corners. A positive denominator makes each ratio's extrema occur at
 * those corners. Near/far/eye-plane ambiguity retains the entire viewport. */
static int scene_lazy_project(const scene_mesh *mesh, const float box[6],
    scene_occlusion_packet *out, int width, int height) {
    double matrix[4][4], absolute[4][4], error[4];
    const float *mv = mesh->modelview.m, *pr = mesh->projection.m;
    for (int k = 0; k < 3; k++)
        if (!isfinite(box[k]) || !isfinite(box[k+3]) || box[k] > box[k+3]) return -1;
    for (int row = 0; row < 4; row++) {
        error[row] = 1e-8;
        for (int col = 0; col < 4; col++) {
            matrix[row][col] = absolute[row][col] = 0;
            for (int j = 0; j < 4; j++) {
                double term = (double)pr[j*4+row]*mv[col*4+j];
                matrix[row][col] += term; absolute[row][col] += fabs(term);
            }
            double magnitude = col == 3 ? 1. : fmax(fabs(box[col]),fabs(box[col+3]));
            error[row] += absolute[row][col]*magnitude*1e-5;
            if (!isfinite(matrix[row][col]) || !isfinite(error[row])) return -1;
        }
    }
    double low[3] = {INFINITY,INFINITY,INFINITY}, high[3] = {-INFINITY,-INFINITY,-INFINITY};
    for (unsigned corner = 0; corner < 8; corner++) {
        double point[4] = {box[(corner&1u) ? 3 : 0],box[(corner&2u) ? 4 : 1],
            box[(corner&4u) ? 5 : 2],1.}, clip[4];
        for (int row = 0; row < 4; row++) {
            clip[row] = 0;
            for (int col = 0; col < 4; col++) clip[row] += matrix[row][col]*point[col];
        }
        if (!(clip[3] > error[3]+1e-8)) goto uncertain;
        for (int axis = 0; axis < 3; axis++) for (int sign = -1; sign <= 1; sign += 2) {
            double denominator = clip[3]+sign*error[3];
            double a = (clip[axis]-error[axis])/denominator;
            double b = (clip[axis]+error[axis])/denominator;
            if (a < low[axis]) low[axis] = a;
            if (b > high[axis]) high[axis] = b;
        }
    }
    if (low[2] < -1. || high[2] > 1.) goto uncertain;
    double left = (low[0]*.5+.5)*width-1., right = (high[0]*.5+.5)*width+1.;
    double bottom = (low[1]*.5+.5)*height-1., top = (high[1]*.5+.5)*height+1.;
    if (right <= 0 || left >= width || top <= 0 || bottom >= height) {
        *out = (scene_occlusion_packet){0}; return 0;
    }
    /* Clamp doubles before integer conversion even for very large boxes. */
    out->left = (uint16_t)floor(fmax(0.,left));
    out->right = (uint16_t)ceil(fmin((double)width,right));
    out->bottom = (uint16_t)floor(fmax(0.,bottom));
    out->top = (uint16_t)ceil(fmin((double)height,top));
    out->near = (float)fmax(0.,low[2]*.5+.5-2e-6);
    out->eligible = 1; return 1;
uncertain:
    *out = (scene_occlusion_packet){0,(uint16_t)width,0,(uint16_t)height,0.f,0};
    return 2;
}

static void scene_lazy_position(struct sg_scene_visibility *f, const scene_mesh *mesh,
    scene_lazy_storage *lazy, uint32_t index) {
    scene_geometry *g = f->geometry;
#if SCENE_LAZY_VERTEX_BLOCK > 1
    /* One shared claim per aligned source-position block, not per vertex.
     * Original SIMD128 transform keeps arithmetic and tail behavior intact. */
    uint32_t first = (index-mesh->minimum) & ~(SCENE_LAZY_VERTEX_BLOCK-1u);
    uint32_t end = first+SCENE_LAZY_VERTEX_BLOCK;
    if (end > mesh->span) end = mesh->span;
    uint32_t at = mesh->offset+first;
    if (atomic_load_explicit(&lazy->position_ready[at],memory_order_acquire) == 2) return;
    unsigned char empty = 0;
    if (!atomic_compare_exchange_strong_explicit(&lazy->position_ready[at],&empty,1,
        memory_order_acquire,memory_order_relaxed)) {
        while (atomic_load_explicit(&lazy->position_ready[at],memory_order_acquire) != 2) { }
        return;
    }
    if (scene_geometry_fast_matrix(mesh)) {
        scene_geometry_positions_fast(f,mesh,first,end);
    } else for (uint32_t i = first; i < end; i++) {
        const float *p = (const float *)((const uint8_t *)mesh->positions+(size_t)(mesh->minimum+i)*mesh->stride);
        sg_vec4 source = {p[0],p[1],p[2],1.f}, eye, clip;
        sg_mat4_mul_vec4(&eye,&mesh->modelview,&source);
        sg_mat4_mul_vec4(&clip,&mesh->projection,&eye);
        if (!isfinite(clip.x) || !isfinite(clip.y) || !isfinite(clip.z) || !isfinite(clip.w)) {
            scene_geometry_fail(f); break;
        }
        unsigned pos = mesh->offset+i;
        g->positions[pos].clip = clip; g->positions[pos].ndc = scene_viewport(clip);
        unsigned outside = 0;
        for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&clip,plane) < 0.f) outside |= 1u << plane;
        g->outcodes[pos] = (uint8_t)outside;
    }
    SCENE_LAZY_COUNT(3,end-first);
    atomic_store_explicit(&lazy->position_ready[at],2,memory_order_release);
#else
    uint32_t at = mesh->offset+index-mesh->minimum;
    if (atomic_load_explicit(&lazy->position_ready[at],memory_order_acquire) == 2) return;
    unsigned char empty = 0;
    if (!atomic_compare_exchange_strong_explicit(&lazy->position_ready[at],&empty,1,
        memory_order_acquire,memory_order_relaxed)) {
        while (atomic_load_explicit(&lazy->position_ready[at],memory_order_acquire) != 2) { }
        return;
    }
    const float *p = (const float *)((const uint8_t *)mesh->positions+(size_t)index*mesh->stride);
    sg_vec4 clip;
    if (scene_geometry_fast_matrix(mesh)) {
        const float *mv = mesh->modelview.m, *pr = mesh->projection.m;
        __m128 eye = _mm_add_ps(_mm_add_ps(_mm_mul_ps(_mm_loadu_ps(mv),_mm_set1_ps(p[0])),
            _mm_mul_ps(_mm_loadu_ps(mv+4),_mm_set1_ps(p[1]))),
            _mm_add_ps(_mm_mul_ps(_mm_loadu_ps(mv+8),_mm_set1_ps(p[2])),_mm_loadu_ps(mv+12)));
        SG_ALIGN16 float v[4]; _mm_store_ps(v,eye);
        clip = (sg_vec4){pr[0]*v[0],pr[5]*v[1],pr[10]*v[2]+pr[14],-v[2]};
    } else {
        sg_vec4 source = {p[0],p[1],p[2],1.f}, eye;
        sg_mat4_mul_vec4(&eye,&mesh->modelview,&source);
        sg_mat4_mul_vec4(&clip,&mesh->projection,&eye);
    }
    if (!isfinite(clip.x) || !isfinite(clip.y) || !isfinite(clip.z) || !isfinite(clip.w))
        scene_geometry_fail(f);
    g->positions[at].clip = clip; g->positions[at].ndc = scene_viewport(clip);
    unsigned outside = 0;
    for (int plane = 0; plane < 6; plane++) if (scene_clip_distance(&clip,plane) < 0.f) outside |= 1u << plane;
    g->outcodes[at] = (uint8_t)outside;
    SCENE_LAZY_COUNT(3,1);
    atomic_store_explicit(&lazy->position_ready[at],2,memory_order_release);
#endif
}

static void scene_lazy_prepare(struct sg_scene_visibility *f, scene_lazy_storage *lazy, unsigned id) {
    if (atomic_load_explicit(&lazy->task_ready[id],memory_order_acquire) == 2) return;
    unsigned char empty = 0;
    if (!atomic_compare_exchange_strong_explicit(&lazy->task_ready[id],&empty,1,
        memory_order_acquire,memory_order_relaxed)) {
        while (atomic_load_explicit(&lazy->task_ready[id],memory_order_acquire) != 2) { }
        return;
    }
    scene_geometry_task *task = &f->geometry->tasks[id];
    const scene_mesh *mesh = &f->materials[task->material].mesh;
    if (!task->capacity) {
        uint32_t capacity = (task->end-task->first)/3;
        size_t bytes = (size_t)capacity*sizeof(*task->primitives);
        pthread_mutex_lock(&f->allocation_mutex);
        if (bytes <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes) {
            task->primitives = malloc(bytes);
            if (task->primitives) { task->capacity = capacity; f->geometry->primitive_bytes += bytes; }
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!task->primitives) { scene_geometry_fail(f); goto complete; }
    }
    SCENE_LAZY_COUNT(2,1); SCENE_LAZY_COUNT(4,(task->end-task->first)/3);
    for (uint32_t i = task->first; i < task->end; i += 3) {
        uint32_t indices[3], positions[3]; unsigned any = 0, all = 63;
        for (int k = 0; k < 3; k++) {
            indices[k] = mesh->indices[i+(unsigned)k];
            scene_lazy_position(f,mesh,lazy,indices[k]);
            positions[k] = mesh->offset+indices[k]-mesh->minimum;
            any |= f->geometry->outcodes[positions[k]]; all &= f->geometry->outcodes[positions[k]];
        }
        if (atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        if (all) continue;
        scene_primitive primitive; memcpy(primitive.indices,indices,sizeof(indices));
        if (!any) {
            sg_vec4 ndc[3];
            for (int k = 0; k < 3; k++) ndc[k] = f->geometry->positions[positions[k]].ndc;
            scene_geometry_append(f,task,&primitive,ndc,NULL); continue;
        }
        scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS];
        scene_clip_vertex *cur = a, *other = b;
        for (int k = 0; k < 3; k++) {
            cur[k].clip = f->geometry->positions[positions[k]].clip;
            for (int j = 0; j < 3; j++) cur[k].basis[j] = k == j ? 1.f : 0.f;
            const float *uv = (const float *)((const uint8_t *)mesh->coordinates+(size_t)indices[k]*mesh->stride);
            memcpy(cur[k].uv,uv,2*sizeof(float));
        }
        int count = 3;
        for (int plane = 0; plane < 6 && count >= 3; plane++) {
            count = scene_clip_polygon(cur,count,plane,other);
            scene_clip_vertex *swap = cur; cur = other; other = swap;
        }
        for (int k = 1; k+1 < count; k++) {
            const scene_clip_vertex *v[3] = {cur,cur+k,cur+k+1};
            memcpy(primitive.indices,indices,sizeof(indices)); scene_clipped_primitive clipped;
            for (int j = 0; j < 3; j++) {
                clipped.ndc[j] = scene_viewport(v[j]->clip);
                memcpy(clipped.basis[j],v[j]->basis,sizeof(clipped.basis[j]));
                memcpy(clipped.coordinates[j],v[j]->uv,sizeof(clipped.coordinates[j]));
            }
            scene_geometry_append(f,task,&primitive,clipped.ndc,&clipped);
        }
    }
    scene_geometry_make_packets(f,task); scene_geometry_occlusion_packets(f,task);
complete:
    atomic_store_explicit(&lazy->task_ready[id],2,memory_order_release);
}

static void scene_lazy_worker(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    scene_lazy_storage *lazy = f->bins[SG_MAX_BINS-1].order_storage.lazy;
    softgl_ctx local = *f->context; sg_worker_pool *pool = local.workers;
    /* Bounded independently of resolution: <=16,384 group references per bin.
     * 128 KiB plus counters/local context fits the existing 2-MiB WASM stack. */
    uint64_t sorted[SCENE_GEOMETRY_TASKS];
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_bin *list = &g->bins[bin]; uint32_t counts[512] = {0}, cursor[512];
        for (uint32_t i = 0; i < list->count; i++) counts[list->references[i] >> 32]++;
        uint32_t first = 0;
        for (int key = 0; key < 512; key++) { cursor[key] = first; first += counts[key]; }
        for (uint32_t i = 0; i < list->count; i++) {
            uint64_t reference = list->references[i]; sorted[cursor[reference >> 32]++] = reference;
        }
        for (uint32_t i = 0; i < list->count; i++) {
            unsigned id = (unsigned)sorted[i]; const scene_occlusion_packet *bound = &lazy->bounds[id];
            int left = bound->left > pool->bins[bin].ix0 ? bound->left : pool->bins[bin].ix0;
            int right = bound->right < pool->bins[bin].ix1 ? bound->right : pool->bins[bin].ix1;
            SCENE_LAZY_COUNT(0,1);
            int hidden = bound->eligible && sg_hz_occluded(&local,left,bound->bottom,right,bound->top,
                bound->near,bound->near,bound->near,0.f);
            if (hidden) {
                SCENE_LAZY_COUNT(1,1);
#ifndef SOFTGL_LAZY_CENSUS_ONLY
                continue;
#endif
            }
            scene_lazy_prepare(f,lazy,id);
            if (atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
            scene_geometry_task *task = &g->tasks[id];
            for (unsigned k = 0; k < task->count; k += 4) {
                unsigned live = 0;
                for (unsigned lane = 0; lane < 4 && k+lane < task->count; lane++) {
                    const scene_primitive *p = &task->primitives[k+lane];
                    if (p->first_bin <= bin && p->last_bin >= bin) live |= 1u << lane;
                }
                if (live && !scene_occlusion_packet_hidden(&local,task,k,live,bin))
                    scene_packet_draw(&local,task,k,live,bin);
            }
        }
        f->bins[bin].current_primitive = NULL;
    }
}

/* Return 0 for original frontend, 1 after lazy rendering, -1 on joined failure. */
static __attribute__((noinline)) int scene_geometry_lazy_build(struct sg_scene_visibility *f) {
    scene_order_storage *handle = &f->bins[SG_MAX_BINS-1].order_storage;
    scene_lazy_storage *lazy = handle->lazy;
    if (!lazy || f->context->fb.samples != 4 || !handle->mode) return 0;
    unsigned groups = 0;
    for (int material = 0; material < f->material_count; material++) {
        const scene_mesh *mesh = &f->materials[material].mesh;
        if (!mesh->positions) continue;
        const scene_lazy_mesh *desc = &lazy->meshes[material];
        if (desc->epoch != handle->epoch) return 0;
        groups += (mesh->count/3+desc->group_triangles-1)/desc->group_triangles;
        if (groups > SCENE_GEOMETRY_TASKS) return 0;
    }
    if (!scene_geometry_allocate(f)) return -1;
    scene_geometry *g = f->geometry;
    if (!lazy->bounds) lazy->bounds = malloc(SCENE_GEOMETRY_TASKS*sizeof(*lazy->bounds));
    if (!lazy->task_ready) {
        lazy->task_ready = malloc(SCENE_GEOMETRY_TASKS*sizeof(*lazy->task_ready));
        if (lazy->task_ready) for (unsigned i = 0; i < SCENE_GEOMETRY_TASKS; i++) atomic_init(&lazy->task_ready[i],0);
    }
    if (lazy->position_capacity < g->vertices) {
        atomic_uchar *ready = malloc((size_t)g->vertices*sizeof(*ready));
        if (!ready) return -1;
        for (unsigned i = 0; i < g->vertices; i++) atomic_init(&ready[i],0);
        free(lazy->position_ready); lazy->position_ready = ready; lazy->position_capacity = g->vertices;
    }
    if (!lazy->bounds || !lazy->task_ready) return -1;
    for (unsigned i = 0; i < g->vertices; i++) {
        atomic_store_explicit(&lazy->position_ready[i],0,memory_order_relaxed);
        atomic_store_explicit(&g->ready[i],0,memory_order_relaxed);
    }
    g->task_count = 0;
    float nearest = 1.f, farthest = 0.f;
    for (int bin = 0; bin < SG_MAX_BINS; bin++) g->bins[bin].count = 0;
    for (int material = 0; material < f->material_count; material++) {
        const scene_mesh *mesh = &f->materials[material].mesh;
        if (!mesh->positions) continue;
        const scene_lazy_mesh *desc = &lazy->meshes[material];
        for (unsigned group = 0, first = 0; first < mesh->count; group++,first += desc->group_triangles*3) {
            unsigned id = (unsigned)g->task_count++; scene_geometry_task *task = &g->tasks[id];
            unsigned end = first+desc->group_triangles*3; if (end > mesh->count) end = mesh->count;
            task->material = (unsigned)material; task->first = first; task->end = end;
            task->count = task->clipped_count = 0; memset(task->bin_counts,0,sizeof(task->bin_counts));
            atomic_store_explicit(&lazy->task_ready[id],0,memory_order_relaxed);
            int projected = scene_lazy_project(mesh,desc->bounds+group*6,&lazy->bounds[id],f->context->fb.w,f->context->fb.h);
            if (projected < 0) return -1;
#ifdef SOFTGL_LAZY_UNBOUNDED
            /* Oracle includes all groups, including projected-empty ones. */
            if (!projected) lazy->bounds[id] = (scene_occlusion_packet){0,
                (uint16_t)f->context->fb.w,0,(uint16_t)f->context->fb.h,0.f,0};
#else
            if (!projected) { SCENE_LAZY_COUNT(9,1); continue; }
#endif
            SCENE_LAZY_COUNT(8,projected == 2);
            const scene_occlusion_packet *bound = &lazy->bounds[id];
            if (bound->eligible) {
                if (bound->near < nearest) nearest = bound->near;
                if (bound->near > farthest) farthest = bound->near;
            }
            sg_worker_pool *pool = f->context->workers;
            int first_bin = pool->column_bin[bound->left], last_bin = pool->column_bin[bound->right-1];
#ifdef SOFTGL_LAZY_UNBOUNDED
            first_bin = 0; last_bin = pool->nbins-1;
#endif
            for (int bin = first_bin; bin <= last_bin; bin++) g->bins[bin].count++;
        }
    }
    SCENE_LAZY_COUNT(5,groups); SCENE_LAZY_COUNT(6,g->vertices);
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        scene_geometry_bin *list = &g->bins[bin];
        if (list->count > list->capacity) {
            uint32_t capacity = list->capacity ? list->capacity : 1024;
            while (capacity < list->count) capacity *= 2;
            size_t delta = (size_t)(capacity-list->capacity)*sizeof(*list->references);
            if (delta > SCENE_REFERENCE_BYTES-g->reference_bytes) return -1;
            uint64_t *next = realloc(list->references,(size_t)capacity*sizeof(*next));
            if (!next) return -1;
            list->references = next; list->capacity = capacity; g->reference_bytes += delta;
        }
        list->count = 0;
    }
    const sg_worker_pool *pool = f->context->workers;
    for (unsigned id = 0; id < (unsigned)g->task_count; id++) {
        const scene_occlusion_packet *bound = &lazy->bounds[id];
        if (bound->left >= bound->right) continue;
#if SCENE_LAZY_NORMALIZED_KEYS
        /* Whole-frame eligible range is identical in the all-bin oracle.
         * Keep uncertain groups first without crushing all far depths into
         * the last few buckets of raw normalized-device depth. */
        float scaled = farthest > nearest ? (bound->near-nearest)*(254.f/(farthest-nearest)) : 0.f;
        unsigned key = bound->eligible ? 1u+(unsigned)fminf(254.f,fmaxf(0.f,scaled)) : 0u;
#else
        unsigned key = (unsigned)fminf(255.f,fmaxf(0.f,bound->near*255.f));
#endif
        if (handle->mode == 2 && f->materials[g->tasks[id].material].alpha_test) key += 256;
        int first_bin = pool->column_bin[bound->left], last_bin = pool->column_bin[bound->right-1];
#ifdef SOFTGL_LAZY_UNBOUNDED
        first_bin = 0; last_bin = pool->nbins-1;
#endif
        for (int bin = first_bin; bin <= last_bin; bin++) {
            scene_geometry_bin *list = &g->bins[bin];
            list->references[list->count++] = ((uint64_t)key << 32)|id;
            SCENE_LAZY_COUNT(7,1);
        }
    }
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_lazy_worker,f);
    return atomic_load_explicit(&f->failed,memory_order_relaxed) ? -1 : 1;
}
