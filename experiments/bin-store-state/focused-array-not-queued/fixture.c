#include "types.h"
#include "simd.h"
#include "raster_store.h"
#include <stdio.h>
#include <math.h>
#include <stddef.h>
extern void sg_write_fragment(softgl_ctx *, int, int, float, float, float, float, float);

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
/* Reuse reserved bytes without changing existing bin members or stride. */
typedef struct {
    sg_worker_tri *tris;
    uint32_t *sort_keys;
    int count, cap, ix0, ix1;
    GLuint64 query_samples;
    int coverage_count, depth_capture;
    uint8_t pad[56];
} sg_prior_worker_bin;
_Static_assert(sizeof(sg_worker_bin) == sizeof(sg_prior_worker_bin), "bin stride unchanged");
_Static_assert(offsetof(sg_worker_bin, depth_capture) == offsetof(sg_prior_worker_bin, depth_capture),
               "existing bin fields unchanged");
_Static_assert(offsetof(sg_worker_bin, common_store) == offsetof(sg_prior_worker_bin, pad),
               "eligibility occupies reserved bytes");

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
    return sg_can_store_common(c, samples);
}
static void store(softgl_ctx *c, int samples, int x, int y, unsigned coverage,
                    const float z[4], const float color[4]) {
    if (samples == 4) sg_store_common_msaa4(c, x, y, coverage, z, color);
    else if (samples == 2) sg_store_common_msaa2(c, x, y, coverage, z, color);
    else sg_store_off_post_depth(c, x, y, z[0], color);
}
static int check_context(int samples) {
    softgl_ctx *c = softgl_create_multisample(9, 7, samples);
    CHECK(c); softgl_make_current(c);
    CHECK(can_store(c, samples));
    int count = samples ? samples : 1;
    uint8_t *color_plane = samples ? c->fb.sample_color : c->fb.color;
    float *depth_plane = samples ? c->fb.sample_depth : c->fb.depth;
    uint8_t *stencil_plane = samples ? c->fb.sample_stencil : c->fb.stencil;
    size_t pixel_bytes = (size_t)9 * 7 * count * 4;
    size_t stencil_bytes = (size_t)9 * 7 * count;
    uint8_t *original_color = malloc(pixel_bytes), *expected_color = malloc(pixel_bytes);
    float *original_depth = malloc(pixel_bytes), *expected_depth = malloc(pixel_bytes);
    uint8_t *original_stencil = malloc(stencil_bytes), *expected_stencil = malloc(stencil_bytes);
    CHECK(original_color && expected_color && original_depth && expected_depth && original_stencil && expected_stencil);
    const GLenum funcs[] = {GL_NEVER, GL_LESS, GL_EQUAL, GL_LEQUAL, GL_GREATER, GL_NOTEQUAL, GL_GEQUAL, GL_ALWAYS};
    unsigned comparisons = 0;
    for (int blend = 0; blend < 5; blend++)
    for (int test = 0; test < 2; test++) for (int write = 0; write < 2; write++) {
        c->blend = blend != 0;
        c->blend_src = blend & 1 ? GL_SRC_ALPHA : GL_ONE;
        c->blend_dst = blend <= 2 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA;
        CHECK(can_store(c, samples));
        c->depth_test = test; c->depth_mask = write;
        for (int f = 0; f < 8; f++) {
            c->depth_func = funcs[f];
            for (int n = 0; n < (blend ? 256 : 2048); n++) {
                int x = n % 9, y = (n / 9) % 7;
                for (size_t i = 0; i < pixel_bytes; i++) original_color[i] = (uint8_t)bits();
                for (size_t i = 0; i < stencil_bytes; i++) {
                    original_depth[i] = value(); original_stencil[i] = (uint8_t)bits();
                }
                float z[4], color[4];
                for (int s = 0; s < 4; s++) {
                    z[s] = n & 1 ? value() : original_depth[((size_t)y * 9 + x) * count + s % count];
                    color[s] = value() * 4.f - 1.f;
                }
                unsigned coverage = (unsigned)n & ((1u << count) - 1u), passed = coverage;
                if (test) for (int s = 0; s < count; s++)
                    if (!depth_pass(funcs[f], z[s], original_depth[((size_t)y * 9 + x) * count + s % count]))
                        passed &= ~(1u << s);
                memcpy(color_plane, original_color, pixel_bytes);
                memcpy(depth_plane, original_depth, pixel_bytes);
                memcpy(stencil_plane, original_stencil, stencil_bytes);
                if (samples) sg_write_multisample(c, x, y, coverage, z, color);
                else if (coverage) sg_write_fragment(c, x, y, z[0], color[0], color[1], color[2], color[3]);
                memcpy(expected_color, color_plane, pixel_bytes);
                memcpy(expected_depth, depth_plane, pixel_bytes);
                memcpy(expected_stencil, stencil_plane, stencil_bytes);
                memcpy(color_plane, original_color, pixel_bytes);
                memcpy(depth_plane, original_depth, pixel_bytes);
                memcpy(stencil_plane, original_stencil, stencil_bytes);
                if (passed) store(c, samples, x, y, passed, z, color);
                CHECK(!memcmp(color_plane, expected_color, pixel_bytes));
                CHECK(!memcmp(depth_plane, expected_depth, pixel_bytes));
                CHECK(!memcmp(stencil_plane, expected_stencil, stencil_bytes));
                comparisons++;
            }
        }
    }
    c->alpha_test = 1; CHECK(!can_store(c, samples)); c->alpha_test = 0;
    c->stencil_test = 1; CHECK(!can_store(c, samples)); c->stencil_test = 0;
    c->blend = 1; c->blend_src = GL_DST_COLOR; CHECK(!can_store(c, samples));
    c->blend_src = GL_SRC_ALPHA; c->blend_dst = GL_ZERO; CHECK(!can_store(c, samples));
    c->blend = 0;
    c->color_logic_op_enabled = 1; CHECK(!can_store(c, samples)); c->color_logic_op_enabled = 0;
    c->current_query[0] = 1; CHECK(!can_store(c, samples)); c->current_query[0] = 0;
    c->current_query[1] = 1; CHECK(!can_store(c, samples)); c->current_query[1] = 0;
    for (int k = 0; k < 4; k++) {
        c->color_mask[k] = 0; CHECK(!can_store(c, samples)); c->color_mask[k] = 1;
    }
    c->sample_coverage = 1; CHECK(can_store(c, samples) == !samples); c->sample_coverage = 0;
    c->sample_alpha_to_coverage = 1; CHECK(can_store(c, samples) == !samples); c->sample_alpha_to_coverage = 0;
    c->sample_alpha_to_one = 1; CHECK(can_store(c, samples) == !samples); c->sample_alpha_to_one = 0;
    c->fb.samples = samples == 4 ? 2 : 4; CHECK(!can_store(c, samples)); c->fb.samples = samples;
    GLuint textures[4];
    glGenTextures(4, textures);
    const uint8_t white[4] = {255, 255, 255, 255};
    const float constant[4] = {1, 1, 1, .7f};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, u ? GL_MODULATE : GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, u ? GL_PREVIOUS : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, !u ? GL_PRIMARY_COLOR :
                  u == 1 ? GL_PREVIOUS : u == 2 ? GL_TEXTURE : GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_CONSTANT);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
    }
    for (int blend = 0; blend < 5; blend++)
    for (int f = 0; f < 8; f++) for (int variant = 0; variant < 16; variant++) {
        glBlendFunc(blend & 1 ? GL_SRC_ALPHA : GL_ONE,
                    blend <= 2 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA);
        if (blend) glEnable(GL_BLEND); else glDisable(GL_BLEND);
        render_triangles(0, variant, funcs[f]);
        softgl_read_rgba8(c);
        memcpy(expected_color, color_plane, pixel_bytes);
        memcpy(expected_depth, depth_plane, pixel_bytes);
        memcpy(expected_stencil, stencil_plane, stencil_bytes);
        render_triangles(1, variant, funcs[f]);
        softgl_read_rgba8(c);
        CHECK(!memcmp(color_plane, expected_color, pixel_bytes));
        CHECK(!memcmp(depth_plane, expected_depth, pixel_bytes));
        CHECK(!memcmp(stencil_plane, expected_stencil, stencil_bytes));
        CHECK(glGetError() == GL_NO_ERROR);
    }
    glDeleteTextures(4, textures);
    free(original_color); free(expected_color); free(original_depth); free(expected_depth);
    free(original_stencil); free(expected_stencil); softgl_destroy(c);
    printf("%dx: %u exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed\n", samples, comparisons);
    return 0;
}
/* Actual queued draws alternate eligible and general state, recycle slots,
 * and compare every color/depth/stencil plane against a query-forced writer. */
