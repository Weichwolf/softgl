#include "harness.h"

/* Phase 9 / ARB_occlusion_query2 — GL_ANY_SAMPLES_PASSED.
 *
 * Query #1 is scoped around a quad drawn entirely OUTSIDE the viewport
 * (scissor discards every fragment) — result must be 0.
 *
 * Query #2 is scoped around a visible quad — result must be 1.
 *
 * We encode the two booleans as (result1, result2) into R and G channels
 * and then clear-fill the framebuffer so the reference and softgl images
 * are byte-identical when — and only when — both query results agree
 * with the reference. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    GLuint qs[2] = {0, 0};
    glGenQueries(2, qs);

    /* --- Query 1: all fragments clipped by scissor -> no samples. --- */
    glEnable(GL_SCISSOR_TEST);
    glScissor(0, 0, 1, 1);  /* tiny visible area, far from the drawn quad */
    glBeginQuery(GL_ANY_SAMPLES_PASSED, qs[0]);
    glColor4f(1.f, 1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glVertex2f(-0.9f, 0.5f);   /* all pixels lie in y > 0 (scissor excludes) */
        glVertex2f(-0.5f, 0.5f);
        glVertex2f(-0.5f, 0.9f);
        glVertex2f(-0.9f, 0.9f);
    glEnd();
    glEndQuery(GL_ANY_SAMPLES_PASSED);
    glDisable(GL_SCISSOR_TEST);

    /* --- Query 2: visible quad -> samples pass. --- */
    glBeginQuery(GL_ANY_SAMPLES_PASSED, qs[1]);
    glBegin(GL_QUADS);
        glVertex2f(-0.5f, -0.5f);
        glVertex2f( 0.5f, -0.5f);
        glVertex2f( 0.5f,  0.5f);
        glVertex2f(-0.5f,  0.5f);
    glEnd();
    glEndQuery(GL_ANY_SAMPLES_PASSED);

    GLuint r1 = 0, r2 = 0;
    glGetQueryObjectuiv(qs[0], GL_QUERY_RESULT, &r1);
    glGetQueryObjectuiv(qs[1], GL_QUERY_RESULT, &r2);

    /* Encode both booleans deterministically. */
    GLfloat rch = r1 ? 1.f : 0.f;
    GLfloat gch = r2 ? 1.f : 0.f;
    glClearColor(rch, gch, 0.5f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glDeleteQueries(2, qs);
}
