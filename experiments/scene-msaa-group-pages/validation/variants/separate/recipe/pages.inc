#ifdef SOFTGL_GROUP_PAGES_AUDIT
static atomic_ullong scene_group_page_counts[5];
unsigned long long softgl_scene_group_pages_audit(unsigned index) {
    return index < 5 ? atomic_load_explicit(&scene_group_page_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_GROUP_PAGE_AUDIT(i,n) atomic_fetch_add_explicit(&scene_group_page_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_GROUP_PAGE_AUDIT(i,n) ((void)0)
#endif

static scene_group_page *scene_group_page_at(struct sg_scene_visibility *f, uint32_t code) {
    return &f->bins[code >> SCENE_INDEX_BITS].group_pages[code & SCENE_INDEX_MASK];
}

/* PAGE_AUDIT_HELPERS */

/* One bin has one owner during grouping. Page indices survive reallocations. */
static void scene_group_page_append(struct sg_scene_visibility *f, unsigned bin,
    uint32_t material, uint32_t pixel) {
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return;
    scene_bin *b = &f->bins[bin];
    uint32_t *tails = f->group_counts+(size_t)bin*SCENE_MATERIALS;
    uint32_t id = tails[material];
    if (id == UINT32_MAX || b->group_pages[id].count == SCENE_GROUP_PAGE_PIXELS) {
        if (b->group_page_count == b->group_page_capacity) {
            uint32_t capacity = b->group_page_capacity ? b->group_page_capacity*2 : 16;
            size_t delta = (size_t)(capacity-b->group_page_capacity)*sizeof(scene_group_page);
            pthread_mutex_lock(&f->allocation_mutex);
            scene_group_page *next = NULL;
            if (delta <= SOFTGL_GROUP_PAGE_BYTES-f->group_page_bytes)
                next = realloc(b->group_pages,(size_t)capacity*sizeof(scene_group_page));
            if (next) {
                b->group_pages = next; b->group_page_capacity = capacity;
                f->group_page_bytes += delta;
            }
            pthread_mutex_unlock(&f->allocation_mutex);
            if (!next) {
                atomic_store_explicit(&f->failed,1,memory_order_relaxed);
                SCENE_GROUP_PAGE_AUDIT(4,1); return;
            }
        }
        uint32_t created = b->group_page_count++;
        scene_group_page *page = &b->group_pages[created];
        page->material = material; page->count = 0; page->next = UINT32_MAX;
        page->head = id == UINT32_MAX;
        if (id != UINT32_MAX) b->group_pages[id].next = (bin << SCENE_INDEX_BITS)|created;
        tails[material] = created; id = created;
        SCENE_GROUP_PAGE_AUDIT(0,1);
    }
    scene_group_page *page = &b->group_pages[id];
    page->pixels[page->count++] = pixel;
    SCENE_GROUP_PAGE_AUDIT(1,1);
}

/* Link each material's per-bin chains in the original prefix/list order. */
static uint32_t scene_group_page_join(struct sg_scene_visibility *f) {
    sg_worker_pool *pool = f->context->workers;
    for (int m = 0; m < f->material_count; m++)
        f->materials[m].first = f->materials[m].cursor = UINT32_MAX;
    uint32_t groups = 0;
    for (unsigned bin = 0; bin < (unsigned)pool->nbins; bin++) {
        scene_bin *b = &f->bins[bin];
        const uint32_t *tails = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (uint32_t i = 0; i < b->group_page_count; i++) {
            scene_group_page *page = &b->group_pages[i];
            scene_material *m = &f->materials[page->material];
            m->count += page->count; groups += page->count;
            if (page->head) {
                uint32_t code = (bin << SCENE_INDEX_BITS)|i;
                if (m->first == UINT32_MAX) m->first = code;
                else scene_group_page_at(f,m->cursor)->next = code;
                m->cursor = (bin << SCENE_INDEX_BITS)|tails[page->material];
            }
        }
    }
#ifdef SOFTGL_GROUP_PAGES_AUDIT
    scene_group_page_audit_queues(f);
#endif
    return groups;
}

static void scene_group_page_tasks(struct sg_scene_visibility *f, uint32_t *packets) {
    for (int material = 0; material < f->material_count; material++) {
        scene_material *m = &f->materials[material];
        *packets += (m->count+3)/4;
        uint32_t code = m->first, offset = 0;
        for (uint32_t at = 0; at < m->count; at += 256) {
            uint32_t count = m->count-at < 256 ? m->count-at : 256;
            f->tasks[f->task_count++] = (scene_task){(uint32_t)material,code,count,offset};
#ifdef SOFTGL_GROUP_PAGES_AUDIT
            f->group_audit_first[SCENE_MATERIALS+f->task_count-1] = f->group_audit_first[material]+at;
#endif
            uint32_t remaining = count;
            while (remaining) {
                scene_group_page *page = scene_group_page_at(f,code);
                uint32_t take = page->count-offset;
                if (take > remaining) take = remaining;
                offset += take; remaining -= take;
                if (offset == page->count) { code = page->next; offset = 0; }
            }
        }
    }
}

static void scene_resolve_pages(void *data) {
    struct sg_scene_visibility *f = data;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (task >= f->task_count) break;
        const scene_task *t = &f->tasks[task];
        scene_material *m = &f->materials[t->material];
        uint32_t code = t->first, offset = t->offset;
        scene_group_page *page = scene_group_page_at(f,code);
        for (uint32_t first = 0; first < t->count; first += 4) {
            uint32_t pixels[4]; unsigned live = 0;
            uint32_t count = t->count-first < 4 ? t->count-first : 4;
            if (count == 4 && page->count-offset >= 4) {
                memcpy(pixels,page->pixels+offset,sizeof(pixels));
                offset += 4; live = 15;
            } else {
                SCENE_GROUP_PAGE_AUDIT(3,1);
                for (unsigned l = 0; l < 4; l++) {
                    if (l < count) {
                        if (offset == page->count) {
                            code = page->next; page = scene_group_page_at(f,code); offset = 0;
                        }
                        pixels[l] = page->pixels[offset++]; live |= 1u << l;
                    } else pixels[l] = pixels[0];
                }
            }
#ifdef SOFTGL_GROUP_PAGES_AUDIT
            scene_group_page_audit_packet(f,(unsigned)task,first,pixels,live);
#endif
            scene_shade_packet(f,m,pixels,live);
            SCENE_GROUP_PAGE_AUDIT(2,1);
            if (offset == page->count && first+count < t->count) {
                code = page->next; page = scene_group_page_at(f,code); offset = 0;
            }
        }
    }
}
