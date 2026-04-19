#include "harness.h"
#include <math.h>

/* GL_LIGHT_MODEL_LOCAL_VIEWER = TRUE: the viewer direction is computed
 * per-vertex as -normalize(eye_pos). On a tessellated quad with
 * off-center vertices under perspective, this shifts specular highlights
 * away from the infinite-viewer reference. */
#define N 10
static float verts[N * N * 6 * 6];

static void build(void) {
    int k = 0;
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            float x0 = -0.9f + (float)i / N * 1.8f;
            float x1 = x0 + 1.8f / N;
            float y0 = -0.9f + (float)j / N * 1.8f;
            float y1 = y0 + 1.8f / N;
            float p[4][3] = {
                {x0, y0, 0.f}, {x1, y0, 0.f}, {x0, y1, 0.f}, {x1, y1, 0.f}
            };
            float n[3] = { 0.f, 0.f, 1.f };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = p[v][2];
                verts[k++] = n[0];    verts[k++] = n[1];    verts[k++] = n[2];
            }
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect * 0.5, aspect * 0.5, -0.5, 0.5, 1.0, 10.0);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glTranslatef(0.f, 0.f, -2.0f);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    /* Positional light off-center so local-viewer math actually differs. */
    const float pos[4]  = { 0.4f, 0.4f, 1.5f, 1.f };
    const float dif[4]  = { 0.2f, 0.2f, 0.2f, 1.f };
    const float spec[4] = { 1.f, 1.f, 1.f, 1.f };
    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_SPECULAR, spec);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  zero);

    const float m_dif[4]  = { 0.2f, 0.1f, 0.05f, 1.f };
    const float m_spec[4] = { 1.f, 1.f, 1.f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE,  m_dif);
    glMaterialfv(GL_FRONT, GL_SPECULAR, m_spec);
    glMaterialf (GL_FRONT, GL_SHININESS, 24.f);

    glLightModeli(GL_LIGHT_MODEL_LOCAL_VIEWER, GL_TRUE);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, N * N * 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);

    glLightModeli(GL_LIGHT_MODEL_LOCAL_VIEWER, GL_FALSE);
    glDisable(GL_LIGHTING);
}
