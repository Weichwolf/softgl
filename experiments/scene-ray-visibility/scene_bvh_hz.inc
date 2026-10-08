/* Conservative current-frame summaries owned exclusively by one X stripe. */
#define BVH_HZ_SIDE 8
#define BVH_HZ_COLUMNS (640/BVH_HZ_SIDE)
#define BVH_HZ_ROWS (360/BVH_HZ_SIDE)
typedef struct {
    float maximum[BVH_HZ_COLUMNS*BVH_HZ_ROWS];
    uint8_t dirty[BVH_HZ_COLUMNS*BVH_HZ_ROWS];
    int x0, x1;
    uint64_t tests, rejected, rejected_triangles;
} scene_bvh_hz;

static float scene_bvh_hz_refresh(const softgl_ctx *c, scene_bvh_hz *hz, int cx, int cy) {
    int x0 = cx*BVH_HZ_SIDE, x1 = x0+BVH_HZ_SIDE;
    if (x0 < hz->x0) x0 = hz->x0;
    if (x1 > hz->x1) x1 = hz->x1;
    float maximum = -INFINITY;
    for (int y = cy*BVH_HZ_SIDE; y < (cy+1)*BVH_HZ_SIDE; y++)
        for (int x = x0; x < x1; x++) {
            float z = c->fb.depth[(size_t)y*640+x];
            if (!isfinite(z)) maximum = INFINITY;
            if (z > maximum) maximum = z;
        }
    unsigned at = (unsigned)(cy*BVH_HZ_COLUMNS+cx);
    hz->maximum[at] = maximum; hz->dirty[at] = 0;
    return maximum;
}

static void scene_bvh_hz_initialize(const softgl_ctx *c, scene_bvh_hz *hz, int x0, int x1) {
    hz->x0 = x0; hz->x1 = x1;
    hz->tests = hz->rejected = hz->rejected_triangles = 0;
    for (int cy = 0; cy < BVH_HZ_ROWS; cy++)
        for (int cx = x0/BVH_HZ_SIDE; cx <= (x1-1)/BVH_HZ_SIDE; cx++)
            scene_bvh_hz_refresh(c,hz,cx,cy);
}

static void scene_bvh_hz_written(scene_bvh_hz *hz, int x, int y, float old_depth) {
    unsigned at = (unsigned)((y/BVH_HZ_SIDE)*BVH_HZ_COLUMNS+x/BVH_HZ_SIDE);
    if (old_depth >= hz->maximum[at]) hz->dirty[at] = 1;
}

static int scene_bvh_hz_hidden(const softgl_ctx *c, scene_bvh_hz *hz,
    const scene_bvh_node *node, const float *view, const float *projection) {
    float low[3], high[3];
    for (int row = 0; row < 3; row++) {
        low[row] = high[row] = view[row+12];
        for (int k = 0; k < 3; k++) {
            float coefficient = view[row+k*4];
            float a = coefficient*node->low[k], b = coefficient*node->high[k];
            low[row] += a < b ? a : b; high[row] += a > b ? a : b;
        }
    }
    float near = -high[2], far = -low[2];
    float clip_near = projection[14]/(projection[10]-1.f);
    if (!(projection[0] > 0.f && projection[5] > 0.f && near > clip_near*1.00001f && far >= near)) return 0;
    float xlow = low[0]/(low[0] >= 0.f ? far : near);
    float xhigh = high[0]/(high[0] >= 0.f ? near : far);
    float ylow = low[1]/(low[1] >= 0.f ? far : near);
    float yhigh = high[1]/(high[1] >= 0.f ? near : far);
    float px0 = (xlow*projection[0]*.5f+.5f)*640.f-1.f;
    float px1 = (xhigh*projection[0]*.5f+.5f)*640.f+1.f;
    float py0 = (ylow*projection[5]*.5f+.5f)*360.f-1.f;
    float py1 = (yhigh*projection[5]*.5f+.5f)*360.f+1.f;
    if (!(isfinite(px0) && isfinite(px1) && isfinite(py0) && isfinite(py1))) return 0;
    /* Clamp before conversion: projected bounds may be far outside viewport. */
    int x0 = (int)floorf(fmaxf((float)hz->x0,fminf((float)hz->x1,px0)));
    int x1 = (int)ceilf(fmaxf((float)hz->x0,fminf((float)hz->x1,px1)));
    int y0 = (int)floorf(fmaxf(0.f,fminf(360.f,py0)));
    int y1 = (int)ceilf(fmaxf(0.f,fminf(360.f,py1)));
    if (x0 >= x1 || y0 >= y1) return 0;
    float lower = (-projection[10]+projection[14]/near)*.5f+.5f-4e-6f;
    if (!(lower > 0.f && lower <= 1.f)) return 0;
    hz->tests++;
    for (int cy = y0/BVH_HZ_SIDE; cy <= (y1-1)/BVH_HZ_SIDE; cy++) {
        for (int cx = x0/BVH_HZ_SIDE; cx <= (x1-1)/BVH_HZ_SIDE; cx++) {
            unsigned at = (unsigned)(cy*BVH_HZ_COLUMNS+cx); float maximum = hz->maximum[at];
            if (!(lower > maximum) && hz->dirty[at]) maximum = scene_bvh_hz_refresh(c,hz,cx,cy);
            if (!(lower > maximum)) return 0;
        }
    }
    hz->rejected++;
    return 1;
}
