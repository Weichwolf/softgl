static void scene_msaa_add_group(struct sg_scene_visibility *f, uint32_t at,
    unsigned mask, uint32_t *groups) {
    f->shade_mask[at] = (uint8_t)mask;
    f->materials[f->pixel_material[at]].count++;
    f->pixels[(*groups)++] = at;
    if (f->deferred_meshes) {
        uint32_t id = f->winner[at];
        f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;
    }
}

static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    uint32_t pixels = (unsigned)c->fb.w*(unsigned)c->fb.h;
    unsigned n = (unsigned)c->fb.samples;
    uint32_t groups = 0;
    for (uint32_t p = 0; p < pixels; p++) {
        uint32_t base = p*n;
        uint64_t labels = 0;
        memcpy(&labels,f->pixel_material+base,n*sizeof(uint16_t));
        if ((n == 4 && labels == UINT64_MAX) || (n == 2 && labels == UINT32_MAX)) continue;
        uint16_t material = f->pixel_material[base];
        uint64_t repeated = UINT64_C(0x0001000100010001)*material;
        if (n == 2) repeated &= UINT32_MAX;
        if (material != UINT16_MAX && labels == repeated) {
            uint32_t point = 0;
            memcpy(&point,f->sample_point+base,n);
            uint32_t repeated_point = UINT32_C(0x01010101)*f->sample_point[base];
            if (n == 2) repeated_point &= UINT16_MAX;
            uint32_t id = f->winner[base];
            if (point == repeated_point && f->winner[base+1] == id &&
                (n == 2 || (f->winner[base+2] == id && f->winner[base+3] == id))) {
                scene_msaa_add_group(f,base,(1u << n)-1u,&groups);
                continue;
            }
        }
        unsigned seen = 0;
        for (unsigned s = 0; s < n; s++) {
            uint32_t at = base+s;
            if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
            unsigned mask = 1u << s;
            for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                f->winner[base+k] == f->winner[at] && f->sample_point[base+k] == f->sample_point[at]) mask |= 1u << k;
            seen |= mask;
            scene_msaa_add_group(f,at,mask,&groups);
        }
    }
    SCENE_MSAA_AUDIT(4,groups);
    return groups;
}

/* In-place bucket permutation of the dense group list. No empty sample scan
 * or additional per-sample allocation. Pixel order inside a material changes. */
static void scene_msaa_list(struct sg_scene_visibility *f) {
    for (int i = 0; i < f->material_count; i++) {
        scene_material *m = &f->materials[i];
        uint32_t end = m->first+m->count;
        while (m->cursor < end) {
            uint32_t at = m->cursor, entry = f->pixels[at];
            unsigned material = f->pixel_material[entry];
            if (material == (unsigned)i) { m->cursor++; continue; }
            scene_material *dest = &f->materials[material];
            uint32_t other = dest->cursor++;
            f->pixels[at] = f->pixels[other]; f->pixels[other] = entry;
        }
    }
}
