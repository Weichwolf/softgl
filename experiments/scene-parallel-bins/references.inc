static void scene_geometry_references(void *data) {
    struct sg_scene_visibility *f = data;
    scene_geometry *g = f->geometry;
    for (;;) {
        int id = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (id >= g->task_count || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_task *task = &g->tasks[id];
        uint32_t cursor[SG_MAX_BINS];
        memcpy(cursor,task->bin_offsets,sizeof(cursor));
        for (uint32_t k = 0; k < task->count; k++) {
            const scene_primitive *p = &task->primitives[k];
            for (int bin = p->first_bin; bin <= p->last_bin; bin++)
                g->bins[bin].references[cursor[bin]++] = ((uint32_t)id << SCENE_PRIMITIVE_BITS)|k;
        }
    }
}
