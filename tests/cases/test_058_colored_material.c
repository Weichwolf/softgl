#include "harness.h"

/* Red ambient with blue diffuse light exercises channel independence. */
static const float verts[] = {
    -0.7f, -0.7f, 0.f,   0.3f, 0.2f, 1.f,
     0.7f, -0.7f, 0.f,   -0.3f, 0.2f, 1.f,
    -0.7f,  0.7f, 0.f,   0.3f, -0.2f, 1.f,
    -0.7f,  0.7f, 0.f,   0.3f, -0.2f, 1.f,
     0.7f, -0.7f, 0.f,   -0.3f, 0.2f, 1.f,
     0.7f,  0.7f, 0.f,   -0.3f, -0.2f, 1.f,
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

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0); glEnable(GL_NORMALIZE);

    const float lamb[4] = { 0.8f, 0.0f, 0.0f, 1.f };   /* red ambient  */
    const float ldif[4] = { 0.0f, 0.0f, 1.0f, 1.f };   /* blue diffuse */
    const float pos[4]  = { 0.f, 0.f, 1.f, 0.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_AMBIENT, lamb);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, ldif);

    const float mamb[4] = { 0.8f, 0.8f, 0.8f, 1.f };
    const float mdif[4] = { 0.8f, 0.8f, 0.8f, 1.f };
    glMaterialfv(GL_FRONT, GL_AMBIENT, mamb);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

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
