#include "quantized_fixture.inc"
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
extern unsigned long long softgl_scene_tile_audit(unsigned index);
int main(void) {
    int result = previous_quantized_main();
    unsigned long long frames = softgl_scene_tile_audit(0);
    unsigned long long blocks = softgl_scene_tile_audit(1);
    unsigned long long rejected = softgl_scene_tile_audit(2);
    unsigned long long full = softgl_scene_tile_audit(3);
    printf("4x4 tiles: frames=%llu blocks=%llu rejected=%llu full=%llu\n",frames,blocks,rejected,full);
    CHECK(frames && blocks && rejected && full);
    puts("Actual SIMD128 4x4 tiled visibility contract PASS");
#ifdef __EMSCRIPTEN__
    printf("WASM pointerBytes=%zu heapBytes=%zu\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return result;
}