static int render_bin_states(softgl_ctx *c, const float positions[][3], int count, int oracle) {
    softgl_make_current(c);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, c->fb.w, 0, c->fb.h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_ALPHA_TEST); glDisable(GL_STENCIL_TEST); glDisable(GL_BLEND);
    glDisable(GL_COLOR_LOGIC_OP); glDisable(GL_SCISSOR_TEST);
    glDisable(GL_SAMPLE_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE);
    glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glEnable(GL_MULTISAMPLE);
    glColorMask(1, 1, 1, 1); glDepthMask(GL_TRUE);
    glClearColor(.13f, .27f, .41f, .59f); glClearDepth(1); glClearStencil(3);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LEQUAL);
    glEnableClientState(GL_VERTEX_ARRAY); glVertexPointer(3, GL_FLOAT, 0, positions);
    GLuint query = 0;
    if (oracle) { glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query); }
    int queued = 0;
    for (int state = 0; state < 12; state++) {
        if (state == 1) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, .4f); }
        else glDisable(GL_ALPHA_TEST);
        if (state == 3) {
            glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 3, 255);
            glStencilOp(GL_KEEP, GL_KEEP, GL_INCR);
        } else glDisable(GL_STENCIL_TEST);
        if (state == 5) { glEnable(GL_COLOR_LOGIC_OP); glLogicOp(GL_COPY_INVERTED); }
        else glDisable(GL_COLOR_LOGIC_OP);
        glColorMask(1, state != 7, 1, 1);
        if (state & 1) {
            glEnable(GL_BLEND);
            glBlendFunc(state == 9 ? GL_DST_COLOR : GL_SRC_ALPHA,
                        state == 11 ? GL_ONE_MINUS_SRC_ALPHA : GL_ONE);
        } else glDisable(GL_BLEND);
        glDepthMask(state & 1 ? GL_FALSE : GL_TRUE);
        glSampleCoverage(.5f, GL_FALSE);
        if (state == 10) glEnable(GL_SAMPLE_COVERAGE); else glDisable(GL_SAMPLE_COVERAGE);
        if (state == 6) glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); else glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE);
        for (int draw = 0; draw < 6; draw++) {
            glColor4f(.55f + .05f * (draw % 3), .7f, .9f, .25f + .15f * (draw % 4));
            glDrawArrays(GL_TRIANGLES, 0, count);
            if (!oracle && ((sg_worker_pool *)c->workers)->async_pending == 3) queued++;
        }
    }
    if (oracle) { glEndQuery(GL_SAMPLES_PASSED); glDeleteQueries(1, &query); }
    softgl_read_rgba8(c);
    CHECK(!sg_raster_bin);
    sg_worker_pool *pool = c->workers;
    for (int bin = 0; bin < pool->nbins; bin++) CHECK(!pool->bins[bin].common_store);
    CHECK(glGetError() == GL_NO_ERROR);
    CHECK(oracle || queued > 0);
    return 0;
}

