/* Full sample-plane oracle: packet tails, large i64 areas and clipped geometry.
 * The baseline is a separate accepted library, not another candidate switch. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include <inttypes.h>

static uint64_t hash_plane(const void *data, size_t bytes, uint64_t value) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) value = (value ^ p[i])*UINT64_C(1099511628211);
    return value;
}

static void packet_frame(softgl_ctx *c, int alpha, unsigned count, int perspective) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    if (perspective) glFrustum(-1,1,-.5625,.5625,1,10);
    else glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    if (alpha) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
    else glDisable(GL_ALPHA_TEST);
    const float tint[4] = {.1f,.2f,.3f,.5f};
    softgl_set_fused_dot3_material(tint,0); program_data data = {0};
    CHECK(softgl_scene_visibility_begin()); softgl_scene_visibility_material();
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
        sizeof(vertex),VERTICES,indices,count*3,attributes,&data,sizeof(data)));
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    generate();
    /* Distinct triangles, with large, reversed-facing and near-clipped members.
     * No tail lane may read a missing fifth primitive. */
    for (unsigned t = 0; t < 9; t++) {
        for (unsigned j = 0; j < 3; j++) indices[t*3+j] = 10+t*3+j;
        float z = -2.f-(float)t*.15f;
        vertices[10+t*3] = (vertex){{-2.f-(t == 7 ? 1.f : 0.f),-1.125f,z},{.1f,.2f}};
        vertices[11+t*3] = (vertex){{2.f, -1.125f,z-.2f},{.8f,.2f}};
        vertices[12+t*3] = (vertex){{-2.f,1.125f,t == 8 ? -.5f : z-.4f},{.1f,.9f}};
        if (t == 6) {
            GLuint swap = indices[t*3+1]; indices[t*3+1] = indices[t*3+2]; indices[t*3+2] = swap;
        }
    }
    const int helpers[] = {1,3,8};
    unsigned frames = 0;
    for (int n = 2; n <= 4; n += 2) for (int h = 0; h < 3; h++) {
        softgl_ctx *c = softgl_create_multisample(640,360,n); CHECK(c);
        initialize(c,helpers[h]);
        for (int alpha = 0; alpha < 2; alpha++) for (unsigned count = 1; count <= 9; count++)
            for (int perspective = 0; perspective < 2; perspective++) {
                packet_frame(c,alpha,count,perspective);
                const void *rgba = softgl_read_rgba8(c);
                size_t pixels = (size_t)640*360, units = pixels*(unsigned)n;
                uint64_t hash = UINT64_C(14695981039346656037);
                hash = hash_plane(rgba,pixels*4,hash);
                hash = hash_plane(c->fb.depth,pixels*sizeof(float),hash);
                hash = hash_plane(c->fb.stencil,pixels,hash);
                hash = hash_plane(c->fb.sample_color,units*4,hash);
                hash = hash_plane(c->fb.sample_depth,units*sizeof(float),hash);
                hash = hash_plane(c->fb.sample_stencil,units,hash);
                unsigned covered = 0;
                for (size_t s = 0; s < units; s++) covered += c->fb.sample_depth[s] < 1.f;
                CHECK(covered > 10000);
                printf("{\"samples\":%d,\"helpers\":%d,\"alpha\":%d,\"triangles\":%u,\"perspective\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                    n,helpers[h],alpha,count,perspective,hash);
                frames++;
            }
        softgl_destroy(c);
    }
    CHECK(frames == 216);
#ifdef SOFTGL_MSAA_PACKET_TEST
    extern unsigned long long softgl_scene_msaa_packet_audit(unsigned index);
    CHECK(softgl_scene_msaa_packet_audit(0) > 0);
#ifdef SOFTGL_MSAA_PACKET_FORCE_FALLBACK
    CHECK(softgl_scene_msaa_packet_audit(1) == 0);
    CHECK(softgl_scene_msaa_packet_audit(2) > 0);
#else
    CHECK(softgl_scene_msaa_packet_audit(1) > 0);
    CHECK(softgl_scene_msaa_packet_audit(3) > 0);
#endif
    printf("Prepared MSAA packets: triangles=%llu binDispatches=%llu fallback=%llu largeI64Areas=%llu PASS\n",
        softgl_scene_msaa_packet_audit(0),softgl_scene_msaa_packet_audit(1),
        softgl_scene_msaa_packet_audit(2),softgl_scene_msaa_packet_audit(3));
#endif
    puts("216 MSAA packet tail/large-area/clipping/cutout plane hashes PASS");
    return 0;
}
