#include "harness.h"

#define GRID 15
#define PREFIX 17
#define NV ((GRID + 1) * (GRID + 1))
#define NI (GRID * GRID * 6)

/* Source-index bins share transformed vertices until the draw finishes.
 * Change source ranges/storage between draws, mix clipped and inside
 * triangles in a bin, and exercise both sorted and submission-order jobs. */
void run_test(int w, int h) {
    float positions[(NV + PREFIX) * 3], colors[(NV + PREFIX) * 3];
    float expanded[(NI + PREFIX) * 3], expanded_colors[(NI + PREFIX) * 3];
    unsigned char bytes[NI];
    unsigned short shorts[NI];
    unsigned int ints[NI];
    for (int i = 0; i < PREFIX; i++) {
        for (int c = 0; c < 3; c++) {
            positions[i * 3 + c] = expanded[i * 3 + c] = 5.f;
            colors[i * 3 + c] = expanded_colors[i * 3 + c] = 0.f;
        }
    }
    for (int y = 0; y <= GRID; y++) {
        for (int x = 0; x <= GRID; x++) {
            int v = PREFIX + y * (GRID + 1) + x;
            positions[v * 3] = -0.9f + 1.8f * x / GRID;
            positions[v * 3 + 1] = -0.9f + 1.8f * y / GRID;
            positions[v * 3 + 2] = 0.1f * positions[v * 3];
            colors[v * 3] = 0.2f + 0.7f * x / GRID;
            colors[v * 3 + 1] = 0.2f + 0.7f * y / GRID;
            colors[v * 3 + 2] = 0.5f;
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
                ints[k] = (unsigned int)shorts[k];
                for (int c = 0; c < 3; c++) {
                    expanded[(PREFIX + k) * 3 + c] = positions[shorts[k] * 3 + c];
                    expanded_colors[(PREFIX + k) * 3 + c] = colors[shorts[k] * 3 + c];
                }
            }
        }
    }
    glClearColor(0.02f, 0.03f, 0.04f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    for (int panel = 0; panel < 6; panel++) {
        glViewport(panel % 3 * w / 3 + 3, panel / 3 * h / 2 + 3,
                   w / 3 - 6, h / 2 - 6);
        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        glOrtho(-1, 1, -1, 1, -1, 1);
        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        if (panel == 2) glTranslatef(0.55f, 0.f, 0.f);
        if (panel == 3) glScalef(-1.f, 0.8f, 1.f);
        glEnable(GL_DEPTH_TEST);
        glDepthFunc(panel == 4 ? GL_ALWAYS : GL_LESS);
        if (panel == 4) {
            glEnable(GL_BLEND);
            glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        }
        const float *p = panel == 1 ? expanded : positions;
        const float *c = panel == 1 ? expanded_colors : colors;
        if (panel == 0) { p += PREFIX * 3; c += PREFIX * 3; }
        glVertexPointer(3, GL_FLOAT, 0, p);
        glColorPointer(3, GL_FLOAT, 0, c);
        if (panel == 0) glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_BYTE, bytes);
        else if (panel == 1) glDrawArrays(GL_TRIANGLES, PREFIX, NI);
        else if (panel == 5) glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_INT, ints);
        else glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_SHORT, shorts);
        glDisable(GL_BLEND);
    }
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
}
