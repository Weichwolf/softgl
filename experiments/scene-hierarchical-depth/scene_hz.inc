/* Private current-frame summaries. Every cell is clipped to its owning bin;
 * no summary reads depth written by a different raster callback worker. */
#define SCENE_HZ_SIDE @SIDE@
#define SCENE_HZ_SHIFT @SHIFT@
#define SCENE_HZ_COLUMNS (640 / SCENE_HZ_SIDE)
#define SCENE_HZ_ROWS (360 / SCENE_HZ_SIDE)
#define SCENE_HZ_CELLS (SCENE_HZ_COLUMNS * SCENE_HZ_ROWS)

static float scene_hz_refresh(const softgl_ctx *c, scene_bin *b, int cx, int cy) {
    int x0 = cx*SCENE_HZ_SIDE, x1 = x0+SCENE_HZ_SIDE;
    if (x0 < b->hz_x0) x0 = b->hz_x0;
    if (x1 > b->hz_x1) x1 = b->hz_x1;
    float maximum = -INFINITY;
    for (int y = cy*SCENE_HZ_SIDE; y < (cy+1)*SCENE_HZ_SIDE; y++) {
        for (int x = x0; x < x1; x++) {
            float z = c->fb.depth[(size_t)y*640+x];
            if (!isfinite(z)) { maximum = INFINITY; break; }
            if (z > maximum) maximum = z;
        }
        if (!isfinite(maximum)) break;
    }
    int at = cy*SCENE_HZ_COLUMNS+cx;
    b->hz_maximum[at] = maximum; b->hz_dirty[at] = 0;
    return maximum;
}

static void scene_hz_initialize(struct sg_scene_visibility *f, int bin) {
    scene_bin *b = &f->bins[bin];
    sg_worker_pool *pool = f->context->workers;
    b->hz_x0 = pool->bins[bin].ix0; b->hz_x1 = pool->bins[bin].ix1;
    if (!b->hz_maximum) b->hz_maximum = malloc(SCENE_HZ_CELLS*sizeof(float));
    if (!b->hz_dirty) b->hz_dirty = malloc(SCENE_HZ_CELLS);
    if (!b->hz_maximum || !b->hz_dirty) { b->hz_active = 0; return; }
    for (int cy = 0; cy < SCENE_HZ_ROWS; cy++)
        for (int cx = b->hz_x0 >> SCENE_HZ_SHIFT; cx <= (b->hz_x1-1) >> SCENE_HZ_SHIFT; cx++)
            scene_hz_refresh(f->context,b,cx,cy);
    b->hz_active = 1;
}

static int scene_hz_hidden(const softgl_ctx *c, scene_bin *b,
    int x0, int y0, int x1, int y1, float z0, float z1, float z2) {
    if (!b->hz_active || !(z0 >= 0.f && z0 <= 1.f && z1 >= 0.f &&
        z1 <= 1.f && z2 >= 0.f && z2 <= 1.f)) return 0;
    float lower = z0 < z1 ? z0 : z1; if (z2 < lower) lower = z2;
    lower -= 2e-6f;
    if (lower < 0.f) lower = 0.f;
    for (int cy = y0 >> SCENE_HZ_SHIFT; cy <= (y1-1) >> SCENE_HZ_SHIFT; cy++) {
        for (int cx = x0 >> SCENE_HZ_SHIFT; cx <= (x1-1) >> SCENE_HZ_SHIFT; cx++) {
            int at = cy*SCENE_HZ_COLUMNS+cx;
            float maximum = b->hz_maximum[at];
            if (lower < maximum && b->hz_dirty[at]) maximum = scene_hz_refresh(c,b,cx,cy);
            if (lower < maximum) return 0;
        }
    }
    return 1;
}

static void scene_hz_written(scene_bin *b, int x, int y, float old_depth) {
    int at = (y >> SCENE_HZ_SHIFT)*SCENE_HZ_COLUMNS+(x >> SCENE_HZ_SHIFT);
    if (old_depth >= b->hz_maximum[at]) b->hz_dirty[at] = 1;
}
