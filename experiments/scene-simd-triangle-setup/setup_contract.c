/* Ordinary GL is an independent depth/coverage oracle for the packet frontend.
 * Exercise mixed winding, degeneracy, subpixel sizes, clipping, and group tails. */
#include "types.h"
#include <inttypes.h>
#define main previous_position_fixture_main
#include "../../tests/scene_positions.c"
#undef main

static uint64_t digest(const void *data, size_t bytes, uint64_t hash) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) hash = (hash ^ p[i])*UINT64_C(1099511628211);
    return hash;
}

static void generate_packets(void) {
    for (int t = 0; t < TRIANGLES; t++) {
        float x = (t%12-5.5f)*.38f, y = ((t/12)%8-3.5f)*.31f;
        float extent = t%7 == 0 ? .003f : t%11 == 0 ? 0.f : .25f;
        float z = t%13 == 0 ? -.8f : -2.f-(t%4)*.15f;
        for (int j = 0; j < 3; j++) {
            int id = 10+t*3+j;
            vertices[id] = (vertex){{x+(j == 1 ? extent : 0.f),y+(j == 2 ? extent : 0.f),z},
                {-.3f+(t%7)*.3f+(j == 1 ? .3f : 0.f),-.2f+(t%5)*.4f+(j == 2 ? .3f : 0.f)}};
            indices[t*3+j] = (GLuint)id;
        }
        if (t&1) { GLuint id = indices[t*3+1]; indices[t*3+1] = indices[t*3+2]; indices[t*3+2] = id; }
    }
}

static void packet_frame(softgl_ctx *c, int deferred, int variant, int length) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    if (variant&1) glFrustum(-1,1,-.5625,.5625,1,10); else glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef((float)(variant/4)*17.f,0,1,0);
    if ((variant%4) == 0) glDisable(GL_CULL_FACE);
    else { glEnable(GL_CULL_FACE); glCullFace((variant%4) == 1 ? GL_FRONT : (variant%4) == 2 ? GL_BACK : GL_FRONT_AND_BACK); }
    glFrontFace((variant&4) ? GL_CW : GL_CCW);
    if (variant&8) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); } else glDisable(GL_ALPHA_TEST);
    int begun = deferred && softgl_scene_visibility_begin();
    const float tint[4] = {.1f,.2f,.3f,.5f}; softgl_set_fused_dot3_material(tint,variant&1);
    program_data data = {(float)variant}; softgl_set_vertex_attributes_full(attributes,&data);
    if (begun) softgl_scene_visibility_material();
    int queued = begun && softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
        sizeof(vertex),VERTICES,indices,length,attributes,&data,sizeof(data));
    if (queued) captured++; else glDrawElements(GL_TRIANGLES,length,GL_UNSIGNED_INT,indices);
    data.phase = 1000.f; softgl_set_vertex_attributes_full(NULL,NULL);
    if (begun) CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    generate_packets(); const int helpers[] = {1,3,8}, lengths[] = {9,12,15,279,288};
    for (int w = 0; w < 3; w++) {
        softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
        CHECK(a && b); initialize(a,1); initialize(b,helpers[w]);
        for (int n = 0; n < 5; n++) for (int v = 0; v < 16; v++) {
            packet_frame(a,0,v,lengths[n]); packet_frame(b,1,v,lengths[n]); compare(a,b);
            uint64_t hash = UINT64_C(14695981039346656037); size_t pixels = (size_t)640*360;
            hash = digest(b->fb.color,pixels*4,hash); hash = digest(b->fb.depth,pixels*sizeof(float),hash);
            hash = digest(b->fb.stencil,pixels,hash);
            printf("{\"helpers\":%d,\"length\":%d,\"variant\":%d,\"planes\":\"%016" PRIx64 "\"}\n",helpers[w],lengths[n],v,hash);
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(comparisons == 240 && captured);
    printf("Packet setup: %d ordinary/deferred paired full-plane frames PASS\n",comparisons);
    return 0;
}
