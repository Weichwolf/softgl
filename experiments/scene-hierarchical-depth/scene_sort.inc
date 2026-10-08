/* Stable coarse front-to-back order. Original order is preserved within each
 * adaptive depth bucket. This batch contains no blended material commands. */
#define SCENE_SORT_BYTES (32u * 1024u * 1024u)

static void scene_geometry_sort(struct sg_scene_visibility *f, scene_geometry_bin *b) {
    scene_geometry *g = f->geometry;
    if (b->count < 2) return;
    if (b->count > b->sort_capacity) {
        uint32_t capacity = b->sort_capacity ? b->sort_capacity : 1024;
        while (capacity < b->count) capacity *= 2;
        size_t delta = (size_t)(capacity-b->sort_capacity)*sizeof(scene_sort_item);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_sort_item *next = NULL;
        if (delta <= SCENE_SORT_BYTES-g->sort_bytes)
            next = realloc(b->sort_items,(size_t)capacity*sizeof(*next));
        if (next) { b->sort_items = next; b->sort_capacity = capacity; g->sort_bytes += delta; }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) return;
    }
    float minimum = INFINITY, maximum = -INFINITY;
    for (uint32_t i = 0; i < b->count; i++) {
        uint32_t id = b->references[i];
        const scene_primitive *p = &g->tasks[id >> SCENE_PRIMITIVE_BITS].primitives[id & SCENE_PRIMITIVE_MASK];
#ifdef SCENE_SORT_PREPARED_KEY
        float near = p->minimum_z;
        if (!(near >= 0.f && near <= 1.f)) return;
#else
        const scene_mesh *m = &f->materials[p->material].mesh;
        const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL : &g->tasks[p->task].clipped[p->clipped];
        float near = INFINITY;
        for (int j = 0; j < 3; j++) {
            float z = clipped ? clipped->ndc[j].z : g->positions[m->offset+p->indices[j]-m->minimum].ndc.z;
            if (!(z >= 0.f && z <= 1.f)) return;
            if (z < near) near = z;
        }
#endif
        b->sort_items[i].key.depth = near; b->sort_items[i].reference = id;
        if (near < minimum) minimum = near;
        if (near > maximum) maximum = near;
    }
    if (!(maximum > minimum)) return;
    float scale = 255.f/(maximum-minimum);
    if (!isfinite(scale)) return;
    uint32_t counts[256] = {0};
    for (uint32_t i = 0; i < b->count; i++) {
        unsigned key = (unsigned)((b->sort_items[i].key.depth-minimum)*scale);
        if (key > 255) key = 255;
        b->sort_items[i].key.bucket = key; counts[key]++;
    }
    uint32_t first = 0;
    for (int i = 0; i < 256; i++) { uint32_t n = counts[i]; counts[i] = first; first += n; }
    for (uint32_t i = 0; i < b->count; i++) {
        const scene_sort_item *item = &b->sort_items[i];
        b->references[counts[item->key.bucket]++] = item->reference;
    }
}
