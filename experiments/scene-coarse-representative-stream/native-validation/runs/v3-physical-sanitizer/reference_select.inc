static void scene_coarse_select_reference(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    const float *depth = c->fb.samples ? c->fb.sample_depth : c->fb.depth;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        memset(counts, 0, (size_t)f->material_count*sizeof(*counts));
        if (f->bins[bin].count) memset(f->bins[bin].visible, 0, f->bins[bin].count);
        for (int y = 0; y < c->fb.h; y += 2) {
            for (int x = pool->bins[bin].ix0; x < pool->bins[bin].ix1; x += 2) {
                uint32_t group[16]; unsigned count = 0;
                for (int dy = 0; dy < 2 && y+dy < c->fb.h; dy++)
                    for (int dx = 0; dx < 2 && x+dx < pool->bins[bin].ix1; dx++)
                        for (unsigned sample = 0; sample < n; sample++) {
                            uint32_t p = ((uint32_t)(y+dy)*(unsigned)c->fb.w+(unsigned)(x+dx))*n+sample;
                            if (f->pixel_material[p] != UINT16_MAX && (!c->fb.samples || f->shade_mask[p]))
                                group[count++] = p;
                        }
                unsigned assigned = 0;
                for (unsigned i = 0; i < count; i++) if (!(assigned & (1u << i))) {
                    uint32_t p = group[i], id = f->winner[p];
                    f->coarse.source[p] = p; assigned |= 1u << i;
                    counts[f->pixel_material[p]]++;
                    if ((id >> SCENE_INDEX_BITS) != (unsigned)bin)
                        atomic_store_explicit(&f->failed, 1, memory_order_relaxed);
                    else f->bins[bin].visible[id & SCENE_INDEX_MASK] = 1;
                    for (unsigned j = i+1; j < count; j++) if (!(assigned & (1u << j))) {
                        uint32_t q = group[j];
                        if (f->pixel_material[p] == f->pixel_material[q] && fabsf(depth[p]-depth[q]) <= .002f) {
                            f->coarse.source[q] = p; assigned |= 1u << j;
                        }
                    }
                }
            }
        }
    }
}

