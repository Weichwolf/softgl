#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(expr) do { if (!(expr)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #expr); return 0; \
} } while (0)

enum { W = 31, H = 23 };

static void rect(float x0, float y0, float x1, float y1, float z) {
    glBegin(GL_QUADS);
    glVertex3f(x0, y0, z); glVertex3f(x1, y0, z);
    glVertex3f(x1, y1, z); glVertex3f(x0, y1, z);
    glEnd();
}

static int pixel(softgl_ctx *c, int x, int y, int r, int g, int b) {
    const uint8_t *p = (const uint8_t*)softgl_read_rgba8(c) + (y * W + x) * 4;
    if (p[0] != r || p[1] != g || p[2] != b) {
        fprintf(stderr, "pixel %d,%d: %u,%u,%u expected %d,%d,%d\n", x, y,
                p[0], p[1], p[2], r, g, b);
        return 0;
    }
    return 1;
}

/* Queries select the ordered fragment path. With no other state change,
 * its sample color and depth must match the common packed write path. */
static int check_sample_writes(softgl_ctx *c, int n) {
    const GLenum funcs[] = {GL_NEVER, GL_LESS, GL_EQUAL, GL_LEQUAL,
                            GL_GREATER, GL_NOTEQUAL, GL_GEQUAL, GL_ALWAYS};
    const GLenum sources[] = {GL_ONE, GL_SRC_ALPHA};
    const GLenum dests[] = {GL_ONE, GL_ONE_MINUS_SRC_ALPHA};
    GLuint query;
    glGenQueries(1, &query);
    glEnable(GL_DEPTH_TEST);
    uint32_t random = 17;
    for (int f = 0; f < 8; f++) for (int blend = 0; blend < 5; blend++) {
        glDepthFunc(funcs[f]);
        if (blend) {
            glEnable(GL_BLEND);
            glBlendFunc(sources[(blend-1)/2], dests[(blend-1)%2]);
        } else glDisable(GL_BLEND);
        for (unsigned coverage = 1; coverage < (1u << n); coverage++) {
            for (int iteration = 0; iteration < 32; iteration++) {
                for (int boundary = 0; boundary < 2; boundary++) {
                    int x = boundary ? W - 1 : 7;
                    int y = boundary ? H - 1 : 3;
                    size_t first = ((size_t)y * W + x) * n;
                    uint8_t initial[16], expected[16];
                    float old_depth[4], expected_depth[4], z[4], color[4];
                    for (int i = 0; i < 16; i++) {
                        random = random * 1664525u + 1013904223u;
                        initial[i] = (uint8_t)(random >> 24);
                    }
                    for (int s = 0; s < 4; s++) {
                        color[s] = initial[s] * (1.f / 255.f);
                        old_depth[s] = (s + 1) * .2f;
                        z[s] = iteration % 2 ? old_depth[s] : (4 - s) * .2f;
                    }
                    glDepthMask(iteration % 3 ? GL_TRUE : GL_FALSE);
                    memcpy(c->fb.sample_color + first * 4, initial, n * 4);
                    memcpy(c->fb.sample_depth + first, old_depth, n * sizeof(float));
                    sg_write_multisample(c, x, y, coverage, z, color);
                    memcpy(expected, c->fb.sample_color + first * 4, n * 4);
                    memcpy(expected_depth, c->fb.sample_depth + first, n * sizeof(float));
                    memcpy(c->fb.sample_color + first * 4, initial, n * 4);
                    memcpy(c->fb.sample_depth + first, old_depth, n * sizeof(float));
                    glBeginQuery(GL_SAMPLES_PASSED, query);
                    sg_write_multisample(c, x, y, coverage, z, color);
                    glEndQuery(GL_SAMPLES_PASSED);
                    CHECK(!memcmp(expected, c->fb.sample_color + first * 4, n * 4));
                    CHECK(!memcmp(expected_depth, c->fb.sample_depth + first, n * sizeof(float)));
                }
            }
        }
    }
    glDeleteQueries(1, &query);
    glDisable(GL_BLEND); glBlendFunc(GL_ONE, GL_ZERO);
    glDisable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    return 1;
}

/* Every byte pair in every RGBA channel; odd dimensions also exercise the
 * scalar tail and sample-zero depth/stencil readback. */
