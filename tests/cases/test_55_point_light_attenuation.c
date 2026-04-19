#include "harness.h"
#include <math.h>

/* Same tessellated quad as test 54, but light is positional at origin with
 * 1/(1+d²) attenuation. Illumination falls off radially. */
#define N 16
static float verts[N * N * 6 * 6];

static void build(void) {
    int k = 0;
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            float x0 = -1.0f + (float)i / N * 2.0f;
            float x1 = x0 + 2.0f / N;
            float y0 = -1.0f + (float)j / N * 2.0f;
            float y1 = y0 + 2.0f / N;
            float p[4][2] = { {x0,y0}, {x1,y0}, {x0,y1}, {x1,y1} };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = 0.f;
                verts[k++] = 0.f; verts[k++] = 0.f; verts[k++] = 1.f;
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
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    const float pos[4]  = { 0.f, 0.f, 0.5f, 1.f };   /* positional */
    const float dif[4]  = { 1.f, 0.9f, 0.7f, 1.f };
    const float amb[4]  = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);
    glLightf (GL_LIGHT0, GL_CONSTANT_ATTENUATION,  0.1f);
    glLightf (GL_LIGHT0, GL_LINEAR_ATTENUATION,    0.5f);
    glLightf (GL_LIGHT0, GL_QUADRATIC_ATTENUATION, 2.5f);

    const float m_dif[4] = { 0.8f, 0.8f, 0.8f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, m_dif);
    glMaterialfv(GL_FRONT, GL_AMBIENT, amb);

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
    glDisable(GL_LIGHTING);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
