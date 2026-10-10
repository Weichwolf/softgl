#include "harness.h"
#include <math.h>

/* 8 small triangles orbiting around the origin, pushed/popped to a common
 * parent matrix. Tests correct nesting of the matrix stack. */

static const float tri[] = {
    -0.05f, -0.05f, 0.f,
     0.05f, -0.05f, 0.f,
     0.00f,  0.05f, 0.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri), tri, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 0, (void*)0);

    for (int i = 0; i < 8; i++) {
        float a = (float)i / 8.f * 360.f;
        float t = (float)i / 7.f;
        glPushMatrix();
            glRotatef(a, 0.f, 0.f, 1.f);
            glTranslatef(0.7f, 0.f, 0.f);
            glColor4f(t, 1.f - t, 0.5f, 1.f);
            glDrawArrays(GL_TRIANGLES, 0, 3);
        glPopMatrix();
    }

    glDisableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
