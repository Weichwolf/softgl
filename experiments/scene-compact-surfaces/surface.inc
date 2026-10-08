/* Indices stay valid when a stripe grows its dense surface array. */
static uint32_t scene_surface_record(struct sg_scene_visibility *f, int bin) {
    scene_bin *b = &f->bins[bin];
    if (b->surface_count == b->surface_capacity) {
        uint32_t capacity = b->surface_capacity ? b->surface_capacity*2 : 1024;
        size_t delta = (size_t)(capacity-b->surface_capacity)*sizeof(scene_surface);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_surface *next = NULL;
        if (delta <= SCENE_TRIANGLE_BYTES-f->triangle_bytes)
            next = realloc(b->surfaces,(size_t)capacity*sizeof(scene_surface));
        if (next) {
            b->surfaces = next; b->surface_capacity = capacity;
            f->triangle_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
            return UINT32_MAX;
        }
    }
    return b->surface_count++;
}
