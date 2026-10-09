/* Joined representative histograms describe disjoint per-material lists. */
static void scene_coarse_list_bins(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (bin >= pool->nbins) break;
        uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int y = 0; y < c->fb.h; y++) {
            uint32_t first = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix0)*n;
            uint32_t end = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix1)*n;
            for (uint32_t p = first; p < end; p++) {
                int live = c->fb.samples ? f->shade_mask[p] != 0 : f->pixel_material[p] != UINT16_MAX;
                if (live && f->coarse.source[p] == p)
                    f->coarse.pixels[cursor[f->pixel_material[p]]++] = p;
            }
        }
    }
}

static uint32_t scene_coarse_counts(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    uint32_t total = 0;
    for (int m = 0; m < f->material_count; m++) {
        uint32_t count = 0;
        for (int bin = 0; bin < pool->nbins; bin++)
            count += f->group_counts[(size_t)bin*SCENE_MATERIALS+m];
        f->materials[m].count = count; total += count;
    }
    f->coarse.representatives = total;
    return total;
}

static void scene_coarse_list(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    for (int m = 0; m < f->material_count; m++) {
        uint32_t first = f->materials[m].first;
        for (int bin = 0; bin < pool->nbins; bin++) {
            uint32_t *cursor = f->group_counts+(size_t)bin*SCENE_MATERIALS+m;
            uint32_t count = *cursor; *cursor = first; first += count;
        }
    }
    atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
    sg_workers_run_callback(f->context, scene_coarse_list_bins, f);
}

/* Read current-frame source maps in screen order. Each stripe owns its writes;
 * different representatives may share a shader task but not a physical sample. */
static void scene_coarse_copy_bins(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (bin >= pool->nbins) break;
        for (int y = 0; y < c->fb.h; y++) {
            uint32_t first = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix0)*n;
            uint32_t end = ((unsigned)y*(unsigned)c->fb.w+(unsigned)pool->bins[bin].ix1)*n;
            for (uint32_t p = first; p < end; p++) {
                int live = c->fb.samples ? f->shade_mask[p] != 0 : f->pixel_material[p] != UINT16_MAX;
                if (!live) continue;
                uint32_t color = f->coarse.color[f->coarse.source[p]];
                if (c->fb.samples) {
                    size_t base = (size_t)(p/(unsigned)c->fb.samples)*c->fb.samples;
                    unsigned mask = f->shade_mask[p];
                    if (c->fb.samples == 4 && mask == 15) {
                        _mm_storeu_si128((__m128i *)(c->fb.sample_color+base*4), _mm_set1_epi32((int)color));
                    } else if (c->fb.samples == 2 && mask == 3) {
                        uint64_t pair = (uint64_t)color | ((uint64_t)color << 32);
                        memcpy(c->fb.sample_color+base*4, &pair, sizeof(pair));
                    } else for (int sample = 0; sample < c->fb.samples; sample++)
                        if (mask & (1u << sample)) memcpy(c->fb.sample_color+(base+sample)*4, &color, sizeof(color));
                } else memcpy(c->fb.color+(size_t)p*4, &color, sizeof(color));
            }
        }
    }
}
