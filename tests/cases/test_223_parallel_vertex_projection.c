#include "harness.h"

#define GRID 20
#define NV ((GRID + 1) * (GRID + 1))
#define NI (GRID * GRID * 6)

/* Shared indexed vertices and expanded arrays exceed the parallel threshold.
 * Viewport/matrix changes, frustum/user clipping, wireframe, and back-face
 * lighting exercise reuse of projected vertices and its fallback paths. */
void run_test(int w, int h) {
    float positions[NV * 3], colors[NV * 3];
    float expanded_positions[NI * 3], expanded_colors[NI * 3];
    unsigned short indices[NI];
    for (int y = 0; y <= GRID; y++) {
        for (int x = 0; x <= GRID; x++) {
            int v = y * (GRID + 1) + x;
            positions[v * 3] = -0.9f + 1.8f * (float)x / GRID;
            positions[v * 3 + 1] = -0.9f + 1.8f * (float)y / GRID;
            positions[v * 3 + 2] = 0.2f * positions[v * 3];
            colors[v * 3] = 0.2f + 0.7f * (float)x / GRID;
            colors[v * 3 + 1] = 0.2f + 0.7f * (float)y / GRID;
            colors[v * 3 + 2] = 0.4f;
        }
    }
    int k = 0;
    for (int y = 0; y < GRID; y++) {
        for (int x = 0; x < GRID; x++) {
            unsigned short a = (unsigned short)(y * (GRID + 1) + x);
            unsigned short b = (unsigned short)(a + GRID + 1);
            indices[k++] = a; indices[k++] = a + 1; indices[k++] = b;
            indices[k++] = b; indices[k++] = a + 1; indices[k++] = b + 1;
        }
    }
    for (int i = 0; i < NI; i++) {
        for (int c = 0; c < 3; c++) {
            expanded_positions[i * 3 + c] = positions[indices[i] * 3 + c];
            expanded_colors[i * 3 + c] = colors[indices[i] * 3 + c];
        }
    }
    glClearColor(0.03f, 0.04f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    for (int panel = 0; panel < 6; panel++) {
        glViewport((panel % 3) * w / 3 + 3, (panel / 3) * h / 2 + 3,
                   w / 3 - 6, h / 2 - 6);
        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        glOrtho(-1, 1, -1, 1, -1, 1);
        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        glFrontFace(panel == 1 || panel == 5 ? GL_CW : GL_CCW);
        if (panel == 1) {
            glTranslatef(0.4f, 0.f, 0.f);
            glEnable(GL_CULL_FACE);
            glCullFace(GL_FRONT);
        }
        if (panel == 2) {
            const double plane[] = {1, 0.3, 0, 0};
            glClipPlane(GL_CLIP_PLANE0, plane);
            glEnable(GL_CLIP_PLANE0);
        }
        if (panel == 3) glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        if (panel == 4) glScalef(0.7f, 0.8f, 1.f);
        if (panel == 5) {
            const float ambient[] = {1, 1, 1, 1};
            const float front[] = {0.7f, 0.1f, 0.1f, 1};
            const float back[] = {0.1f, 0.7f, 0.1f, 1};
            glLightModelfv(GL_LIGHT_MODEL_AMBIENT, ambient);
            glMaterialfv(GL_FRONT, GL_AMBIENT, front);
            glMaterialfv(GL_BACK, GL_AMBIENT, back);
            glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE);
            glEnable(GL_LIGHTING);
        }
        glVertexPointer(3, GL_FLOAT, 0, panel == 4 ? expanded_positions : positions);
        glColorPointer(3, GL_FLOAT, 0, panel == 4 ? expanded_colors : colors);
        if (panel == 4) glDrawArrays(GL_TRIANGLES, 0, NI);
        else glDrawElements(GL_TRIANGLES, NI, GL_UNSIGNED_SHORT, indices);
        glDisable(GL_CULL_FACE);
        glDisable(GL_CLIP_PLANE0);
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    }
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
}
