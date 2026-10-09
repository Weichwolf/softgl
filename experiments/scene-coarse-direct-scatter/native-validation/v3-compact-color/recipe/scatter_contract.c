/* Keep the original geometry, clipping, textures and frame variants. */
static unsigned scatter_test_mode;
#define main canonical_positions_main
#include "scatter_positions.inc"
#undef main

int main(void) {
    generate();
    const int samples[] = {0, 2, 4}, helpers[] = {1, 3};
    unsigned paired = 0;
    for (unsigned h = 0; h < 2; h++) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640, 360, samples[s]);
        softgl_ctx *b = softgl_create_multisample(640, 360, samples[s]); CHECK(a && b);
        initialize(a, helpers[h]); initialize(b, helpers[h]);
        CHECK(!softgl_scene_codec_shading(5));
        for (int repetition = 0; repetition < 2; repetition++) for (int variant = 0; variant < 18; variant++) {
            /* Alternate old/direct in each context to exercise reallocating
             * color versus linked-group storage and resets between captures. */
            scatter_test_mode = repetition ? 5 : 4; frame(a, 1, variant);
            scatter_test_mode = repetition ? 4 : 5; frame(b, 1, variant);
            softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
            softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
            size_t pixels = (size_t)640*360;
            CHECK(!memcmp(pa, pb, pixels*4));
            CHECK(!memcmp(a->fb.depth, b->fb.depth, pixels*sizeof(float)));
            CHECK(!memcmp(a->fb.stencil, b->fb.stencil, pixels));
            if (samples[s]) {
                CHECK(!memcmp(a->fb.sample_depth, b->fb.sample_depth, pixels*samples[s]*sizeof(float)));
                CHECK(!memcmp(a->fb.sample_stencil, b->fb.sample_stencil, pixels*samples[s]));
                CHECK(!memcmp(a->fb.sample_color, b->fb.sample_color, pixels*samples[s]*4));
            }
            paired++;
        }
        scatter_test_mode = 0; frame(a, 1, 2); frame(b, 1, 2); compare(a, b);
        rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(paired == 216);
    printf("{\"pairedFrames\":%u,\"legacyCoarseAllPlanesExact\":true,\"modeTransitionPairs\":108,\"resetAndRollbackChecks\":6}\n", paired);
    return 0;
}
