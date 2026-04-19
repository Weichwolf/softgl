#include "harness.h"

/* Stencil-masked "window" portal: interior wall in warm color, window
 * rectangle stamps stencil=1 (with color writes disabled), then:
 *   - distant "garden" scene rendered only where stencil==1
 *   - semi-transparent blue glass tint blended over the entire window. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.12f, 0.08f, 0.05f, 1.f);  /* dim interior */
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Wall (entire screen). */
    glColor3f(0.4f, 0.25f, 0.15f);
    glBegin(GL_QUADS);
        glVertex2f(-aspect, -1); glVertex2f(aspect, -1);
        glVertex2f( aspect,  1); glVertex2f(-aspect, 1);
    glEnd();

    /* Pass 1: stamp stencil = 1 in window area, without touching color. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glBegin(GL_QUADS);
        glVertex2f(-0.5f, -0.5f); glVertex2f( 0.5f, -0.5f);
        glVertex2f( 0.5f,  0.6f); glVertex2f(-0.5f, 0.6f);
    glEnd();
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);

    /* Pass 2: garden scene (sky + grass + a "tree" square), only in window. */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);

    /* Sky (upper) + grass (lower). */
    glBegin(GL_QUADS);
        glColor3f(0.45f, 0.7f, 0.95f);
        glVertex2f(-aspect, 0.f); glVertex2f(aspect, 0.f);
        glColor3f(0.25f, 0.5f, 0.9f);
        glVertex2f( aspect, 1.f); glVertex2f(-aspect, 1.f);
    glEnd();
    glBegin(GL_QUADS);
        glColor3f(0.35f, 0.6f, 0.3f);
        glVertex2f(-aspect, -1.f); glVertex2f(aspect, -1.f);
        glColor3f(0.5f, 0.75f, 0.4f);
        glVertex2f( aspect,  0.f); glVertex2f(-aspect, 0.f);
    glEnd();
    /* Tree silhouette. */
    glColor3f(0.15f, 0.3f, 0.1f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.1f, -0.1f); glVertex2f( 0.1f, -0.1f); glVertex2f( 0.f, 0.3f);
        glVertex2f(-0.15f, -0.3f); glVertex2f( 0.15f, -0.3f); glVertex2f( 0.f, 0.0f);
    glEnd();
    glColor3f(0.25f, 0.15f, 0.08f);
    glBegin(GL_QUADS);
        glVertex2f(-0.03f, -0.5f); glVertex2f( 0.03f, -0.5f);
        glVertex2f( 0.03f, -0.3f); glVertex2f(-0.03f, -0.3f);
    glEnd();

    /* Pass 3: blue glass tint over the window (still stencil==1). */
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glColor4f(0.3f, 0.5f, 0.8f, 0.3f);
    glBegin(GL_QUADS);
        glVertex2f(-0.5f, -0.5f); glVertex2f( 0.5f, -0.5f);
        glVertex2f( 0.5f,  0.6f); glVertex2f(-0.5f, 0.6f);
    glEnd();
    glDisable(GL_BLEND);

    glDisable(GL_STENCIL_TEST);
}
