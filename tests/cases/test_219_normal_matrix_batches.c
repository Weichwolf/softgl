#include "harness.h"

/* Alternate array and immediate draws across differently scaled/rotated
 * modelview matrices. A cached normal matrix must follow each new batch. */
void run_test(int w, int h) {
    static const float positions[] = {-0.35f, -0.35f, 0, 0.35f, -0.35f, 0, 0, 0.35f, 0};
    const float light[] = {0.4f, 0.6f, 1.f, 0.f};
    const float diffuse[] = {1.f, 0.8f, 0.6f, 1.f};
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -2, 2);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glLightfv(GL_LIGHT0, GL_POSITION, light);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_NORMALIZE);
    glNormal3f(0.3f, 0.4f, 1.f);
    glVertexPointer(3, GL_FLOAT, 0, positions);

    for (int i = 0; i < 4; i++) {
        glLoadIdentity();
        glTranslatef((i & 1) ? 0.5f : -0.5f, (i & 2) ? 0.5f : -0.5f, 0.f);
        glRotatef((float)i * 25.f, 0.f, 1.f, 0.f);
        glScalef(1.f, 0.8f, 0.4f + (float)i * 0.4f);
        if ((i & 1) == 0) {
            glEnableClientState(GL_VERTEX_ARRAY);
            glDrawArrays(GL_TRIANGLES, 0, 3);
            glDisableClientState(GL_VERTEX_ARRAY);
        } else {
            glBegin(GL_TRIANGLES);
            glVertex3fv(positions);
            glVertex3fv(positions + 3);
            glVertex3fv(positions + 6);
            glEnd();
        }
    }
}
