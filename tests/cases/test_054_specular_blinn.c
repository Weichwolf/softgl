#include "harness.h"
#include <math.h>

/* Tessellated quad with normals varying toward the center: specular hotspot
 * should appear where n·h peaks. */
#define N 16
static float verts[N * N * 6 * 6];   /* 6 floats (pos+normal) * 6 verts per quad * N*N quads */

static void build(void) {
    int k = 0;
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            float x0 = -0.8f + (float)i / N * 1.6f;
            float x1 = x0 + 1.6f / N;
            float y0 = -0.8f + (float)j / N * 1.6f;
            float y1 = y0 + 1.6f / N;
            /* Normal bumps toward viewer in the center of the quad. */
            float p[4][2] = { {x0,y0}, {x1,y0}, {x0,y1}, {x1,y1} };
            float nrm[4][3];
            for (int v = 0; v < 4; v++) {
                float nx = -p[v][0];
                float ny = -p[v][1];
                float nz = 1.2f;
                float len = sqrtf(nx*nx + ny*ny + nz*nz);
                nrm[v][0] = nx / len; nrm[v][1] = ny / len; nrm[v][2] = nz / len;
            }
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = 0.f;
                verts[k++] = nrm[v][0]; verts[k++] = nrm[v][1]; verts[k++] = nrm[v][2];
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
    const float pos[4]  = { 0.5f, 0.5f, 1.f, 0.f };
    const float dif[4]  = { 0.3f, 0.3f, 0.3f, 1.f };
    const float spec[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4]  = { 0.05f, 0.05f, 0.05f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_SPECULAR, spec);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);

    const float m_dif[4]  = { 0.3f, 0.1f, 0.1f, 1.f };
    const float m_spec[4] = { 1.f, 1.f, 1.f, 1.f };
    const float m_amb[4]  = { 0.1f, 0.02f, 0.02f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE,  m_dif);
    glMaterialfv(GL_FRONT, GL_SPECULAR, m_spec);
    glMaterialfv(GL_FRONT, GL_AMBIENT,  m_amb);
    glMaterialf (GL_FRONT, GL_SHININESS, 32.f);

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
