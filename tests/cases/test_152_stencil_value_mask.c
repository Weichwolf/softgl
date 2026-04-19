#include "harness.h"

/* glStencilFunc value_mask: compare only low 4 bits. Setup writes stencil=0xA5
 * in a diamond; upper nibble 0xA, lower nibble 0x5. Second pass tests EQUAL
 * with ref=0xF5 and value_mask=0x0F → only low nibble compared → matches 0xA5
 * (both have low nibble 5). */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.1f, 0.05f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Pass 1: stamp 0xA5 in a diamond. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0xA5, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f( 0.f,  0.5f);
        glVertex2f(-0.5f, 0.f);
        glVertex2f( 0.5f, 0.f);
        glVertex2f( 0.5f, 0.f);
        glVertex2f(-0.5f, 0.f);
        glVertex2f( 0.f, -0.5f);
    glEnd();

    /* Pass 2: EQUAL ref=0xF5 with value_mask=0x0F. Low nibble of 0xA5 is 5 =
     * low nibble of 0xF5 → diamond draws. Non-diamond pixels have stencil 0
     * (low nibble 0) → don't match. */
    glStencilFunc(GL_EQUAL, 0xF5, 0x0F);
    glColor3f(0.9f, 0.7f, 0.2f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.9f, -0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f( 0.9f,  0.9f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
