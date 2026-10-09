/* Fresh SIMD128 lighting on cached material samples. Directional lookup is
 * valid only for unchanged object-space camera origins and immutable geometry.
 * The oracle mode uses fresh visibility solely for feasibility diagnostics. */
int sg_mat4_inverse(sg_mat4 *, const sg_mat4 *);

typedef struct {
    softgl_ctx *context;
    const sg_key_atlas *const *keys;
    const sg_key_atlas *oracle;
    int key_count, block;
    uint32_t *rgba;
    uint16_t *materials;
    float *depth;
    sg_mat4 maps[4], ray;
    float eye[3], light[3];
    atomic_int next_row;
    atomic_uint outside, background, shaded, frustum, geometry, consensus;
} sg_key_reconstruct_job;

static float sg_key_dot3(const float *a, const float *b) {
    return a[0]*b[0]+a[1]*b[1]+a[2]*b[2];
}

static int sg_key_surface_depth(const sg_key_reconstruct_job *job,
    const sg_key_surface *surface, const float direction[3], float *depth) {
    const float *pr = job->context->pr_stack[job->context->pr_top].m;
    float denominator = sg_key_dot3(surface->facet,direction);
    float distance = (surface->facet[3]-sg_key_dot3(surface->facet,job->eye))/denominator;
    if (!isfinite(distance) || !(distance > 0.f)) return 0;
    *depth = .5f*(1.f-pr[10]+pr[14]/distance);
    return *depth >= 0.f && *depth <= 1.f;
}

/* Four distinct destination pixels, sharing only matrix coefficients. This
 * keeps the render grid intact and removes scalar 4x4 transforms per pixel. */
static void sg_key_map_packet(const sg_key_reconstruct_job *job,
    const float clip_x[4], float clip_y, float sample_x[4][4],
    float sample_y[4][4], float margin[4][4]) {
    sg_f32x4 x = sg_f32x4_load(clip_x), zero = sg_f32x4_splat(0.f);
    for (int k = 0; k < job->key_count; k++) {
        const float *m = job->maps[k].m;
        sg_f32x4 hx = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(x,sg_f32x4_splat(m[0])),
            sg_f32x4_splat(m[4]*clip_y)),sg_f32x4_splat(m[12]));
        sg_f32x4 hy = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(x,sg_f32x4_splat(m[1])),
            sg_f32x4_splat(m[5]*clip_y)),sg_f32x4_splat(m[13]));
        sg_f32x4 hw = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(x,sg_f32x4_splat(m[3])),
            sg_f32x4_splat(m[7]*clip_y)),sg_f32x4_splat(m[15]));
        sg_f32x4 nx = sg_f32x4_div(hx,hw), ny = sg_f32x4_div(hy,hw);
        sg_f32x4 ax = sg_f32x4_max(nx,sg_f32x4_sub(zero,nx));
        sg_f32x4 ay = sg_f32x4_max(ny,sg_f32x4_sub(zero,ny));
        sg_f32x4 edge = sg_f32x4_sub(sg_f32x4_splat(1.f),sg_f32x4_max(ax,ay));
        edge = sg_f32x4_select(sg_f32x4_gt(hw,zero),edge,sg_f32x4_splat(-1.f));
        sg_f32x4_store(margin[k],edge);
        sg_f32x4_store(sample_x[k],sg_f32x4_mul(sg_f32x4_add(nx,sg_f32x4_splat(1.f)),
            sg_f32x4_splat(.5f*job->keys[k]->width)));
        sg_f32x4_store(sample_y[k],sg_f32x4_mul(sg_f32x4_add(ny,sg_f32x4_splat(1.f)),
            sg_f32x4_splat(.5f*job->keys[k]->height)));
    }
}

static sg_f32x4 sg_key_sqrt(sg_f32x4 value) {
#ifdef __SSE4_1__
    return _mm_sqrt_ps(value);
#else
    return wasm_f32x4_sqrt(value);
#endif
}

/* Filter only one continuous material surface. Cross-surface MSAA anchor
 * residuals remain approximate, rather than asserting fresh sample coverage. */
