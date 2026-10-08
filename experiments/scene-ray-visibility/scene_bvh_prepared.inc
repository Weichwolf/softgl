/* Reuse exact setup across stripes; only final winning records get attributes. */
#ifdef SCENE_BVH_OCCLUSION
#include "scene_bvh_hz.inc"
#else
typedef struct { int unused; } scene_bvh_hz;
#endif
static void scene_ray_fill_record(struct sg_scene_visibility *f, scene_triangle *t) {
    uint32_t id = t->ray_key/8; int fan = (int)(t->ray_key%8);
    sg_vert vertices[3]; scene_ray_vertices(f,f->ray->entries+id,fan,vertices,1);
    for (int j = 0; j < 3; j++) {
        t->color[j] = vertices[j].color;
        for (int u = 0; u < 4; u++) t->uv[u][j] = vertices[j].uv[u];
    }
}
static int scene_bvh_raster_one(softgl_ctx *c, scene_ray_entry *entry, int fan,
    uint32_t source_key, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1, scene_bvh_hz *hz) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed, memory_order_relaxed)) return 0;
    if (c->scene_material < 0 || c->scene_material >= SCENE_MATERIALS) {
        atomic_store_explicit(&f->failed, 1, memory_order_relaxed); return 0;
    }
    const scene_material *m = &f->materials[c->scene_material];
    sg_worker_pool *pool = c->workers;
    int bin = pool->column_bin[tile_ix0];
    scene_bin *b = &f->bins[bin];
    scene_ray_prepared *prepared = entry->clipped_count ? &entry->clipped->triangle[fan] : &entry->triangle;
    int ix0 = prepared->bounds[0] & 0x7fff, ix1 = prepared->bounds[1];
    int iy0 = prepared->bounds[2], iy1 = prepared->bounds[3];
    if (ix0 < tile_ix0) ix0 = tile_ix0;
    if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    int64_t area = prepared->area;
    const int8_t *bias = prepared->bias;
    const int64_t (*edge)[3] = prepared->edge;
    float inverse_area = prepared->inverse_area;
    int coverage32 = prepared->bounds[0] >> 15;
    sg_i32x4 coverage_delta[3];
    if (coverage32) for (int k = 0; k < 3; k++) {
        int64_t delta = k < 2 ? edge[k][1] : -edge[0][1]-edge[1][1];
        int32_t sx = (int32_t)(delta >> 8);
        coverage_delta[k] = sg_i32x4_set(0,sx,sx*2,sx*3);
    }
    uint32_t record = UINT32_MAX;
    int64_t dx[3] = {edge[0][1], edge[1][1], -edge[0][1]-edge[1][1]};
    int64_t lo[3], hi[3];
    for (int k = 0; k < 3; k++) {
        lo[k] = dx[k] < 0 ? dx[k]*3 : 0;
        hi[k] = dx[k] > 0 ? dx[k]*3 : 0;
    }
    sg_i32x4 step[3];
    if (coverage32) for (int k = 0; k < 3; k++)
        step[k] = sg_i32x4_splat((int32_t)(dx[k] >> 8)*4);
    for (int y = iy0; y < iy1; y++) {
        int64_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int64_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0, q1, q2;
        if (coverage32) {
            q0 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e0+bias[0]) >> 8)),coverage_delta[0]);
            q1 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e1+bias[1]) >> 8)),coverage_delta[1]);
            q2 = sg_i32x4_add(sg_i32x4_splat((int32_t)((area-e0-e1+bias[2]) >> 8)),coverage_delta[2]);
        }
        for (int x = ix0; x < ix1; x += 4, e0 += edge[0][1]*4, e1 += edge[1][1]*4) {
            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            if (coverage32) {
                unsigned inside = (unsigned)~_mm_movemask_ps(_mm_castsi128_ps(_mm_or_si128(_mm_or_si128(q0,q1),q2))) & 15u;
                q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]); q2 = sg_i32x4_add(q2,step[2]);
                live &= inside;
            } else {
                int64_t e2 = area-e0-e1;
                if (e0+bias[0]+hi[0] < 0 || e1+bias[1]+hi[1] < 0 || e2+bias[2]+hi[2] < 0) continue;
                if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 || e2+bias[2]+lo[2] < 0) {
                    unsigned inside = 0;
                    for (int l = 0; l < 4; l++) {
                        int64_t a = e0+edge[0][1]*l, d = e1+edge[1][1]*l;
                        if (a+bias[0] >= 0 && d+bias[1] >= 0 && area-a-d+bias[2] >= 0) inside |= 1u << l;
                    }
                    live &= inside;
                }
            }
            if (!live) continue;
            int64_t a[4], d[4];
            for (int l = 0; l < 4; l++) {
                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;
            }
            sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)d[0],(float)d[1],(float)d[2],(float)d[3]),sg_f32x4_splat(inverse_area));
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),
                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));
            float depths[4]; sg_f32x4_store(depths,z);
            if (x+3 < tile_ix1) {
                sg_f32x4 old = sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
                sg_i32x4 passing = sg_i32x4_and(sg_f32x4_le(z,old),
                    sg_i32x4_and(sg_f32x4_ge(z,sg_f32x4_splat(0.f)),
                                  sg_f32x4_le(z,sg_f32x4_splat(1.f))));
                live &= sg_mask4_live(passing);
            } else {
                /* No vector access crosses this worker's stripe. */
                for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                    size_t pixel = (size_t)y*c->fb.w+x+l;
                    if (depths[l] < 0.f || depths[l] > 1.f || !(depths[l] <= c->fb.depth[pixel])) live &= ~(1u << l);
                }
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
                if (depths[l] == c->fb.depth[pixel]) {
                    if (f->pixel_material[pixel] == UINT16_MAX ||
                        source_key >= scene_triangle_at(f,f->winner[pixel])->ray_key) live &= ~(1u << l);
                }
            }
            if (!live) continue;
            if (m->alpha_test) {
                sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.w));
                sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.w));
                sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.w));
                sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2));
                sg_f32x4 tex[4];
                sg_packet_sample_unit(&m->texture.unit[2],2,v0,v1,v2,w0,w1,w2,inverse,live,0,tex);
                sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],
                    sg_packet_lerp(v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse)));
                live &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
                if (!live) continue;
            }
            if (record == UINT32_MAX) {
                f->ray_current[bin] = source_key;
                record = scene_triangle_record(f,bin,v0,v1,v2,edge,inverse_area,(uint32_t)c->scene_material);
                if (record == UINT32_MAX) return 0;
            }
            for (int l = 0; l < 4; l++) if (live & (1u << l)) {
                size_t pixel = (size_t)y*c->fb.w+x+l;
#ifdef SCENE_BVH_OCCLUSION
                scene_bvh_hz_written(hz,x+l,y,c->fb.depth[pixel]);
#endif
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;
                f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
            }
        }
    }
    /* Unknown rather than empty: do not cache a depth-rejected primitive as
     * generally invisible when its material shading has been deferred. */
    return 0;
}

