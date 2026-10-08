#ifdef SOFTGL_TILE_AUDIT
static atomic_ullong scene_tile_audit[4];
unsigned long long softgl_scene_tile_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_tile_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_TILE_AUDIT(index,value) atomic_fetch_add_explicit(&scene_tile_audit[index],value,memory_order_relaxed)
#else
#define SCENE_TILE_AUDIT(index,value) ((void)0)
#endif

/* Four rows of four values share a tile; public framebuffer stays row-major. */
static size_t scene_tile_index(const softgl_ctx *c, int x, int y) {
    return ((size_t)(y >> 2)*((c->fb.w+3)/4)+(unsigned)(x >> 2))*16+
        (unsigned)(y & 3)*4+(unsigned)(x & 3);
}

static size_t scene_visibility_index(const softgl_ctx *c, int x, int y) {
    return c->scene_visibility->tiled_active ? scene_tile_index(c,x,y) :
        (size_t)y*c->fb.w+x;
}

static float *scene_visibility_depth(softgl_ctx *c) {
    return c->scene_visibility->tiled_active ? c->scene_visibility->tile_depth : c->fb.depth;
}

static uint32_t *scene_visibility_winners(softgl_ctx *c) {
    return c->scene_visibility->tiled_active ? c->scene_visibility->tile_winner : c->scene_visibility->winner;
}

static uint16_t *scene_visibility_materials(softgl_ctx *c) {
    return c->scene_visibility->tiled_active ? c->scene_visibility->tile_material : c->scene_visibility->pixel_material;
}

static sg_f32x4 scene_visibility_old_depth(softgl_ctx *c, int x, int y) {
    if (!c->scene_visibility->tiled_active)
        return sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x);
    const float *depth = c->scene_visibility->tile_depth;
    if (!(x & 3)) return sg_f32x4_load(depth+scene_tile_index(c,x,y));
    return sg_f32x4_set(depth[scene_tile_index(c,x,y)],depth[scene_tile_index(c,x+1,y)],
        depth[scene_tile_index(c,x+2,y)],depth[scene_tile_index(c,x+3,y)]);
}

static int scene_tiles_begin(struct sg_scene_visibility *f) {
    softgl_ctx *c = f->context;
    size_t count = (size_t)((c->fb.w+3)/4)*((c->fb.h+3)/4)*16;
    if (count > f->tile_capacity) {
        float *depth = malloc(count*sizeof(*depth));
        uint32_t *winner = malloc(count*sizeof(*winner));
        uint16_t *material = malloc(count*sizeof(*material));
        if (!depth || !winner || !material) {
            free(depth); free(winner); free(material);
            atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0;
        }
        free(f->tile_depth); free(f->tile_winner); free(f->tile_material);
        f->tile_depth = depth; f->tile_winner = winner; f->tile_material = material;
        f->tile_capacity = count;
    }
    for (int by = 0; by < c->fb.h; by += 4) for (int bx = 0; bx < c->fb.w; bx += 4) {
        for (int dy = 0; dy < 4 && by+dy < c->fb.h; dy++) {
            int y = by+dy;
            for (int dx = 0; dx < 4 && bx+dx < c->fb.w; dx++) {
                int x = bx+dx; size_t at = scene_tile_index(c,x,y), pixel = (size_t)y*c->fb.w+x;
                f->tile_depth[at] = c->fb.depth[pixel];
                f->tile_material[at] = f->pixel_material[pixel];
                if (f->pixel_material[pixel] != UINT16_MAX) f->tile_winner[at] = f->winner[pixel];
            }
        }
    }
    SCENE_TILE_AUDIT(0,1);
    f->tiled_active = 1; return 1;
}

static void scene_tiles_end(struct sg_scene_visibility *f) {
    if (!f->tiled_active) return;
    softgl_ctx *c = f->context;
    for (int by = 0; by < c->fb.h; by += 4) for (int bx = 0; bx < c->fb.w; bx += 4) {
        for (int dy = 0; dy < 4 && by+dy < c->fb.h; dy++) {
            int y = by+dy;
            for (int dx = 0; dx < 4 && bx+dx < c->fb.w; dx++) {
                int x = bx+dx; size_t at = scene_tile_index(c,x,y), pixel = (size_t)y*c->fb.w+x;
                c->fb.depth[pixel] = f->tile_depth[at];
                f->pixel_material[pixel] = f->tile_material[at];
                if (f->tile_material[at] != UINT16_MAX) f->winner[pixel] = f->tile_winner[at];
            }
        }
    }
    f->tiled_active = 0;
}
