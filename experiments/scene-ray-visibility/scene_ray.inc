/* Private full-frame BVH frontend. Leaves retain fixed-point coverage and
 * original material sampling; the BVH is only a conservative candidate index. */
#include "scene_bvh.h"
extern int sg_mat4_inverse(sg_mat4 *, const sg_mat4 *);

typedef struct {
    sg_vec4 ndc[3];
    int64_t edge[2][3], area;
    float inverse_area;
    int8_t bias[3];
    uint8_t reversed;
} scene_ray_prepared;
typedef struct {
    scene_ray_prepared triangle[7];
    float basis[7][3][3], uv[7][3][2];
} scene_ray_clipped;
typedef struct {
    atomic_uint ready;
    uint32_t indices[3];
    uint16_t material;
    uint8_t count, clipped_count;
    scene_ray_clipped *clipped;
    scene_ray_prepared triangle;
} scene_ray_entry;
typedef struct { uint32_t *table, capacity; } scene_ray_recordmap;

struct scene_ray_state {
    void *bvh;
    float *bounds, padding, root_low[3], root_high[3];
    scene_ray_entry *entries;
    scene_mesh *signature;
    atomic_uint *position_ready;
    uint32_t count, epoch, frame, position_capacity;
    int mesh_count;
    size_t clipped_bytes;
    scene_ray_recordmap records[SG_MAX_BINS];
    sg_mat4 inverse_view;
    float origin[3], projection[16], far_plane;
};
typedef struct {
    uint32_t winner[4];
    int fan[4], x, y;
    float depth[4], maximum[4];
} scene_ray_packet;

static void scene_ray_destroy(scene_ray_state *r) {
    if (!r) return;
    sg_scene_bvh_destroy(r->bvh);
    if (r->entries) for (uint32_t i = 0; i < r->count; i++) free(r->entries[i].clipped);
    for (int i = 0; i < SG_MAX_BINS; i++) free(r->records[i].table);
    free(r->entries); free(r->bounds); free(r->signature); free(r->position_ready); free(r);
}

void softgl_scene_ray_static_geometry(GLuint epoch) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility) ((struct sg_scene_visibility *)c->scene_visibility)->ray_epoch = epoch;
}

static void scene_ray_position(struct sg_scene_visibility *f, const scene_mesh *m, uint32_t index) {
    scene_ray_state *r = f->ray; scene_geometry *g = f->geometry;
    uint32_t at = m->offset+index-m->minimum, tag = r->frame*4;
    unsigned value = atomic_load_explicit(&r->position_ready[at],memory_order_acquire);
    for (;;) {
        if (value == tag+2) return;
        if (value == tag+1) { value = atomic_load_explicit(&r->position_ready[at],memory_order_acquire); continue; }
        if (atomic_compare_exchange_weak_explicit(&r->position_ready[at],&value,tag+1,memory_order_acquire,memory_order_relaxed)) break;
    }
    const float *p = (const float *)((const uint8_t *)m->positions+(size_t)index*m->stride);
    const float *v = m->modelview.m, *pr = m->projection.m;
    float eye[3];
    for (int k = 0; k < 3; k++) eye[k] = (v[k]*p[0]+v[k+4]*p[1])+(v[k+8]*p[2]+v[k+12]);
    sg_vec4 clip = {pr[0]*eye[0],pr[5]*eye[1],pr[10]*eye[2]+pr[14],-eye[2]};
    if (!isfinite(clip.x) || !isfinite(clip.y) || !isfinite(clip.z) || !isfinite(clip.w)) scene_geometry_fail(f);
    g->positions[at].clip = clip; g->positions[at].ndc = scene_viewport(clip);
    unsigned outside = 0;
    for (int k = 0; k < 6; k++) if (scene_clip_distance(&clip,k) < 0.f) outside |= 1u << k;
    g->outcodes[at] = (uint8_t)outside;
    atomic_store_explicit(&g->ready[at],0,memory_order_relaxed);
    atomic_store_explicit(&r->position_ready[at],tag+2,memory_order_release);
}

