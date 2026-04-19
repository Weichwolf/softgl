#include "harness.h"

/* Allocate 5 list IDs, delete them, allocate again. The implementation
 * may or may not recycle the IDs — the test just verifies that
 * compile + replay still works through the lifecycle. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    /* First pass: create + delete 5 IDs. */
    GLuint base = glGenLists(5);
    glDeleteLists(base, 5);

    /* Second pass: alloc 1, use it to draw. */
    GLuint l = glGenLists(1);
    glNewList(l, GL_COMPILE);
        glColor3f(0.9f, 0.4f, 0.1f);
        glBegin(GL_TRIANGLES);
            glVertex2f(-0.5f, -0.5f);
            glVertex2f( 0.5f, -0.5f);
            glVertex2f( 0.0f,  0.6f);
        glEnd();
    glEndList();

    glCallList(l);
    glDeleteLists(l, 1);
}
