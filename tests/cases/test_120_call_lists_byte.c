#include "harness.h"

/* glCallLists(3, GL_UNSIGNED_BYTE, {1,2,3}) with glListBase(base) should
 * replay lists base+1, base+2, base+3. We compile three different triangle
 * colors into three consecutive list ids and verify via glCallLists. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint base = glGenLists(3);

    /* Each list draws a colored triangle at a specific x. */
    glNewList(base + 0, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(1.f, 0.2f, 0.2f);
            glVertex2f(-0.9f, -0.2f);
            glVertex2f(-0.5f, -0.2f);
            glVertex2f(-0.7f,  0.2f);
        glEnd();
    glEndList();

    glNewList(base + 1, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(0.2f, 1.f, 0.2f);
            glVertex2f(-0.2f, -0.2f);
            glVertex2f( 0.2f, -0.2f);
            glVertex2f( 0.0f,  0.2f);
        glEnd();
    glEndList();

    glNewList(base + 2, GL_COMPILE);
        glBegin(GL_TRIANGLES);
            glColor3f(0.2f, 0.2f, 1.f);
            glVertex2f( 0.5f, -0.2f);
            glVertex2f( 0.9f, -0.2f);
            glVertex2f( 0.7f,  0.2f);
        glEnd();
    glEndList();

    /* ListBase = base - 1 so that indices 1..3 map to the three lists. */
    glListBase(base - 1);
    const GLubyte idx[3] = { 1, 2, 3 };
    glCallLists(3, GL_UNSIGNED_BYTE, idx);
    glListBase(0);

    glDeleteLists(base, 3);
}