static int scene_ray_setup(const scene_mesh *m, scene_ray_prepared *t, const sg_vec4 input[3]) {
    memcpy(t->ndc,input,sizeof(t->ndc));
    float area = (input[1].x-input[0].x)*(input[2].y-input[0].y)-(input[1].y-input[0].y)*(input[2].x-input[0].x);
    if (fabsf(area) < 1e-10f) return 0;
    int front = m->front_face == GL_CCW ? area > 0.f : area < 0.f;
    if (m->cull_enabled && (m->cull_face == GL_FRONT_AND_BACK ||
        (m->cull_face == GL_FRONT && front) || (m->cull_face == GL_BACK && !front))) return 0;
    t->reversed = area < 0.f;
    if (t->reversed) { sg_vec4 v = t->ndc[1]; t->ndc[1] = t->ndc[2]; t->ndc[2] = v; }
    int32_t x[3], y[3];
    for (int j = 0; j < 3; j++) { x[j] = sg_fp_screen_from_float(t->ndc[j].x); y[j] = sg_fp_screen_from_float(t->ndc[j].y); }
    t->area = (int64_t)(x[1]-x[0])*(y[2]-y[0])-(int64_t)(y[1]-y[0])*(x[2]-x[0]);
    if (t->area <= 0) return 0;
    for (int j = 0; j < 3; j++) {
        int a = (j+1)%3, b = (j+2)%3;
        t->bias[j] = ((y[b]-y[a]) < 0 || (y[b] == y[a] && x[b]-x[a] < 0)) ? 0 : -1;
        if (j < 2) {
            t->edge[j][0] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            t->edge[j][1] = -(int64_t)(y[b]-y[a])*256;
            t->edge[j][2] = (int64_t)(x[b]-x[a])*256;
        }
    }
    t->inverse_area = 1.f/(float)t->area;
    return 1;
}

static scene_ray_entry *scene_ray_prepare(struct sg_scene_visibility *f, uint32_t id) {
    scene_ray_state *r = f->ray; scene_geometry *g = f->geometry;
    scene_ray_entry *e = &r->entries[id]; uint32_t tag = r->frame*4;
    unsigned value = atomic_load_explicit(&e->ready,memory_order_acquire);
    for (;;) {
        if (value == tag+2) return e;
        if (value == tag+1) { value = atomic_load_explicit(&e->ready,memory_order_acquire); continue; }
        if (atomic_compare_exchange_weak_explicit(&e->ready,&value,tag+1,memory_order_acquire,memory_order_relaxed)) break;
    }
    const scene_mesh *m = &f->materials[e->material].mesh;
    uint32_t at[3]; unsigned any = 0, all = 63;
    for (int j = 0; j < 3; j++) {
        scene_ray_position(f,m,e->indices[j]); at[j] = m->offset+e->indices[j]-m->minimum;
        any |= g->outcodes[at[j]]; all &= g->outcodes[at[j]];
    }
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) all = 63;
    e->count = 0; e->clipped_count = 0;
    if (!all && !any) {
        sg_vec4 ndc[3]; for (int j = 0; j < 3; j++) ndc[j] = g->positions[at[j]].ndc;
        e->count = (uint8_t)scene_ray_setup(m,&e->triangle,ndc);
    } else if (!all) {
        if (!e->clipped) {
            pthread_mutex_lock(&f->allocation_mutex);
            if (r->clipped_bytes+sizeof(scene_ray_clipped) <= 32u*1024u*1024u) {
                e->clipped = malloc(sizeof(scene_ray_clipped));
                if (e->clipped) r->clipped_bytes += sizeof(scene_ray_clipped);
            }
            pthread_mutex_unlock(&f->allocation_mutex);
        }
        if (!e->clipped) scene_geometry_fail(f);
        else {
            scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS], *cur = a, *other = b;
            for (int j = 0; j < 3; j++) {
                cur[j].clip = g->positions[at[j]].clip;
                for (int k = 0; k < 3; k++) cur[j].basis[k] = j == k ? 1.f : 0.f;
                const float *uv = (const float *)((const uint8_t *)m->coordinates+(size_t)e->indices[j]*m->stride);
                memcpy(cur[j].uv,uv,2*sizeof(float));
            }
            int n = 3;
            for (int plane = 0; plane < 6 && n >= 3; plane++) {
                n = scene_clip_polygon(cur,n,plane,other);
                scene_clip_vertex *swap = cur; cur = other; other = swap;
            }
            for (int j = 1; j+1 < n; j++) {
                if (e->count == 7) { scene_geometry_fail(f); break; }
                unsigned k = e->count; const scene_clip_vertex *v[3] = {cur,cur+j,cur+j+1};
                sg_vec4 ndc[3]; for (int l = 0; l < 3; l++) ndc[l] = scene_viewport(v[l]->clip);
                scene_ray_prepared *t = &e->clipped->triangle[k];
                if (!scene_ray_setup(m,t,ndc)) continue;
                for (int l = 0; l < 3; l++) {
                    int source = t->reversed && l ? 3-l : l;
                    memcpy(e->clipped->basis[k][l],v[source]->basis,3*sizeof(float));
                    memcpy(e->clipped->uv[k][l],v[source]->uv,2*sizeof(float));
                }
                e->count++;
            }
            e->clipped_count = e->count;
        }
    }
    atomic_store_explicit(&e->ready,tag+2,memory_order_release);
    return e;
}

