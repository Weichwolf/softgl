#define SCENE_SURFACE_INDEX_BYTES (32u*1024u*1024u)

static void scene_shared_surface_pixels(void *data);

static int scene_shared_surface_prepare(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
    for (int i = 0; i < g->task_count; i++) {
        scene_geometry_task *task = &g->tasks[i];
        if (!task->count) continue;
        if (task->surface_capacity < task->count) {
            uint32_t capacity = task->count;
            size_t delta = (size_t)(capacity-task->surface_capacity)*sizeof(uint32_t);
            if (delta > SCENE_SURFACE_INDEX_BYTES-g->surface_index_bytes) return 0;
            atomic_uint *next = realloc(task->surface_map,(size_t)capacity*sizeof(uint32_t));
            if (!next) return 0;
            task->surface_map = next; task->surface_capacity = capacity;
            g->surface_index_bytes += delta;
        }
        for (uint32_t j = 0; j < task->count; j++) atomic_init(&task->surface_map[j],UINT32_MAX);
    }
    uint32_t capacity = (uint32_t)f->context->fb.w*f->context->fb.h;
    if (f->surface_capacity < capacity) {
        size_t delta = (size_t)(capacity-f->surface_capacity)*sizeof(scene_triangle);
        if (delta > SCENE_TRIANGLE_BYTES-f->triangle_bytes) return 0;
        scene_triangle *next = realloc(f->surfaces,(size_t)capacity*sizeof(scene_triangle));
        if (!next) return 0;
        f->surfaces = next; f->surface_capacity = capacity; f->triangle_bytes += delta;
    }
    atomic_store_explicit(&f->surface_next,0,memory_order_relaxed);
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_shared_surface_pixels,f);
    f->surface_count = (uint32_t)atomic_load_explicit(&f->surface_next,memory_order_relaxed);
    return !atomic_load_explicit(&f->failed,memory_order_relaxed);
}

static uint32_t scene_shared_surface(struct sg_scene_visibility *f, uint32_t id) {
    scene_geometry *g = f->geometry;
    unsigned task_id = id >> SCENE_PRIMITIVE_BITS, primitive_id = id & SCENE_PRIMITIVE_MASK;
    if (task_id >= (unsigned)g->task_count || primitive_id >= g->tasks[task_id].count) return UINT32_MAX;
    scene_geometry_task *task = &g->tasks[task_id];
    atomic_uint *index = &task->surface_map[primitive_id];
    uint32_t found = atomic_load_explicit(index,memory_order_relaxed);
    if (found != UINT32_MAX) return found;
    uint32_t slot = (uint32_t)atomic_fetch_add_explicit(&f->surface_next,1,memory_order_relaxed);
    if (slot >= f->surface_capacity) return UINT32_MAX;
    f->surfaces[slot].primitive = NULL;
    if (!atomic_compare_exchange_strong_explicit(index,&found,slot,memory_order_relaxed,memory_order_relaxed)) return found;
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
    scene_triangle *t = &f->surfaces[slot];
    t->primitive = p; t->material = p->material;
    for (int j = 0; j < 3; j++) t->inverse_w[j] = ndc[j].w;
    t->inverse_area = 1.f/(float)area;
    int32_t edges[2][3] = {
        {(x2-x1)*(8-y1)-(y2-y1)*(8-x1),-(y2-y1)*16,(x2-x1)*16},
        {(x0-x2)*(8-y2)-(y0-y2)*(8-x2),-(y0-y2)*16,(x0-x2)*16}};
    for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) t->edge[k][j] = edges[k][j];
    return slot;
}

static void scene_shared_surface_pixels(void *data) {
    struct sg_scene_visibility *f = data;
    scene_geometry *g = f->geometry;
    uint32_t pixels = (uint32_t)f->context->fb.w*f->context->fb.h;
    for (;;) {
        uint32_t first = (uint32_t)atomic_fetch_add_explicit(&g->next_task,512,memory_order_relaxed);
        if (first >= pixels) break;
        uint32_t end = first+512 < pixels ? first+512 : pixels;
        for (uint32_t i = first; i < end; i++) if (f->pixel_material[i] != UINT16_MAX) {
            uint32_t id = scene_shared_surface(f,f->winner[i]);
            if (id == UINT32_MAX) { scene_geometry_fail(f); continue; }
            f->winner[i] = id;
        }
    }
}

static void scene_shared_surface_attributes(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    for (;;) {
        unsigned first = (unsigned)atomic_fetch_add_explicit(&g->next_task,128,memory_order_relaxed);
        if (first >= f->surface_count) break;
        unsigned end = first+128 < f->surface_count ? first+128 : f->surface_count;
        for (unsigned i = first; i < end; i++) {
            scene_triangle *t = &f->surfaces[i]; const scene_primitive *p = t->primitive;
            if (!p) continue;
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
