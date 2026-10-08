/* Independent baseline/candidate oracle for triangles outside the compressed
 * raw-edge range. The vector audit must prove the exact scalar fallback ran. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include <inttypes.h>

static uint64_t hash_plane(const void *data, size_t bytes, uint64_t value) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) value = (value ^ p[i])*UINT64_C(1099511628211);
    return value;
}

static void large_frame(softgl_ctx *c, int alpha) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f);
    glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    if (alpha) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
    else glDisable(GL_ALPHA_TEST);
    const float tint[4] = {.1f,.2f,.3f,.5f};
    softgl_set_fused_dot3_material(tint,0);
    program_data data = {0};
    CHECK(softgl_scene_visibility_begin());
    softgl_scene_visibility_material();
    const GLuint triangle[3] = {10,11,12};
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
        sizeof(vertex),VERTICES,triangle,3,attributes,&data,sizeof(data)));
    CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    generate();
    vertices[10] = (vertex){{-2.f,-1.125f,-2.f},{.1f,.2f}};
    vertices[11] = (vertex){{2.f,-1.125f,-2.2f},{.8f,.2f}};
    vertices[12] = (vertex){{-2.f,1.125f,-2.4f},{.1f,.9f}};
    const int helpers[] = {1,3,8};
    for (int h = 0; h < 3; h++) for (int alpha = 0; alpha < 2; alpha++) {
        softgl_ctx *c = softgl_create_multisample(640,360,4); CHECK(c);
        initialize(c,helpers[h]);
        large_frame(c,alpha);
        const void *rgba = softgl_read_rgba8(c);
        size_t pixels = (size_t)640*360;
        uint64_t hash = UINT64_C(14695981039346656037);
        hash = hash_plane(rgba,pixels*4,hash);
        hash = hash_plane(c->fb.depth,pixels*sizeof(float),hash);
        hash = hash_plane(c->fb.stencil,pixels,hash);
        hash = hash_plane(c->fb.sample_color,pixels*4*4,hash);
        hash = hash_plane(c->fb.sample_depth,pixels*4*sizeof(float),hash);
        hash = hash_plane(c->fb.sample_stencil,pixels*4,hash);
        unsigned covered = 0;
        for (size_t s = 0; s < pixels*4; s++) covered += c->fb.sample_depth[s] < 1.f;
        CHECK(covered > 10000);
        printf("{\"helpers\":%d,\"alpha\":%d,\"coveredSamples\":%u,\"planes\":\"%016" PRIx64 "\"}\n",
            helpers[h],alpha,covered,hash);
        softgl_destroy(c);
    }
#ifdef SOFTGL_MSAA_VECTOR_TEST
    extern unsigned long long softgl_scene_msaa_vector_audit(unsigned index);
    CHECK(softgl_scene_msaa_vector_audit(1) > 0);
    puts("Actual vector range failure: exact scalar fallback PASS");
#endif
    return 0;
}
