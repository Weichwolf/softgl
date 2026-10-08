/* Cached source geometry only; visibility and vertex transforms are current-frame. */
void softgl_scene_static_groups(GLuint epoch) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) c->scene_visibility->static_epoch = epoch;
}

static void scene_groups_clear(scene_geometry *g) {
    if (g->static_entries) for (int i = 0; i < SCENE_MATERIALS; i++) {
        free(g->static_entries[i].bounds); free(g->static_entries[i].live);
#if SCENE_GROUP_UNIQUE
        free(g->static_entries[i].references);
#endif
    }
    free(g->static_entries); g->static_entries = NULL; g->static_bytes = 0;
}

static int scene_groups_bounds(scene_geometry *g, scene_static_entry *entry,
    const scene_mesh *m) {
    if (entry->bounds && entry->positions == m->positions && entry->indices == m->indices &&
        entry->stride == m->stride && entry->count == m->count &&
        entry->minimum == m->minimum && entry->span == m->span) return 1;
    uint32_t groups = (m->count+SCENE_GROUP_INDICES-1)/SCENE_GROUP_INDICES;
    size_t bytes = (size_t)groups*(sizeof(scene_static_group)+1);
    size_t old = (size_t)entry->groups*(sizeof(scene_static_group)+1);
#if SCENE_GROUP_UNIQUE
    bytes += (size_t)m->count*sizeof(uint32_t);
    if (entry->references) old += (size_t)entry->count*sizeof(uint32_t);
#endif
    if (bytes > SCENE_GROUP_CACHE_BYTES || g->static_bytes-old > SCENE_GROUP_CACHE_BYTES-bytes) return 0;
    scene_static_group *bounds = malloc((size_t)groups*sizeof(*bounds));
    uint8_t *live = malloc(groups);
    if (!bounds || !live) { free(bounds); free(live); return 0; }
#if SCENE_GROUP_UNIQUE
    uint32_t *references = malloc((size_t)m->count*sizeof(uint32_t)), reference_count = 0;
    if (!references) { free(bounds); free(live); return 0; }
#endif
    /* The old frontend validates holes in the whole input span too. */
    for (uint32_t i = 0; i < m->span; i++) {
        const float *p = (const float *)((const uint8_t *)m->positions+(size_t)(m->minimum+i)*m->stride);
        if (!isfinite(p[0]) || !isfinite(p[1]) || !isfinite(p[2])) {
#if SCENE_GROUP_UNIQUE
            free(references);
#endif
            free(bounds); free(live); return 0;
        }
    }
    for (uint32_t group = 0; group < groups; group++) {
        scene_static_group *b = &bounds[group];
        for (int k = 0; k < 3; k++) { b->lo[k] = INFINITY; b->hi[k] = -INFINITY; b->axis[k] = 0.f; }
        b->cutoff = 1.f;
#if SCENE_GROUP_UNIQUE
        b->first = reference_count; b->count = 0;
#endif
        uint32_t end = (group+1)*SCENE_GROUP_INDICES;
        if (end > m->count) end = m->count;
        double normals[SCENE_GROUP_TRIANGLES][3], axis[3] = {0,0,0}; int n = 0;
        for (uint32_t i = group*SCENE_GROUP_INDICES; i < end; i += 3) {
            const float *p[3];
            for (int j = 0; j < 3; j++) {
#if SCENE_GROUP_UNIQUE
                uint32_t vertex = m->indices[i+(unsigned)j], at;
                for (at = b->first; at < reference_count && references[at] != vertex; at++) { }
                if (at == reference_count) { references[reference_count++] = vertex; b->count++; }
#endif
                p[j] = (const float *)((const uint8_t *)m->positions+(size_t)m->indices[i+(unsigned)j]*m->stride);
                for (int k = 0; k < 3; k++) {
                    if (p[j][k] < b->lo[k]) b->lo[k] = p[j][k];
                    if (p[j][k] > b->hi[k]) b->hi[k] = p[j][k];
                }
            }
#if SCENE_GROUP_CONES
            double a[3], d[3], normal[3];
            for (int k = 0; k < 3; k++) { a[k] = (double)p[1][k]-p[0][k]; d[k] = (double)p[2][k]-p[0][k]; }
            normal[0] = a[1]*d[2]-a[2]*d[1];
            normal[1] = a[2]*d[0]-a[0]*d[2];
            normal[2] = a[0]*d[1]-a[1]*d[0];
            double length = sqrt(normal[0]*normal[0]+normal[1]*normal[1]+normal[2]*normal[2]);
            if (length > 0) {
                for (int k = 0; k < 3; k++) { normals[n][k] = normal[k]/length; axis[k] += normals[n][k]; }
                n++;
            }
#endif
        }
#if SCENE_GROUP_CONES
        double length = sqrt(axis[0]*axis[0]+axis[1]*axis[1]+axis[2]*axis[2]);
        if (n && length > 1e-12) {
            for (int k = 0; k < 3; k++) b->axis[k] = (float)(axis[k]/length);
            double minimum = 1;
            for (int j = 0; j < n; j++) {
                double dot = normals[j][0]*b->axis[0]+normals[j][1]*b->axis[1]+normals[j][2]*b->axis[2];
                if (dot < minimum) minimum = dot;
            }
            minimum -= 1e-4;
            if (minimum > .1) b->cutoff = (float)(sqrt(fmax(0,1-minimum*minimum))+1e-4);
        }
#else
        (void)normals; (void)axis; (void)n;
#endif
    }
    free(entry->bounds); free(entry->live); g->static_bytes = g->static_bytes-old+bytes;
#if SCENE_GROUP_UNIQUE
    free(entry->references); entry->references = references;
#endif
    entry->bounds = bounds; entry->live = live; entry->groups = groups;
    entry->positions = m->positions; entry->indices = m->indices; entry->stride = m->stride;
    entry->count = m->count; entry->minimum = m->minimum; entry->span = m->span;
    entry->whole = bounds[0];
    for (uint32_t i = 1; i < groups; i++) for (int k = 0; k < 3; k++) {
        if (bounds[i].lo[k] < entry->whole.lo[k]) entry->whole.lo[k] = bounds[i].lo[k];
        if (bounds[i].hi[k] > entry->whole.hi[k]) entry->whole.hi[k] = bounds[i].hi[k];
    }
    return 1;
}

