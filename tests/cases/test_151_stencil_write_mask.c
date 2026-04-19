#include "harness.h"

/* glStencilMask: only certain bits of the stencil are writable. Setup:
 *   1. clear stencil to 0xF0 (upper nibble = 1111)
 *   2. write mask = 0x0F: only low 4 bits can change
 *   3. pass 1: ALWAYS/REPLACE ref=0xAA inside a quad → those pixels get
 *      (upper nibble kept from clear = 0xF0) | (low = 0x0A) = 0xFA
 *   4. pass 2: verify by testing EQUAL against 0xFA (whole value) and drawing. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.15f, 1.f);
    glClearStencil(0xF0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_STENCIL_TEST);
    glStencilMask(0x0F);                       /* only low nibble writable */
    glStencilFunc(GL_ALWAYS, 0xAA, 0xFF);       /* ref low nibble = 0xA */
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);

    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.6f, -0.4f);
        glVertex2f( 0.6f, -0.4f);
        glVertex2f(-0.6f,  0.4f);
        glVertex2f(-0.6f,  0.4f);
        glVertex2f( 0.6f, -0.4f);
        glVertex2f( 0.6f,  0.4f);
    glEnd();

    /* Verify: EQUAL ref=0xFA, mask=0xFF matches only where (cleared upper 0xF0
     * preserved) | (low nibble replaced to 0x0A) = 0xFA. Non-quad pixels are
     * still 0xF0, so they won't match. */
    glStencilMask(0xFF);
    glStencilFunc(GL_EQUAL, 0xFA, 0xFF);
    glColor3f(0.2f, 0.9f, 0.3f);
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
