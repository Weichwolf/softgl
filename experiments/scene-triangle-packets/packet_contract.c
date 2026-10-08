/* Baseline and candidate contracts also compare hashes externally. */
#include "quantized_fixture.inc"
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
extern unsigned long long softgl_scene_triangle_packet_audit(unsigned index);
int main(void) {
    int result = previous_quantized_main();
    unsigned long long produced = softgl_scene_triangle_packet_audit(0);
    unsigned long long packets = softgl_scene_triangle_packet_audit(1);
    unsigned long long calls = softgl_scene_triangle_packet_audit(2);
    unsigned long long direct = softgl_scene_triangle_packet_audit(3);
    unsigned long long fallback = softgl_scene_triangle_packet_audit(4);
    unsigned long long partial = softgl_scene_triangle_packet_audit(5);
    unsigned long long full = softgl_scene_triangle_packet_audit(6);
    printf("Triangle packets: produced=%llu packets=%llu calls=%llu direct=%llu fallback=%llu partial=%llu full=%llu\n",
        produced,packets,calls,direct,fallback,partial,full);
    CHECK(produced && packets && calls && direct && fallback && partial);
    puts("Actual SIMD128 triangle packet contract PASS");
#ifdef __EMSCRIPTEN__
    printf("WASM pointerBytes=%zu heapBytes=%zu\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return result;
}