static void scene_ray_vertices(struct sg_scene_visibility *f, scene_ray_entry *e, int fan,
    sg_vert out[3], int attributes) {
    scene_ray_prepared *t = e->clipped_count ? &e->clipped->triangle[fan] : &e->triangle;
    const scene_mesh *m = &f->materials[e->material].mesh;
    scene_attribute *a[3];
    if (attributes) for (int j = 0; j < 3; j++) a[j] = scene_geometry_attribute(f,m,e->indices[j]);
    for (int j = 0; j < 3; j++) {
        out[j].ndc = t->ndc[j]; out[j].color.w = 1.f;
        int index = t->reversed && j ? 3-j : j;
        const float *uv = e->clipped_count ? e->clipped->uv[fan][j] :
            (const float *)((const uint8_t *)m->coordinates+(size_t)e->indices[index]*m->stride);
        out[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
        if (attributes) {
            out[j].color = e->clipped_count ? scene_geometry_interpolate(&a[0]->color,&a[1]->color,&a[2]->color,e->clipped->basis[fan][j]) : a[index]->color;
            out[j].color.w = 1.f;
            for (int u = 0; u < 4; u++) {
                out[j].uv[u] = e->clipped_count ? scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],e->clipped->basis[fan][j]) : a[index]->uv[u];
                if (e->clipped_count && (u == 0 || u == 2)) out[j].uv[u] = (sg_vec4){uv[0],uv[1],0.f,1.f};
            }
        }
    }
}

static float scene_ray_distance(scene_ray_state *r, float z) {
    float upper = z+2e-6f;
    if (upper >= 1.f) return r->far_plane;
    float t = r->projection[14]/(2.f*upper+r->projection[10]-1.f);
    return t > r->far_plane ? r->far_plane : t;
}