/* Same conservative float-transform margin as the accepted cluster filter. */
static int scene_groups_plane_test(const scene_static_group *b,
    const scene_static_entry *e, int inside) {
    for (int p = 0; p < 6; p++) {
        double value = e->planes[p][3], magnitude = fabs(value), margin = e->error[p][3];
        for (int k = 0; k < 3; k++) {
            double plane = e->planes[p][k];
            value += plane*((plane >= 0) != inside ? b->hi[k] : b->lo[k]);
            double extent = fmax(fabs(b->lo[k]),fabs(b->hi[k]));
            magnitude += fabs(plane)*extent; margin += e->error[p][k]*extent;
        }
        double epsilon = margin+1e-5*magnitude+1e-6;
        if (!inside && value < -epsilon) return 1;
        if (inside && value <= epsilon) return 0;
    }
    return inside;
}

static void scene_groups_camera(scene_static_entry *e, const scene_mesh *m) {
    e->cone_sign = 0;
#if SCENE_GROUP_CONES
    if (!m->cull_enabled || !scene_geometry_fast_matrix(m) ||
        m->projection.m[0]*m->projection.m[5] <= 0.f ||
        (m->cull_face != GL_FRONT && m->cull_face != GL_BACK)) return;
    const float *v = m->modelview.m;
    double a[3] = {v[0],v[1],v[2]}, b[3] = {v[4],v[5],v[6]}, d[3] = {v[8],v[9],v[10]};
    double cross[3][3] = {
        {b[1]*d[2]-b[2]*d[1],b[2]*d[0]-b[0]*d[2],b[0]*d[1]-b[1]*d[0]},
        {d[1]*a[2]-d[2]*a[1],d[2]*a[0]-d[0]*a[2],d[0]*a[1]-d[1]*a[0]},
        {a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0]}};
    double determinant = a[0]*cross[0][0]+a[1]*cross[0][1]+a[2]*cross[0][2];
    if (!(determinant > 1e-6)) return;
    for (int k = 0; k < 3; k++) {
        e->camera[k] = -(cross[k][0]*v[12]+cross[k][1]*v[13]+cross[k][2]*v[14])/determinant;
        if (!isfinite(e->camera[k])) return;
    }
    e->cone_sign = (m->front_face == GL_CCW ? 1 : -1)*(m->cull_face == GL_BACK ? 1 : -1);
#else
    (void)m;
#endif
}

static int scene_groups_back(const scene_static_group *b, const scene_static_entry *e) {
    if (!e->cone_sign || b->cutoff >= 1.f) return 0;
    double radius2 = 0, length2 = 0, dot = 0;
    for (int k = 0; k < 3; k++) {
        double half = ((double)b->hi[k]-b->lo[k])*.5;
        double view = ((double)b->hi[k]+b->lo[k])*.5-e->camera[k];
        radius2 += half*half; length2 += view*view;
        dot += view*b->axis[k]*e->cone_sign;
    }
    double length = sqrt(length2), radius = sqrt(radius2);
    return dot > b->cutoff*length+radius+1e-4*(length+radius+1);
}

