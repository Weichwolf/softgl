#include "harness.h"

/* glArrayElement: arrays supply vertex data, immediate state supplies the
 * rest.  Enable only GL_VERTEX_ARRAY; per-vertex glColor3f is applied
 * before each glArrayElement call. */

static const float verts[] = {
    -0.7f, -0.5f, 0.f,
     0.7f, -0.5f, 0.f,
     0.0f,  0.6f, 0.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 3 * sizeof(float), verts);

    glBegin(GL_TRIANGLES);
        glColor3f(1.f, 0.f, 0.f); glArrayElement(0);
        glColor3f(0.f, 1.f, 0.f); glArrayElement(1);
        glColor3f(0.f, 0.f, 1.f); glArrayElement(2);
    glEnd();

    glDisableClientState(GL_VERTEX_ARRAY);
}
