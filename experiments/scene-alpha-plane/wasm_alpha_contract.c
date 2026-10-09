#define main alpha_contract_main
#include "alpha_contract.c"
#undef main
#include <emscripten/heap.h>

int main(void) {
    int result = alpha_contract_main();
    printf("WASM_HEAP %zu\n", emscripten_get_heap_size());
    return result;
}
