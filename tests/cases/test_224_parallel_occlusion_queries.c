#include "harness.h"

/* Encode each query's complete 32-bit result into an exact-color panel.
 * Cover parallel bins, repeated flushes, direct points, rejected fragments,
 * masked/logic-op writes and query reuse; no raster tolerance can hide counts. */
static void quad(int w, int h) {
    glVertex2f(0.f, 0.f);
    glVertex2f((float)w, 0.f);
    glVertex2f((float)w, (float)h);
    glVertex2f(0.f, (float)h);
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glColor4f(1.f, 1.f, 1.f, 1.f);

    GLuint queries[2], results[12];
    glGenQueries(2, queries);
    for (int i = 0; i < 12; i++) {
        GLenum target = (i == 8 || i == 9) ? GL_ANY_SAMPLES_PASSED : GL_SAMPLES_PASSED;
        GLuint query = queries[target == GL_ANY_SAMPLES_PASSED];
        if (i == 2) {
            glEnable(GL_DEPTH_TEST);
            glDepthFunc(GL_LESS);
        }
        if (i == 3 || i == 9) {
            glEnable(GL_ALPHA_TEST);
            glAlphaFunc(GL_NEVER, 0.f);
        }
        if (i == 4) {
            glEnable(GL_SCISSOR_TEST);
            glScissor(w / 4, h / 4, w / 2, h / 2);
        }
        if (i == 5 || i == 8) {
            glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
            glEnable(GL_COLOR_LOGIC_OP);
            glLogicOp(GL_NOOP);
        }
        if (i == 7) {
            glEnable(GL_STENCIL_TEST);
            glStencilFunc(GL_NEVER, 0, ~0u);
        }

        glBeginQuery(target, query);
        if (i != 10) {
            glBegin(GL_QUADS);
            int layers = i == 1 ? 8 : i == 2 ? 2 : 1;
            for (int layer = 0; layer < layers; layer++) quad(w, h);
            glEnd();
        }
        if (i == 6) {
            glBegin(GL_POINTS);
            glVertex2f(w / 4.f + .5f, h / 4.f + .5f);
            glEnd();
        }
        if (i == 11) {
            glEnable(GL_SCISSOR_TEST);
            glScissor(0, 0, w / 2, h);
            glBegin(GL_QUADS);
            quad(w, h);
            glEnd();
            glScissor(w / 2, 0, w - w / 2, h);
            glBegin(GL_QUADS);
            quad(w, h);
            glEnd();
        }
        glEndQuery(target);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT, &results[i]);
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_ALPHA_TEST);
        glDisable(GL_SCISSOR_TEST);
        glDisable(GL_STENCIL_TEST);
        glDisable(GL_COLOR_LOGIC_OP);
        glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    }

    glEnable(GL_SCISSOR_TEST);
    for (int i = 0; i < 12; i++) {
        GLuint n = results[i];
        glScissor(i * w / 12, 0, (i + 1) * w / 12 - i * w / 12, h);
        glClearColor((n & 255u) / 255.f, ((n >> 8) & 255u) / 255.f,
                     ((n >> 16) & 255u) / 255.f, ((n >> 24) & 255u) / 255.f);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    glDisable(GL_SCISSOR_TEST);
    glDeleteQueries(2, queries);
}
