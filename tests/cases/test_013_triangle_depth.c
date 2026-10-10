#include "harness.h"

/* Two triangles on different z, depth test ON. The nearer one must occlude the
 * farther one. Uses glOrtho since we haven't exercised glFrustum yet. */

/* OpenGL eye-space convention: camera looks down -z. With glOrtho(near=0,far=1),
 * the valid z range is [-1, 0]. More negative = farther. */
static const float tri_far[] = {
    -0.8f, -0.8f, -0.9f,   0.3f, 0.3f, 1.0f, 1.f,
     0.8f, -0.8f, -0.9f,   0.3f, 0.3f, 1.0f, 1.f,
     0.0f,  0.8f, -0.9f,   0.3f, 0.3f, 1.0f, 1.f,
};
static const float tri_near[] = {
    -0.5f, -0.2f, -0.2f,   1.0f, 0.5f, 0.1f, 1.f,
     0.5f, -0.2f, -0.2f,   1.0f, 0.5f, 0.1f, 1.f,
     0.0f,  0.5f, -0.2f,   1.0f, 0.5f, 0.1f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, 0.0, 1.0);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint vbo[2];
    glGenBuffers(2, vbo);

    glBindBuffer(GL_ARRAY_BUFFER, vbo[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri_far), tri_far, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glBindBuffer(GL_ARRAY_BUFFER, vbo[1]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri_near), tri_near, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(2, vbo);
}
