#include "types.h"
#include "workers.h"
#include <math.h>
#include <stdio.h>

#define CHECK(expr) do { if (!(expr)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #expr); return 1; \
} } while (0)

static uint32_t random_state = 17;
static float random_coord(void) {
    random_state = random_state * 1664525u + 1013904223u;
    float value = ((int)(random_state >> 8) - 8388608) * (1.f / 8388608.f);
    return random_state & 1 ? value * 1024.f : value;
}

int main(void) {
    softgl_ctx *c = softgl_create(31, 23); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c);
    GLuint id; glGenTextures(1, &id);
    glActiveTexture(GL_TEXTURE1); glBindTexture(GL_TEXTURE_2D, id);
    glEnable(GL_TEXTURE_2D); glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP_TO_EDGE};
    const GLenum filters[] = {GL_NEAREST, GL_LINEAR};
    const uint8_t colors[][4] = {{255,255,255,255}, {128,128,255,255},
                                {13,27,199,73}, {0,0,0,0}};
    sg_vert v[3]; memset(v, 0, sizeof(v));
    unsigned comparisons = 0;
    float max_reference_delta = 0.f;
    for (int filter = 0; filter < 2; filter++) for (int ws = 0; ws < 2; ws++) {
        for (int wt = 0; wt < 2; wt++) for (int color = 0; color < 4; color++) {
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, filters[filter]);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wraps[ws]);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wraps[wt]);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, colors[color]);
            sg_tex_tri_ctx t; sg_tex_tri_prepare(c, &t);
            CHECK(t.unit[1].constant_color_valid && t.sample_mask == 2);
            for (int n = 0; n < 4096; n++) {
                float u = random_coord(), w = random_coord();
                for (int i = 0; i < 3; i++) {
                    v[i].uv[1].x = u; v[i].uv[1].y = w;
                }
                float sampled[SG_MAX_TEX_UNITS][4], reference[4];
                int active[SG_MAX_TEX_UNITS];
                sg_tex_tri_sample_units(&t, &v[0], &v[1], &v[2], 1.f, 0.f, 0.f, 1.f, sampled, active);
                CHECK(active[1] && !active[0] && !active[2] && !active[3]);
                sg_sample_tex2d(t.unit[1].tex, t.unit[1].filter_min, filters[filter],
                                wraps[ws], wraps[wt], u, w, 1, reference);
                for (int k = 0; k < 4; k++) {
                    CHECK(sampled[1][k] == colors[color][k] * (1.f / 255.f));
                    float delta = fabsf(sampled[1][k] - reference[k]);
                    if (delta > max_reference_delta) max_reference_delta = delta;
                    /* Equal bilinear taps yield this constant mathematically.
                     * The original weighted sum can round by a few f32 ULPs. */
                    CHECK(filter ? delta <= 4.f * 1.1920928955078125e-7f : delta == 0.f);
                }
                comparisons++;
            }
            /* Each draw must prepare fresh sampler data after an upload. */
            glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, colors[(color + 1) % 4]);
            sg_tex_tri_prepare(c, &t);
            for (int k = 0; k < 4; k++) CHECK(t.unit[1].constant_color[k] == colors[(color + 1) % 4][k] * (1.f / 255.f));
        }
    }
    sg_tex_tri_ctx t;
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
    sg_tex_tri_prepare(c, &t); CHECK(!t.unit[1].constant_color_valid);
    const uint8_t pair[8] = {255,0,0,255, 0,0,255,255};
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, pair);
    sg_tex_tri_prepare(c, &t); CHECK(!t.unit[1].constant_color_valid);
    glDeleteTextures(1, &id);
    sg_tex_tri_prepare(c, &t); CHECK(!t.unit[1].constant_color_valid);
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c);
    printf("%u constant texture comparisons passed; original linear max delta %.9g\n",
           comparisons, (double)max_reference_delta);
    return 0;
}
