/* Genuine deferred sample coverage, mixed material state, hint and rollback. */
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
#define main unused_position_fixture_main
#include "scene_positions.c"
#undef main

static void tiny_frame(softgl_ctx *c, int deferred) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    const float tint[4] = {.1f,.2f,.3f,.5f}; program_data data = {0};
    softgl_set_fused_dot3_material(tint,0); softgl_set_vertex_attributes_full(attributes,&data);
    GLuint triangle[3] = {10,11,12};
    if (deferred) {
        CHECK(softgl_scene_visibility_begin()); softgl_scene_visibility_material();
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
            triangle,3,attributes,&data,sizeof(data)));
        CHECK(softgl_scene_visibility_end());
    } else glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,triangle);
    softgl_set_vertex_attributes_full(NULL,NULL);
    CHECK(glGetError() == GL_NO_ERROR);
}

static void tiny_sample_test(int n) {
    vertex saved[3]; memcpy(saved,vertices+10,sizeof(saved));
    float sx = n == 2 ? .25f : .375f, sy = n == 2 ? .25f : .125f;
    for (int j = 0; j < 3; j++) {
        float px = 319.f+sx-.06f+(j == 1 ? .18f : 0.f);
        float py = 179.f+sy-.06f+(j == 2 ? .18f : 0.f);
        vertices[10+j].p[0] = px/640.f*4.f-2.f;
        vertices[10+j].p[1] = py/360.f*2.25f-1.125f; vertices[10+j].p[2] = -2.f;
    }
    softgl_ctx *a = softgl_create_multisample(640,360,n), *b = softgl_create_multisample(640,360,n);
    CHECK(a && b); initialize(a,1); initialize(b,3);
    tiny_frame(a,0); tiny_frame(b,1); compare(a,b);
    unsigned covered = 0;
    for (int s = 0; s < n; s++) covered += b->fb.sample_depth[((size_t)179*640+319)*n+s] < 1.f;
    CHECK(covered == 1); /* No center coverage, but sample zero must survive. */
    CHECK(b->fb.sample_depth[((size_t)179*640+319)*n] < 1.f);
    softgl_destroy(a); softgl_destroy(b); memcpy(vertices+10,saved,sizeof(saved));
}

static void mixed_alpha_frame(softgl_ctx *c, int deferred, int pattern) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    if (deferred) CHECK(softgl_scene_visibility_begin());
    for (int part = 0; part < 3; part++) {
        int alpha = (part+pattern)%2;
        if (alpha) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.25f+pattern*.1f); }
        else glDisable(GL_ALPHA_TEST);
        const float tint[4] = {.1f+part*.1f,.2f,.3f,.5f};
        softgl_set_fused_dot3_material(tint,alpha);
        program_data data = {(float)part};
        softgl_set_vertex_attributes_full(attributes,&data);
        if (deferred) {
            softgl_scene_visibility_material();
            CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
                sizeof(vertex),VERTICES,indices+part*96,96,attributes,&data,sizeof(data)));
        } else glDrawElements(GL_TRIANGLES,96,GL_UNSIGNED_INT,indices+part*96);
        data.phase = 1000.f; softgl_set_vertex_attributes_full(NULL,NULL);
    }
    /* The producer's context no longer carries each captured material's
     * alpha state. Rasterization must consult the material snapshot. */
    if (pattern == 2) glEnable(GL_ALPHA_TEST); else glDisable(GL_ALPHA_TEST);
    if (deferred) CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

static void mixed_alpha_test(void) {
    unsigned pairs = 0;
    const int helpers[] = {1,3,8};
    for (int n = 2; n <= 4; n += 2) for (unsigned w = 0; w < 3; w++) {
        softgl_ctx *a = softgl_create_multisample(640,360,n), *b = softgl_create_multisample(640,360,n);
        CHECK(a && b); initialize(a,1); initialize(b,helpers[w]);
        for (int pattern = 0; pattern < 3; pattern++) {
            mixed_alpha_frame(a,0,pattern); mixed_alpha_frame(b,1,pattern); compare(a,b); pairs++;
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(pairs == 18);
    puts("Mixed captured alpha/opaque state: 18 legacy/deferred full sample-plane pairs PASS");
}

int main(void) {
    generate();
    int result = 0;
    tiny_sample_test(2); tiny_sample_test(4);
    mixed_alpha_test();
    for (int n = 2; n <= 4; n += 2) {
        softgl_ctx *c = softgl_create_multisample(640,360,n); CHECK(c); initialize(c,3);
        void *storage = c->scene_storage;
        CHECK(!softgl_scene_visibility_begin_hint(0));
        CHECK(!softgl_scene_visibility_begin_hint(460799));
        CHECK(c->scene_storage == storage && !c->scene_visibility);
        CHECK(softgl_scene_visibility_begin_hint(460800));
        CHECK(softgl_scene_visibility_end());
        CHECK(glGetError() == GL_NO_ERROR); softgl_destroy(c);
    }
    puts("Adaptive 2×/4× hint: exact density boundary, no allocation on rejection PASS");
    const int helpers[] = {1,3,8};
    for (int sample_count = 2; sample_count <= 4; sample_count += 2) {
        size_t pixels = (size_t)640*360, samples = pixels*(unsigned)sample_count;
        uint8_t *color = malloc(samples*4), *stencil = malloc(samples);
        float *depth = malloc(samples*sizeof(float)); CHECK(color && stencil && depth);
        for (unsigned i = 0; i < sizeof(helpers)/sizeof(helpers[0]); i++) {
            softgl_ctx *c = softgl_create_multisample(640,360,sample_count); CHECK(c);
            initialize(c,helpers[i]);
            glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            memcpy(color,c->fb.sample_color,samples*4); memcpy(depth,c->fb.sample_depth,samples*sizeof(float));
            memcpy(stencil,c->fb.sample_stencil,samples);
            rollback(c); /* Real post-capture budget and post-attribute failures. */
            CHECK(!memcmp(color,c->fb.sample_color,samples*4));
            CHECK(!memcmp(depth,c->fb.sample_depth,samples*sizeof(float)));
            CHECK(!memcmp(stencil,c->fb.sample_stencil,samples));
            const GLenum unsupported[] = {GL_SAMPLE_ALPHA_TO_COVERAGE,GL_SAMPLE_ALPHA_TO_ONE,GL_SAMPLE_COVERAGE};
            for (unsigned j = 0; j < sizeof(unsupported)/sizeof(unsupported[0]); j++) {
                glEnable(unsupported[j]); CHECK(!softgl_scene_visibility_begin()); glDisable(unsupported[j]);
            }
            glDisable(GL_MULTISAMPLE); CHECK(!softgl_scene_visibility_begin()); glEnable(GL_MULTISAMPLE);
            CHECK(glGetError() == GL_NO_ERROR); softgl_destroy(c);
        }
        free(color); free(stencil); free(depth);
    }
    CHECK(comparisons == 20 && restored == 12);
    puts("MSAA sample rollback/admission, tiny and mixed-state controls PASS");
#ifdef __EMSCRIPTEN__
    printf("WASM pointerBytes=%zu heapBytes=%zu\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return result;
}
