#include "harness.h"

/* Nested lists: list A records a glCallList(B). Replaying A must in turn
 * replay B. Visual result: the triangle defined in B appears. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint A = glGenLists(1);
    GLuint B = glGenLists(1);

    glNewList(B, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(1.f, 0.6f, 0.1f); glVertex2f(-0.5f, -0.4f);
            glColor3f(0.1f, 0.6f, 1.f); glVertex2f( 0.5f, -0.4f);
            glColor3f(0.6f, 1.f, 0.1f); glVertex2f( 0.0f,  0.5f);
        glEnd();
    glEndList();

    /* A calls B. */
    glNewList(A, GL_COMPILE);
        glCallList(B);
    glEndList();

    glCallList(A);

    glDeleteLists(A, 1);
    glDeleteLists(B, 1);
}