static void scene_ray_candidates(struct sg_scene_visibility *f, uint32_t id,
    scene_ray_packet *q, unsigned mask) {
    scene_ray_entry *e = scene_ray_prepare(f,id);
    const scene_material *m = &f->materials[e->material];
    for (int fan = 0; fan < e->count; fan++) {
        scene_ray_prepared *t = e->clipped_count ? &e->clipped->triangle[fan] : &e->triangle;
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*q->x+t->edge[0][2]*q->y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*q->x+t->edge[1][2]*q->y;
        int64_t a[4], b[4]; unsigned covered = 0;
        for (int l = 0; l < 4; l++) {
            a[l] = e0+t->edge[0][1]*l; b[l] = e1+t->edge[1][1]*l;
            if (a[l]+t->bias[0] >= 0 && b[l]+t->bias[1] >= 0 && t->area-a[l]-b[l]+t->bias[2] >= 0) covered |= 1u << l;
        }
        covered &= mask; if (!covered) continue;
        sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(t->inverse_area));
        sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)b[0],(float)b[1],(float)b[2],(float)b[3]),sg_f32x4_splat(t->inverse_area));
        sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
        sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(t->ndc[0].z)),sg_f32x4_mul(b1,sg_f32x4_splat(t->ndc[1].z))),sg_f32x4_mul(b2,sg_f32x4_splat(t->ndc[2].z)));
        float depths[4]; sg_f32x4_store(depths,z);
        for (int l = 0; l < 4; l++) if (covered & (1u << l)) {
            if (!(depths[l] >= 0.f && depths[l] <= 1.f) || !(depths[l] < q->depth[l] ||
                (depths[l] == q->depth[l] && q->winner[l] != UINT32_MAX && id < q->winner[l]))) covered &= ~(1u << l);
        }
        if (!covered) continue;
        if (m->alpha_test) {
            sg_vert v[3]; scene_ray_vertices(f,e,fan,v,0);
            sg_f32x4 w0 = sg_f32x4_mul(b0,sg_f32x4_splat(t->ndc[0].w));
            sg_f32x4 w1 = sg_f32x4_mul(b1,sg_f32x4_splat(t->ndc[1].w));
            sg_f32x4 w2 = sg_f32x4_mul(b2,sg_f32x4_splat(t->ndc[2].w));
            sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f),sg_f32x4_add(sg_f32x4_add(w0,w1),w2)), tex[4];
            sg_packet_sample_unit(&m->texture.unit[2],2,v,v+1,v+2,w0,w1,w2,inverse,covered,0,tex);
            sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],sg_packet_lerp(1.f,1.f,1.f,w0,w1,w2,inverse)));
            covered &= sg_mask4_live(sg_f32x4_gt(alpha,sg_f32x4_splat(m->cutoff)));
        }
        for (int l = 0; l < 4; l++) if (covered & (1u << l)) {
            q->depth[l] = depths[l]; q->winner[l] = id; q->fan[l] = fan;
            q->maximum[l] = scene_ray_distance(f->ray,depths[l]);
        }
    }
}

static unsigned scene_ray_box(const scene_bvh_node *node, const float origin[3],
    const sg_f32x4 inverse[3], sg_f32x4 maximum, unsigned mask, sg_f32x4 *near_out) {
    sg_f32x4 near = sg_f32x4_splat(0.f), far = maximum;
    for (int k = 0; k < 3; k++) {
        sg_f32x4 a = sg_f32x4_mul(sg_f32x4_splat(node->low[k]-origin[k]),inverse[k]);
        sg_f32x4 b = sg_f32x4_mul(sg_f32x4_splat(node->high[k]-origin[k]),inverse[k]);
        near = _mm_max_ps(near,_mm_min_ps(a,b)); far = _mm_min_ps(far,_mm_max_ps(a,b));
    }
    *near_out = near;
    return mask & sg_mask4_live(sg_f32x4_ge(far,near));
}
static float scene_ray_nearest(sg_f32x4 near, unsigned mask) {
    float values[4]; sg_f32x4_store(values,near); float minimum = 1e30f;
    for (int l = 0; l < 4; l++) if ((mask & (1u << l)) && values[l] < minimum) minimum = values[l];
    return minimum;
}
static void scene_ray_trace_packet(struct sg_scene_visibility *f, scene_ray_packet *q,
    const sg_f32x4 inverse[3], unsigned mask) {
    scene_ray_state *r = f->ray;
    const scene_bvh_node *nodes = sg_scene_bvh_nodes(r->bvh);
    const uint32_t *indices = sg_scene_bvh_indices(r->bvh);
    typedef struct { sg_f32x4 near; uint32_t node; unsigned mask; } pending_node;
    pending_node stack[64]; unsigned top = 0; sg_f32x4 near;
    mask = scene_ray_box(nodes,r->origin,inverse,sg_f32x4_load(q->maximum),mask,&near);
    if (mask) stack[top++] = (pending_node){near,0,mask};
    while (top) {
        pending_node item = stack[--top];
        unsigned live = item.mask & sg_mask4_live(sg_f32x4_le(item.near,sg_f32x4_load(q->maximum)));
        if (!live) continue;
        const scene_bvh_node *node = nodes+item.node;
        if (node->count) {
            for (uint32_t i = 0; i < node->count; i++) scene_ray_candidates(f,indices[node->first+i],q,live);
        } else {
            sg_f32x4 a, b, maximum = sg_f32x4_load(q->maximum);
            unsigned left = scene_ray_box(nodes+node->first,r->origin,inverse,maximum,live,&a);
            unsigned right = scene_ray_box(nodes+node->first+1,r->origin,inverse,maximum,live,&b);
            if (top+2 > 64) { scene_geometry_fail(f); return; }
            pending_node children[2] = {{a,node->first,left},{b,node->first+1,right}};
            if (left && right && scene_ray_nearest(a,left) > scene_ray_nearest(b,right)) {
                pending_node tmp = children[0]; children[0] = children[1]; children[1] = tmp;
            }
            if (children[1].mask) stack[top++] = children[1];
            if (children[0].mask) stack[top++] = children[0];
        }
    }
}

