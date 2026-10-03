#include "harness.h"

#define LAYERS 2048
#define QUERIES 6

/* Large single-bin batches exercise query ownership when the calling thread
 * helps drain the pool. Encode all 32 result bits; require exact pixels. */
static void rectangles(void) {
    glBegin(GL_QUADS);
    for (int i = 0; i < LAYERS; i++) {
        glVertex2f(0.f, 0.f); glVertex2f(16.f, 0.f);
        glVertex2f(16.f, 16.f); glVertex2f(0.f, 16.f);
    }
    glEnd();
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_BLEND); glDisable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST); glDisable(GL_ALPHA_TEST);
    glDisable(GL_SCISSOR_TEST);
    glDepthMask(GL_TRUE);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    GLuint query, results[QUERIES];
    glGenQueries(1, &query);
    for (int i = 0; i < QUERIES; i++) {
        if (i == 1) {
            glEnable(GL_SCISSOR_TEST); glScissor(0, 0, 8, 16);
        } else if (i == 2) {
            glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_NEVER, 0.f);
        } else if (i == 3) {
            glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS);
            glDepthMask(GL_FALSE);
        }
        glBeginQuery(GL_SAMPLES_PASSED, query);
        if (i != 5) rectangles();
        if (i == 4) {
            /* This direct fragment must count after the large pool drain. */
            glBegin(GL_POINTS); glVertex2f(.5f, .5f); glEnd();
        }
        glEndQuery(GL_SAMPLES_PASSED);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT, &results[i]);
        glDisable(GL_SCISSOR_TEST); glDisable(GL_ALPHA_TEST);
        glDisable(GL_DEPTH_TEST); glDepthMask(GL_TRUE);
    }
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glEnable(GL_SCISSOR_TEST);
    for (int i = 0; i < QUERIES; i++) {
        GLuint n = results[i];
        glScissor(i*w/QUERIES, 0, (i+1)*w/QUERIES-i*w/QUERIES, h);
        glClearColor((n & 255u)/255.f, ((n >> 8) & 255u)/255.f,
                     ((n >> 16) & 255u)/255.f, ((n >> 24) & 255u)/255.f);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    glDisable(GL_SCISSOR_TEST);
    glDeleteQueries(1, &query);
}
