#include "harness.h"

/* One VBO, 9 draw calls with different matrices — pseudo-instancing. */
static const float tri[] = {
    -0.1f, -0.1f, 0.f,
     0.1f, -0.1f, 0.f,
     0.0f,  0.1f, 0.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri), tri, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 0, (void*)0);

    for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
            glPushMatrix();
                glTranslatef((x - 1) * 0.5f, (y - 1) * 0.5f, 0.f);
                glColor4f((float)x / 2.f, (float)y / 2.f, 0.5f, 1.f);
                glDrawArrays(GL_TRIANGLES, 0, 3);
            glPopMatrix();
        }
    }
    glDisableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
