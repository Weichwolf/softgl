/* At this point visible attributes succeeded and every possible rollback
 * check has passed. The color snapshot is dead until the next scene begin.
 * Reuse it as a dense-list scratch, preserving pixel order within materials
 * without an extra allocation or scanning all n*pixels sample slots. */
static void scene_msaa_list(struct sg_scene_visibility *f) {
    uint32_t groups = 0;
    for (int i = 0; i < f->material_count; i++) groups += f->materials[i].count;
    memcpy(f->backup_color,f->pixels,(size_t)groups*sizeof(uint32_t));
    for (uint32_t i = 0; i < groups; i++) {
        uint32_t at;
        memcpy(&at,f->backup_color+(size_t)i*sizeof(uint32_t),sizeof(at));
        scene_material *m = &f->materials[f->pixel_material[at]];
        f->pixels[m->cursor++] = at;
    }
}