static int check_bin_states(int samples, int width, int workers) {
    enum { HEIGHT = 31, COUNT = 1536 };
    softgl_ctx *c = softgl_create_multisample(width, HEIGHT, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c, workers);
    GLuint textures[4]; glGenTextures(4, textures);
    const uint8_t white[4] = {255, 255, 255, 255};
    const float constant[4] = {1, 1, 1, .7f};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, u ? GL_MODULATE : GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, u ? GL_PREVIOUS : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, !u ? GL_PRIMARY_COLOR :
                  u == 1 ? GL_PREVIOUS : u == 2 ? GL_TEXTURE : GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, u == 3 ? GL_CONSTANT : GL_PREVIOUS);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
    }
    glActiveTexture(GL_TEXTURE0);
    float positions[COUNT][3];
    for (int i = 0; i < COUNT / 3; i++) {
        float x = (i % 16) * (width / 16.f), y = (i / 16 % 8) * 3.f;
        positions[i * 3][0] = x; positions[i * 3][1] = y;
        positions[i * 3 + 1][0] = x + 4.75f; positions[i * 3 + 1][1] = y + .25f;
        positions[i * 3 + 2][0] = x + .25f; positions[i * 3 + 2][1] = y + 4.75f;
        for (int v = 0; v < 3; v++) positions[i * 3 + v][2] = -.25f;
    }
    size_t pixels = (size_t)width * HEIGHT, count = samples ? samples : 1;
    size_t color_bytes = pixels * count * 4, stencil_bytes = pixels * count;
    uint8_t *expected_color = malloc(color_bytes), *expected_stencil = malloc(stencil_bytes);
    float *expected_depth = malloc(color_bytes);
    CHECK(expected_color && expected_stencil && expected_depth);
    uint8_t *color = samples ? c->fb.sample_color : c->fb.color;
    float *depth = samples ? c->fb.sample_depth : c->fb.depth;
    uint8_t *stencil = samples ? c->fb.sample_stencil : c->fb.stencil;
    CHECK(!render_bin_states(c, positions, COUNT, 0));
    memcpy(expected_color, color, color_bytes); memcpy(expected_depth, depth, color_bytes);
    memcpy(expected_stencil, stencil, stencil_bytes);
    CHECK(!render_bin_states(c, positions, COUNT, 1));
    CHECK(!memcmp(expected_color, color, color_bytes));
    CHECK(!memcmp(expected_depth, depth, color_bytes));
    CHECK(!memcmp(expected_stencil, stencil, stencil_bytes));
    free(expected_color); free(expected_depth); free(expected_stencil);
    glDeleteTextures(4, textures); softgl_destroy(c);
    printf("bin state: samples=%d width=%d workers=%d, 72 queued state-transition draws exact to query oracle\n",
           samples, width, workers);
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
    CHECK(!check_context(0));
    CHECK(!check_context(2));
    CHECK(!check_context(4));
    puts("262144 exact RGBA quantizations passed");
    const int modes[] = {0, 2, 4}, widths[] = {47, 128}, workers[] = {1, 3, 8};
    for (int m = 0; m < 3; m++) for (int w = 0; w < 2; w++) for (int n = 0; n < 3; n++)
        CHECK(!check_bin_states(modes[m], widths[w], workers[n]));
    return 0;
}

int main(void) { return sg_store_contract(); }
