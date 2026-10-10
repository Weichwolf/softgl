/* Compare canonical material packets with independent ordinary GL draws,
 * including constant/varying normal maps and differing texture wrap modes. */
#include "types.h"
static softgl_ctx *reference_context;
static int begin_selected_uv(softgl_ctx *context) {
    return sg_current() == reference_context ? 0 : sg_scene_begin(sg_current());
}
#define sg_scene_begin begin_selected_uv
#define main previous_position_fixture_main
#include "scene_positions.c"
#undef main
#undef sg_scene_begin

static void texture_modes(softgl_ctx *c, int varying, int wrap) {
    softgl_make_current(c);
    glActiveTexture(GL_TEXTURE0);
    if (varying) {
        uint8_t normal[8*4*4];
        for (int i = 0; i < 8*4; i++) {
            normal[i*4] = (uint8_t)(80+(i%8)*20);
            normal[i*4+1] = (uint8_t)(96+(i/8)*32);
            normal[i*4+2] = (uint8_t)(180+(i%3)*20);
            normal[i*4+3] = 255;
        }
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,8,4,0,GL_RGBA,GL_UNSIGNED_BYTE,normal);
    }
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wrap ? GL_CLAMP_TO_EDGE : GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    glActiveTexture(GL_TEXTURE2);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wrap ? GL_REPEAT : GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_CLAMP_TO_EDGE);
    glActiveTexture(GL_TEXTURE3);
}

int main(void) {
    generate();
    for (int i = 0; i < VERTICES; i++) {
        vertices[i].uv[0] = -.35f+(i%7)*.31f;
        vertices[i].uv[1] = -.2f+(i%5)*.43f;
    }
    const int helpers[] = {1,3,8}, variants[] = {0,1,3,9,14,17};
    for (int varying = 0; varying < 2; varying++) for (int wrap = 0; wrap < 2; wrap++) {
        for (int w = 0; w < 3; w++) {
            softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
            CHECK(a && b); reference_context = a;
            initialize(a,1); initialize(b,helpers[w]);
            texture_modes(a,varying,wrap); texture_modes(b,varying,wrap);
            for (int i = 0; i < 6; i++) {
                frame(a,0,variants[i]); frame(b,1,variants[i]); compare(a,b);
            }
            softgl_destroy(a); softgl_destroy(b);
        }
    }
    CHECK(comparisons == 72 && captured);
    printf("Canonical UV: %d ordinary/deferred paired frames; varying/constant normals and distinct wrapping PASS\n",comparisons);
    return 0;
}
