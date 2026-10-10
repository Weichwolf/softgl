typedef struct {
    int32_t vx[3], vy[3];
    int left, right, bottom, top;
    int64_t area;
} scene_msaa_screen;

static int scene_shared_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    const sg_vert *vertices[3] = {v0,v1,v2};
    scene_msaa_screen screen;
    for (int j = 0; j < 3; j++) {
        if (!(vertices[j]->ndc.x >= -1.f && vertices[j]->ndc.x <= c->fb.w+1.f &&
              vertices[j]->ndc.y >= -1.f && vertices[j]->ndc.y <= c->fb.h+1.f)) return 0;
        screen.vx[j] = sg_fp_screen_from_float(vertices[j]->ndc.x);
        screen.vy[j] = sg_fp_screen_from_float(vertices[j]->ndc.y);
    }
    int minx = screen.vx[0], maxx = minx, miny = screen.vy[0], maxy = miny;
    for (int j = 1; j < 3; j++) {
        if (screen.vx[j] < minx) minx = screen.vx[j]; if (screen.vx[j] > maxx) maxx = screen.vx[j];
        if (screen.vy[j] < miny) miny = screen.vy[j]; if (screen.vy[j] > maxy) maxy = screen.vy[j];
    }
    screen.left = minx >> 8; screen.right = (maxx >> 8)+1;
    screen.bottom = miny >> 8; screen.top = (maxy >> 8)+1;
    int small = screen.right-screen.left <= SOFTGL_SMALL_MSAA_EXTENT &&
        screen.top-screen.bottom <= SOFTGL_SMALL_MSAA_EXTENT;
    _Static_assert(SOFTGL_SMALL_MSAA_EXTENT > 0 && SOFTGL_SMALL_MSAA_EXTENT <= 16,
        "shared small sample edge range proof");
    if (!small && ((struct sg_scene_visibility *)c->scene_visibility)->materials[c->scene_material].alpha_test)
        return 0;
    screen.area = (int64_t)(screen.vx[1]-screen.vx[0])*(screen.vy[2]-screen.vy[0])-
        (int64_t)(screen.vy[1]-screen.vy[0])*(screen.vx[2]-screen.vx[0]);
    if (screen.area <= 0) return 1;
    if (screen.left < tile_ix0) screen.left = tile_ix0;
    if (screen.right > tile_ix1) screen.right = tile_ix1;
    if (screen.bottom < 0) screen.bottom = 0;
    if (screen.top > c->fb.h) screen.top = c->fb.h;
    if (screen.left >= screen.right || screen.bottom >= screen.top) return 1;
    if (small) return scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,texture,&screen);
    return scene_rebased_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,texture,&screen);
}