static unsigned scene_bvh_plane_visible(const scene_bvh_node *node, const float planes[6][4], unsigned mask) {
    unsigned remaining = mask;
    while (remaining) {
        int p = __builtin_ctz(remaining); remaining &= remaining-1;
        const float *a = planes[p];
        float x = a[0] >= 0.f ? node->high[0] : node->low[0];
        float y = a[1] >= 0.f ? node->high[1] : node->low[1];
        float z = a[2] >= 0.f ? node->high[2] : node->low[2];
        if ((a[0]*x+a[1]*y)+(a[2]*z+a[3]) < -1e-5f) return UINT32_MAX;
        x = a[0] >= 0.f ? node->low[0] : node->high[0];
        y = a[1] >= 0.f ? node->low[1] : node->high[1];
        z = a[2] >= 0.f ? node->low[2] : node->high[2];
        if ((a[0]*x+a[1]*y)+(a[2]*z+a[3]) >= 1e-5f) mask &= ~(1u << p);
    }
    return mask;
}

static float scene_bvh_near_depth(const scene_bvh_node *node, const float *view) {
    float x = view[2] >= 0.f ? node->high[0] : node->low[0];
    float y = view[6] >= 0.f ? node->high[1] : node->low[1];
    float z = view[10] >= 0.f ? node->high[2] : node->low[2];
    return -((view[2]*x+view[6]*y)+(view[10]*z+view[14]));
}

