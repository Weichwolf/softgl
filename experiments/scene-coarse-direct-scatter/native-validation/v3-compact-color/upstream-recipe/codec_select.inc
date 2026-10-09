/* Allocate before geometry writes. A failed request keeps ordinary shading. */
int softgl_scene_codec_shading(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility || mode > 4) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    f->codec.mode = 0;
    if (!mode) return 1;
    size_t units = (size_t)c->fb.w*c->fb.h*(c->fb.samples ? (unsigned)c->fb.samples : 1u);
    size_t per_unit = 2*sizeof(uint32_t)+sizeof(scene_codec_value);
    if (units > (64u*1024u*1024u)/per_unit) return 0;
    if (units > f->codec.capacity) {
        uint32_t *source = malloc(units*sizeof(uint32_t));
        uint32_t *pixels = malloc(units*sizeof(uint32_t));
        scene_codec_value *value = malloc(units*sizeof(scene_codec_value));
        if (!source || !pixels || !value) {
            free(source); free(pixels); free(value); return 0;
        }
        scene_codec_destroy(&f->codec);
        f->codec.source = source; f->codec.pixels = pixels; f->codec.value = value;
        f->codec.capacity = units;
    }
    f->codec.mode = mode;
    return 1;
}

/* Disjoint existing stripes; cache mapping is published only after the join.
 * Every group maps directly to a representative, never through a chain. */
static void scene_codec_select(void *data) {
    struct sg_scene_visibility *f = data;
    softgl_ctx *c = f->context;
    sg_worker_pool *pool = c->workers;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    const float *depth = c->fb.samples ? c->fb.sample_depth : c->fb.depth;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins) break;
        for (int y = 0; y < c->fb.h; y += 2) {
            for (int x = pool->bins[bin].ix0; x < pool->bins[bin].ix1; x += 2) {
                uint32_t group[16]; unsigned count = 0;
                for (int dy = 0; dy < 2 && y+dy < c->fb.h; dy++)
                    for (int dx = 0; dx < 2 && x+dx < pool->bins[bin].ix1; dx++)
                        for (unsigned s = 0; s < n; s++) {
                            uint32_t p = ((uint32_t)(y+dy)*(unsigned)c->fb.w+(unsigned)(x+dx))*n+s;
                            if (f->pixel_material[p] != UINT16_MAX && (!c->fb.samples || f->shade_mask[p]))
                                group[count++] = p;
                        }
                unsigned assigned = 0;
                for (unsigned i = 0; i < count; i++) if (!(assigned & (1u << i))) {
                    uint32_t p = group[i];
                    f->codec.source[p] = p; assigned |= 1u << i;
                    for (unsigned j = i+1; j < count; j++) if (!(assigned & (1u << j))) {
                        uint32_t q = group[j];
                        int same = f->codec.mode == 1 ? f->winner[p] == f->winner[q] :
                            (f->codec.mode == 2 || f->codec.mode == 4) && f->pixel_material[p] == f->pixel_material[q] &&
                            fabsf(depth[p]-depth[q]) <= .002f;
                        if (same) { f->codec.source[q] = p; assigned |= 1u << j; }
                    }
                }
            }
        }
    }
}

static void scene_codec_tasks(struct sg_scene_visibility *f, int coarse) {
    f->task_count = 0;
    uint32_t representatives = 0;
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i];
        uint32_t count = m->count;
        if (coarse) {
            count = 0;
            for (uint32_t at = m->first; at < m->first+m->count; at++) {
                uint32_t p = f->pixels[at];
                if (f->codec.source[p] == p) f->codec.pixels[m->first+count++] = p;
            }
            representatives += count;
        }
        for (uint32_t at = 0; at < count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,count-at < 256 ? count-at : 256};
    }
    if (coarse) f->codec.representatives = representatives;
}
