#include "harness.h"
#include <string.h>

/* List records glBufferData with client-side payload: after EndList we
 * zero the source array. Replay must still render correctly because the
 * buffer upload was captured and deep-copied into the list. */

static float verts[9] = {
    -0.55f, -0.45f, 0.f,
     0.55f, -0.45f, 0.f,
     0.00f,  0.55f, 0.f,
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
    glColor4f(0.9f, 0.4f, 0.8f, 1.f);

    GLuint vbo; glGenBuffers(1, &vbo);

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
        glBindBuffer(GL_ARRAY_BUFFER, vbo);
        /* Deep-copy test: the recorded command stores `verts` data. */
        glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
        glEnableClientState(GL_VERTEX_ARRAY);
        glVertexPointer(3, GL_FLOAT, 0, (void*)0);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        glDisableClientState(GL_VERTEX_ARRAY);
    glEndList();

    /* Obliterate the caller's source data. */
    memset(verts, 0, sizeof(verts));

    glCallList(list);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteLists(list, 1);
    glDeleteBuffers(1, &vbo);
}
