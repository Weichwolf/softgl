#include "harness.h"

/* Parent transform applied, then each child pushed/popped — after all pops,
 * the parent transform is back in effect. Visually: a row of triangles with
 * a global translation. */

static const float tri[] = {
    -0.06f, -0.06f, 0.f,
     0.06f, -0.06f, 0.f,
     0.00f,  0.06f, 0.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.3f, 0.f);   /* parent: shift everything down */

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri), tri, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 0, (void*)0);

    for (int i = -4; i <= 4; i++) {
        glPushMatrix();
            glTranslatef(i * 0.2f, 0.f, 0.f);
            glRotatef(i * 10.f, 0.f, 0.f, 1.f);
            glColor4f((i + 4) / 8.f, 1.f - (i + 4) / 8.f, 0.4f, 1.f);
            glDrawArrays(GL_TRIANGLES, 0, 3);
        glPopMatrix();
    }

    /* Now draw a large triangle to verify parent is still active. */
    glColor4f(1.f, 1.f, 1.f, 1.f);
    static const float big[] = {
        -0.1f, 0.2f, 0.f,
         0.1f, 0.2f, 0.f,
         0.0f, 0.5f, 0.f,
    };
    glBufferData(GL_ARRAY_BUFFER, sizeof(big), big, GL_STATIC_DRAW);
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
