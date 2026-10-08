/* Depth, primitive winners and coverage already exist at full resolution. */
static void scene_coarse_mark(struct sg_scene_visibility *f) {
    if (!f->coarse_shading) return;
    const int w = f->context->fb.w, h = f->context->fb.h;
    for (int y = 0; y+1 < h; y += 2) for (int x = 0; x+1 < w; x += 2) {
        size_t p = (size_t)y*w+x;
        uint16_t material = f->pixel_material[p];
        if (material == UINT16_MAX || f->materials[material].alpha_test) continue;
        uint32_t id = f->winner[p];
        if (f->pixel_material[p+1] != material || f->pixel_material[p+w] != material ||
            f->pixel_material[p+w+1] != material || f->winner[p+1] != id ||
            f->winner[p+w] != id || f->winner[p+w+1] != id) continue;
        f->pixel_material[p] = material|SCENE_COARSE_REPRESENTATIVE;
        f->pixel_material[p+1] = f->pixel_material[p+w] = f->pixel_material[p+w+1] = material|SCENE_COARSE_SKIPPED;
    }
}

void softgl_scene_coarse_shading(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) c->scene_visibility->coarse_shading = enabled != 0;
}