static const sg_key_surface *sg_key_filter_surface(const sg_key_atlas *key,
    float x, float y, const sg_key_surface *nearest, sg_key_surface *out) {
    if (nearest->material == UINT16_MAX || x <= .5f || y <= .5f ||
        x >= key->width-.5f || y >= key->height-.5f) return nearest;
    int ix = (int)(x-.5f), iy = (int)(y-.5f);
    float fx = x-.5f-ix, fy = y-.5f-iy;
    const sg_key_surface *s[4]; sg_key_surface decoded[4];
    if (key->sample) {
        int px = (int)x, py = (int)y;
        int q = (x >= px+.5f) | ((y >= py+.5f) << 1);
        if (!(key->sample[(size_t)py*key->width+px].filter & (1u << q))) return nearest;
        for (int i = 0; i < 4; i++) s[i] = sg_key_fetch(key,ix+i%2,iy+i/2,&decoded[i]);
    } else {
        for (int i = 0; i < 4; i++) s[i] = &key->surface[(size_t)(iy+i/2)*key->width+ix+i%2];
        float limit = 4e-6f*sg_key_dot3(nearest->facet,nearest->facet);
        for (int i = 0; i < 4; i++) {
            if (s[i]->material != nearest->material) return nearest;
            float delta = sg_key_dot3(nearest->facet,s[i]->position)-nearest->facet[3];
            if (delta*delta > limit) return nearest;
        }
    }
    memcpy(out->facet,nearest->facet,sizeof(out->facet)); out->material = nearest->material;
    for (int field = 0; field < 4; field++) {
        const float *v[4]; float *destination;
        for (int i = 0; i < 4; i++) v[i] = field == 0 ? s[i]->normal : field == 1 ? s[i]->geometric :
            field == 2 ? s[i]->albedo : s[i]->residual;
        destination = field == 0 ? out->normal : field == 1 ? out->geometric : field == 2 ? out->albedo : out->residual;
        sg_f32x4 row0 = sg_f32x4_add(sg_f32x4_mul(sg_f32x4_load(v[0]),sg_f32x4_splat(1.f-fx)),
            sg_f32x4_mul(sg_f32x4_load(v[1]),sg_f32x4_splat(fx)));
        sg_f32x4 row1 = sg_f32x4_add(sg_f32x4_mul(sg_f32x4_load(v[2]),sg_f32x4_splat(1.f-fx)),
            sg_f32x4_mul(sg_f32x4_load(v[3]),sg_f32x4_splat(fx)));
        sg_f32x4_store(destination,sg_f32x4_add(sg_f32x4_mul(row0,sg_f32x4_splat(1.f-fy)),
            sg_f32x4_mul(row1,sg_f32x4_splat(fy))));
    }
    return out;
}

