#include "harness.h"

/* Emission adds a constant baseline independent of lights. */
static const float verts[] = {
    -0.6f, -0.6f, 0.f,  0, 0, 1,
     0.6f, -0.6f, 0.f,  0, 0, 1,
    -0.6f,  0.6f, 0.f,  0, 0, 1,
    -0.6f,  0.6f, 0.f,  0, 0, 1,
     0.6f, -0.6f, 0.f,  0, 0, 1,
     0.6f,  0.6f, 0.f,  0, 0, 1,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  zero);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  zero);
    glLightfv(GL_LIGHT0, GL_SPECULAR, zero);

    const float em[4] = { 0.2f, 0.6f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_EMISSION, em);
    glMaterialfv(GL_FRONT, GL_DIFFUSE,  zero);
    glMaterialfv(GL_FRONT, GL_AMBIENT,  zero);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
