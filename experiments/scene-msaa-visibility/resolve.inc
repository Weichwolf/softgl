static void scene_restore(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    if (c->fb.samples) {
        SCENE_MSAA_AUDIT(7,1);
        size_t units = pixels*(unsigned)c->fb.samples;
        memcpy(c->fb.sample_depth,f->backup_depth,units*sizeof(float));
        memcpy(c->fb.sample_color,f->backup_color,units*4);
        memcpy(c->fb.depth,f->backup_depth+units,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color+units*4,pixels*4);
    } else {
        memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color,pixels*4);
    }
}

/* Distinct winner/shading-point pairs of one pixel share one shade job.
 * No job writes any sample owned by a different job. */
static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    size_t pixels = (size_t)c->fb.w*c->fb.h;
    unsigned n = (unsigned)c->fb.samples;
    uint32_t groups = 0;
    memset(f->shade_mask,0,pixels*n);
    for (size_t p = 0; p < pixels; p++) {
        size_t base = p*n; unsigned seen = 0;
        for (unsigned s = 0; s < n; s++) {
            size_t at = base+s;
            if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
            unsigned mask = 1u << s;
            for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                f->winner[base+k] == f->winner[at] && f->sample_point[base+k] == f->sample_point[at]) mask |= 1u << k;
            f->shade_mask[at] = (uint8_t)mask; seen |= mask;
            f->materials[f->pixel_material[at]].count++; groups++;
            if (f->deferred_meshes) {
                uint32_t id = f->winner[at];
                f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;
            }
        }
    }
    SCENE_MSAA_AUDIT(4,groups);
    return groups;
}

static void scene_msaa_list(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    uint32_t units = (unsigned)c->fb.w*(unsigned)c->fb.h*(unsigned)c->fb.samples;
    for (uint32_t at = 0; at < units; at++) if (f->shade_mask[at]) {
        scene_material *m = &f->materials[f->pixel_material[at]];
        f->pixels[m->cursor++] = at;
    }
}
