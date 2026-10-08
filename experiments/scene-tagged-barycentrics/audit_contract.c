#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
extern unsigned softgl_scene_tagged_audit(unsigned index);
/* Optional native resolve versus the accepted SIMD128 path. Independently
 * checked rectangles cover lengths 1–31; private audit tests trace dispatch. */
#include "types.h"
static softgl_ctx *reference_context;
static int request_wide, request_quantization, enabled_calls;
static int native_available(void) {
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
    return __builtin_cpu_supports("avx512f") && __builtin_cpu_supports("avx512dq") &&
        __builtin_cpu_supports("avx512bw") && __builtin_cpu_supports("avx512vl");
#else
    return 0;
#endif
}
static int begin_selected_wide(void) {
    int begun = softgl_scene_visibility_begin();
    if (begun) {
        softgl_scene_quantized_visibility(request_quantization);
        if (request_wide && sg_current() != reference_context) {
            int enabled = softgl_scene_native_wide(request_wide > 0 ? GL_TRUE : GL_FALSE);
            if (enabled != (request_wide > 0 && native_available())) abort();
            enabled_calls += enabled;
        }
    }
    return begun;
}
#define softgl_scene_visibility_begin begin_selected_wide
#define main previous_position_fixture_main
#include "../../tests/scene_positions.c"
#undef main
#undef softgl_scene_visibility_begin

static void rectangle(softgl_ctx *c, int count, int canonical) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST);
    int begun = begin_selected_wide(); CHECK(begun);
    const float tint[4] = {.1f,.2f,.3f,.5f}; softgl_set_fused_dot3_material(tint,count&1);
    program_data data = {2.f}; softgl_set_vertex_attributes_full(attributes,&data);
    softgl_scene_visibility_material();
    if (canonical) {
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
            indices,6,attributes,&data,sizeof(data))); captured++;
    } else glDrawElements(GL_TRIANGLES,6,GL_UNSIGNED_INT,indices);
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
    unsigned covered = 0;
    for (int y = 0; y < 360; y++) for (int x = 0; x < 640; x++) {
        int expected = y == 100 && x >= 100 && x < 100+count;
        CHECK((c->fb.depth[y*640+x] < 1.f) == expected);
        covered += expected;
    }
    CHECK(covered == (unsigned)count);
}
static void texture_modes(softgl_ctx *c, int kind, int wrap) {
    softgl_make_current(c);
    for (int unit = 0; unit < 4; unit++) {
        if (unit == 1) continue;
        glActiveTexture(GL_TEXTURE0+unit);
        int width = kind == 0 ? 1 : kind == 1 ? 8 : 7, height = kind == 0 ? 1 : kind == 1 ? 4 : 5;
        uint8_t data[8*5*4];
        for (int i = 0; i < width*height; i++) {
            data[i*4] = (uint8_t)(unit == 0 ? 80+(i%7)*20 : 20+(i%8)*29);
            data[i*4+1] = (uint8_t)(unit == 0 ? 96+(i%5)*25 : 31+(i%7)*31);
            data[i*4+2] = (uint8_t)(unit == 0 ? 220 : 43+(i%6)*33);
            data[i*4+3] = unit == 2 ? (uint8_t)(i%2 ? 255 : 0) : 255;
        }
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,width,height,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,kind == 1 ? GL_NEAREST : GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wrap ? GL_CLAMP_TO_EDGE : GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,wrap ? GL_CLAMP : GL_REPEAT);
    }
}
static int previous_wide_main(void) {
    generate();
    CHECK(softgl_scene_native_wide(GL_TRUE) == 0);
    const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    unsigned tails = 0;
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]), *b = softgl_create_multisample(640,360,samples[s]);
        CHECK(a && b); reference_context = a; initialize(a,1); initialize(b,helpers[w]);
        for (int quantized = 0; quantized < 2; quantized++) for (int kind = 0; kind < 3; kind++) for (int wrap = 0; wrap < 2; wrap++) {
            request_quantization = quantized; texture_modes(a,kind,wrap); texture_modes(b,kind,wrap);
            for (int variant = 0; variant < 18; variant++) {
                request_wide = 1; frame(a,1,variant); frame(b,1,variant); compare(a,b);
                CHECK(softgl_scene_native_wide(GL_TRUE) == 0);
            }
        }
        if (!s) { request_wide = 1; request_quantization = 1; rollback(b); }
        /* Beginning a fresh frame resets the opt-in, even after enabled work. */
        request_wide = 0; request_quantization = 0;
        frame(a,1,1); frame(b,1,1); compare(a,b);
        CHECK(!memcmp(a->fb.color,b->fb.color,(size_t)640*360*4));
        /* Explicitly disabling a supported backend also selects the fallback. */
        request_wide = -1;
        frame(a,1,2); frame(b,1,2); compare(a,b);
        CHECK(!memcmp(a->fb.color,b->fb.color,(size_t)640*360*4));
        softgl_destroy(a); softgl_destroy(b);
    }
    generate();
    for (int count = 1; count <= 31; count++) {
        const int corners[6][2] = {{0,0},{1,0},{0,1},{1,0},{1,1},{0,1}};
        for (int j = 0; j < 6; j++) {
            float x = 100.f+count*corners[j][0], y = 100.f+corners[j][1];
            vertices[10+j] = (vertex){{x*(2.f/640.f)-1.f,y*(2.f/360.f)-1.f,0.f},
                {-.35f+corners[j][0]*2.4f,-.2f+corners[j][1]*1.8f}};
            indices[j] = 10+j;
        }
        softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
        CHECK(a && b); reference_context = a; initialize(a,1); initialize(b,3);
        texture_modes(a,2,count&1); texture_modes(b,2,count&1);
        for (int canonical = 0; canonical < 2; canonical++) {
            request_wide = 1; request_quantization = count&1;
            rectangle(a,count,canonical); rectangle(b,count,canonical); compare(a,b);
            unsigned length = count%16 ? (unsigned)(count%16) : 16;
            tails |= 1u << length;
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(comparisons == 2024 && restored == 6 && captured);
    CHECK(tails == 131070u);
    if (native_available()) CHECK(enabled_calls);
    printf("Native wide: %d paired full-plane frames, all rectangle/tail lengths; %d rollbacks; availability=%d PASS\n",
        comparisons,restored,native_available());
    return 0;
}

int main(void) {
    int result = previous_wide_main();
    unsigned narrow4 = softgl_scene_tagged_audit(0), broad4 = softgl_scene_tagged_audit(1);
    unsigned narrow16 = softgl_scene_tagged_audit(2), broad16 = softgl_scene_tagged_audit(3);
    if (result || !narrow4 || !broad4 || (native_available() && (!narrow16 || !broad16))) abort();
    printf("Actual tagged dispatch: SIMD128 narrow=%u legacy=%u; native-wide narrow=%u legacy=%u PASS\n",narrow4,broad4,narrow16,broad16);
#ifdef __EMSCRIPTEN__
    printf("WASM: pointerBytes=%zu heapBytes=%zu nativeWide=%d PASS\n",sizeof(void *),emscripten_get_heap_size(),native_available());
#endif
    return 0;
}