static void sg_key_relight_packet(sg_key_reconstruct_job *job,
    const sg_key_surface *surface[4], float direction[3][4], unsigned live,
    uint32_t packed[4]) {
    const sg_mat4 *mv = &job->context->mv_stack[job->context->mv_top];
    sg_f32x4 normal[3], geometric[3], p[3], encoded_view[3], eye[3], eye_normal[3];
    float input[4];
    for (int k = 0; k < 3; k++) {
        p[k] = sg_f32x4_load(direction[k]);
        for (int l = 0; l < 4; l++) input[l] = (live & (1u << l)) ? surface[l]->normal[k] : 0.f;
        normal[k] = sg_f32x4_load(input);
        for (int l = 0; l < 4; l++) input[l] = (live & (1u << l)) ? surface[l]->geometric[k] : 0.f;
        geometric[k] = sg_f32x4_load(input);
        encoded_view[k] = p[k];
    }
    sg_f32x4 length = sg_key_sqrt(sg_f32x4_max(sg_f32x4_splat(1e-20f),
        sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(encoded_view[0],encoded_view[0]),
            sg_f32x4_mul(encoded_view[1],encoded_view[1])),sg_f32x4_mul(encoded_view[2],encoded_view[2]))));
    sg_f32x4 half[3];
    for (int k = 0; k < 3; k++) half[k] = sg_f32x4_sub(sg_f32x4_splat(job->light[k]),sg_f32x4_div(encoded_view[k],length));
    length = sg_key_sqrt(sg_f32x4_max(sg_f32x4_splat(1e-20f),
        sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(half[0],half[0]),sg_f32x4_mul(half[1],half[1])),sg_f32x4_mul(half[2],half[2]))));
    sg_f32x4 diffuse = sg_f32x4_splat(0.f), specular = sg_f32x4_splat(0.f);
    for (int k = 0; k < 3; k++) {
        diffuse = sg_f32x4_add(diffuse,sg_f32x4_mul(normal[k],sg_f32x4_splat(job->light[k])));
        specular = sg_f32x4_add(specular,sg_f32x4_mul(normal[k],sg_f32x4_div(half[k],length)));
        eye[k] = sg_f32x4_splat(0.f); eye_normal[k] = sg_f32x4_splat(0.f);
        for (int j = 0; j < 3; j++) {
            eye[k] = sg_f32x4_add(eye[k],sg_f32x4_mul(p[j],sg_f32x4_splat(mv->m[j*4+k])));
            eye_normal[k] = sg_f32x4_add(eye_normal[k],sg_f32x4_mul(geometric[j],sg_f32x4_splat(mv->m[j*4+k])));
        }
    }
    diffuse = sg_chain_clamp(diffuse);
    specular = sg_chain_clamp(specular); specular = sg_f32x4_mul(specular,specular);
    sg_f32x4 dot = sg_f32x4_splat(0.f), reflection[3];
    for (int k = 0; k < 3; k++) dot = sg_f32x4_add(dot,sg_f32x4_mul(eye[k],eye_normal[k]));
    dot = sg_f32x4_mul(dot,sg_f32x4_splat(2.f));
    for (int k = 0; k < 3; k++) reflection[k] = sg_f32x4_sub(eye[k],sg_f32x4_mul(dot,eye_normal[k]));
    unsigned pending = live;
    const scene_material *all = job->keys[0]->materials;
    while (pending) {
        unsigned first = (unsigned)__builtin_ctz(pending), mask = 0;
        uint16_t material = surface[first]->material;
        const scene_material *m = &all[material];
        for (int l = 0; l < 4; l++) if ((pending & (1u << l)) && surface[l]->material == material) mask |= 1u << l;
        const sg_tex_unit_tri *unit = &m->texture.unit[3];
        sg_f32x4 environment[4];
        if (unit->constant_color_valid) for (int k = 0; k < 4; k++) environment[k] = sg_f32x4_splat(unit->constant_color[k]);
        else if (unit->active_slot == SG_TEX_TARGET_CUBE)
            sg_packet_sample_cube_target(unit,reflection[0],reflection[1],reflection[2],mask,environment);
        else sg_packet_sample_2d(unit,sg_f32x4_splat(0.f),sg_f32x4_splat(0.f),mask,0,environment);
        sg_f32x4 s = m->texture.combine_kind == 5 ? sg_f32x4_mul(specular,specular) : specular;
        sg_f32x4 color[4];
        for (int k = 0; k < 4; k++) {
            for (int l = 0; l < 4; l++) input[l] = (mask & (1u << l)) ? surface[l]->albedo[k] : 0.f;
            if (k == 3) color[k] = sg_chain_clamp(sg_f32x4_load(input));
            else {
                sg_f32x4 d = sg_chain_clamp(sg_f32x4_add(diffuse,sg_f32x4_splat(m->ambient[k])));
                d = sg_chain_clamp(sg_f32x4_mul(d,sg_f32x4_load(input)));
                d = sg_chain_clamp(sg_f32x4_add(d,environment[k]));
                sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(s,sg_f32x4_splat(m->tint[k])));
                color[k] = sg_chain_clamp(sg_f32x4_add(d,sg_f32x4_mul(tinted,sg_f32x4_splat(sg_clampf(m->tint[3],0.f,1.f)))));
            }
            for (int l = 0; l < 4; l++) input[l] = (mask & (1u << l)) ? surface[l]->residual[k] : 0.f;
            color[k] = sg_chain_clamp(sg_f32x4_add(color[k],sg_f32x4_load(input)));
        }
        _MM_TRANSPOSE4_PS(color[0],color[1],color[2],color[3]);
        for (int l = 0; l < 4; l++) if (mask & (1u << l)) {
            float rgba[4]; sg_f32x4_store(rgba,color[l]); packed[l] = sg_store_quantize_rgba(rgba);
        }
        pending &= ~mask;
    }
}

