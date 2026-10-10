#include "harness.h"
#include <math.h>

/* 4x4 Bezier patch with a saddle shape, sampled on a 20x20 grid. */

static const float cp[4][4][3] = {
    {{-1, -1,  0.0f}, {-0.33f, -1,  0.4f}, {0.33f, -1, -0.4f}, {1, -1, 0.0f}},
    {{-1, -0.33f, 0.3f}, {-0.33f, -0.33f, 0.7f}, {0.33f, -0.33f, -0.7f}, {1, -0.33f, -0.3f}},
    {{-1,  0.33f, -0.3f}, {-0.33f,  0.33f, -0.7f}, {0.33f,  0.33f, 0.7f}, {1,  0.33f, 0.3f}},
    {{-1,  1.0f, 0.0f}, {-0.33f,  1, -0.4f}, {0.33f,  1, 0.4f}, {1,  1.0f, 0.0f}},
};

static void b3(float t, float *o) {
    float u = 1.f - t;
    o[0] = u*u*u; o[1] = 3*u*u*t; o[2] = 3*u*t*t; o[3] = t*t*t;
}

#define BN 20
static float verts[(BN - 1) * (BN - 1) * 6 * 6];

static void build(void) {
    float pts[BN][BN][3];
    for (int j = 0; j < BN; j++)
        for (int i = 0; i < BN; i++) {
            float u = (float)i / (BN - 1);
            float v = (float)j / (BN - 1);
            float Bu[4], Bv[4];
            b3(u, Bu); b3(v, Bv);
            float p[3] = {0, 0, 0};
            for (int a = 0; a < 4; a++)
                for (int b = 0; b < 4; b++) {
                    float w = Bv[a] * Bu[b];
                    p[0] += w * cp[a][b][0];
                    p[1] += w * cp[a][b][1];
                    p[2] += w * cp[a][b][2];
                }
            pts[j][i][0] = p[0] * 0.7f;
            pts[j][i][1] = p[1] * 0.7f;
            pts[j][i][2] = p[2] * 0.5f;
        }
    int k = 0;
    for (int j = 0; j < BN - 1; j++)
        for (int i = 0; i < BN - 1; i++) {
            float p[4][3];
            p[0][0]=pts[j][i][0];     p[0][1]=pts[j][i][1];     p[0][2]=pts[j][i][2];
            p[1][0]=pts[j][i+1][0];   p[1][1]=pts[j][i+1][1];   p[1][2]=pts[j][i+1][2];
            p[2][0]=pts[j+1][i][0];   p[2][1]=pts[j+1][i][1];   p[2][2]=pts[j+1][i][2];
            p[3][0]=pts[j+1][i+1][0]; p[3][1]=pts[j+1][i+1][1]; p[3][2]=pts[j+1][i+1][2];
            /* face normal from two edges */
            float ux = p[1][0]-p[0][0], uy = p[1][1]-p[0][1], uz = p[1][2]-p[0][2];
            float vx = p[2][0]-p[0][0], vy = p[2][1]-p[0][1], vz = p[2][2]-p[0][2];
            float nx = uy*vz - uz*vy, ny = uz*vx - ux*vz, nz = ux*vy - uy*vx;
            float L = sqrtf(nx*nx + ny*ny + nz*nz);
            if (L > 0) { nx/=L; ny/=L; nz/=L; }
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = p[v][2];
                verts[k++] = nx; verts[k++] = ny; verts[k++] = nz;
            }
        }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.0f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(-25.f, 1.f, 0.2f, 0.f);

    const float pos[4] = { 0.5f, 0.5f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.4f, 0.8f, 0.3f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, (BN - 1) * (BN - 1) * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
