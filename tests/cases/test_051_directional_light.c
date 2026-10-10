#include "harness.h"

/* Flat quad with normal pointing at the camera, single directional light
 * from above-right. Whole quad gets a uniform diffuse shade. */
static const float verts[] = {
    /* pos,            normal */
    -0.7f, -0.7f, 0.f,  0, 0, 1,
     0.7f, -0.7f, 0.f,  0, 0, 1,
    -0.7f,  0.7f, 0.f,  0, 0, 1,
    -0.7f,  0.7f, 0.f,  0, 0, 1,
     0.7f, -0.7f, 0.f,  0, 0, 1,
     0.7f,  0.7f, 0.f,  0, 0, 1,
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

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);

    const float light_pos[4] = { 1.f, 1.f, 1.f, 0.f };   /* directional */
    const float light_dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float light_amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, light_pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  light_dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  light_amb);

    const float mat_dif[4] = { 0.8f, 0.4f, 0.2f, 1.f };
    const float mat_amb[4] = { 0.2f, 0.1f, 0.05f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_dif);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_amb);

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