static void sg_key_reconstruct_rows(void *data) {
    sg_key_reconstruct_job *job = data;
    softgl_ctx *c = job->context;
    unsigned outside = 0, background = 0, shaded = 0, frustum = 0, geometry = 0, consensus = 0;
    uint32_t clear = sg_store_quantize_rgba(c->clear_color);
    for (;;) {
        int row = atomic_fetch_add_explicit(&job->next_row,1,memory_order_relaxed);
        int y = row*job->block;
        if (y >= c->fb.h) break;
        for (int x = 0; x < c->fb.w; x += 4*job->block) {
            const sg_key_surface *surface[4] = {0};
            sg_key_surface filtered[4], selected[4];
            float directions[3][4] = {{0}}, depths[4] = {1.f,1.f,1.f,1.f};
            uint32_t packed[4] = {clear,clear,clear,clear};
            uint16_t material[4] = {UINT16_MAX,UINT16_MAX,UINT16_MAX,UINT16_MAX};
            unsigned live = 0;
            float clip_x[4], mapped_x[4][4], mapped_y[4][4], mapped_margin[4][4];
            int bh = c->fb.h-y < job->block ? c->fb.h-y : job->block;
            float clip_y = 2.f*(y+bh*.5f)/c->fb.h-1.f;
            for (int l = 0; l < 4; l++) {
                int ox = x+l*job->block, bw = c->fb.w-ox < job->block ? c->fb.w-ox : job->block;
                clip_x[l] = 2.f*(ox+bw*.5f)/c->fb.w-1.f;
            }
            if (!job->oracle) sg_key_map_packet(job,clip_x,clip_y,mapped_x,mapped_y,mapped_margin);
            for (int l = 0; l < 4 && x+l*job->block < c->fb.w; l++) {
                int ox = x+l*job->block, bw = c->fb.w-ox < job->block ? c->fb.w-ox : job->block;
                unsigned pixels = (unsigned)(bw*bh);
                sg_vec4 clip = {clip_x[l],clip_y,0.f,1.f};
                sg_vec4 point;
                if (job->oracle) {
                    const sg_key_surface *known = &job->oracle->surface[(size_t)(y+bh/2)*c->fb.w+ox+bw/2];
                    if (known->material == UINT16_MAX) { background += pixels; continue; }
                    point = (sg_vec4){known->position[0],known->position[1],known->position[2],1.f};
                }
                float best = -1.f, sample_x = 0.f, sample_y = 0.f;
                int selected_key = 0;
                int selected_x = 0, selected_y = 0;
                for (int k = 0; k < job->key_count; k++) {
                    float sx, sy, margin;
                    const sg_key_atlas *key = job->keys[k];
                    if (job->oracle) {
                        sg_vec4 mapped;
                        sg_mat4_mul_vec4(&mapped,&job->maps[k],&point);
                        if (!(mapped.w > 0.f)) continue;
                        float nx = mapped.x/mapped.w, ny = mapped.y/mapped.w;
                        margin = 1.f-fmaxf(fabsf(nx),fabsf(ny));
                        sx = (nx+1.f)*.5f*key->width; sy = (ny+1.f)*.5f*key->height;
                    } else {
                        margin = mapped_margin[k][l]; sx = mapped_x[k][l]; sy = mapped_y[k][l];
                    }
                    if (!(margin >= 0.f) || margin <= best) continue;
                    int ix = (int)sx, iy = (int)sy;
                    if (ix < 0 || ix >= key->width || iy < 0 || iy >= key->height) continue;
                    best = margin; selected_x = ix; selected_y = iy;
                    selected_key = k; sample_x = sx; sample_y = sy;
                }
                if (best < 0.f) { outside += pixels; frustum += pixels; packed[l] = UINT32_C(0xffff00ff); depths[l] = 2.f; continue; }
                surface[l] = sg_key_fetch(job->keys[selected_key],selected_x,selected_y,&selected[l]);
                const sg_key_surface *s = surface[l];
                if (s->material == UINT16_MAX) { background += pixels; continue; }
                if (!job->oracle) {
                    const float *mv = c->mv_stack[c->mv_top].m, *pr = c->pr_stack[c->pr_top].m;
                    float ex = clip.x/pr[0], ey = clip.y/pr[5], direction[3];
                    for (int k = 0; k < 3; k++) directions[k][l] = direction[k] = mv[k*4]*ex+mv[k*4+1]*ey-mv[k*4+2];
                    if (!sg_key_surface_depth(job,s,direction,&depths[l])) {
                        /* A near-tangent cached facet may fail at a new ray.
                         * Try other covered key views; never fabricate a depth
                         * or discard a pixel in lieu of repairing the cache. */
                        float alternative = -1.f;
                        const sg_key_surface *replacement = NULL;
                        sg_key_surface alternative_decoded, replacement_decoded;
                        int replacement_key = -1;
                        unsigned background_views = 0;
                        for (int k = 0; k < job->key_count; k++) {
                            float margin = mapped_margin[k][l];
                            if (k == selected_key || !(margin >= 0.f) || margin <= alternative) continue;
                            const sg_key_atlas *key = job->keys[k];
                            int ix = (int)mapped_x[k][l], iy = (int)mapped_y[k][l];
                            if (ix < 0 || ix >= key->width || iy < 0 || iy >= key->height) continue;
                            const sg_key_surface *other = sg_key_fetch(key,ix,iy,&alternative_decoded);
                            float d;
                            if (other->material == UINT16_MAX) { background_views++; continue; }
                            if (!sg_key_surface_depth(job,other,direction,&d)) continue;
                            replacement = other; alternative = margin; depths[l] = d;
                            memcpy(replacement_decoded.facet,other->facet,sizeof(other->facet));
                            memcpy(replacement_decoded.normal,other->normal,sizeof(other->normal));
                            memcpy(replacement_decoded.geometric,other->geometric,sizeof(other->geometric));
                            memcpy(replacement_decoded.albedo,other->albedo,sizeof(other->albedo));
                            memcpy(replacement_decoded.residual,other->residual,sizeof(other->residual));
                            replacement_decoded.material = other->material;
                            sample_x = mapped_x[k][l]; sample_y = mapped_y[k][l];
                            replacement_key = k;
                            /* Keep the failed index fixed while searching. */
                        }
                        if (!replacement) {
                            /* Two independent covered views agree on empty
                             * space and the selected facet cannot intersect
                             * this ray. This is an approximate confidence rule,
                             * not a proof of physical MSAA coverage. */
                            if (background_views >= 2) { background += pixels; consensus += pixels; continue; }
                            outside += pixels; geometry += pixels; packed[l] = UINT32_C(0xffff00ff); depths[l] = 2.f; continue;
                        }
                        memcpy(selected[l].facet,replacement_decoded.facet,sizeof(selected[l].facet));
                        memcpy(selected[l].normal,replacement_decoded.normal,sizeof(selected[l].normal));
                        memcpy(selected[l].geometric,replacement_decoded.geometric,sizeof(selected[l].geometric));
                        memcpy(selected[l].albedo,replacement_decoded.albedo,sizeof(selected[l].albedo));
                        memcpy(selected[l].residual,replacement_decoded.residual,sizeof(selected[l].residual));
                        selected[l].material = replacement_decoded.material;
                        s = surface[l] = &selected[l];
                        selected_key = replacement_key;
                    }
                }
                surface[l] = s = sg_key_filter_surface(job->keys[selected_key],sample_x,sample_y,s,&filtered[l]);
                material[l] = s->material;
                if (job->oracle) {
                    directions[0][l] = point.x-job->eye[0]; directions[1][l] = point.y-job->eye[1]; directions[2][l] = point.z-job->eye[2];
                    sg_vec4 e, projected;
                    sg_mat4_mul_vec4(&e,&c->mv_stack[c->mv_top],&point);
                    sg_mat4_mul_vec4(&projected,&c->pr_stack[c->pr_top],&e);
                    depths[l] = .5f*(projected.z/projected.w+1.f);
                }
                if (!(depths[l] >= 0.f && depths[l] <= 1.f)) {
                    outside += pixels; geometry += pixels; packed[l] = UINT32_C(0xffff00ff); depths[l] = 2.f; material[l] = UINT16_MAX; continue;
                }
                live |= 1u << l; shaded += pixels;
            }
            if (live) sg_key_relight_packet(job,surface,directions,live,packed);
            for (int l = 0; l < 4 && x+l*job->block < c->fb.w; l++) {
                int ox = x+l*job->block;
                for (int dy = 0; dy < job->block && y+dy < c->fb.h; dy++)
                    for (int dx = 0; dx < job->block && ox+dx < c->fb.w; dx++) {
                        size_t p = (size_t)(y+dy)*c->fb.w+ox+dx;
                        job->rgba[p] = packed[l];
                        if (job->materials) job->materials[p] = material[l];
                        if (job->depth) job->depth[p] = depths[l];
                    }
            }
        }
    }
    atomic_fetch_add_explicit(&job->outside,outside,memory_order_relaxed);
    atomic_fetch_add_explicit(&job->background,background,memory_order_relaxed);
    atomic_fetch_add_explicit(&job->shaded,shaded,memory_order_relaxed);
    atomic_fetch_add_explicit(&job->frustum,frustum,memory_order_relaxed);
    atomic_fetch_add_explicit(&job->geometry,geometry,memory_order_relaxed);
    atomic_fetch_add_explicit(&job->consensus,consensus,memory_order_relaxed);
}

