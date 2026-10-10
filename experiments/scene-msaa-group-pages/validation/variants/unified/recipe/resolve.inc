/* One shader callsite retains the original compiler's single-use inlining. */
static void scene_resolve(void *data) {
    struct sg_scene_visibility *f = data;
    int paged = f->context->fb.samples != 0;
    for (;;) {
        int task = atomic_fetch_add_explicit(&f->next_task,1,memory_order_relaxed);
        if (task >= f->task_count) break;
        const scene_task *t = &f->tasks[task];
        scene_material *m = &f->materials[t->material];
        uint32_t code = t->first, offset = t->offset;
        scene_group_page *page = NULL;
        const uint32_t *list = NULL;
        if (paged) page = scene_group_page_at(f,code);
        else list = f->pixels+t->first;
        for (uint32_t first = 0; first < t->count; first += 4) {
            uint32_t pixels[4]; unsigned live = 0;
            uint32_t count = t->count-first < 4 ? t->count-first : 4;
            if (paged) {
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
            } else for (unsigned l = 0; l < 4; l++) {
                uint32_t at = first+l;
                pixels[l] = list[at < t->count ? at : first];
                if (at < t->count) live |= 1u << l;
            }
#ifdef SOFTGL_GROUP_PAGES_AUDIT
            if (paged) scene_group_page_audit_packet(f,(unsigned)task,first,pixels,live);
#endif
            scene_shade_packet(f,m,pixels,live);
            if (paged) {
                SCENE_GROUP_PAGE_AUDIT(2,1);
                if (offset == page->count && first+count < t->count) {
                    code = page->next; page = scene_group_page_at(f,code); offset = 0;
                }
            }
        }
    }
}
