#define SOFTGL_COARSE_CONTRACT 1
static unsigned coarse_test_enabled;
#define main canonical_positions_main
#include "scene_positions.c"
#undef main

int main(void) {
    generate();
    const int samples[] = {0, 2, 4}, helpers[] = {1, 3};
    unsigned paired = 0, changed = 0, cap_checks = 0;
    for (unsigned h = 0; h < 2; h++) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640, 360, samples[s]);
        softgl_ctx *b = softgl_create_multisample(640, 360, samples[s]); CHECK(a && b);
        initialize(a, helpers[h]); initialize(b, helpers[h]);
        CHECK(!softgl_scene_coarse_shading(GL_TRUE));
        for (unsigned mode = 0; mode < 2; mode++) for (int variant = 0; variant < 18; variant++) {
            coarse_test_enabled = 0; frame(a, 1, variant);
            coarse_test_enabled = mode; frame(b, 1, variant);
            softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
            softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
            size_t pixels = (size_t)640*360;
            CHECK(!memcmp(a->fb.depth, b->fb.depth, pixels*sizeof(float)));
            CHECK(!memcmp(a->fb.stencil, b->fb.stencil, pixels));
            if (samples[s]) {
                CHECK(!memcmp(a->fb.sample_depth, b->fb.sample_depth, pixels*samples[s]*sizeof(float)));
                CHECK(!memcmp(a->fb.sample_stencil, b->fb.sample_stencil, pixels*samples[s]));
            }
            int equal = !memcmp(pa, pb, pixels*4);
            if (!mode) {
                CHECK(equal);
                if (samples[s]) CHECK(!memcmp(a->fb.sample_color, b->fb.sample_color, pixels*samples[s]*4));
            }
            changed += !equal; paired++;
        }
        coarse_test_enabled = 0; frame(a, 1, 2); frame(b, 1, 2); compare(a, b);
        softgl_make_current(b); CHECK(softgl_scene_visibility_begin());
        CHECK(softgl_scene_coarse_shading(GL_TRUE));
        /* Reject a request larger than the scratch cap before raster writes;
         * restore the internal fixture dimensions before ending the batch. */
        b->fb.w = 65536;
        CHECK(!softgl_scene_coarse_shading(GL_TRUE));
        b->fb.w = 640; CHECK(softgl_scene_visibility_end()); cap_checks++;
        rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(paired == 216 && changed && cap_checks == 6);
    printf("{\"pairedFrames\":%u,\"changedColorPairs\":%u,\"depthAndStencilExact\":true,\"disabledColorExact\":true,\"capFallbackChecks\":%u,\"rollbackEvents\":%d}\n",
        paired, changed, cap_checks, restored);
    return 0;
}