static void scene_groups_classify(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        int id = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (id >= g->task_count) break;
        scene_geometry_task *t = &g->tasks[id]; const scene_mesh *m = &f->materials[t->material].mesh;
        if (m->group_mode != 1) continue;
        scene_static_entry *e = &g->static_entries[t->material];
        for (uint32_t first = t->first; first < t->end; first += SCENE_GROUP_INDICES) {
            uint32_t group = first/SCENE_GROUP_INDICES;
            int live = !scene_groups_plane_test(&e->bounds[group],e,0) && !scene_groups_back(&e->bounds[group],e);
            e->live[group] = (uint8_t)live;
            if (!live) continue;
#if SCENE_GROUP_UNIQUE
            const scene_static_group *b = &e->bounds[group];
            for (uint32_t i = b->first; i < b->first+b->count; i++)
                atomic_store_explicit(&g->ready[m->offset+e->references[i]-m->minimum],1,memory_order_relaxed);
#else
            uint32_t end = first+SCENE_GROUP_INDICES; if (end > t->end) end = t->end;
            for (uint32_t i = first; i < end; i++)
                atomic_store_explicit(&g->ready[m->offset+m->indices[i]-m->minimum],1,memory_order_relaxed);
#endif
        }
    }
}

static void scene_groups_prepare(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry; int partial = 0;
    for (int i = 0; i < f->material_count; i++) f->materials[i].mesh.group_mode = 0;
    if (!f->static_epoch) return;
    if (g->static_epoch != f->static_epoch) {
        scene_groups_clear(g); g->static_epoch = f->static_epoch;
    }
    if (!g->static_entries) g->static_entries = calloc(SCENE_MATERIALS,sizeof(*g->static_entries));
    if (!g->static_entries) return;
    for (int i = 0; i < f->material_count; i++) {
        scene_mesh *m = &f->materials[i].mesh; if (!m->positions) continue;
        scene_static_entry *e = &g->static_entries[i];
        if (!scene_groups_bounds(g,e,m)) continue;
        double matrix[4][4], absolute[4][4]; int finite = 1;
        for (int r = 0; r < 4; r++) for (int k = 0; k < 4; k++) {
            matrix[r][k] = absolute[r][k] = 0;
            for (int j = 0; j < 4; j++) {
                double term = (double)m->projection.m[j*4+r]*m->modelview.m[k*4+j];
                matrix[r][k] += term; absolute[r][k] += fabs(term);
            }
            finite &= isfinite(matrix[r][k]);
        }
        if (!finite) continue;
        for (int p = 0; p < 6; p++) for (int k = 0; k < 4; k++) {
            e->planes[p][k] = matrix[3][k]+(p&1 ? -1 : 1)*matrix[p/2][k];
            e->error[p][k] = (absolute[3][k]+absolute[p/2][k])*1e-5;
        }
        scene_groups_camera(e,m);
        if (scene_groups_plane_test(&e->whole,e,0)) m->group_mode = 2;
        else if (e->cone_sign || !scene_groups_plane_test(&e->whole,e,1)) {
            m->group_mode = 1; partial = 1;
            for (uint32_t j = 0; j < m->span; j++)
                atomic_store_explicit(&g->ready[m->offset+j],0,memory_order_relaxed);
        }
    }
    if (partial) {
        atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(f->context,scene_groups_classify,f);
    }
    if (getenv("SOFTGL_GROUP_STATS")) {
        uint64_t groups = 0, rejected = 0, referenced = 0;
        for (int i = 0; i < f->material_count; i++) {
            scene_mesh *m = &f->materials[i].mesh; if (!m->positions) continue;
            scene_static_entry *e = &g->static_entries[i]; groups += e->groups;
            if (m->group_mode == 2) rejected += e->groups;
            else if (m->group_mode == 1) for (uint32_t j = 0; j < e->groups; j++) rejected += !e->live[j];
            if (m->group_mode == 0) referenced += m->span;
            else if (m->group_mode == 1) for (uint32_t j = 0; j < m->span; j++)
                referenced += atomic_load_explicit(&g->ready[m->offset+j],memory_order_relaxed) != 0;
        }
        fprintf(stderr,"GROUPS {\"groups\":%llu,\"rejected\":%llu,\"positionsBefore\":%u,\"referencedPositions\":%llu,\"cacheBytes\":%zu}\n",
            (unsigned long long)groups,(unsigned long long)rejected,g->vertices,(unsigned long long)referenced,g->static_bytes);
    }
}
