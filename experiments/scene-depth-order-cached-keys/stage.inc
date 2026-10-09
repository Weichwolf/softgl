/* Stable 256-bucket near-first order of existing 16-triangle packet references.
 * Partitioning precedes rasterization on each owned bin. No previous frame's
 * visibility is reused, and no geometry is removed by this ordering step. */
#ifdef SOFTGL_SCENE_ORDER_AUDIT
static atomic_ullong scene_order_counts[2];
unsigned long long softgl_scene_order_audit(unsigned index) {
    return index < 2 ? atomic_load_explicit(&scene_order_counts[index],memory_order_relaxed) : 0;
}
#endif
typedef struct {
    struct sg_scene_visibility *frame;
    scene_order_reference *data;
    uint32_t offsets[SG_MAX_BINS], mode;
    atomic_int next_bin;
} scene_order_job;

static __attribute__((noinline)) void scene_geometry_order_bin(
    struct sg_scene_visibility *f, scene_geometry_bin *bin,
    scene_order_reference *order, uint32_t mode) {
    if (bin->count < 2) return;
    uint32_t counts[512] = {0}, cursors[512];
    float nearest = 1.f, farthest = 0.f;
    scene_geometry *g = f->geometry;
    for (uint32_t i = 0; i < bin->count; i++) {
        uint64_t reference = bin->references[i];
        unsigned mask = (unsigned)reference & 65535u;
        uint32_t base = (uint32_t)(reference >> 16);
        scene_geometry_task *task = &g->tasks[base >> SCENE_PRIMITIVE_BITS];
        unsigned first = base & SCENE_PRIMITIVE_MASK;
        float depth = 1.f;
        /* A reference has up to four existing four-triangle summaries.
         * Ignore groups absent from this bin. Ineligible packets sort first;
         * their near field is deliberately uninitialized in production. */
        for (unsigned offset = 0; offset < 16; offset += 4) {
            if (!((mask >> offset)&15u)) continue;
            const scene_occlusion_packet *packet =
                &task->occlusion_packets[(first+offset)/SCENE_OCCLUSION_PACKET_TRIANGLES];
            float z = packet->eligible ? packet->near : 0.f;
            if (z < depth) depth = z;
        }
        if (depth < nearest) nearest = depth;
        if (depth > farthest) farthest = depth;
        order[i].reference = reference;
        order[i].depth = depth;
        order[i].key = mode == 2 && f->materials[task->material].alpha_test ? 256u : 0u;
    }
    float inverse = farthest > nearest ? 255.f/(farthest-nearest) : 0.f;
    if (!isfinite(inverse)) inverse = 0.f;
    for (uint32_t i = 0; i < bin->count; i++) {
        float scaled = (order[i].depth-nearest)*inverse;
        unsigned depth_key = scaled < 0.f ? 0u : scaled > 255.f ? 255u : (unsigned)scaled;
        order[i].key += depth_key;
        counts[order[i].key]++;
    }
    uint32_t first = 0;
    for (int i = 0; i < 512; i++) { cursors[i] = first; first += counts[i]; }
    for (uint32_t i = 0; i < bin->count; i++)
        bin->references[cursors[order[i].key]++] = order[i].reference;
#ifdef SOFTGL_SCENE_ORDER_AUDIT
    unsigned moved = 0;
    for (uint32_t i = 0; i < bin->count; i++) moved += bin->references[i] != order[i].reference;
    atomic_fetch_add_explicit(&scene_order_counts[0],1,memory_order_relaxed);
    atomic_fetch_add_explicit(&scene_order_counts[1],moved,memory_order_relaxed);
#endif
}

static void scene_geometry_order_worker(void *data) {
    scene_order_job *job = data;
    struct sg_scene_visibility *f = job->frame;
    const sg_worker_pool *pool = f->context->workers;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&job->next_bin,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        scene_geometry_order_bin(f,&f->geometry->bins[bin],
            job->data+job->offsets[bin],job->mode);
    }
}

static __attribute__((noinline)) int scene_geometry_order_stage(struct sg_scene_visibility *f) {
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 0;
    scene_geometry *g = f->geometry;
    scene_order_storage *storage = &f->bins[SG_MAX_BINS-1].order_storage;
    const sg_worker_pool *pool = f->context->workers;
    scene_order_job job = {0};
    job.frame = f; job.mode = storage->mode;
    atomic_init(&job.next_bin,0);
    uint32_t total = 0;
    for (int bin = 0; bin < pool->nbins; bin++) {
        /* Exclusive scratch cache lines up to 128 bytes per owned slice. */
        total = (total+7u)&~7u; job.offsets[bin] = total;
        total += g->bins[bin].count;
    }
    if (!total) return 1;
    if (total > storage->capacity) {
        uint32_t capacity = storage->capacity ? storage->capacity : 1024;
        while (capacity < total) capacity *= 2;
        size_t delta = (size_t)(capacity-storage->capacity)*sizeof(*storage->data);
        if (delta > SCENE_REFERENCE_BYTES-g->reference_bytes) return 0;
        scene_order_reference *next = sg_aligned_alloc((size_t)capacity*sizeof(*next),128);
        if (!next) return 0;
        sg_aligned_free(storage->data); storage->data = next;
        storage->capacity = capacity; g->reference_bytes += delta;
    }
    job.data = storage->data;
    sg_workers_run_callback(f->context,scene_geometry_order_worker,&job);
    return 1;
}
