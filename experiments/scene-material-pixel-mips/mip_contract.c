/* Analytic constant-footprint scenes: mode-on mip sampling must match a mode-off
 * renderer explicitly given the independently known requested texture level. */
#include "types.h"
#include <inttypes.h>
static int request_mips, request_quantization;
static int begin_selected_mips(void) {
    int begun = softgl_scene_visibility_begin();
    if (begun) {
        softgl_scene_quantized_visibility(request_quantization);
        if (request_mips) softgl_scene_material_mips(GL_TRUE);
    }
    return begun;
}
#define softgl_scene_visibility_begin begin_selected_mips
#define main previous_position_fixture_main
#include "../../tests/scene_positions.c"
#undef main
#undef softgl_scene_visibility_begin

static void upload_level(int normal, int logical_level, int destination_level) {
    int size = (normal ? 128 : 64) >> logical_level;
    if (size < 1) size = 1;
    uint8_t *data = malloc((size_t)size*size*4); CHECK(data);
    for (int y = 0; y < size; y++) for (int x = 0; x < size; x++) {
        uint8_t *p = data+((size_t)y*size+x)*4;
        if (normal) {
            if (logical_level <= 5) { p[0] = (uint8_t)(96+(x >> (5-logical_level))*24); p[1] = (uint8_t)(100+(y >> (5-logical_level))*24); }
            else if (logical_level == 6) { p[0] = (uint8_t)(108+x*48); p[1] = (uint8_t)(112+y*48); }
            else { p[0] = 132; p[1] = 136; }
            p[2] = 224; p[3] = 255;
        } else if (!logical_level) {
            int odd = (x+y)&1;
            p[0] = odd ? 160 : 32; p[1] = odd ? 160 : 96; p[2] = 160; p[3] = odd ? 0 : 255;
        } else { p[0] = 96; p[1] = 128; p[2] = 160; p[3] = 128; }
    }
    glTexImage2D(GL_TEXTURE_2D,destination_level,GL_RGBA,size,size,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
    free(data);
}

static void textures(softgl_ctx *c, int kind, int oracle, int wrap) {
    softgl_make_current(c);
    for (int normal = 0; normal < 2; normal++) {
        glActiveTexture(normal ? GL_TEXTURE0 : GL_TEXTURE2);
        GLuint texture; glGenTextures(1,&texture); glBindTexture(GL_TEXTURE_2D,texture);
        /* Geometry spans 25.6×25.2 pixels, UV spans eight: rho is about 40 for
         * normal128 and 20 for color64, so the known levels are 5 and 4. */
        int reference_level = normal ? (kind == 1 ? 3 : 5) : (kind == 1 ? 2 : 4);
        int max_level = kind == 2 ? 0 : normal ? (kind == 1 ? 3 : 7) : (kind == 1 ? 2 : 6);
        if (oracle && kind < 2 && !c->fb.samples) upload_level(normal,reference_level,0);
        else for (int level = 0; level <= max_level; level++) upload_level(normal,level,level);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wrap ? GL_CLAMP_TO_EDGE : GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    }
}

static void mip_frame(softgl_ctx *c, int kind, int enabled) {
    softgl_make_current(c); request_mips = enabled;
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE);
    if (kind == 4) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); } else glDisable(GL_ALPHA_TEST);
    int begun = begin_selected_mips();
    const float tint[4] = {.1f,.2f,.3f,.5f}; softgl_set_fused_dot3_material(tint,0);
    program_data program = {1.f}; softgl_set_vertex_attributes_full(attributes,&program);
    if (begun) softgl_scene_visibility_material();
    if (begun && kind != 5) {
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,
            indices,12,attributes,&program,sizeof(program))); captured++;
    } else glDrawElements(GL_TRIANGLES,12,GL_UNSIGNED_INT,indices);
    program.phase = 1000.f; softgl_set_vertex_attributes_full(NULL,NULL);
    if (begun) CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

static uint64_t hash_planes(softgl_ctx *c) {
    uint64_t hash = UINT64_C(14695981039346656037);
    const uint8_t *p = softgl_read_rgba8(c); size_t pixels = (size_t)640*360;
    for (size_t i = 0; i < pixels*4; i++) hash = (hash ^ p[i])*UINT64_C(1099511628211);
    p = (const uint8_t *)c->fb.depth;
    for (size_t i = 0; i < pixels*sizeof(float); i++) hash = (hash ^ p[i])*UINT64_C(1099511628211);
    return hash;
}

int main(void) {
    generate();
    for (int j = 0; j < 3; j++) vertices[10+j] = (vertex){
        {j == 1 ? .04f : -.04f,j == 2 ? .07f : -.07f,0.f},
        {-1.25f+(j == 1 ? 8.f : 0.f),-.75f+(j == 2 ? 8.f : 0.f)}};
    for (int i = 0; i < 12; i++) indices[i] = (GLuint)(10+i%3);
    const int helpers[] = {1,3,8}, modes[] = {0,2,4}; int exact_base = 0;
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,modes[s]), *b = softgl_create_multisample(640,360,modes[s]);
        CHECK(a && b); initialize(a,helpers[w]); initialize(b,1);
        for (int quantized = 0; quantized < 2; quantized++) for (int wrap = 0; wrap < 2; wrap++) for (int kind = 0; kind < 6; kind++) {
            request_quantization = quantized; textures(a,kind,0,wrap); textures(b,kind,1,wrap);
            mip_frame(a,kind,kind != 3); mip_frame(b,kind,0); compare(a,b);
            size_t pixels = (size_t)640*360;
            if (s || kind >= 2) { CHECK(!memcmp(a->fb.color,b->fb.color,pixels*4)); exact_base++; }
            printf("{\"helpers\":%d,\"samples\":%d,\"quantized\":%d,\"wrap\":%d,\"kind\":%d,\"planes\":\"%016" PRIx64 "\"}\n",
                helpers[w],modes[s],quantized,wrap,kind,hash_planes(a));
        }
        if (!s) { request_mips = 1; request_quantization = 1; rollback(a); }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(comparisons == 216 && exact_base == 192 && restored == 6 && captured);
    printf("Material mips: %d paired known-level/base full-plane frames, %d byte-exact base controls, %d enabled rollbacks PASS\n",comparisons,exact_base,restored);
    return 0;
}