static int check_two_sample_means(softgl_ctx *c) {
    for (unsigned base = 0; base < 65536; base += W * H) {
        for (int i = 0; i < W * H; i++) {
            unsigned pair = (base + (unsigned)i) & 65535u;
            for (int k = 0; k < 4; k++) {
                c->fb.sample_color[i * 8 + k] = (uint8_t)((pair & 255u) ^ (k * 51));
                c->fb.sample_color[i * 8 + 4 + k] = (uint8_t)((pair >> 8) ^ (k * 73));
            }
            c->fb.sample_depth[i * 2] = (float)i * (1.f / 1024.f);
            c->fb.sample_depth[i * 2 + 1] = 1.f;
            c->fb.sample_stencil[i * 2] = (uint8_t)i;
            c->fb.sample_stencil[i * 2 + 1] = (uint8_t)~i;
        }
        const uint8_t *image = softgl_read_rgba8(c);
        for (int i = 0; i < W * H; i++) {
            for (int k = 0; k < 4; k++) {
                unsigned a = c->fb.sample_color[i * 8 + k];
                unsigned b = c->fb.sample_color[i * 8 + 4 + k];
                CHECK(image[i * 4 + k] == (a + b + 1u) / 2u);
            }
            CHECK(c->fb.depth[i] == c->fb.sample_depth[i * 2]);
            CHECK(c->fb.stencil[i] == (uint8_t)i);
        }
    }
    return 1;
}

static int check_resolve(softgl_ctx *c, int n) {
    for (int i = 0; i < W * H; i++) for (int s = 0; s < n; s++) {
        for (int k = 0; k < 4; k++)
            c->fb.sample_color[(i*n+s)*4+k] = (uint8_t)(i*73+s*51+k*37);
        c->fb.sample_depth[i*n+s] = (s+1) * .2f;
        c->fb.sample_stencil[i*n+s] = (uint8_t)(i+s);
    }
    const uint8_t *image = softgl_read_rgba8(c);
    for (int i = 0; i < W * H; i++) {
        for (int k = 0; k < 4; k++) {
            unsigned sum = 0;
            for (int s = 0; s < n; s++) sum += (uint8_t)(i*73+s*51+k*37);
            CHECK(image[i*4+k] == (sum+n/2)/(unsigned)n);
        }
        CHECK(c->fb.depth[i] == .2f);
        CHECK(c->fb.stencil[i] == (uint8_t)i);
    }
    return 1;
}

static int check_masked_clear(softgl_ctx *c, int n) {
    for (int i = 0; i < W * H * n; i++) {
        for (int k = 0; k < 4; k++) c->fb.sample_color[i*4+k] = (uint8_t)((k+1)*51);
        c->fb.sample_depth[i] = 1.f;
        c->fb.sample_stencil[i] = 0x96;
    }
    glEnable(GL_SCISSOR_TEST); glScissor(2, 3, 7, 5);
    glColorMask(GL_FALSE, GL_TRUE, GL_FALSE, GL_TRUE);
    glStencilMask(0x5a); glClearStencil(0xc3);
    glClearColor(.7f, .1f, .8f, .3f); glClearDepth(.25f);
    glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(0.f, GL_FALSE);
    glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); glEnable(GL_SAMPLE_ALPHA_TO_ONE);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    for (int y = 0; y < H; y++) for (int x = 0; x < W; x++) for (int s = 0; s < n; s++) {
        int inside = x >= 2 && x < 9 && y >= 3 && y < 8;
        size_t i = ((size_t)y * W + x) * n + s;
        const uint8_t *color = c->fb.sample_color + i * 4;
        CHECK(color[0] == 51 && color[2] == 153);
        CHECK(color[1] == (inside ? 26 : 102));
        CHECK(color[3] == (inside ? 77 : 204));
        CHECK(c->fb.sample_depth[i] == (inside ? .25f : 1.f));
        CHECK(c->fb.sample_stencil[i] == (inside ? 0xc6 : 0x96));
    }
    glDisable(GL_SCISSOR_TEST); glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glStencilMask(255); glClearStencil(0); glClearDepth(1.f);
    glDisable(GL_SAMPLE_COVERAGE); glSampleCoverage(1.f, GL_FALSE);
    glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE);
    return 1;
}