static void scene_ray_pixels(void *data) {
    struct sg_scene_visibility *f = data; scene_ray_state *r = f->ray;
    sg_worker_pool *pool = f->context->workers; scene_geometry *g = f->geometry;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_ray_recordmap *map = &r->records[bin];
        uint32_t capacity = 256, needed = (uint32_t)(pool->bins[bin].ix1-pool->bins[bin].ix0)*360*2;
        while (capacity < needed) capacity *= 2;
        if (map->capacity < capacity) {
            uint32_t *next = realloc(map->table,(size_t)capacity*2*sizeof(uint32_t));
            if (!next) { scene_geometry_fail(f); break; }
            map->table = next; map->capacity = capacity;
        }
        memset(map->table,255,(size_t)map->capacity*2*sizeof(uint32_t));
        for (int y = 0; y < 360; y++) for (int x = pool->bins[bin].ix0; x < pool->bins[bin].ix1; x += 4) {
            scene_ray_packet q; q.x = x; q.y = y; unsigned live = 0;
            for (int l = 0; l < 4; l++) {
                q.winner[l] = UINT32_MAX; q.fan[l] = 0;
                q.depth[l] = x+l < pool->bins[bin].ix1 ? f->context->fb.depth[(size_t)y*640+x+l] : 0.f;
                q.maximum[l] = scene_ray_distance(r,q.depth[l]);
                if (x+l < pool->bins[bin].ix1 && q.depth[l] > 0.f) live |= 1u << l;
            }
            if (!live) continue;
            sg_f32x4 ex = sg_f32x4_div(sg_f32x4_sub(sg_f32x4_mul(sg_f32x4_set(x+.5f,x+1.5f,x+2.5f,x+3.5f),sg_f32x4_splat(1.f/320.f)),sg_f32x4_splat(1.f)),sg_f32x4_splat(r->projection[0]));
            sg_f32x4 ey = sg_f32x4_splat(((y+.5f)/180.f-1.f)/r->projection[5]), inverse[3];
            const float *v = r->inverse_view.m;
            for (int k = 0; k < 3; k++) {
                sg_f32x4 d = sg_f32x4_sub(sg_f32x4_add(sg_f32x4_mul(sg_f32x4_splat(v[k]),ex),sg_f32x4_mul(sg_f32x4_splat(v[k+4]),ey)),sg_f32x4_splat(v[k+8]));
                sg_f32x4 reciprocal = sg_f32x4_div(sg_f32x4_splat(1.f),d);
                sg_f32x4 sign = _mm_or_ps(_mm_and_ps(d,_mm_set1_ps(-0.f)),_mm_set1_ps(1e30f));
                inverse[k] = sg_f32x4_select(sg_f32x4_lt(_mm_andnot_ps(_mm_set1_ps(-0.f),d),sg_f32x4_splat(1e-30f)),sign,reciprocal);
            }
            scene_ray_trace_packet(f,&q,inverse,live);
            for (int l = 0; l < 4; l++) {
                if (q.winner[l] == UINT32_MAX) continue;
                scene_ray_entry *e = &r->entries[q.winner[l]];
                scene_ray_prepared *t = e->clipped_count ? &e->clipped->triangle[q.fan[l]] : &e->triangle;
                uint32_t key = q.winner[l]*8+(unsigned)q.fan[l];
                uint32_t at = (key*UINT32_C(2654435761)) & (map->capacity-1);
                while (map->table[at*2] != UINT32_MAX && map->table[at*2] != key) at = (at+1)&(map->capacity-1);
                uint32_t id = map->table[at*2+1];
                if (map->table[at*2] == UINT32_MAX) {
                    sg_vert verts[3]; scene_ray_vertices(f,e,q.fan[l],verts,1);
                    id = scene_triangle_record(f,bin,verts,verts+1,verts+2,t->edge,t->inverse_area,e->material);
                    map->table[at*2] = key; map->table[at*2+1] = id;
                }
                if (id == UINT32_MAX) break;
                size_t pixel = (size_t)y*640+x+l;
                f->winner[pixel] = id; f->pixel_material[pixel] = e->material;
                f->context->fb.depth[pixel] = q.depth[l]; f->bins[bin].depth_passes++;
            }
        }
    }
}

