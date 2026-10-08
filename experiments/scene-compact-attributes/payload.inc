#ifdef SOFTGL_SCENE_RECORD_AUDIT
static atomic_ullong scene_record_counts[3];
unsigned long long softgl_scene_record_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_record_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_RECORD_AUDIT(i,n) atomic_fetch_add_explicit(&scene_record_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_RECORD_AUDIT(i,n) ((void)0)
#endif

/* Only clipped winners and ordinary captured triangles need private copies. */
static uint32_t scene_payload_allocate(struct sg_scene_visibility *f, int bin) {
    scene_bin *b = &f->bins[bin];
    if (b->payload_count == b->payload_capacity) {
        uint32_t capacity = b->payload_capacity ? b->payload_capacity*2 : 64;
        size_t delta = (size_t)(capacity-b->payload_capacity)*sizeof(scene_triangle_payload);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle_payload *next = NULL;
        if (delta <= SCENE_TRIANGLE_BYTES-f->triangle_bytes)
            next = realloc(b->payloads,(size_t)capacity*sizeof(*next));
        if (next) {
            b->payloads = next; b->payload_capacity = capacity;
            f->triangle_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
            return UINT32_MAX;
        }
    }
    return b->payload_count++;
}
