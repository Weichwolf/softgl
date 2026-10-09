/* Allocate before raster writes. A failed opt-in leaves ordinary shading. */
int softgl_scene_coarse_shading(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    f->coarse.enabled = 0;
    if (!enabled) return 1;
    size_t units = (size_t)c->fb.w*c->fb.h*(c->fb.samples ? (unsigned)c->fb.samples : 1u);
    if (units > (64u*1024u*1024u)/(3*sizeof(uint32_t))) return 0;
    if (units > f->coarse.capacity) {
        uint32_t *source = malloc(units*sizeof(uint32_t));
        uint32_t *pixels = malloc(units*sizeof(uint32_t));
        uint32_t *color = malloc(units*sizeof(uint32_t));
        if (!source || !pixels || !color) {
            free(source); free(pixels); free(color); return 0;
        }
        scene_coarse_destroy(&f->coarse);
        f->coarse.source = source; f->coarse.pixels = pixels;
        f->coarse.color = color; f->coarse.capacity = units;
    }
    f->coarse.enabled = 1;
    return 1;
}

/* Selection joins before attributes/shading. The canonical mesh contract
 * requires a pure program that preserves UV0/UV2 and alpha for every vertex. */
static void scene_coarse_select(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    const float *depth = c->fb.samples ? c->fb.sample_depth : c->fb.depth;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (bin >= pool->nbins) break;
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

static void scene_coarse_tasks(struct sg_scene_visibility *f, int coarse) {
    f->task_count = 0;
    uint32_t representatives = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i];
        uint32_t count = m->count;
        if (coarse) {
            count = 0;
            for (uint32_t at = m->first; at < m->first+m->count; at++) {
                uint32_t p = f->pixels[at];
                if (f->coarse.source[p] == p) f->coarse.pixels[m->first+count++] = p;
            }
            representatives += count;
        }
        for (uint32_t at = 0; at < count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i, m->first+at, count-at < 256 ? count-at : 256};
    }
    if (coarse) f->coarse.representatives = representatives;
}

static void scene_coarse_resolve(void *data) {
    struct sg_scene_visibility *f = data;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (task >= f->task_count) break;
        scene_task *t = &f->tasks[task];
        scene_material *m = &f->materials[t->material];
        for (uint32_t first = t->first; first < t->first+t->count; first += 4) {
            uint32_t pixels[4]; unsigned live = 0;
            for (int l = 0; l < 4; l++) {
                uint32_t at = first+(unsigned)l;
                pixels[l] = f->coarse.pixels[at < t->first+t->count ? at : first];
                if (at < t->first+t->count) live |= 1u << l;
            }
            scene_coarse_packet(f, m, pixels, live);
        }
    }
}

static void scene_coarse_copy(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task, 1, memory_order_relaxed);
        if (task >= f->task_count) break;
        const scene_task *t = &f->tasks[task];
        for (uint32_t first = t->first; first < t->first+t->count; first++) {
            uint32_t p = f->pixels[first];
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
