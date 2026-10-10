/* Independent accepted-library oracle, including real subpixel sample hits. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include <inttypes.h>

static uint64_t small_hash(const void *data, size_t bytes, uint64_t h) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) h = (h^p[i])*UINT64_C(1099511628211);
    return h;
}

static void small_frame(softgl_ctx *c, float extent, int placement, int alpha, int overlap) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    if (alpha) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
    else glDisable(GL_ALPHA_TEST);
    const float tint[4] = {.1f,.2f,.3f,.5f}; program_data data = {0};
    softgl_set_fused_dot3_material(tint,0); softgl_set_vertex_attributes_full(attributes,&data);
    CHECK(softgl_scene_visibility_begin());
    for (int part = 0; part < 2; part++) {
        float px = part ? (placement == 0 ? 19.24f : placement == 1 ? -.2f : 638.7f) : 319.24f;
        float py = part ? (placement == 2 ? 358.6f : 179.1f) : 179.1f;
        for (int j = 0; j < 3; j++) {
            float x = px+(j == 1 ? extent : 0.f), y = py+(j == 2 ? extent : 0.f);
            vertices[10+j] = (vertex){{x/640.f*4.f-2.f,y/360.f*2.25f-1.125f,-2.f},
                {j == 1 ? .9f : .1f,j == 2 ? .9f : .1f}};
        }
        /* Each submitted triangle keeps disjoint vertices until scene end. */
        memcpy(vertices+13+part*3,vertices+10,3*sizeof(vertex));
        for (int j = 0; j < 3; j++) indices[part*3+j] = 13+part*3+j;
    }
    if (overlap) for (int j = 0; j < 3; j++) {
        vertices[19+j] = vertices[13+j];
        vertices[19+j].p[0] += .2f/640.f*4.f;
        vertices[19+j].p[2] = -1.5f-(j == 2 ? .1f : 0.f);
        indices[6+j] = 19+j;
    }
    softgl_scene_visibility_material();
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
        indices,overlap ? 9 : 6,attributes,&data,sizeof(data)));
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    const float extents[] = {.18f,.6f,1.1f,2.3f,3.8f,7.7f,15.7f,100.f};
    const int helpers[] = {1,3,8}; unsigned frames = 0;
    for (int n = 2; n <= 4; n += 2) for (int worker = 0; worker < 3; worker++) {
        softgl_ctx *c = softgl_create_multisample(640,360,n); CHECK(c); initialize(c,helpers[worker]);
        for (unsigned size = 0; size < 8; size++) for (int placement = 0; placement < 3; placement++)
            for (int alpha = 0; alpha < 2; alpha++) for (int overlap = 0; overlap < 2; overlap++) {
                small_frame(c,extents[size],placement,alpha,overlap);
                const void *rgba = softgl_read_rgba8(c);
                size_t pixels = (size_t)640*360, units = pixels*(unsigned)n;
                uint64_t h = UINT64_C(14695981039346656037);
                h = small_hash(rgba,pixels*4,h); h = small_hash(c->fb.depth,pixels*sizeof(float),h);
                h = small_hash(c->fb.stencil,pixels,h); h = small_hash(c->fb.sample_color,units*4,h);
                h = small_hash(c->fb.sample_depth,units*sizeof(float),h); h = small_hash(c->fb.sample_stencil,units,h);
                if (!alpha && !overlap && size == 0) {
                    unsigned covered = 0;
                    for (unsigned s = 0; s < (unsigned)n; s++)
                        covered += c->fb.sample_depth[((size_t)179*640+319)*n+s] < 1.f;
                    CHECK(covered == 1);
                }
                printf("{\"samples\":%d,\"helpers\":%d,\"extent\":%u,\"placement\":%d,\"alpha\":%d,\"overlap\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                    n,helpers[worker],size,placement,alpha,overlap,h); frames++;
            }
        softgl_destroy(c);
    }
    CHECK(frames == 576);
#ifdef SOFTGL_SMALL_MSAA_TEST
    extern unsigned long long softgl_scene_small_msaa_audit(unsigned index);
    CHECK(softgl_scene_small_msaa_audit(0) && softgl_scene_small_msaa_audit(1) && softgl_scene_small_msaa_audit(2));
    printf("Local small MSAA: triangles=%llu testedPixels=%llu passingSamples=%llu PASS\n",
        softgl_scene_small_msaa_audit(0),softgl_scene_small_msaa_audit(1),softgl_scene_small_msaa_audit(2));
#endif
    puts("576 small/boundary/clipped/overlapping/large/alpha MSAA plane hashes PASS");
    return 0;
}
