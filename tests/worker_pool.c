#include <GL/softgl.h>
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>

#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "line %d: %s\n", __LINE__, #condition); exit(1); } } while (0)

static void quad(int w, int h) {
    glBegin(GL_QUADS);
    glVertex2f(0.f, 0.f); glVertex2f((float)w, 0.f);
    glVertex2f((float)w, (float)h); glVertex2f(0.f, (float)h);
    glEnd();
}

static void depth_quad(int w, int h, float z) {
    glVertex3f(0.f, 0.f, z); glVertex3f((float)w, 0.f, z);
    glVertex3f((float)w, (float)h, z); glVertex3f(0.f, (float)h, z);
}

static void check_frame(int w, int h, int workers) {
    softgl_ctx *c = softgl_create(w, h); CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    CHECK(sg_thread_count(c) == workers);
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glClearColor(0.f, 0.f, 0.f, 1.f); glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_BLEND); glBlendFunc(GL_ONE, GL_ONE);
    glColor4f(1.f/255.f, 2.f/255.f, 3.f/255.f, 0.f);
    GLuint query, samples;
    glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query);
    for (int layer = 0; layer < 12; layer++) quad(w, h);
    glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(12*w*h));
    const uint8_t *rgba = softgl_read_rgba8(c);
    for (int i = 0; i < w*h; i++) {
        CHECK(rgba[i*4] == 12 && rgba[i*4+1] == 24);
        CHECK(rgba[i*4+2] == 36 && rgba[i*4+3] == 255);
    }
    /* Two partial flushes reuse the query and change which regions work.
     * Color masking must not suppress counts or retain stale bin counters. */
    glDisable(GL_BLEND); glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glEnable(GL_SCISSOR_TEST);
    int cw = w/2 ? w/2 : 1, ch = h/2 ? h/2 : 1;
    glBeginQuery(GL_SAMPLES_PASSED, query);
    glScissor(0, 0, cw, ch); quad(w, h);
    glScissor(w-cw, h-ch, cw, ch); quad(w, h);
    glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(2*cw*ch));
    /* Back-to-front submission lets both surfaces pass the depth test.
     * Reordering them would incorrectly halve the query result. */
    glDisable(GL_SCISSOR_TEST);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBeginQuery(GL_SAMPLES_PASSED, query);
    glBegin(GL_QUADS);
    depth_quad(w, h, -.5f); depth_quad(w, h, .5f);
    glEnd(); glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(2*w*h));
    /* Without depth writes, the last submitted surface supplies the color. */
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glDepthMask(GL_FALSE);
    glBegin(GL_QUADS);
    glColor3f(1.f, 0.f, 0.f); depth_quad(w, h, -.5f);
    glColor3f(0.f, 1.f, 0.f); depth_quad(w, h, .5f);
    glEnd();
    rgba = softgl_read_rgba8(c);
    for (int i = 0; i < w*h; i++)
        CHECK(rgba[i*4] == 0 && rgba[i*4+1] == 255 && rgba[i*4+2] == 0);
    CHECK(glGetError() == GL_NO_ERROR);
    glDeleteQueries(1, &query); softgl_destroy(c);
}

int main(void) {
    const int widths[] = {1, 2, 3, 15, 31, 32, 33, 65, 641};
    const int workers[] = {1, 3, SG_MAX_TILES};
    for (unsigned i = 0; i < sizeof(workers)/sizeof(workers[0]); i++)
        for (unsigned j = 0; j < sizeof(widths)/sizeof(widths[0]); j++)
            check_frame(widths[j], j%2 ? 17 : 35, workers[i]);
    puts("Worker pool: odd/tiny widths, exact pixels, queries and depth-order contracts passed");
    return 0;
}
