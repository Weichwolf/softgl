/* Full per-pixel foreground without a full 4x4 cell, plus real cutout holes. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include <inttypes.h>

static uint64_t pixel_hash(const void *data, size_t bytes, uint64_t h) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) h = (h^p[i])*UINT64_C(1099511628211);
    return h;
}

static void pixel_frame(softgl_ctx *c, int pattern, int position) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    CHECK(softgl_scene_visibility_begin());
    float px = position ? 19.f : 319.f, py = 179.f;
    for (int part = 0; part < 2; part++) {
        if (!part && pattern == 1) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
        else glDisable(GL_ALPHA_TEST);
        float extent = part ? 12.f : pattern == 2 ? .18f : 3.f;
        float x0 = part ? px-2.f : pattern == 2 ? px+.24f : px-.5f;
        float y0 = part ? py-2.f : pattern == 2 ? py+.1f : py-.5f;
        for (int j = 0; j < 3; j++) {
            unsigned id = 10+part*3+j;
            vertices[id] = (vertex){{(x0+(j == 1 ? extent : 0.f))/640.f*4.f-2.f,
                (y0+(j == 2 ? extent : 0.f))/360.f*2.25f-1.125f,
                part ? -3.f : pattern == 3 && j == 2 ? -.5f : -1.5f},
                {j == 1 ? .9f : .1f,j == 2 ? .9f : .1f}};
            indices[part*3+j] = id;
        }
        const float tint[4] = {.1f,.2f,.3f,.5f}; program_data data = {(float)part};
        softgl_set_fused_dot3_material(tint,0); softgl_set_vertex_attributes_full(attributes,&data);
        softgl_scene_visibility_material();
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
            indices+part*3,3,attributes,&data,sizeof(data)));
    }
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    unsigned frames = 0; const int helpers[] = {1,3,8};
    for (int n = 2; n <= 4; n += 2) for (int h = 0; h < 3; h++) {
        softgl_ctx *c = softgl_create_multisample(640,360,n); CHECK(c); initialize(c,helpers[h]);
        for (int pattern = 0; pattern < 4; pattern++) for (int position = 0; position < 2; position++) {
            pixel_frame(c,pattern,position); const void *rgba = softgl_read_rgba8(c);
            size_t pixels = (size_t)640*360, units = pixels*(unsigned)n;
            uint64_t hash = UINT64_C(14695981039346656037);
            hash = pixel_hash(rgba,pixels*4,hash); hash = pixel_hash(c->fb.depth,pixels*sizeof(float),hash);
            hash = pixel_hash(c->fb.stencil,pixels,hash); hash = pixel_hash(c->fb.sample_color,units*4,hash);
            hash = pixel_hash(c->fb.sample_depth,units*sizeof(float),hash); hash = pixel_hash(c->fb.sample_stencil,units,hash);
            if (pattern == 0) for (int s = 0; s < n; s++)
                CHECK(c->fb.sample_depth[((size_t)179*640+(position ? 19 : 319))*n+s] < .1f);
            printf("{\"samples\":%d,\"helpers\":%d,\"pattern\":%d,\"position\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                n,helpers[h],pattern,position,hash); frames++;
        }
        softgl_destroy(c);
    }
    CHECK(frames == 48);
#ifdef SOFTGL_MSAA_PIXEL_TEST
    extern unsigned long long softgl_scene_msaa_pixel_audit(unsigned index);
    CHECK(softgl_scene_msaa_pixel_audit(0) && softgl_scene_msaa_pixel_audit(1));
    printf("Early MSAA pixels: tested=%llu rejected=%llu PASS\n",
        softgl_scene_msaa_pixel_audit(0),softgl_scene_msaa_pixel_audit(1));
#endif
    puts("48 independent local-occluder/cutout/tiny/near-clip sample-plane hashes PASS");
    return 0;
}
