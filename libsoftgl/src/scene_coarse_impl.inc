static void scene_coarse_packet(struct sg_scene_visibility *f, scene_material *m,
    const uint32_t pixels[4], unsigned live) {
    softgl_ctx *c = f->context;
    const scene_triangle *tri[4];
    float bary[3][4];
    for (int l = 0; l < 4; l++) {
        tri[l] = scene_triangle_at(f,f->winner[pixels[l]]);
        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        int x = (int)(pixel % (unsigned)c->fb.w), y = (int)(pixel / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        int sx = 128, sy = 128;
        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y;
        if (c->fb.samples) {
            e0 += (t->edge[0][1]/256)*(sx-128)+(t->edge[0][2]/256)*(sy-128);
            e1 += (t->edge[1][1]/256)*(sx-128)+(t->edge[1][2]/256)*(sy-128);
        }
        bary[0][l] = (float)e0*t->inverse_area;
        bary[1][l] = (float)e1*t->inverse_area;
        bary[2][l] = 1.f-bary[0][l]-bary[1][l];
        for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];
    }
    sg_f32x4 w0 = sg_f32x4_load(bary[0]), w1 = sg_f32x4_load(bary[1]), w2 = sg_f32x4_load(bary[2]);
    sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
    sg_f32x4 primary[4], encoded_half[3], tex[4][4];
    for (int k = 0; k < 4; k++) primary[k] = scene_gather_lerp(tri,-1,k,w0,w1,w2,inverse);
    for (int k = 0; k < 3; k++) encoded_half[k] = scene_gather_lerp(tri,1,k,w0,w1,w2,inverse);
    /* Canonical programs must preserve identical UV0/UV2; geometry validation
     * restores the scene if any program violates that contract. */
    int shared_uv = tri[0]->primitive && tri[1]->primitive && tri[2]->primitive && tri[3]->primitive;
    int have_uv = 0;
    sg_f32x4 shared_x, shared_y;
    for (int u = 0; u < 4; u++) {
        if (u == 1) continue;
        const sg_tex_unit_tri *unit = &m->texture.unit[u];
        if (unit->constant_color_valid) {
            for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(unit->constant_color[k]);
            continue;
        }
        sg_f32x4 x, y;
        if (u == 2 && have_uv) {
            x = shared_x; y = shared_y;
        } else {
            x = scene_gather_lerp(tri,u,0,w0,w1,w2,inverse);
            y = scene_gather_lerp(tri,u,1,w0,w1,w2,inverse);
            if (u == 0 && shared_uv) { shared_x = x; shared_y = y; have_uv = 1; }
        }
        if (unit->active_slot == SG_TEX_TARGET_CUBE) {
            sg_f32x4 z = scene_gather_lerp(tri,u,2,w0,w1,w2,inverse);
            sg_packet_sample_cube_target(unit,x,y,z,live,tex[u]);
        } else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);
    }
    sg_f32x4 dot[3], spec[3], half = sg_f32x4_splat(.5f);
    for (int k = 0; k < 3; k++) {
        sg_f32x4 n = sg_f32x4_sub(tex[0][k],half);
        dot[k] = sg_f32x4_mul(n,sg_f32x4_sub(primary[k],half));
        spec[k] = sg_f32x4_mul(n,sg_f32x4_sub(encoded_half[k],half));
    }
    sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),sg_f32x4_add(sg_f32x4_add(dot[0],dot[1]),dot[2])));
    sg_f32x4 s = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),sg_f32x4_add(sg_f32x4_add(spec[0],spec[1]),spec[2])));
    s = sg_f32x4_mul(s,s);
    if (m->texture.combine_kind == 5) s = sg_f32x4_mul(s,s);
    sg_f32x4 color[4];
    for (int k = 0; k < 3; k++) {
        sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d,sg_f32x4_splat(m->ambient[k])));
        diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse,tex[2][k]));
        diffuse = sg_chain_clamp(sg_f32x4_add(diffuse,tex[3][k]));
        sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(s,sg_f32x4_splat(m->tint[k])));
        color[k] = sg_chain_clamp(sg_f32x4_add(diffuse,sg_f32x4_mul(tinted,sg_f32x4_splat(sg_clampf(m->tint[3],0.f,1.f)))));
    }
    color[3] = sg_chain_clamp(sg_f32x4_mul(primary[3],tex[2][3]));
    _MM_TRANSPOSE4_PS(color[0],color[1],color[2],color[3]);
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        float rgba[4]; sg_f32x4_store(rgba,color[l]);
        uint32_t packed = sg_store_quantize_rgba(rgba);
        f->coarse.color[pixels[l]] = packed;
    }
}

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
