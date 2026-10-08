/* Stable 256-bucket near-first order of existing 16-triangle packet references.
 * Partitioning precedes rasterization on each owned bin. No previous frame's
 * visibility is reused, and no geometry is removed by this ordering step. */
static void scene_geometry_order_bin(struct sg_scene_visibility *f, scene_geometry_bin *bin) {
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
        for (unsigned live = mask; live; live &= live-1) {
            unsigned lane = (unsigned)__builtin_ctz(live);
            float z = task->primitives[first+lane].nearest_depth;
            if (z < depth) depth = z;
        }
        if (depth < nearest) nearest = depth;
        if (depth > farthest) farthest = depth;
        bin->order[i].reference = reference;
        bin->order[i].depth = depth;
        bin->order[i].key = f->depth_order == 2 && f->materials[task->material].alpha_test ? 256u : 0u;
    }
    float inverse = farthest > nearest ? 255.f/(farthest-nearest) : 0.f;
    if (!isfinite(inverse)) inverse = 0.f;
    for (uint32_t i = 0; i < bin->count; i++) {
        float scaled = (bin->order[i].depth-nearest)*inverse;
        unsigned depth_key = scaled < 0.f ? 0u : scaled > 255.f ? 255u : (unsigned)scaled;
        bin->order[i].key += depth_key;
        counts[bin->order[i].key]++;
    }
    uint32_t first = 0;
    for (int i = 0; i < 512; i++) { cursors[i] = first; first += counts[i]; }
    for (uint32_t i = 0; i < bin->count; i++)
        bin->references[cursors[bin->order[i].key]++] = bin->order[i].reference;
}
