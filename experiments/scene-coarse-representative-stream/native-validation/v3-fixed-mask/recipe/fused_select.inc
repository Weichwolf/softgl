/* Produce the accepted physical masks directly inside each 2x2 selection cell.
 * This preserves dy/dx/sample representative order and uniform sample tags. */
static void scene_coarse_select(void *data) {
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
        uint32_t fine_groups = 0;
        for (int y = 0; y < c->fb.h; y += 2) {
            for (int x = pool->bins[bin].ix0; x < pool->bins[bin].ix1; x += 2) {
                uint32_t group[16]; unsigned count = 0;
                for (int dy = 0; dy < 2 && y+dy < c->fb.h; dy++)
                    for (int dx = 0; dx < 2 && x+dx < pool->bins[bin].ix1; dx++) {
                        uint32_t base = ((uint32_t)(y+dy)*(unsigned)c->fb.w+(unsigned)(x+dx))*n;
                        if (!c->fb.samples) {
                            if (f->pixel_material[base] != UINT16_MAX) group[count++] = base;
                            continue;
                        }
                        int uniform = n == 4 && f->shade_mask[base] == 0x80;
                        memset(f->shade_mask+base, 0, n);
                        unsigned seen = 0;
                        for (unsigned sample = 0; sample < n; sample++) {
                            uint32_t p = base+sample;
                            if ((seen & (1u << sample)) || f->pixel_material[p] == UINT16_MAX) continue;
                            unsigned mask = uniform ? (1u << n)-1u : 1u << sample;
                            if (!uniform) for (unsigned k = sample+1; k < n; k++)
                                if (f->pixel_material[base+k] != UINT16_MAX &&
                                    f->winner[base+k] == f->winner[p] &&
                                    f->sample_point[base+k] == f->sample_point[p]) mask |= 1u << k;
                            f->shade_mask[p] = (uint8_t)mask; seen |= mask;
                            group[count++] = p;
                        }
                    }
                fine_groups += count;
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
        f->coarse.fine_groups[bin] = fine_groups;
    }
}

static uint32_t scene_coarse_group_count(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    uint32_t groups = 0;
    for (int bin = 0; bin < pool->nbins; bin++) groups += f->coarse.fine_groups[bin];
    return groups;
}
