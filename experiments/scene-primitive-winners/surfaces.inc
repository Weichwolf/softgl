#define SCENE_SURFACE_INDEX_BYTES (32u*1024u*1024u)

static int scene_shared_surface_prepare(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
    for (int i = 0; i < g->task_count; i++) {
        scene_geometry_task *task = &g->tasks[i];
        if (!task->count) continue;
        if (task->surface_capacity < task->count) {
            uint32_t capacity = task->count;
            size_t delta = (size_t)(capacity-task->surface_capacity)*sizeof(uint32_t);
            if (delta > SCENE_SURFACE_INDEX_BYTES-g->surface_index_bytes) return 0;
            uint32_t *next = realloc(task->surface_map,(size_t)capacity*sizeof(uint32_t));
            if (!next) return 0;
            task->surface_map = next; task->surface_capacity = capacity;
            g->surface_index_bytes += delta;
        }
        memset(task->surface_map,255,(size_t)task->count*sizeof(uint32_t));
    }
    return 1;
}

static uint32_t scene_shared_surface(struct sg_scene_visibility *f, uint32_t id) {
    scene_geometry *g = f->geometry;
    unsigned task_id = id >> SCENE_PRIMITIVE_BITS, primitive_id = id & SCENE_PRIMITIVE_MASK;
    if (task_id >= (unsigned)g->task_count || primitive_id >= g->tasks[task_id].count) return UINT32_MAX;
    scene_geometry_task *task = &g->tasks[task_id];
    uint32_t *index = &task->surface_map[primitive_id];
    if (*index != UINT32_MAX) return *index;
    if (f->surface_count == f->surface_capacity) {
        uint32_t capacity = f->surface_capacity ? f->surface_capacity*2 : 1024;
        size_t delta = (size_t)(capacity-f->surface_capacity)*sizeof(scene_triangle);
        if (delta > SCENE_TRIANGLE_BYTES-f->triangle_bytes) return UINT32_MAX;
        scene_triangle *next = realloc(f->surfaces,(size_t)capacity*sizeof(scene_triangle));
        if (!next) return UINT32_MAX;
        f->surfaces = next; f->surface_capacity = capacity; f->triangle_bytes += delta;
    }
    const scene_primitive *p = &task->primitives[primitive_id];
    const scene_mesh *m = &f->materials[p->material].mesh;
    const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL : &g->tasks[p->task].clipped[p->clipped];
    sg_vec4 ndc[3];
    for (int j = 0; j < 3; j++) ndc[j] = clipped ? clipped->ndc[j] : g->positions[m->offset+p->indices[j]-m->minimum].ndc;
    int32_t x0 = (int32_t)(ndc[0].x*16.f), y0 = (int32_t)(ndc[0].y*16.f);
    int32_t x1 = (int32_t)(ndc[1].x*16.f), y1 = (int32_t)(ndc[1].y*16.f);
    int32_t x2 = (int32_t)(ndc[2].x*16.f), y2 = (int32_t)(ndc[2].y*16.f);
    int32_t area = (x1-x0)*(y2-y0)-(y1-y0)*(x2-x0);
    if (area <= 0) return UINT32_MAX;
    scene_triangle *t = &f->surfaces[f->surface_count];
    t->primitive = p; t->material = p->material;
    for (int j = 0; j < 3; j++) t->inverse_w[j] = ndc[j].w;
    t->inverse_area = 1.f/(float)area;
    int32_t edges[2][3] = {
        {(x2-x1)*(8-y1)-(y2-y1)*(8-x1),-(y2-y1)*16,(x2-x1)*16},
        {(x0-x2)*(8-y2)-(y0-y2)*(8-x2),-(y0-y2)*16,(x0-x2)*16}};
    for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) t->edge[k][j] = edges[k][j];
    *index = f->surface_count++;
    return *index;
}

static void scene_shared_surface_attributes(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        unsigned first = (unsigned)atomic_fetch_add_explicit(&g->next_task,128,memory_order_relaxed);
        if (first >= f->surface_count) break;
        unsigned end = first+128 < f->surface_count ? first+128 : f->surface_count;
        for (unsigned i = first; i < end; i++) {
            scene_triangle *t = &f->surfaces[i]; const scene_primitive *p = t->primitive;
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
