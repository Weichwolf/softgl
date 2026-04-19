#include "harness.h"

#include <math.h>

/* GL_POLYGON with 8 vertices; per-vertex normal + ambient material colors
 * so the lit result varies smoothly around the rim.  Uses glColor as well
 * (the GL_COLOR_MATERIAL path is not active — colors are ignored by the
 * lighting pipeline here; the material diffuse is what matters). */

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
    const float pos[4]  = { 0.f, 0.f, 1.f, 0.f };
    const float dif[4]  = { 1.f, 1.f, 1.f, 1.f };
    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  zero);

    const float m_dif[4] = { 0.7f, 0.4f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, m_dif);
    glMaterialfv(GL_FRONT, GL_AMBIENT, zero);

    glBegin(GL_POLYGON);
    for (int i = 0; i < 8; i++) {
        float a = (float)i * (6.28318530718f / 8.f);
        float r = 0.65f;
        float nx = 0.7f * cosf(a);
        float ny = 0.7f * sinf(a);
        float nz = 0.6f;
        glNormal3f(nx, ny, nz);
        glColor3f(0.5f + 0.5f * cosf(a),
                  0.5f + 0.5f * cosf(a + 2.094395f),
                  0.5f + 0.5f * cosf(a + 4.188790f));
        glVertex2f(r * cosf(a), r * sinf(a));
    }
    glEnd();

    glDisable(GL_LIGHTING);
}
