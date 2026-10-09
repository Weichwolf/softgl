/* The runner freezes the canonical position fixture with an optional-mode
 * call at capture begin. Geometry, textures and frame variants are unchanged. */
static unsigned codec_test_mode;
#define main canonical_positions_main
#include "codec_positions.inc"
#undef main

int main(void) {
    generate();
    const int samples[] = {0, 2, 4}, helpers[] = {1, 3};
    unsigned paired = 0, changed = 0;
    for (unsigned h = 0; h < 2; h++) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640, 360, samples[s]);
        softgl_ctx *b = softgl_create_multisample(640, 360, samples[s]); CHECK(a && b);
        initialize(a, helpers[h]); initialize(b, helpers[h]);
        CHECK(!softgl_scene_codec_shading(4));
        for (unsigned mode = 0; mode < 5; mode++) for (int variant = 0; variant < 18; variant++) {
            codec_test_mode = 0; frame(a, 1, variant);
            codec_test_mode = mode; frame(b, 1, variant);
            size_t pixels = (size_t)640*360;
            softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
            softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
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
        /* A new capture must reset a previously enabled coarse mode. */
        codec_test_mode = 0; frame(a, 1, 2); frame(b, 1, 2); compare(a, b);
        codec_test_mode = 0; rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(changed && paired == 540);
    printf("{\"pairedFrames\":%u,\"colorChangedPairs\":%u,\"depthAndStencilExact\":true,\"disabledColorExact\":true,\"rollbackChecks\":%d}\n", paired, changed, restored);
    return 0;
}
