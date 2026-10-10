/* A forced page allocation failure must restore every plane and allow replay. */
#define main unused_positions_main
#include "scene_positions.c"
#undef main
extern unsigned long long softgl_scene_group_pages_audit(unsigned index);

static void run_failure(int samples, int helpers) {
    softgl_ctx *a = softgl_create_multisample(640,360,samples);
    softgl_ctx *b = softgl_create_multisample(640,360,samples);
    CHECK(a && b); initialize(a,helpers); initialize(b,helpers);
    const GLuint triangle[3] = {0,1,2};
    const float tint[4] = {.1f,.2f,.3f,.5f};
    program_data data = {0};
    size_t pixels = (size_t)640*360, units = pixels*(unsigned)samples;
    uint8_t *color = malloc(units*4), *stencil = malloc(units);
    float *depth = malloc(units*sizeof(float));
    uint8_t *resolved_color = malloc(pixels*4);
    float *resolved_depth = malloc(pixels*sizeof(float));
    CHECK(color && stencil && depth && resolved_color && resolved_depth);
    for (int repetition = 0; repetition < 2; repetition++) {
        softgl_ctx *contexts[2] = {a,b};
        for (int i = 0; i < 2; i++) {
            softgl_make_current(contexts[i]);
            glClearColor(.1f,.2f,.3f,1); glClearDepth(.8);
            glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
            glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
            glMatrixMode(GL_MODELVIEW); glLoadIdentity();
            softgl_set_fused_dot3_material(tint,0); softgl_set_vertex_attributes_full(attributes,&data);
        }
        memcpy(color,b->fb.sample_color,units*4); memcpy(depth,b->fb.sample_depth,units*sizeof(float));
        memcpy(stencil,b->fb.sample_stencil,units);
        memcpy(resolved_color,b->fb.color,pixels*4); memcpy(resolved_depth,b->fb.depth,pixels*sizeof(float));
        vertices[0] = (vertex){{-8,-4,-2},{0,0}};
        vertices[1] = (vertex){{8,-4,-2},{1,0}};
        vertices[2] = (vertex){{0,8,-2},{0,1}};
        softgl_make_current(b);
        unsigned long long before = softgl_scene_group_pages_audit(4);
        CHECK(softgl_scene_visibility_begin()); softgl_scene_visibility_material();
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),
            VERTICES,triangle,3,attributes,&data,sizeof(data)));
        CHECK(!softgl_scene_visibility_end());
        CHECK(softgl_scene_group_pages_audit(4) > before);
        CHECK(!memcmp(color,b->fb.sample_color,units*4));
        CHECK(!memcmp(depth,b->fb.sample_depth,units*sizeof(float)));
        CHECK(!memcmp(stencil,b->fb.sample_stencil,units));
        CHECK(!memcmp(resolved_color,b->fb.color,pixels*4));
        CHECK(!memcmp(resolved_depth,b->fb.depth,pixels*sizeof(float)));
        CHECK(softgl_scene_visibility_begin()); CHECK(softgl_scene_visibility_end());
        vertices[0] = (vertex){{-1,-.5f,-4},{0,0}};
        vertices[1] = (vertex){{1,-.5f,-4},{1,0}};
        vertices[2] = (vertex){{0,.5f,-4},{0,1}};
        for (int i = 0; i < 2; i++) {
            softgl_make_current(contexts[i]);
            glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,triangle);
            CHECK(glGetError() == GL_NO_ERROR);
        }
        compare(a,b);
        CHECK(b->fb.sample_depth[((size_t)179*640+319)*samples] < .8f);
    }
    free(color); free(stencil); free(depth); free(resolved_color); free(resolved_depth);
    softgl_destroy(a); softgl_destroy(b);
}

int main(void) {
    generate();
    const int helpers[] = {1,3,8};
    for (int samples = 2; samples <= 4; samples += 2)
        for (unsigned i = 0; i < 3; i++) run_failure(samples,helpers[i]);
    CHECK(comparisons == 12);
    printf("Page rollback: 12 full-plane/replay/reset pairs, %llu allocated pages, %llu appended groups, %llu actual allocation failures PASS\n",
        softgl_scene_group_pages_audit(0),softgl_scene_group_pages_audit(1),softgl_scene_group_pages_audit(4));
    return 0;
}
