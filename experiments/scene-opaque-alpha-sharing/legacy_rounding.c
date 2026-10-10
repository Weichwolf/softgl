/* Diagnose the failed first oracle without changing either renderer path:
 * run the pre-experiment product, original PREVIOUS alpha, alpha test off. */
#include "types.h"
static void oracle_enable(GLenum cap) {
    if (cap == GL_ALPHA_TEST) glDisable(cap);
    else glEnable(cap);
}
#define glEnable oracle_enable
#define main positions_contract_main
#include "scene_positions.c"
#undef main
#undef glEnable

int main(void) {
    generate();
    softgl_ctx *a = softgl_create_multisample(640,360,2);
    softgl_ctx *b = softgl_create_multisample(640,360,2);
    CHECK(a && b); initialize(a,1); initialize(b,1);
    frame(a,0,5); frame(b,1,5);
    softgl_make_current(a); softgl_read_rgba8(a);
    softgl_make_current(b); softgl_read_rgba8(b);
    size_t units = (size_t)640*360*2;
    CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,units*sizeof(float)));
    unsigned maximum = 0, changed = 0;
    size_t first = SIZE_MAX;
    for (size_t i = 0; i < units*4; i++) if (i%4 != 3) {
        unsigned delta = (unsigned)abs((int)a->fb.sample_color[i]-(int)b->fb.sample_color[i]);
        if (delta) { changed++; if (first == SIZE_MAX) first = i; }
        if (delta > maximum) maximum = delta;
    }
    CHECK(maximum <= 1 && changed > 0);
    printf("{\"preexistingPreviousAlpha\":true,\"samples\":2,\"helpers\":1,\"variant\":5,\"depthExact\":true,\"maxRgbDifference\":%u,\"changedSampleChannels\":%u,\"firstByte\":%zu,\"legacy\":%u,\"canonical\":%u}\n",
        maximum,changed,first,a->fb.sample_color[first],b->fb.sample_color[first]);
    softgl_destroy(a); softgl_destroy(b);
    return 0;
}
