#include "harness.h"

/* Display list uses the matrix stack three levels deep and emits
 * triangles at each level. Replaying the list must balance push/pop
 * so the outer modelview is unchanged afterwards. */

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
        /* Depth 1: translate left, draw a red triangle. */
        glPushMatrix();
            glTranslatef(-0.6f, 0.f, 0.f);
            glColor3f(1.f, 0.f, 0.f);
            glBegin(GL_TRIANGLES);
                glVertex2f(-0.1f, -0.2f);
                glVertex2f( 0.1f, -0.2f);
                glVertex2f( 0.0f,  0.15f);
            glEnd();
            /* Depth 2: another push, scale down, green triangle. */
            glPushMatrix();
                glScalef(0.5f, 0.5f, 1.f);
                glColor3f(0.f, 1.f, 0.f);
                glBegin(GL_TRIANGLES);
                    glVertex2f(-0.1f, -0.2f);
                    glVertex2f( 0.1f, -0.2f);
                    glVertex2f( 0.0f,  0.15f);
                glEnd();
                /* Depth 3: push, translate right, blue triangle. */
                glPushMatrix();
                    glTranslatef(1.2f, 0.f, 0.f);
                    glColor3f(0.f, 0.f, 1.f);
                    glBegin(GL_TRIANGLES);
                        glVertex2f(-0.1f, -0.2f);
                        glVertex2f( 0.1f, -0.2f);
                        glVertex2f( 0.0f,  0.15f);
                    glEnd();
                glPopMatrix();
            glPopMatrix();
        glPopMatrix();
    glEndList();

    glCallList(list);
    glDeleteLists(list, 1);
}
