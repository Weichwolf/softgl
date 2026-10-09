#include "small_fixture.inc"

extern unsigned long long softgl_scene_local_setup_audit(unsigned index);

int main(void) {
    CHECK(setup_fixture_main() == 0);
    unsigned long long eligible = softgl_scene_local_setup_audit(0);
    unsigned long long fallback = softgl_scene_local_setup_audit(1);
    unsigned long long triangles = softgl_scene_local_setup_audit(2);
    unsigned long long pixels = softgl_scene_local_setup_audit(3);
    CHECK(eligible && fallback);
#ifdef SOFTGL_SMALL_SETUP_FORCE_FALLBACK
    CHECK(!triangles && !pixels);
#else
    CHECK(triangles && pixels);
#endif
    printf("Exact local setup: eligible=%llu largeFallback=%llu cachedTriangles=%llu directlyCommittedPixels=%llu PASS\n",
        eligible,fallback,triangles,pixels);
    return 0;
}
