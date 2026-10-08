/* Independent accepted-renderer oracle for packet-level MSAA rejection. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include <inttypes.h>

static uint64_t packet_hash(const void *data, size_t bytes, uint64_t h) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) h = (h^p[i])*UINT64_C(1099511628211);
    return h;
}

static vertex packet_vertex(float x, float y, float z, float u, float v) {
    return (vertex){{x/640.f*4.f-2.f,y/360.f*2.25f-1.125f,z},{u,v}};
}

static void packet_frame(softgl_ctx *c, int pattern, int placement) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST);
    float dx = placement ? -300.f : 0.f;
    /* Covers full 4x4 cells and both sides of the ordinary stripe boundary. */
    vertices[10] = packet_vertex(296.f+dx,164.f,-1.5f,.75f,.75f);
    vertices[11] = packet_vertex(328.f+dx,164.f,-1.5f,.75f,.75f);
    vertices[12] = packet_vertex(328.f+dx,196.f,-1.5f,.75f,.75f);
    vertices[13] = packet_vertex(296.f+dx,196.f,-1.5f,.75f,.75f);
    const unsigned quad[6] = {10,11,12,10,12,13};
    memcpy(indices,quad,sizeof(quad));
    if (pattern == 4) {
        vertices[10].uv[0] = vertices[13].uv[0] = .1f;
        vertices[11].uv[0] = vertices[12].uv[0] = .9f;
    }
    for (int t = 0; t < 16; t++) for (int j = 0; j < 3; j++) {
        int id = 14+t*3+j;
        float x = 304.f+dx+(t%4)*2.f+(j == 1 ? 1.8f : 0.f);
        float y = 172.f+(t/4)*2.f+(j == 2 ? 1.8f : 0.f);
        vertices[id] = packet_vertex(x,y,-3.f,j == 1 ? .9f : .1f,j == 2 ? .9f : .1f);
        indices[6+t*3+j] = (GLuint)id;
    }
    if (pattern == 2) for (int j = 0; j < 3; j++) {
        vertices[59+j] = packet_vertex(319.24f+dx+(j == 1 ? .18f : 0.f),
            179.1f+(j == 2 ? .18f : 0.f),-1.25f,.5f,.5f);
    }
    if (pattern == 3) {
        vertices[59].p[0] = -3.f;
        vertices[60].p[2] = -.5f;
    }
    const float tint[4] = {.1f,.2f,.3f,.5f};
    CHECK(softgl_scene_visibility_begin());
    for (int part = 0; part < 2; part++) {
        if (!part && (pattern == 1 || pattern == 4)) {
            glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f);
        } else glDisable(GL_ALPHA_TEST);
        program_data data = {(float)part};
        softgl_set_fused_dot3_material(tint,0); softgl_set_vertex_attributes_full(attributes,&data);
        softgl_scene_visibility_material();
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
            indices+(part ? 6 : 0),part ? 48 : 6,attributes,&data,sizeof(data)));
    }
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
    if (pattern == 2) {
        unsigned near_samples = 0;
        size_t base = ((size_t)179*640+(size_t)(319+(placement ? -300 : 0)))*c->fb.samples;
        for (unsigned s = 0; s < (unsigned)c->fb.samples; s++) near_samples += c->fb.sample_depth[base+s] < .04f;
        CHECK(near_samples == 1);
    }
}

int main(void) {
    const int helpers[] = {1,3,8}; unsigned frames = 0;
    for (int n = 2; n <= 4; n += 2) for (int worker = 0; worker < 3; worker++) {
        softgl_ctx *c = softgl_create_multisample(640,360,n); CHECK(c); initialize(c,helpers[worker]);
        for (int pattern = 0; pattern < 5; pattern++) for (int placement = 0; placement < 2; placement++) {
            packet_frame(c,pattern,placement);
            const void *rgba = softgl_read_rgba8(c);
            size_t pixels = (size_t)640*360, units = pixels*(unsigned)n;
            uint64_t h = UINT64_C(14695981039346656037);
            h = packet_hash(rgba,pixels*4,h); h = packet_hash(c->fb.depth,pixels*sizeof(float),h);
            h = packet_hash(c->fb.stencil,pixels,h); h = packet_hash(c->fb.sample_color,units*4,h);
            h = packet_hash(c->fb.sample_depth,units*sizeof(float),h); h = packet_hash(c->fb.sample_stencil,units,h);
            printf("{\"samples\":%d,\"helpers\":%d,\"pattern\":%d,\"placement\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                n,helpers[worker],pattern,placement,h); frames++;
        }
        softgl_destroy(c);
    }
    CHECK(frames == 60);
#ifdef SOFTGL_MSAA_OCCLUSION_TEST
    extern unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned index);
    for (unsigned i = 0; i < 4; i++) CHECK(softgl_scene_msaa_packet_occlusion_audit(i));
    fprintf(stderr,"packet-occlusion counts: %llu %llu %llu %llu\n",
        softgl_scene_msaa_packet_occlusion_audit(0),softgl_scene_msaa_packet_occlusion_audit(1),
        softgl_scene_msaa_packet_occlusion_audit(2),softgl_scene_msaa_packet_occlusion_audit(3));
#endif
    puts("60 packet/cutout/single-sample/clipped/stripe full-plane hashes PASS");
    return 0;
}
