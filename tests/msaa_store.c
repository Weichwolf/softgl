#include "types.h"
#include "simd.h"
#include "raster_store.h"
#include <stdio.h>
#include <math.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t rng = 731;
static uint32_t bits(void) { rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5; return rng; }
static float value(void) { return (bits() >> 8) * (1.f / 16777216.f); }
static int depth_pass(GLenum f, float z, float d) {
    switch (f) {
        case GL_NEVER: return 0;
        case GL_LESS: return z < d;
        case GL_EQUAL: return z == d;
        case GL_LEQUAL: return z <= d;
        case GL_GREATER: return z > d;
        case GL_NOTEQUAL: return z != d;
        case GL_GEQUAL: return z >= d;
        default: return 1;
    }
}
static void render_triangles(int query, int variant, GLenum func) {
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, 9, 0, 7, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glClearColor(.13f, .27f, .41f, .59f); glClearDepth(variant & 1 ? 0.f : 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glDepthFunc(func); glDepthMask(variant & 2 ? GL_FALSE : GL_TRUE);
    if (variant & 4) glDisable(GL_DEPTH_TEST); else glEnable(GL_DEPTH_TEST);
    if (variant & 8) { glEnable(GL_SCISSOR_TEST); glScissor(1, 1, 7, 5); }
    else glDisable(GL_SCISSOR_TEST);
    GLuint id = 0;
    if (query) { glGenQueries(1, &id); glBeginQuery(GL_SAMPLES_PASSED, id); }
    for (int i = 0; i < 19; i++) {
        float x = (i % 5) * 1.3f - .6f, y = (i % 7) * .8f - .2f;
        float z = (i % 3 - 1) * .3f;
        glColor4f((i % 4) * .27f, (i % 6) * .17f, (i % 5) * .23f, (i % 7) * .19f);
        glBegin(GL_TRIANGLES);
        glVertex3f(x, y, z); glVertex3f(x + 2.7f, y + .1f, z);
        glVertex3f(x + .2f, y + 2.9f, z);
        glEnd();
    }
    if (query) { glEndQuery(GL_SAMPLES_PASSED); glDeleteQueries(1, &id); }
}
static int can_store(const softgl_ctx *c, int samples) {
    return samples == 4 ? sg_can_store_opaque_msaa4(c) : sg_can_store_opaque_msaa2(c);
}
static void store(softgl_ctx *c, int samples, int x, int y, unsigned coverage,
                    const float z[4], const float color[4]) {
    if (samples == 4) sg_store_opaque_msaa4(c, x, y, coverage, z, color);
    else sg_store_opaque_msaa2(c, x, y, coverage, z, color);
}
static int check_context(int samples) {
    softgl_ctx *c = softgl_create_multisample(9, 7, samples);
    CHECK(c); softgl_make_current(c);
    CHECK(can_store(c, samples));
    size_t pixel_bytes = (size_t)9 * 7 * samples * 4;
    size_t stencil_bytes = (size_t)9 * 7 * samples;
    uint8_t *original_color = malloc(pixel_bytes), *expected_color = malloc(pixel_bytes);
    float *original_depth = malloc(pixel_bytes), *expected_depth = malloc(pixel_bytes);
    uint8_t *original_stencil = malloc(stencil_bytes), *expected_stencil = malloc(stencil_bytes);
    CHECK(original_color && expected_color && original_depth && expected_depth && original_stencil && expected_stencil);
    const GLenum funcs[] = {GL_NEVER, GL_LESS, GL_EQUAL, GL_LEQUAL, GL_GREATER, GL_NOTEQUAL, GL_GEQUAL, GL_ALWAYS};
    unsigned comparisons = 0;
    for (int test = 0; test < 2; test++) for (int write = 0; write < 2; write++) {
        c->depth_test = test; c->depth_mask = write;
        for (int f = 0; f < 8; f++) {
            c->depth_func = funcs[f];
            for (int n = 0; n < 2048; n++) {
                int x = n % 9, y = (n / 9) % 7;
                for (size_t i = 0; i < pixel_bytes; i++) original_color[i] = (uint8_t)bits();
                for (size_t i = 0; i < stencil_bytes; i++) {
                    original_depth[i] = value(); original_stencil[i] = (uint8_t)bits();
                }
                float z[4], color[4];
                for (int s = 0; s < 4; s++) {
                    z[s] = n & 1 ? value() : original_depth[((size_t)y * 9 + x) * samples + s % samples];
                    color[s] = value() * 4.f - 1.f;
                }
                unsigned coverage = (unsigned)n & ((1u << samples) - 1u), passed = coverage;
                if (test) for (int s = 0; s < samples; s++)
                    if (!depth_pass(funcs[f], z[s], original_depth[((size_t)y * 9 + x) * samples + s % samples]))
                        passed &= ~(1u << s);
                memcpy(c->fb.sample_color, original_color, pixel_bytes);
                memcpy(c->fb.sample_depth, original_depth, pixel_bytes);
                memcpy(c->fb.sample_stencil, original_stencil, stencil_bytes);
                sg_write_multisample(c, x, y, coverage, z, color);
                memcpy(expected_color, c->fb.sample_color, pixel_bytes);
                memcpy(expected_depth, c->fb.sample_depth, pixel_bytes);
                memcpy(expected_stencil, c->fb.sample_stencil, stencil_bytes);
                memcpy(c->fb.sample_color, original_color, pixel_bytes);
                memcpy(c->fb.sample_depth, original_depth, pixel_bytes);
                memcpy(c->fb.sample_stencil, original_stencil, stencil_bytes);
                if (passed) store(c, samples, x, y, passed, z, color);
                CHECK(!memcmp(c->fb.sample_color, expected_color, pixel_bytes));
                CHECK(!memcmp(c->fb.sample_depth, expected_depth, pixel_bytes));
                CHECK(!memcmp(c->fb.sample_stencil, expected_stencil, stencil_bytes));
                comparisons++;
            }
        }
    }
    c->alpha_test = 1; CHECK(!can_store(c, samples)); c->alpha_test = 0;
    c->stencil_test = 1; CHECK(!can_store(c, samples)); c->stencil_test = 0;
    c->blend = 1; CHECK(!can_store(c, samples)); c->blend = 0;
    c->color_logic_op_enabled = 1; CHECK(!can_store(c, samples)); c->color_logic_op_enabled = 0;
    c->current_query[0] = 1; CHECK(!can_store(c, samples)); c->current_query[0] = 0;
    c->current_query[1] = 1; CHECK(!can_store(c, samples)); c->current_query[1] = 0;
    for (int k = 0; k < 4; k++) {
        c->color_mask[k] = 0; CHECK(!can_store(c, samples)); c->color_mask[k] = 1;
    }
    c->sample_coverage = 1; CHECK(!can_store(c, samples)); c->sample_coverage = 0;
    c->sample_alpha_to_coverage = 1; CHECK(!can_store(c, samples)); c->sample_alpha_to_coverage = 0;
    c->sample_alpha_to_one = 1; CHECK(!can_store(c, samples)); c->sample_alpha_to_one = 0;
    c->fb.samples = samples == 4 ? 2 : 4; CHECK(!can_store(c, samples)); c->fb.samples = samples;
    for (int f = 0; f < 8; f++) for (int variant = 0; variant < 16; variant++) {
        render_triangles(0, variant, funcs[f]);
        softgl_read_rgba8(c);
        memcpy(expected_color, c->fb.sample_color, pixel_bytes);
        memcpy(expected_depth, c->fb.sample_depth, pixel_bytes);
        memcpy(expected_stencil, c->fb.sample_stencil, stencil_bytes);
        render_triangles(1, variant, funcs[f]);
        softgl_read_rgba8(c);
        CHECK(!memcmp(c->fb.sample_color, expected_color, pixel_bytes));
        CHECK(!memcmp(c->fb.sample_depth, expected_depth, pixel_bytes));
        CHECK(!memcmp(c->fb.sample_stencil, expected_stencil, stencil_bytes));
        CHECK(glGetError() == GL_NO_ERROR);
    }
    free(original_color); free(expected_color); free(original_depth); free(expected_depth);
    free(original_stencil); free(expected_stencil); softgl_destroy(c);
    printf("%dx: %u exact post-Z stores, 128 query-oracle frames and fallback states passed\n", samples, comparisons);
    return 0;
}
int sg_store_contract(void) {
    for (int n = 0; n < 262144; n++) {
        float color[4];
        uint32_t expected = 0;
        for (int k = 0; k < 4; k++) {
            color[k] = value() * 4.f - 1.f;
            if (n % 5 == 0) {
                color[k] = ((n % 256) + .5f) / 255.f;
                if (k == 0) color[k] = nextafterf(color[k], -INFINITY);
                if (k == 1) color[k] = nextafterf(color[k], INFINITY);
            }
            expected |= (uint32_t)sg_quantize(color[k]) << (k * 8);
        }
        CHECK(sg_store_quantize_rgba(color) == expected);
    }
    CHECK(!check_context(2));
    CHECK(!check_context(4));
    puts("262144 exact RGBA quantizations passed");
    return 0;
}

int main(void) { return sg_store_contract(); }
