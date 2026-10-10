#ifdef SOFTGL_GROUP_PAGES_AUDIT
static void scene_group_page_audit_queues(struct sg_scene_visibility *f) {
    size_t pixels = (size_t)f->context->fb.w*f->context->fb.h;
    if (!f->group_audit_first)
        f->group_audit_first = malloc((SCENE_MATERIALS+pixels*4/256+SCENE_MATERIALS+1)*sizeof(uint32_t));
    if (!f->group_audit_first) abort();
    uint32_t *cursor = malloc((size_t)(f->material_count ? f->material_count : 1)*sizeof(uint32_t));
    if (!cursor) abort();
    uint32_t first = 0;
    for (int m = 0; m < f->material_count; m++) {
        f->group_audit_first[m] = cursor[m] = first;
        first += f->materials[m].count;
    }
    if (first > pixels*(unsigned)f->context->fb.samples) abort();
    const sg_worker_pool *pool = f->context->workers;
    unsigned samples = (unsigned)f->context->fb.samples;
    /* Independent original second-pass list oracle, absent from timed builds. */
    for (int bin = 0; bin < pool->nbins; bin++) for (int y = 0; y < f->context->fb.h; y++) {
        uint32_t begin = ((unsigned)y*(unsigned)f->context->fb.w+(unsigned)pool->bins[bin].ix0)*samples;
        uint32_t end = ((unsigned)y*(unsigned)f->context->fb.w+(unsigned)pool->bins[bin].ix1)*samples;
        for (uint32_t at = begin; at < end; at++) if (f->shade_mask[at]) {
            uint32_t m = f->pixel_material[at];
            if (m >= (uint32_t)f->material_count || cursor[m] >= f->group_audit_first[m]+f->materials[m].count) abort();
            f->pixels[cursor[m]++] = at;
        }
    }
    for (int material = 0; material < f->material_count; material++) {
        const scene_material *m = &f->materials[material];
        uint32_t first = f->group_audit_first[material];
        if (cursor[material] != first+m->count) abort();
        uint32_t code = m->first, read = 0;
        while (code != UINT32_MAX) {
            const scene_group_page *page = scene_group_page_at(f,code);
            if (page->material != (uint32_t)material || !page->count ||
                page->count > SCENE_GROUP_PAGE_PIXELS || read+page->count > m->count) abort();
            if (memcmp(f->pixels+first+read,page->pixels,(size_t)page->count*sizeof(uint32_t))) abort();
            read += page->count; code = page->next;
        }
        if (read != m->count) abort();
    }
    free(cursor);
}

static void scene_group_page_audit_packet(struct sg_scene_visibility *f, unsigned task,
    uint32_t first, const uint32_t pixels[4], unsigned live) {
    const scene_task *t = &f->tasks[task];
    uint32_t start = f->group_audit_first[SCENE_MATERIALS+task];
    unsigned expected_live = 0;
    for (unsigned lane = 0; lane < 4; lane++) {
        uint32_t at = first+lane;
        uint32_t expected = f->pixels[start+(at < t->count ? at : first)];
        if (pixels[lane] != expected) abort();
        if (at < t->count) expected_live |= 1u << lane;
    }
    if (live != expected_live) abort();
}
#endif
