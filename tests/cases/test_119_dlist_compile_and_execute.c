#include "harness.h"

/* GL_COMPILE_AND_EXECUTE records into the list AND runs immediately.
 * So one glNewList(...GL_COMPILE_AND_EXECUTE) recording draws once, and
 * a subsequent glCallList replays the same thing on top. Visual result:
 * two identical triangles, with the second replay laid over the first. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.05f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint list = glGenLists(1);
    glPushMatrix();
        glTranslatef(-0.4f, 0.f, 0.f);
        glNewList(list, GL_COMPILE_AND_EXECUTE);
            /* Drawn once immediately at translate(-0.4, 0). */
            glBegin(GL_TRIANGLES);
                glColor3f(0.9f, 0.3f, 0.3f); glVertex2f(-0.2f, -0.2f);
                glColor3f(0.3f, 0.9f, 0.3f); glVertex2f( 0.2f, -0.2f);
                glColor3f(0.3f, 0.3f, 0.9f); glVertex2f( 0.0f,  0.25f);
            glEnd();
        glEndList();
    glPopMatrix();

    /* Replay at a different outer position. */
    glPushMatrix();
        glTranslatef( 0.4f, 0.f, 0.f);
        glCallList(list);
    glPopMatrix();

    glDeleteLists(list, 1);
}
