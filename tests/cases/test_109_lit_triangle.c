#include "harness.h"

/* Immediate-mode triangle with per-vertex normals and a single directional
 * light — exercises glNormal3f + lighting through the immediate path. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_NORMALIZE);
    const float pos[4]  = { 0.3f, 0.3f, 1.f, 0.f };
    const float dif[4]  = { 1.f, 1.f, 1.f, 1.f };
    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  zero);
    const float m_dif[4] = { 0.3f, 0.7f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, m_dif);
    glMaterialfv(GL_FRONT, GL_AMBIENT, zero);

    glBegin(GL_TRIANGLES);
        glNormal3f(-0.6f, -0.5f, 0.6f); glVertex2f(-0.7f, -0.5f);
        glNormal3f( 0.6f, -0.5f, 0.6f); glVertex2f( 0.7f, -0.5f);
        glNormal3f( 0.0f,  0.8f, 0.6f); glVertex2f( 0.0f,  0.6f);
    glEnd();

    glDisable(GL_LIGHTING);
}
