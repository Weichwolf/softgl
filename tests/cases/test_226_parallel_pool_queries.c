#include "harness.h"

#define GRID 15
#define PREFIX 17
#define NV ((GRID + 1) * (GRID + 1))
#define NI (GRID * GRID * 6)
#define NQ 11

/* Exact query counts for large draws that reuse transformed vertices.
 * Include nonzero source ranges, buffer growth, mixed clipped/copied bins,
 * direct points, depth rejection and masked/logic-op color writes. */
void run_test(int w, int h) {
    float positions[(PREFIX + NV) * 2], expanded[(PREFIX + NI) * 2];
    unsigned char bytes[NI];
    unsigned short shorts[NI];
    unsigned int ints[NI];
    for (int i = 0; i < PREFIX * 2; i++) positions[i] = expanded[i] = -1000.f;
    for (int y = 0; y <= GRID; y++) {
        for (int x = 0; x <= GRID; x++) {
            int v = PREFIX + y * (GRID + 1) + x;
            positions[v * 2] = (float)(w * x) / GRID;
            positions[v * 2 + 1] = (float)(h * y) / GRID;
        }
    }
    int k = 0;
    for (int y = 0; y < GRID; y++) {
        for (int x = 0; x < GRID; x++) {
            int a = y * (GRID + 1) + x, b = a + GRID + 1;
            int tri[6] = {a, a + 1, b, b, a + 1, b + 1};
            for (int j = 0; j < 6; j++, k++) {
                bytes[k] = (unsigned char)tri[j];
                shorts[k] = (unsigned short)(PREFIX + tri[j]);
                ints[k] = shorts[k];
                expanded[(PREFIX + k) * 2] = positions[shorts[k] * 2];
                expanded[(PREFIX + k) * 2 + 1] = positions[shorts[k] * 2 + 1];
            }
        }
    }
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glColor4f(1.f, 1.f, 1.f, 1.f);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glEnableClientState(GL_VERTEX_ARRAY);
    GLuint queries[2], results[NQ];
    glGenQueries(2, queries);
    for (int q = 0; q < NQ; q++) {
        GLenum target = q == 7 ? GL_ANY_SAMPLES_PASSED : GL_SAMPLES_PASSED;
        GLuint query = queries[q == 7];
        if (q == 4) glTranslatef(w / 4.f, 0.f, 0.f);
        if (q == 6) glEnable(GL_DEPTH_TEST);
        if (q == 7) { glEnable(GL_COLOR_LOGIC_OP); glLogicOp(GL_NOOP); }
        if (q == 8) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_NEVER, 0.f); }
        if (q == 10) { glEnable(GL_SCISSOR_TEST); glScissor(0, 0, w / 2, h); }
        const float *p = q == 3 || q == 5 ? expanded : positions;
        if (q == 0) p += PREFIX * 2;
        glVertexPointer(2, GL_FLOAT, 0, p);
        glBeginQuery(target, query);
        if (q == 0) glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_BYTE, bytes);
        else if (q == 2) glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_INT, ints);
        else if (q == 3 || q == 5) glDrawArrays(GL_TRIANGLES, PREFIX, NI);
        else if (q != 9) glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_SHORT, shorts);
        if (q == 5 || q == 6) {
            glVertexPointer(2, GL_FLOAT, 0, positions);
            glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_SHORT, shorts);
        }
        if (q == 5) {
            glBegin(GL_POINTS);
            glVertex2f(.5f, .5f);
            glEnd();
        }
        glEndQuery(target);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT, &results[q]);
        glLoadIdentity();
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_ALPHA_TEST);
        glDisable(GL_SCISSOR_TEST);
        glDisable(GL_COLOR_LOGIC_OP);
    }
    glDisableClientState(GL_VERTEX_ARRAY);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glEnable(GL_SCISSOR_TEST);
    for (int q = 0; q < NQ; q++) {
        GLuint n = results[q];
        glScissor(q * w / NQ, 0, (q + 1) * w / NQ - q * w / NQ, h);
        glClearColor((n & 255u) / 255.f, ((n >> 8) & 255u) / 255.f,
                     ((n >> 16) & 255u) / 255.f, ((n >> 24) & 255u) / 255.f);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    glDisable(GL_SCISSOR_TEST);
    glDeleteQueries(2, queries);
}
