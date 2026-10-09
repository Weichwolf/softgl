/* Exact new entrypoint boundaries; legacy hint thresholds remain unchanged. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main

int main(void) {
    softgl_make_current(NULL);
    CHECK(!softgl_scene_visibility_begin_adaptive(230400,2));
    const int samples[] = {0,2,4};
    const GLuint triangles[] = {0,1,230399,230400,460800};
    unsigned checks = 0;
    generate();
    for (unsigned sample = 0; sample < 3; sample++) {
        softgl_ctx *c = softgl_create_multisample(640,360,samples[sample]); CHECK(c);
        initialize(c,3);
        for (unsigned mode = 0; mode <= 2; mode++) {
            for (unsigned i = 0; i < sizeof(triangles)/sizeof(triangles[0]); i++) {
                void *storage = c->scene_storage;
                int expected = !samples[sample] || triangles[i] >= 230400;
                CHECK(softgl_scene_visibility_begin_adaptive(triangles[i],mode) == expected);
                if (expected) CHECK(softgl_scene_visibility_end());
                else CHECK(c->scene_storage == storage && !c->scene_visibility);
                CHECK(glGetError() == GL_NO_ERROR); checks++;
            }
            glDepthFunc(GL_GREATER);
            void *storage = c->scene_storage;
            CHECK(!softgl_scene_visibility_begin_adaptive(460800,mode));
            CHECK(c->scene_storage == storage && !c->scene_visibility);
            CHECK(glGetError() == GL_NO_ERROR); glDepthFunc(GL_LESS); checks++;
        }
        softgl_destroy(c);
    }
    CHECK(checks == 54);
    puts("Adaptive ordered hint: 54 exact boundaries/modes/unsupported-state checks and missing-context rejection PASS");
    return 0;
}
