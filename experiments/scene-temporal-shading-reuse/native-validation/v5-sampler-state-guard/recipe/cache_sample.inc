/* Shared by two-dimensional normal and albedo sampling only. Dynamic light,
 * half vectors, environment sampling, alpha tests and MSAA coverage are fresh. */
static void scene_cache_prepare(struct sg_scene_visibility *f, unsigned mode) {
    softgl_ctx *c = f->context;
    scene_cache_storage *cache = &f->cache;
    if (cache->epoch != c->scene_texture_epoch || cache->previous_mode != mode) {
        for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++) if (cache->slots[i].entries)
            memset(cache->slots[i].entries, 0, SCENE_CACHE_ENTRIES*sizeof(scene_cache_entry));
        cache->epoch = c->scene_texture_epoch;
    }
    cache->previous_mode = cache->mode = mode; cache->active = 0;
    for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++) cache->slots[i].lookups = cache->slots[i].hits = 0;
}

int softgl_scene_material_cache(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility || mode > 4) return 0;
    scene_cache_prepare(c->scene_visibility, mode);
    return 1;
}

static scene_cache_slot *scene_cache_acquire(struct sg_scene_visibility *f) {
    scene_cache_storage *cache = &f->cache;
    pthread_t self = pthread_self();
    unsigned selected = SCENE_CACHE_SLOTS;
    pthread_mutex_lock(&f->allocation_mutex);
    for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++)
        if (!(cache->active & (1u << i)) && cache->slots[i].occupied &&
            pthread_equal(cache->slots[i].owner, self)) { selected = i; break; }
    if (selected == SCENE_CACHE_SLOTS) for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++)
        if (!(cache->active & (1u << i))) { selected = i; break; }
    if (selected != SCENE_CACHE_SLOTS) {
        cache->active |= 1u << selected;
        scene_cache_slot *slot = &cache->slots[selected];
        slot->owner = self; slot->occupied = 1;
        if (!slot->entries) slot->entries = calloc(SCENE_CACHE_ENTRIES, sizeof(scene_cache_entry));
    }
    pthread_mutex_unlock(&f->allocation_mutex);
    return selected == SCENE_CACHE_SLOTS ? NULL : &cache->slots[selected];
}

static void scene_cache_sample(struct sg_scene_visibility *f, scene_cache_slot *slot,
    const sg_tex_unit_tri *unit, sg_f32x4 x, sg_f32x4 y, unsigned live, sg_f32x4 out[4]) {
    if (!slot || !slot->entries || !unit->data0 || unit->active_slot != SG_TEX_TARGET_2D ||
        unit->tw <= 0 || unit->th <= 0 || unit->tw > 65536 || unit->th > 65536) {
        sg_packet_sample_2d(unit, x, y, live, 0, out); return;
    }
    SG_ALIGN16 uint32_t xx[4], yy[4];
    if (f->cache.mode == 4) {
        _mm_store_si128((sg_i32x4 *)xx, _mm_castps_si128(x));
        _mm_store_si128((sg_i32x4 *)yy, _mm_castps_si128(y));
    } else {
        float bins = f->cache.mode == 1 ? 8.f : f->cache.mode == 2 ? 2.f : .25f;
        sg_f32x4 qx = _mm_floor_ps(sg_f32x4_mul(sg_packet_wrap(x, unit->wrap_s), sg_f32x4_splat(unit->tw*bins)));
        sg_f32x4 qy = _mm_floor_ps(sg_f32x4_mul(sg_packet_wrap(y, unit->wrap_t), sg_f32x4_splat(unit->th*bins)));
        _mm_store_si128((sg_i32x4 *)xx, sg_f32x4_trunc_i32(qx));
        _mm_store_si128((sg_i32x4 *)yy, sg_f32x4_trunc_i32(qy));
    }
    uint64_t texture = (uint64_t)(uintptr_t)unit->data0, cells[4];
    /* Captured draws can use different filters/wraps on the same storage.
     * Tag the eight effective two-dimensional sampler states in aligned
     * storage addresses; unaligned storage retains ordinary sampling. */
    if (texture & 7u) { sg_packet_sample_2d(unit,x,y,live,0,out); return; }
    unsigned sampler = unit->filter_mag != GL_NEAREST;
    sampler |= (unsigned)(unit->wrap_s == GL_CLAMP || unit->wrap_s == GL_CLAMP_TO_EDGE) << 1;
    sampler |= (unsigned)(unit->wrap_t == GL_CLAMP || unit->wrap_t == GL_CLAMP_TO_EDGE) << 2;
    texture |= sampler;
    uint32_t indices[4]; unsigned misses = 0;
    float values[4][4] = {{0}};
    for (unsigned l = 0; l < 4; l++) if (live & (1u << l)) {
        cells[l] = ((uint64_t)xx[l] << 32) | yy[l];
        uint64_t mixed = cells[l]^((cells[l] >> 32)*UINT64_C(0x9e3779b185ebca87))^(texture >> 5);
        mixed ^= mixed >> 33;
        indices[l] = (uint32_t)mixed & (SCENE_CACHE_ENTRIES-1);
        scene_cache_entry *entry = &slot->entries[indices[l]];
        slot->lookups++;
        if (entry->texture == texture && entry->cell == cells[l]) {
            for (unsigned k = 0; k < 4; k++) values[k][l] = entry->rgba[k];
            slot->hits++;
        } else misses |= 1u << l;
    }
    if (misses) {
        sg_f32x4 sampled[4]; float rgba[4][4];
        sg_packet_sample_2d(unit, x, y, misses, 0, sampled);
        for (unsigned k = 0; k < 4; k++) sg_f32x4_store(rgba[k], sampled[k]);
        for (unsigned l = 0; l < 4; l++) if (misses & (1u << l)) {
            scene_cache_entry *entry = &slot->entries[indices[l]];
            entry->texture = texture; entry->cell = cells[l];
            for (unsigned k = 0; k < 4; k++) entry->rgba[k] = values[k][l] = rgba[k][l];
        }
    }
    for (unsigned k = 0; k < 4; k++) out[k] = sg_f32x4_load(values[k]);
}
