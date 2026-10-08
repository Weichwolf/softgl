/* Each worker owns an existing X stripe. Counts/cursors, masks and triangle
 * visibility are disjoint; the joined prefix needs no per-fragment atomics. */
static void scene_msaa_group_bins(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = (unsigned)c->fb.samples;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        memset(counts,0,(size_t)f->material_count*sizeof(*counts));
        uint32_t groups = 0;
        for (int y = 0; y < c->fb.h; y++) {
            size_t first = ((size_t)y*c->fb.w+pool->bins[bin].ix0)*n;
            size_t end = ((size_t)y*c->fb.w+pool->bins[bin].ix1)*n;
            memset(f->shade_mask+first,0,end-first);
            for (size_t base = first; base < end; base += n) {
                unsigned seen = 0;
                for (unsigned s = 0; s < n; s++) {
                    size_t at = base+s;
                    if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
                    unsigned mask = 1u << s;
                    for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                        f->winner[base+k] == f->winner[at] &&
                        f->sample_point[base+k] == f->sample_point[at]) mask |= 1u << k;
                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;
                    counts[f->pixel_material[at]]++; groups++;
                    if (f->deferred_meshes) {
                        uint32_t id = f->winner[at];
                        /* A recorded winner belongs to the stripe that wrote it.
                         * Fail and restore rather than race on a violated contract. */
                        if ((id >> SCENE_INDEX_BITS) != (unsigned)bin) {
                            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
                        } else f->bins[bin].visible[id & SCENE_INDEX_MASK] = 1;
                    }
                }
            }
        }
        SCENE_MSAA_AUDIT(4,groups);
        (void)groups; /* Counter is compiled out in the ordinary build. */
    }
}

static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_msaa_group_bins,f);
    uint32_t groups = 0;
    for (int bin = 0; bin < pool->nbins; bin++) {
        const uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int m = 0; m < f->material_count; m++) {
            f->materials[m].count += counts[m]; groups += counts[m];
        }
    }
    return groups;
}

static void scene_msaa_list_bins(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = (unsigned)c->fb.samples;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int y = 0; y < c->fb.h; y++) {
            uint32_t first = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix0)*n;
            uint32_t end = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix1)*n;
            for (uint32_t at = first; at < end; at++) if (f->shade_mask[at])
                f->pixels[cursor[f->pixel_material[at]]++] = at;
        }
    }
}

static void scene_msaa_list(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    for (int m = 0; m < f->material_count; m++) {
        uint32_t first = f->materials[m].first;
        for (int bin = 0; bin < pool->nbins; bin++) {
            uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS+m;
            uint32_t count = *cursor; *cursor = first; first += count;
        }
    }
    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_msaa_list_bins,f);
}