static int scene_ray_same_mesh(const scene_mesh *a, const scene_mesh *b) {
    return a->positions == b->positions && a->coordinates == b->coordinates && a->indices == b->indices &&
        a->count == b->count && a->stride == b->stride && a->minimum == b->minimum && a->span == b->span && a->offset == b->offset;
}

static int scene_ray_cache(struct sg_scene_visibility *f, float padding) {
    scene_ray_state *r = f->ray; uint32_t count = 0;
    int same = r && r->epoch == f->ray_epoch && r->mesh_count == f->material_count;
    for (int i = 0; i < f->material_count; i++) {
        const scene_mesh *m = &f->materials[i].mesh;
        count += m->count/3;
        if (same && !scene_ray_same_mesh(m,&r->signature[i])) same = 0;
    }
    if (!count || count > 750000) return 0;
    if (!same) {
        scene_ray_destroy(r); f->ray = r = calloc(1,sizeof(*r));
        if (!r) return 0;
        r->count = count; r->mesh_count = f->material_count; r->epoch = f->ray_epoch;
        r->entries = calloc(count,sizeof(*r->entries)); r->bounds = malloc((size_t)count*6*sizeof(float));
        r->signature = malloc((size_t)f->material_count*sizeof(scene_mesh));
        if (!r->entries || !r->bounds || !r->signature) { scene_ray_destroy(r); f->ray = NULL; return 0; }
        for (int k = 0; k < 3; k++) { r->root_low[k] = INFINITY; r->root_high[k] = -INFINITY; }
        uint32_t id = 0;
        for (int i = 0; i < f->material_count; i++) {
            const scene_mesh *m = &f->materials[i].mesh; r->signature[i] = *m;
            for (uint32_t at = 0; at < m->count; at += 3, id++) {
                scene_ray_entry *e = &r->entries[id]; e->material = (uint16_t)i;
                memcpy(e->indices,m->indices+at,3*sizeof(uint32_t)); atomic_init(&e->ready,0);
                float *b = r->bounds+id*6;
                for (int k = 0; k < 3; k++) { b[k] = INFINITY; b[k+3] = -INFINITY; }
                for (int j = 0; j < 3; j++) {
                    const float *p = (const float *)((const uint8_t *)m->positions+(size_t)e->indices[j]*m->stride);
                    for (int k = 0; k < 3; k++) {
                        if (!isfinite(p[k])) { scene_ray_destroy(r); f->ray = NULL; return 0; }
                        if (p[k] < b[k]) b[k] = p[k]; if (p[k] > b[k+3]) b[k+3] = p[k];
                    }
                }
                for (int k = 0; k < 3; k++) {
                    if (b[k] < r->root_low[k]) r->root_low[k] = b[k];
                    if (b[k+3] > r->root_high[k]) r->root_high[k] = b[k+3];
                }
            }
        }
    }
    if (r->position_capacity < f->mesh_vertices) {
        atomic_uint *p = malloc((size_t)f->mesh_vertices*sizeof(*p));
        if (!p) return 0;
        for (uint32_t i = 0; i < f->mesh_vertices; i++) atomic_init(p+i,0);
        free(r->position_ready); r->position_ready = p; r->position_capacity = f->mesh_vertices;
    }
    if (padding > 0.f && (!r->bvh || padding > r->padding)) {
        sg_scene_bvh_destroy(r->bvh); r->padding = padding*2;
        r->bvh = sg_scene_bvh_create(r->bounds,r->count,r->padding);
        if (!r->bvh) return 0;
    }
    return 1;
}

