#include "harness.h"

/* Compile a small triangle into a list, then replay it three times with
 * different outer glTranslatef positions. Each call draws the same shape
 * shifted. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(1.f, 1.f, 0.3f); glVertex2f(-0.15f, -0.15f);
            glColor3f(0.3f, 1.f, 1.f); glVertex2f( 0.15f, -0.15f);
            glColor3f(1.f, 0.3f, 1.f); glVertex2f( 0.0f,   0.2f);
        glEnd();
    glEndList();

    glPushMatrix();
        glTranslatef(-1.0f, 0.f, 0.f);
        glCallList(list);
    glPopMatrix();

    glPushMatrix();
        glTranslatef( 0.0f, 0.4f, 0.f);
        glCallList(list);
    glPopMatrix();

    glPushMatrix();
        glTranslatef( 1.0f, -0.3f, 0.f);
        glCallList(list);
    glPopMatrix();

    glDeleteLists(list, 1);
}
