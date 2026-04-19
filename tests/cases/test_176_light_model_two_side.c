#include "harness.h"

/* GL_LIGHT_MODEL_TWO_SIDE: back-facing triangle is lit with the back material.
 * Two triangles with opposite winding share a screen area; with two-side
 * lighting the back-facing one is cyan (per back material) rather than
 * dark (which is what single-side would show). */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    const float pos[4]  = { 0.f, 0.f, 1.f, 0.f };
    const float dif[4]  = { 1.f, 1.f, 1.f, 1.f };
    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  zero);

    /* Distinct front/back materials. */
    const float m_front[4] = { 0.9f, 0.2f, 0.1f, 1.f };   /* red-ish front */
    const float m_back[4]  = { 0.1f, 0.8f, 0.9f, 1.f };   /* cyan back */
    glMaterialfv(GL_FRONT, GL_DIFFUSE, m_front);
    glMaterialfv(GL_BACK,  GL_DIFFUSE, m_back);
    glMaterialfv(GL_FRONT, GL_AMBIENT, zero);
    glMaterialfv(GL_BACK,  GL_AMBIENT, zero);

    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE);

    /* Front-facing (CCW) triangle on left. */
    glBegin(GL_TRIANGLES);
        glNormal3f(0.f, 0.f, 1.f);
        glVertex3f(-0.8f, -0.6f, 0.f);
        glVertex3f(-0.1f, -0.6f, 0.f);
        glVertex3f(-0.45f,  0.6f, 0.f);
    glEnd();

    /* Back-facing (CW) triangle on right — normal still points +Z but the
     * geometric winding is reversed, so the pipeline classifies it as back
     * and with two-side lighting uses material_back. */
    glBegin(GL_TRIANGLES);
        glNormal3f(0.f, 0.f, 1.f);
        glVertex3f( 0.1f, -0.6f, 0.f);
        glVertex3f( 0.45f,  0.6f, 0.f);
        glVertex3f( 0.8f, -0.6f, 0.f);
    glEnd();

    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_FALSE);
    glDisable(GL_LIGHTING);
}