static int scene_ray_build(struct sg_scene_visibility *f) {
    if (!f->ray_epoch || getenv("SOFTGL_RAY_DISABLE")) return 0;
    const scene_mesh *m = &f->materials[0].mesh;
    for (int i = 0; i < f->material_count; i++) {
        const scene_mesh *other = &f->materials[i].mesh;
        if (!other->positions || !scene_geometry_fast_matrix(other) ||
            memcmp(m->modelview.m,other->modelview.m,64) || memcmp(m->projection.m,other->projection.m,64)) return 0;
    }
    sg_mat4 inverse;
    if (!sg_mat4_inverse(&inverse,&m->modelview) || !scene_geometry_allocate(f)) return 0;
    const float *p = m->projection.m, *v = m->modelview.m;
    float focal = fminf(fabsf(p[0])*320.f,fabsf(p[5])*180.f);
    float far_plane = p[14]/(p[10]+1.f);
    if (!(focal > 1.f && far_plane > 0.f && isfinite(far_plane))) return 0;
    if (!scene_ray_cache(f,0.f)) return 0;
    float farthest = far_plane, extent = 1.f;
    if (f->ray && f->ray->epoch == f->ray_epoch) {
        scene_ray_state *r = f->ray; farthest = 0.f; extent = 0.f;
        for (int corner = 0; corner < 8; corner++) {
            float xyz[3]; for (int k = 0; k < 3; k++) xyz[k] = corner & (1 << k) ? r->root_high[k] : r->root_low[k];
            float z = -((v[2]*xyz[0]+v[6]*xyz[1])+(v[10]*xyz[2]+v[14]));
            if (z > farthest) farthest = z;
        }
        for (int k = 0; k < 3; k++) if (r->root_high[k]-r->root_low[k] > extent) extent = r->root_high[k]-r->root_low[k];
    }
    float norm = 0.f;
    for (int k = 0; k < 3; k++) { float n = fabsf(inverse.m[k])+fabsf(inverse.m[k+4]); if (n > norm) norm = n; }
    float padding = farthest*norm/(64.f*focal)+extent*1e-5f;
    if (!scene_ray_cache(f,padding)) return 0;
    scene_ray_state *r = f->ray; r->inverse_view = inverse;
    if (++r->frame == UINT32_MAX/4) {
        for (uint32_t i = 0; i < r->count; i++) atomic_store_explicit(&r->entries[i].ready,0,memory_order_relaxed);
        for (uint32_t i = 0; i < r->position_capacity; i++) atomic_store_explicit(&r->position_ready[i],0,memory_order_relaxed);
        r->frame = 1;
    }
    memcpy(r->projection,p,64); r->far_plane = far_plane;
    for (int k = 0; k < 3; k++) r->origin[k] = inverse.m[k+12];
    atomic_store_explicit(&f->geometry->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_ray_pixels,f);
    if (getenv("SOFTGL_RAY_STATS")) {
        unsigned prepared = 0, positions = 0;
        for (uint32_t i = 0; i < r->count; i++) if (atomic_load_explicit(&r->entries[i].ready,memory_order_relaxed) == r->frame*4+2) prepared++;
        for (uint32_t i = 0; i < f->mesh_vertices; i++) if (atomic_load_explicit(&r->position_ready[i],memory_order_relaxed) == r->frame*4+2) positions++;
        fprintf(stderr,"RAYS {\"epoch\":%u,\"sourceTriangles\":%u,\"preparedTriangles\":%u,\"transformedPositions\":%u,\"padding\":%.9g,\"entryBytes\":%zu,\"clippedBytes\":%zu}\n",
            r->epoch,r->count,prepared,positions,r->padding,(size_t)r->count*sizeof(scene_ray_entry),r->clipped_bytes);
    }
    return 1;
}