static void scene_bvh_raster(void *data) {
    struct sg_scene_visibility *f = data; scene_ray_state *r = f->ray;
    scene_geometry *g = f->geometry; softgl_ctx local = *f->context;
    sg_worker_pool *pool = local.workers;
    const scene_bvh_node *nodes = sg_scene_bvh_nodes(r->bvh);
    const uint32_t *indices = sg_scene_bvh_indices(r->bvh);
    const uint32_t *counts = sg_scene_bvh_subtree_counts(r->bvh);
    const float *view = f->materials[0].mesh.modelview.m, *projection = r->projection;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        int x0 = pool->bins[bin].ix0, x1 = pool->bins[bin].ix1;
        scene_bvh_hz hz;
#ifdef SCENE_BVH_OCCLUSION
        scene_bvh_hz_initialize(&local,&hz,x0,x1);
#endif
        float planes[6][4];
        float left = (x0-.01f)/320.f-1.f, right = (x1+.01f)/320.f-1.f;
        for (int k = 0; k < 4; k++) {
            float x = projection[0]*view[k*4], y = projection[5]*view[k*4+1];
            float w = -view[k*4+2], z = projection[10]*view[k*4+2]+(k == 3 ? projection[14] : 0.f);
            planes[0][k] = x-left*w; planes[1][k] = right*w-x;
            planes[2][k] = y+w; planes[3][k] = w-y;
            planes[4][k] = z+w; planes[5][k] = w-z;
        }
        typedef struct { uint32_t node, planes; } pending;
        pending stack[64]; unsigned top = 0; stack[top++] = (pending){0,63};
        while (top) {
            pending item = stack[--top]; uint32_t at = item.node;
            const scene_bvh_node *node = nodes+at;
            unsigned active = scene_bvh_plane_visible(node,planes,item.planes);
            if (active == UINT32_MAX) continue;
#ifdef SCENE_BVH_OCCLUSION
            if (counts[at] >= 32 && scene_bvh_hz_hidden(&local,&hz,node,view,projection)) {
                hz.rejected_triangles += counts[at]; continue;
            }
#endif
            if (!node->count) {
                if (top+2 > 64) { scene_geometry_fail(f); break; }
                uint32_t near = node->first, far = near+1;
                if (scene_bvh_near_depth(nodes+near,view) > scene_bvh_near_depth(nodes+far,view)) {
                    uint32_t swap = near; near = far; far = swap;
                }
                stack[top++] = (pending){far,active}; stack[top++] = (pending){near,active}; continue;
            }
            for (uint32_t i = 0; i < node->count; i++) {
                uint32_t id = indices[node->first+i]; scene_ray_entry *e = scene_ray_prepare(f,id);
                local.scene_material = e->material;
                for (int fan = 0; fan < e->count; fan++) {
                    sg_vert vertices[3];
                    if (f->materials[e->material].alpha_test) scene_ray_vertices(f,e,fan,vertices,0);
                    else {
                        const scene_ray_prepared *t = e->clipped_count ? &e->clipped->triangle[fan] : &e->triangle;
                        for (int j = 0; j < 3; j++) { vertices[j].ndc = t->ndc[j]; vertices[j].color.w = 1.f; }
                    }
                    scene_bvh_raster_one(&local,e,fan,id*8+(uint32_t)fan,
                        vertices,vertices+1,vertices+2,x0,x1,&hz);
                }
            }
        }
        f->ray_current[bin] = UINT32_MAX;
#ifdef SCENE_BVH_OCCLUSION
        if (getenv("SOFTGL_BVH_STATS")) fprintf(stderr,
            "BVH_HZ {\"bin\":%d,\"tests\":%llu,\"rejectedGroups\":%llu,\"rejectedTriangleReferences\":%llu}\n",
            bin,(unsigned long long)hz.tests,(unsigned long long)hz.rejected,
            (unsigned long long)hz.rejected_triangles);
#endif
    }
}
