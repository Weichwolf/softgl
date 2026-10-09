static int stream_reference_mode;
#include "visibility_fixture.inc"
#define SOFTGL_COARSE_CONTRACT 1
static unsigned coarse_test_enabled;
#define main canonical_positions_main
#include "positions_fixture.inc"
#undef main

int main(void) {
    generate();
    const int samples[] = {0, 2, 4}, helpers[] = {1, 3};
    unsigned paired = 0;
    for (unsigned h = 0; h < 2; h++) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640, 360, samples[s]);
        softgl_ctx *b = softgl_create_multisample(640, 360, samples[s]); CHECK(a && b);
        initialize(a, helpers[h]); initialize(b, helpers[h]);
        for (int repeat = 0; repeat < 2; repeat++) for (int variant = 0; variant < 18; variant++) {
            coarse_test_enabled = 1; stream_reference_mode = 1; frame(a, 1, variant);
            stream_reference_mode = 0; frame(b, 1, variant);
            softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
            softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
            CHECK(!memcmp(pa, pb, (size_t)640*360*4));
            compare(a, b); /* Includes every actual physical sample color. */
            paired++;
        }
        coarse_test_enabled = 0; stream_reference_mode = 1; frame(a, 1, 2);
        stream_reference_mode = 0; frame(b, 1, 2); compare(a, b);
        rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(paired == 216 && restored == 12);
    printf("{\"pairedFrames\":%u,\"legacySelectionAndPhysicalGroupingAllPlanesExact\":true,\"resetChecks\":6,\"rollbackEvents\":%d}\n", paired, restored);
    return 0;
}