int sg_key_reconstruct_many(softgl_ctx *c, const sg_key_atlas *const *keys,
    int count, const sg_key_atlas *oracle, int block, uint32_t *rgba,
    uint16_t *materials, float *depth, sg_key_result *result) {
    if (count < 1 || count > 4 || block < 1 || block > 2 || !rgba || !result ||
        (oracle && !oracle->surface)) return 0;
    sg_key_reconstruct_job job = {.context = c, .keys = keys, .oracle = oracle,
        .key_count = count, .block = block, .rgba = rgba, .materials = materials, .depth = depth};
    sg_mat4 inv_mv, inv_pr, inv_key, mvp, transform;
    if (!sg_mat4_inverse(&inv_mv,&c->mv_stack[c->mv_top]) || !sg_mat4_inverse(&inv_pr,&c->pr_stack[c->pr_top])) return 0;
    sg_mat4_mul(&job.ray,&inv_mv,&inv_pr);
    for (int k = 0; k < 3; k++) job.eye[k] = inv_mv.m[12+k];
    int rotation = 1;
    for (int k = 0; k < count; k++) {
        if ((!keys[k]->surface && !keys[k]->sample) || keys[k]->material_count != keys[0]->material_count ||
            !sg_mat4_inverse(&inv_key,&keys[k]->modelview)) return 0;
        for (int j = 0; j < 3; j++) if (fabsf(inv_key.m[12+j]-job.eye[j]) > 1e-5f) rotation = 0;
        sg_mat4_mul(&mvp,&keys[k]->projection,&keys[k]->modelview);
        if (oracle) job.maps[k] = mvp;
        else {
            sg_mat4_mul(&transform,&mvp,&inv_mv);
            sg_mat4_mul(&job.maps[k],&transform,&inv_pr);
        }
    }
    memset(result,0,sizeof(*result)); result->rotation_supported = rotation;
    if (!rotation && !oracle) return 0;
    const float light[3] = {.45f,.75f,.65f};
    float length = sqrtf(sg_key_dot3(light,light));
    const float *mv = c->mv_stack[c->mv_top].m;
    for (int k = 0; k < 3; k++) job.light[k] = (mv[k*4]*light[0]+mv[k*4+1]*light[1]+mv[k*4+2]*light[2])/length;
    atomic_init(&job.next_row,0); atomic_init(&job.outside,0);
    atomic_init(&job.background,0); atomic_init(&job.shaded,0);
    atomic_init(&job.frustum,0); atomic_init(&job.geometry,0);
    atomic_init(&job.consensus,0);
    sg_workers_run_callback(c,sg_key_reconstruct_rows,&job);
    result->outside_pixels = atomic_load_explicit(&job.outside,memory_order_relaxed);
    result->background_pixels = atomic_load_explicit(&job.background,memory_order_relaxed);
    result->shaded_pixels = atomic_load_explicit(&job.shaded,memory_order_relaxed);
    result->frustum_pixels = atomic_load_explicit(&job.frustum,memory_order_relaxed);
    result->invalid_geometry_pixels = atomic_load_explicit(&job.geometry,memory_order_relaxed);
    result->consensus_background_pixels = atomic_load_explicit(&job.consensus,memory_order_relaxed);
    return 1;
}

