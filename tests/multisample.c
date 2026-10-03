#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(expr) do { if (!(expr)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #expr); return 0; \
} } while (0)

enum { W = 32, H = 24 };

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

static int check_context(int n, int workers) {
    softgl_ctx *c = softgl_create_multisample(W, H, n); CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    if (workers) sg_workers_init(c, workers);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, W, 0, H, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
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
