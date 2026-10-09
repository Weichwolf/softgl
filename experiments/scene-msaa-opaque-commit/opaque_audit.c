/* Reuse every original strict fixture assertion; rename only its final main. */
#include "small_fixture.inc"

extern unsigned long long softgl_scene_msaa_opaque_audit(unsigned index);

int main(void) {
    CHECK(opaque_fixture_main() == 0);
    unsigned long long opaque = softgl_scene_msaa_opaque_audit(0);
    unsigned long long pixels = softgl_scene_msaa_opaque_audit(1);
    unsigned long long cutout = softgl_scene_msaa_opaque_audit(2);
    CHECK(opaque && pixels && cutout);
    printf("Actual opaque dispatch: triangles=%llu directlyCommittedPixels=%llu cutoutFallbackTriangles=%llu PASS\n",
        opaque,pixels,cutout);
    return 0;
}