static int check_context(int n, int workers) {
    softgl_ctx *c = softgl_create_multisample(W, H, n); CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    if (workers) sg_workers_init(c, workers);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, W, 0, H, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    CHECK(check_sample_writes(c, n));
    CHECK(check_resolve(c, n));
    if (n == 2) CHECK(check_two_sample_means(c));
    CHECK(check_masked_clear(c, n));
    GLint count, buffers;
    glGetIntegerv(GL_SAMPLES, &count); glGetIntegerv(GL_SAMPLE_BUFFERS, &buffers);
    CHECK(count == n && buffers == 1 && glIsEnabled(GL_MULTISAMPLE));
    glClearColor(0, 0, 0, 1); glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glColor4f(1, 1, 1, 1); rect(.5f, 0, W, H, 0);
    CHECK(pixel(c, 0, 4, 128, 128, 128)); CHECK(pixel(c, 1, 4, 255, 255, 255));

    /* A tiny box covers a real sample while missing the pixel center. */
    glClear(GL_COLOR_BUFFER_BIT);
    if (n == 4) rect(.0625f, .5625f, .1875f, .6875f, 0);
    else rect(.1875f, .1875f, .3125f, .3125f, 0);
    CHECK(pixel(c, 0, 0, n == 4 ? 64 : 128, n == 4 ? 64 : 128, n == 4 ? 64 : 128));

    /* Adjacent triangles share their edge exactly once, including blending. */
    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_BLEND); glBlendFunc(GL_ONE, GL_ONE); glColor4f(.25f, .25f, .25f, 0);
    GLuint q, passed; glGenQueries(1, &q); glBeginQuery(GL_SAMPLES_PASSED, q);
    glBegin(GL_TRIANGLES);
    glVertex2f(0, 0); glVertex2f(W, 0); glVertex2f(W, H);
    glVertex2f(0, 0); glVertex2f(W, H); glVertex2f(0, H);
    glEnd(); glEndQuery(GL_SAMPLES_PASSED); glGetQueryObjectuiv(q, GL_QUERY_RESULT, &passed);
    CHECK(passed == (GLuint)(W * H * n));
    const uint8_t *image = softgl_read_rgba8(c);
    for (int i = 0; i < W * H; i++) CHECK(image[i*4] == 64);
    glDisable(GL_BLEND);

    /* Per-sample depth preserves differently colored halves of a pixel. */
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glColor4f(1, 0, 0, 1); rect(0, 0, .5f, H, .5f);
    glColor4f(0, 0, 1, 1); rect(.5f, 0, W, H, .5f);
    glColor4f(0, 1, 0, 1); glBeginQuery(GL_SAMPLES_PASSED, q);
    rect(0, 0, W, H, 0); glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(q, GL_QUERY_RESULT, &passed); CHECK(passed == 0);
    CHECK(pixel(c, 0, 3, 128, 0, 128));
    glDisable(GL_DEPTH_TEST);

    /* Multisample controls have no effect on clear; they apply before alpha. */
    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(.5f, GL_FALSE);
    glColor4f(1, 1, 1, 1); rect(0, 0, W, H, 0);
    CHECK(pixel(c, 4, 5, 128, 128, 128));
    glSampleCoverage(.5f, GL_TRUE); glColor4f(1, 0, 0, 1); rect(0, 0, W, H, 0);
    CHECK(pixel(c, 4, 5, 255, 128, 128));
    glSampleCoverage(0, GL_FALSE); glColor4f(0, 0, 1, 1); rect(0, 0, W, H, 0);
    CHECK(pixel(c, 4, 5, 255, 128, 128));
    glDisable(GL_SAMPLE_COVERAGE);
    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); glEnable(GL_SAMPLE_ALPHA_TO_ONE);
    glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, .75f);
    glColor4f(1, 1, 1, .5f); rect(0, 0, W, H, 0);
    CHECK(pixel(c, 4, 5, 128, 128, 128));
    image = softgl_read_rgba8(c); CHECK(image[(5*W+4)*4+3] == 255);
    glDisable(GL_ALPHA_TEST); glDisable(GL_SAMPLE_ALPHA_TO_ONE); glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE);

    /* Stencil and masks apply independently to every covered sample. */
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 1, 255); glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE); rect(0, 0, .5f, H, 0);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE); glStencilFunc(GL_EQUAL, 1, 255);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP); glColor4f(1, 1, 1, 1); rect(0, 0, W, H, 0);
    CHECK(pixel(c, 0, 3, 128, 128, 128)); CHECK(pixel(c, 1, 3, 0, 0, 0));
    glDisable(GL_STENCIL_TEST);
    glColorMask(GL_FALSE, GL_TRUE, GL_FALSE, GL_FALSE); glClearColor(1, 1, 1, 1); glClear(GL_COLOR_BUFFER_BIT);
    CHECK(pixel(c, 0, 3, 128, 255, 128));
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE); glClearColor(0, 0, 0, 1);
    float saved_depth[W*H*4];
    memcpy(saved_depth, c->fb.sample_depth, (size_t)W*H*n*sizeof(float));
    glClearDepth(.25); glDepthMask(GL_FALSE); glClear(GL_DEPTH_BUFFER_BIT);
    CHECK(!memcmp(saved_depth, c->fb.sample_depth, (size_t)W*H*n*sizeof(float)));
    glDepthMask(GL_TRUE); glClearDepth(1); glClear(GL_DEPTH_BUFFER_BIT);
    for (int i = 0; i < W*H*n; i++) CHECK(c->fb.sample_depth[i] == 1.f);

    /* Disabling multisampling restores pixel-center coverage to all samples. */
    glClear(GL_COLOR_BUFFER_BIT); glDisable(GL_MULTISAMPLE); glColor4f(1, 1, 1, 1);
    rect(.75f, 0, W, H, 0); CHECK(pixel(c, 0, 3, 0, 0, 0)); CHECK(pixel(c, 1, 3, 255, 255, 255));
    glEnable(GL_MULTISAMPLE);
    glClear(GL_COLOR_BUFFER_BIT); glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glColor4f(1, 1, 1, .5f); rect(0, 0, .5f, H, 0); CHECK(pixel(c, 0, 3, 64, 64, 64));
    glDisable(GL_BLEND);

    /* Fractional pixel rectangles use sample coverage, including negative zoom. */
    glClear(GL_COLOR_BUFFER_BIT); glRasterPos2f(.5f, 1.f);
    const uint8_t white[4] = {255,255,255,255}; glDrawPixels(1, 1, GL_RGBA, GL_UNSIGNED_BYTE, white);
    CHECK(pixel(c, 0, 1, 128, 128, 128)); CHECK(pixel(c, 1, 1, 128, 128, 128));
    glClear(GL_COLOR_BUFFER_BIT); glPixelZoom(-1, 1); glRasterPos2f(1.5f, 1.f);
    glDrawPixels(1, 1, GL_RGBA, GL_UNSIGNED_BYTE, white);
    CHECK(pixel(c, 0, 1, 128, 128, 128)); CHECK(pixel(c, 1, 1, 128, 128, 128));
    glPixelZoom(1, 1);

    /* Lines and round points have actual partial coverage. */
    glClear(GL_COLOR_BUFFER_BIT); glColor4f(1, 1, 1, 1); glLineWidth(1);
    glBegin(GL_LINES); glVertex2f(0, .5f); glVertex2f(W, H-.5f); glEnd();
    image = softgl_read_rgba8(c); int partial = 0;
    for (int i = 0; i < W*H; i++) partial += image[i*4] > 0 && image[i*4] < 255;
    CHECK(partial > 0);
    glClear(GL_COLOR_BUFFER_BIT); glPointSize(3); glBegin(GL_POINTS); glVertex2f(4.5f, 4.5f); glEnd();
    CHECK(pixel(c, 4, 4, 255, 255, 255)); CHECK(pixel(c, 2, 2, 0, 0, 0));
    CHECK(glGetError() == GL_NO_ERROR);
    glDeleteQueries(1, &q); softgl_destroy(c);
    return 1;
}

int main(void) {
    if (softgl_create_multisample(W, H, 3) || softgl_create_multisample(0, H, 4)) return 1;
    const int counts[] = {0, 1, 3, 8};
    for (int n = 2; n <= 4; n += 2) for (int i = 0; i < 4; i++)
        if (!check_context(n, counts[i])) return 1;
    puts("Multisample contracts: 2x/4x, direct + 1/3/8 workers passed");
    return 0;
}
