#include "harness.h"

/* Compile a single colored triangle into a list, then replay it. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(1.f, 0.2f, 0.2f); glVertex2f(-0.6f, -0.5f);
            glColor3f(0.2f, 1.f, 0.2f); glVertex2f( 0.6f, -0.5f);
            glColor3f(0.2f, 0.2f, 1.f); glVertex2f( 0.0f,  0.6f);
        glEnd();
    glEndList();

    glCallList(list);
    glDeleteLists(list, 1);
}