int sg_key_reconstruct(softgl_ctx *c, const sg_key_atlas *key,
    const sg_key_atlas *oracle, int block, uint32_t *rgba,
    uint16_t *materials, float *depth, sg_key_result *result) {
    const sg_key_atlas *keys[1] = {key};
    return sg_key_reconstruct_many(c,keys,1,oracle,block,rgba,materials,depth,result);
}

/* Additive anchor correction preserves the actually resolved keyframe's
 * spatial MSAA mixture. Secondary surfaces and transparency in this residual
 * are not independently relit: that is an explicit prototype limitation. */
int sg_key_finalize(softgl_ctx *c, sg_key_atlas *key) {
    if (memcmp(&key->modelview,&c->mv_stack[c->mv_top],sizeof(sg_mat4)) ||
        memcmp(&key->projection,&c->pr_stack[c->pr_top],sizeof(sg_mat4))) return 0;
    size_t pixels = (size_t)key->width*key->height;
    uint32_t *baseline = malloc(pixels*4); if (!baseline) return 0;
    sg_key_result result;
    if (!sg_key_reconstruct(c,key,NULL,1,baseline,NULL,NULL,&result)) { free(baseline); return 0; }
    for (size_t p = 0; p < pixels; p++) {
        const unsigned char *a = (const unsigned char *)&key->surface[p].lit;
        const unsigned char *b = (const unsigned char *)&baseline[p];
        for (int k = 0; k < 4; k++) key->surface[p].residual[k] = ((float)a[k]-b[k])/255.f;
    }
    free(baseline); return 1;
}

