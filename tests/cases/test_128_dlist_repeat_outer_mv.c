#include "harness.h"

/* The same list called multiple times with different outer MV transforms
 * renders the same geometry at different positions/orientations. */

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
        glColor3f(1.f, 0.8f, 0.2f);
        glBegin(GL_TRIANGLES);
            glVertex2f(-0.1f, -0.1f);
            glVertex2f( 0.1f, -0.1f);
            glVertex2f( 0.0f,  0.15f);
        glEnd();
    glEndList();

    /* Four different outer transforms. */
    glPushMatrix(); glTranslatef(-1.2f, 0.5f, 0.f); glCallList(list); glPopMatrix();
    glPushMatrix(); glTranslatef( 1.2f, 0.5f, 0.f); glRotatef(30.f, 0,0,1); glCallList(list); glPopMatrix();
    glPushMatrix(); glTranslatef(-1.2f,-0.5f, 0.f); glScalef(1.5f,1.5f,1.f); glCallList(list); glPopMatrix();
    glPushMatrix(); glTranslatef( 1.2f,-0.5f, 0.f); glRotatef(180.f,0,0,1); glCallList(list); glPopMatrix();

    glDeleteLists(list, 1);
}
