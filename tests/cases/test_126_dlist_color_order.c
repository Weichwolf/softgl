#include "harness.h"

/* Color state changes within the list must replay in the order they
 * were recorded. We draw three triangles, each preceded by a different
 * glColor3f; the three triangles are visually identifiable by color. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
        glColor3f(1.f, 0.f, 0.f);
        glBegin(GL_TRIANGLES);
            glVertex2f(-0.85f, -0.4f);
            glVertex2f(-0.4f,  -0.4f);
            glVertex2f(-0.6f,   0.1f);
        glEnd();

        glColor3f(0.f, 1.f, 0.f);
        glBegin(GL_TRIANGLES);
            glVertex2f(-0.2f, -0.4f);
            glVertex2f( 0.2f, -0.4f);
            glVertex2f( 0.0f,  0.1f);
        glEnd();

        glColor3f(0.f, 0.f, 1.f);
        glBegin(GL_TRIANGLES);
            glVertex2f( 0.4f, -0.4f);
            glVertex2f( 0.85f,-0.4f);
            glVertex2f( 0.6f,  0.1f);
        glEnd();
    glEndList();

    glCallList(list);
    glDeleteLists(list, 1);
}
