/* Independent ordinary-GL oracle from the existing ordered-bin contract.
 * Actual audit counters establish packed references and complete masks. */
#define main previous_bin_main
#include "../../tests/scene_bins.c"
#undef main
extern unsigned long long softgl_scene_packet_bin_audit(unsigned index);
int main(void) {
    int result = previous_bin_main();
    /* The original distributed grid exercises sparse masks. Co-locate the
     * original indexed triangles in a tiny region to exercise full masks
     * and coplanar depth ties, still against the ordinary GL oracle. */
    const float positions[3][3] = {
        {-.6f,-.3f,-2.f}, {-.59f,-.3f,-2.f}, {-.6f,-.29f,-2.f}
    };
    for (int t = 0; t < TRIANGLES; t++) for (int j = 0; j < 3; j++)
        memcpy(vertices[10+t*3+j].p,positions[j],sizeof(positions[j]));
    softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
    CHECK(a && b);
    initialize(a,3); initialize(b,3);
    frame(a,0,2); frame(b,1,2); compare(a,b);
    softgl_destroy(a); softgl_destroy(b);
    unsigned long long original = softgl_scene_packet_bin_audit(0);
    unsigned long long packed = softgl_scene_packet_bin_audit(1);
    unsigned long long full = softgl_scene_packet_bin_audit(2);
    printf("Packet bins: %llu original references, %llu packet references, %llu full masks\n",
        original,packed,full);
    CHECK(original > packed && packed && full);
    printf("Packet-bin masks: %d paired full-plane frames PASS\n",comparisons);
    return result;
}