typedef struct { softgl_ctx *context; atomic_int next_row; } sg_key_present_job;

static void sg_key_present_rows(void *data) {
    sg_key_present_job *job = data; softgl_ctx *c = job->context;
    for (;;) {
        int y = atomic_fetch_add_explicit(&job->next_row,1,memory_order_relaxed);
        if (y >= c->fb.h) break;
        for (int x = 0; x < c->fb.w; x++) {
            size_t p = (size_t)y*c->fb.w+x, base = p*(unsigned)c->fb.samples;
            uint32_t color; memcpy(&color,c->fb.color+p*4,4);
            if (c->fb.samples == 4) {
                _mm_storeu_si128((__m128i *)(c->fb.sample_color+base*4),_mm_set1_epi32((int)color));
                _mm_storeu_ps(c->fb.sample_depth+base,_mm_set1_ps(c->fb.depth[p]));
            } else for (int s = 0; s < c->fb.samples; s++) {
                memcpy(c->fb.sample_color+(base+(unsigned)s)*4,&color,4);
                c->fb.sample_depth[base+(unsigned)s] = c->fb.depth[p];
            }
        }
    }
}

/* Replication supplies the standard output allocator/readback. These samples
 * hold an approximate reconstructed image, not new physical MSAA coverage. */
void sg_key_present(softgl_ctx *c) {
    if (!c->fb.samples) return;
    sg_key_present_job job = {.context = c}; atomic_init(&job.next_row,0);
    sg_workers_run_callback(c,sg_key_present_rows,&job);
}
