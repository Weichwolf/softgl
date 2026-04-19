#include "harness.h"

/* Display list that records glBindBuffer + glVertexPointer + glDrawArrays
 * (buffer was filled BEFORE the list started). The list replays the draw
 * against the live VBO contents. */

static const float verts[] = {
    -0.6f, -0.5f, 0.f,
     0.6f, -0.5f, 0.f,
     0.0f,  0.5f, 0.f,
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
    glColor4f(0.4f, 0.9f, 0.3f, 1.f);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
        glBindBuffer(GL_ARRAY_BUFFER, vbo);
        glEnableClientState(GL_VERTEX_ARRAY);
        glVertexPointer(3, GL_FLOAT, 0, (void*)0);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        glDisableClientState(GL_VERTEX_ARRAY);
    glEndList();

    glCallList(list);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteLists(list, 1);
    glDeleteBuffers(1, &vbo);
}
