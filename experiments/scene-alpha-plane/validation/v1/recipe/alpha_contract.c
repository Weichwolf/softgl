#include "types.h"
#include "workers.h"
#include "simd.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "scene_alpha_sampler.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int failures;
static unsigned comparisons;
#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "FAIL line %d: %s\n", __LINE__, #condition); failures++; \
} } while (0)

static sg_texture *bound_texture(softgl_ctx *c) {
    return sg_texture_get(c, c->tex_env[0].bound_tex_target[SG_TEX_TARGET_2D]);
}

static void check_view(softgl_ctx *c, sg_texture *t) {
    const uint8_t *p = sg_scene_alpha_prepare(c, t);
    CHECK(p != NULL);
    if (p) for (size_t i = 0; i < (size_t)t->w[0] * t->h[0]; i++) {
        CHECK(p[i] == t->data[0][i * 4 + 3]);
    }
}

int main(void) {
    softgl_ctx *c = softgl_create(640, 360);
    CHECK(c != NULL);
    if (!c) return 1;
    softgl_make_current(c);
    sg_workers_shutdown(c);
    glEnable(GL_TEXTURE_2D);
    GLuint id;
    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    const int sizes[] = {1, 2, 3, 4, 7, 8, 16};
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP, GL_CLAMP_TO_EDGE};
    const GLenum filters[] = {GL_NEAREST, GL_LINEAR};
    const float coords[] = {-2.25f, -1.f, -.999f, -.5f, -.001f, 0.f,
        .001f, .125f, .499f, .5f, .999f, 1.f, 1.001f, 1.5f, 2.25f};
    uint8_t rgba[16 * 16 * 4];
    for (size_t i = 0; i < sizeof(rgba); i++) rgba[i] = (uint8_t)(i * 73u + i / 7u);
    for (unsigned wi = 0; wi < 7; wi++) for (unsigned hi = 0; hi < 7; hi++) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, sizes[wi], sizes[hi], 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
        sg_texture *t = bound_texture(c);
        CHECK(t->scene_alpha == NULL);
        check_view(c, t);
        for (unsigned f = 0; f < 2; f++) for (unsigned s = 0; s < 3; s++) for (unsigned v = 0; v < 3; v++) {
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, filters[f]);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wraps[s]);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wraps[v]);
            sg_tex_tri_ctx prepared;
            sg_tex_tri_prepare(c, &prepared);
            for (unsigned live = 1; live < 16; live++) for (unsigned k = 0; k < 15; k++) {
                float x[4], y[4];
                for (unsigned lane = 0; lane < 4; lane++) {
                    x[lane] = coords[(k + lane) % 15];
                    y[lane] = coords[(k * 7 + lane * 3) % 15];
                }
                sg_f32x4 original[4];
                sg_packet_sample_2d(&prepared.unit[0], sg_f32x4_load(x), sg_f32x4_load(y), live, 0, original);
                sg_f32x4 actual = scene_alpha_sample_2d(&prepared.unit[0], t->scene_alpha,
                    sg_f32x4_load(x), sg_f32x4_load(y), live);
                float a[4], b[4];
                sg_f32x4_store(a, original[3]);
                sg_f32x4_store(b, actual);
                CHECK(memcmp(a, b, sizeof(a)) == 0);
                comparisons++;
            }
        }
    }
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    sg_texture *t = bound_texture(c);
    check_view(c, t);
    const uint8_t *borrowed = t->scene_alpha;
    const uint8_t patch[4] = {1, 2, 3, 17};
    glTexSubImage2D(GL_TEXTURE_2D, 0, 2, 3, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, patch);
    CHECK(t->scene_alpha == borrowed && borrowed[3 * 8 + 2] == 17);
    check_view(c, t);
    glTexImage2D(GL_TEXTURE_2D, 1, GL_RGBA, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    CHECK(t->scene_alpha == borrowed);
    glClearColor(.2f, .3f, .4f, .25f);
    glClear(GL_COLOR_BUFFER_BIT);
    glCopyTexSubImage2D(GL_TEXTURE_2D, 0, 1, 1, 0, 0, 2, 2);
    CHECK(t->scene_alpha == borrowed);
    check_view(c, t);
    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 0, 0, 3, 5, 0);
    CHECK(t->scene_alpha == NULL);
    check_view(c, t);
    glDeleteTextures(1, &id);
    CHECK(c->textures[id - 1].scene_alpha == NULL);
    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    check_view(c, bound_texture(c));
    glDeleteTextures(1, &id);
    GLuint large[4];
    glGenTextures(4, large);
    for (unsigned i = 0; i < 4; i++) {
        glBindTexture(GL_TEXTURE_2D, large[i]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4096, 4096, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
        CHECK(sg_scene_alpha_prepare(c, bound_texture(c)) != NULL);
    }
    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    CHECK(sg_scene_alpha_prepare(c, bound_texture(c)) == NULL);
    glDeleteTextures(1, &large[0]);
    CHECK(sg_scene_alpha_prepare(c, bound_texture(c)) != NULL);
    CHECK(sg_scene_alpha_prepare(NULL, bound_texture(c)) == NULL);
    CHECK(sg_scene_alpha_prepare(c, NULL) == NULL);
    CHECK(glGetError() == GL_NO_ERROR);
    /* Destructor must free every remaining plane, including budget survivors. */
    softgl_destroy(c);
    printf("{\"packetComparisons\":%u,\"mutationsAndBudget\":\"%s\",\"failures\":%d}\n",
        comparisons, failures ? "FAIL" : "PASS", failures);
    return failures != 0;
}
