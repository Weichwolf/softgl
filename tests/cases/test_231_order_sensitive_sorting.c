#include "harness.h"

static void quad(int w, int h, float z) {
    glVertex3f(0.f, 0.f, z); glVertex3f((float)w, 0.f, z);
    glVertex3f((float)w, (float)h, z); glVertex3f(0.f, (float)h, z);
}

/* Core GL 1.5: query counts and read-only depth rendering depend on
 * submission order. Encode the count on the left, final color on the right. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    GLuint query, samples;
    glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query);
    glBegin(GL_QUADS); quad(w, h, -.5f); quad(w, h, .5f); glEnd();
    glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    glDeleteQueries(1, &query);

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); glDepthMask(GL_FALSE);
    glBegin(GL_QUADS);
    glColor3f(1.f, 0.f, 0.f); quad(w, h, -.5f);
    glColor3f(0.f, 1.f, 0.f); quad(w, h, .5f);
    glEnd();
    glDisable(GL_DEPTH_TEST); glDepthMask(GL_TRUE);
    glEnable(GL_SCISSOR_TEST); glScissor(0, 0, w/2, h);
    glClearColor((samples & 255u)/255.f, ((samples >> 8) & 255u)/255.f,
                 ((samples >> 16) & 255u)/255.f, ((samples >> 24) & 255u)/255.f);
    glClear(GL_COLOR_BUFFER_BIT); glDisable(GL_SCISSOR_TEST);
}
