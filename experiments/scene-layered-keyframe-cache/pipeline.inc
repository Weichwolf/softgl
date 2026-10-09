/* Private resident-model experiment. Public GL texture mutations outside these
 * model functions have no epoch guard yet, so this is not a production API. */
static sg_key_atlas model_key_views[3];
static softgl_ctx *model_key_context;
static int model_key_samples = -1;
#ifndef SOFTGL_MODEL_KEY_DEFAULT
#define SOFTGL_MODEL_KEY_DEFAULT 0
#endif
static int model_key_enabled = SOFTGL_MODEL_KEY_DEFAULT;

static void model_key_reset(void) {
    for (int i = 0; i < 3; i++) sg_key_destroy(&model_key_views[i]);
    model_key_context = NULL; model_key_samples = -1;
}

void sg_model_set_cache(int enabled) {
    if (model_key_enabled == (enabled != 0)) return;
    model_key_reset(); model_key_enabled = enabled != 0;
}

void sg_model_render(float angle, int w, int h) {
    if (!G.part) return;
    softgl_ctx *c = sg_current();
    /* This model wrapper's movable default view rotates the model around the
     * camera, changing its object-space origin. Retain its ordinary path. */
    if (!model_key_enabled || coarse_shading || model_lod.records || !camera.enabled ||
        !c || c->scissor_enabled || w != c->fb.w || h != c->fb.h) {
        sg_model_render_full(angle,w,h); return;
    }
    if (model_key_context != c || model_key_samples != c->fb.samples ||
        model_key_views[0].width != w || model_key_views[0].height != h) model_key_reset();
    if (!model_key_views[0].surface && !model_key_views[0].sample) {
        int saved_coarse = coarse_shading; coarse_shading = 0;
        sg_key_capture_active = 1;
        int okay = 1;
        for (int i = 0; i < 3; i++) {
            sg_key_projection_scale = .97f; sg_key_yaw_offset = i == 0 ? 0.f : i == 1 ? 20.f : -20.f;
            sg_model_render_full(angle,w,h); softgl_read_rgba8(c);
            if (!sg_key_capture(c,&model_key_views[i]) || !sg_key_finalize(c,&model_key_views[i])) { okay = 0; break; }
            if (!getenv("SOFTGL_KEY_KEEP_FLOAT")) sg_key_compact(c,&model_key_views[i]);
        }
        sg_key_capture_active = 0;
        sg_key_projection_scale = 1.f; sg_key_yaw_offset = 0.f; coarse_shading = saved_coarse;
        if (!okay) { model_key_reset(); sg_model_render_full(angle,w,h); return; }
        model_key_context = c; model_key_samples = c->fb.samples;
        size_t bytes = 0;
        for (int i = 0; i < 3; i++) bytes += (size_t)w*h*(model_key_views[i].sample ? sizeof(sg_key_sample) : sizeof(sg_key_surface));
        if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"generated\":3,\"samples\":%d,\"surfaceBytes\":%zu}\n",
            c->fb.samples,bytes);
    }
    model_key_setup_view(angle,w,h);
    const sg_key_atlas *views[3] = {&model_key_views[0],&model_key_views[1],&model_key_views[2]};
    sg_key_result result = {0};
    int valid = sg_key_reconstruct_many(c,views,3,NULL,1,(uint32_t *)c->fb.color,NULL,c->fb.depth,&result);
    if (getenv("SOFTGL_KEY_STATS") && result.consensus_background_pixels)
        fprintf(stderr,"KEY {\"backgroundConsensus\":%llu,\"angle\":%.6f}\n",
            (unsigned long long)result.consensus_background_pixels,angle);
    if (getenv("SOFTGL_KEY_STATS") && result.approximate_distance_pixels)
        fprintf(stderr,"KEY {\"approximateDistance\":%llu,\"angle\":%.6f}\n",
            (unsigned long long)result.approximate_distance_pixels,angle);
    if (!valid || result.outside_pixels) {
        if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"fallback\":true,\"outside\":%llu,\"frustum\":%llu,\"geometry\":%llu}\n",
            (unsigned long long)result.outside_pixels,(unsigned long long)result.frustum_pixels,
            (unsigned long long)result.invalid_geometry_pixels);
        if (valid && result.outside_pixels <= 64 && !result.frustum_pixels && !c->scissor_enabled) {
            int x0 = w, y0 = h, x1 = 0, y1 = 0;
            for (int y = 0; y < h; y++) for (int x = 0; x < w; x++)
                if (c->fb.depth[(size_t)y*w+x] > 1.f) {
                    if (x < x0) x0 = x; if (x+1 > x1) x1 = x+1;
                    if (y < y0) y0 = y; if (y+1 > y1) y1 = y+1;
                }
            if (x1 > x0 && y1 > y0 && (uint64_t)(x1-x0)*(y1-y0) <= (uint64_t)w*h/16) {
                sg_key_present(c);
                int saved_scissor[4]; memcpy(saved_scissor,c->scissor,sizeof(saved_scissor));
                glEnable(GL_SCISSOR_TEST); glScissor(x0,y0,x1-x0,y1-y0);
                sg_model_render_full(angle,w,h); sg_workers_flush(c);
                glDisable(GL_SCISSOR_TEST);
                glScissor(saved_scissor[0],saved_scissor[1],saved_scissor[2],saved_scissor[3]);
                if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"repairArea\":%d}\n",(x1-x0)*(y1-y0));
                return;
            }
        }
        /* A complete fresh frame repairs isolated uncertain rays. It does not
         * invalidate otherwise sound material samples. Refresh the atlas when
         * the camera leaves its useful angular region instead. */
        if (!valid || result.frustum_pixels > (uint64_t)w*h/100) model_key_reset();
        sg_model_render_full(angle,w,h); return;
    }
    sg_key_present(c);
}
