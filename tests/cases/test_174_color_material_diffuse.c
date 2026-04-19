#include "harness.h"

/* glColorMaterial(GL_FRONT_AND_BACK, GL_DIFFUSE) — per-vertex glColor becomes
 * the diffuse material of the lit vertex. Three corner colors + a directional
 * light produce a three-color gradient scaled by the Lambert term. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
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

    /* Reset material diffuse to a known bland value; color_material will
     * override it per vertex. */
    const float m_dif[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    const float m_amb[4] = { 0.f, 0.f, 0.f, 1.f };
    glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, m_dif);
    glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, m_amb);

    glColorMaterial(GL_FRONT_AND_BACK, GL_DIFFUSE);
    glEnable(GL_COLOR_MATERIAL);

    glBegin(GL_TRIANGLES);
        glNormal3f(0.f, 0.f, 1.f);
        glColor3f(1.f, 0.f, 0.f); glVertex3f(-0.7f, -0.6f, 0.f);
        glColor3f(0.f, 1.f, 0.f); glVertex3f( 0.7f, -0.6f, 0.f);
        glColor3f(0.f, 0.f, 1.f); glVertex3f( 0.0f,  0.7f, 0.f);
    glEnd();

    glDisable(GL_COLOR_MATERIAL);
    glDisable(GL_LIGHTING);
}
