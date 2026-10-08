/* Exercise explicit quantization, default mode, copied programs, clipping,
 * masks, MSAA fallback, worker budgets and rollback with real scene commands. */
#include "types.h"
#include <inttypes.h>
#include <stdio.h>
static int request_quantization;

static int begin_selected(void) {
    int begun = softgl_scene_visibility_begin();
    if (begun) softgl_scene_quantized_visibility(request_quantization);
    return begun;
}

#define softgl_scene_visibility_begin begin_selected
#define main previous_position_fixture_main
#include "scene_positions.c"
#undef main
#undef softgl_scene_visibility_begin

static uint64_t plane_hash(const void *data, size_t bytes, uint64_t hash) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) hash = (hash ^ p[i])*UINT64_C(1099511628211);
    return hash;
}

int main(void) {
    generate();
    const int helpers[] = {3,8}, samples[] = {0,2,4};
    for (int enabled = 0; enabled < 2; enabled++) {
        request_quantization = enabled;
        for (int w = 0; w < 2; w++) for (int s = 0; s < 3; s++) {
            softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
            softgl_ctx *b = softgl_create_multisample(640,360,samples[s]);
            CHECK(a && b); initialize(a,1); initialize(b,helpers[w]);
            for (int variant = 0; variant < 18; variant++) {
                frame(a,1,variant); frame(b,1,variant); compare(a,b);
                size_t pixels = (size_t)640*360;
                CHECK(!memcmp(a->fb.color,b->fb.color,pixels*4));
                uint64_t hash = UINT64_C(14695981039346656037);
                hash = plane_hash(a->fb.color,pixels*4,hash);
                hash = plane_hash(a->fb.depth,pixels*sizeof(float),hash);
                hash = plane_hash(a->fb.stencil,pixels,hash);
                if (samples[s]) {
                    hash = plane_hash(a->fb.sample_color,pixels*samples[s]*4,hash);
                    hash = plane_hash(a->fb.sample_depth,pixels*samples[s]*sizeof(float),hash);
                    hash = plane_hash(a->fb.sample_stencil,pixels*samples[s],hash);
                }
                printf("{\"enabled\":%d,\"helpers\":%d,\"samples\":%d,\"variant\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                    enabled,helpers[w],samples[s],variant,hash);
            }
            if (!samples[s]) { rollback(a); rollback(b); }
            softgl_destroy(a); softgl_destroy(b);
        }
    }
    CHECK(comparisons == 216 && restored == 16);
    printf("Quantized visibility: %d paired exact full-plane frames, %d rollbacks PASS\n",comparisons,restored);
    return 0;
}
