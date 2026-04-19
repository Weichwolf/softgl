#include "harness.h"
#include <math.h>

/* 48x48 deterministic noise heightfield, face-lit. */
#define HN 48
static float verts[(HN - 1) * (HN - 1) * 6 * 6];

static float hash2(int x, int y) {
    unsigned h = (unsigned)(x * 73856093) ^ (unsigned)(y * 19349663);
    h = (h ^ (h >> 13)) * 1274126177;
    h ^= h >> 16;
    return (float)((int)h & 0xFFFF) / 65535.0f - 0.5f;
}

static float noise(int x, int y) {
    float sum = 0.f, amp = 0.3f;
    for (int k = 0; k < 4; k++) {
        int s = 1 << k;
        sum += hash2(x / s, y / s) * amp;
        amp *= 0.5f;
    }
    return sum;
}

static void build(void) {
    float h[HN][HN];
    for (int j = 0; j < HN; j++)
        for (int i = 0; i < HN; i++)
            h[j][i] = noise(i, j);

    int k = 0;
    for (int j = 0; j < HN - 1; j++) {
        for (int i = 0; i < HN - 1; i++) {
            float x0 = -1.f + 2.f * i / (HN - 1);
            float x1 = -1.f + 2.f * (i + 1) / (HN - 1);
            float y0 = -1.f + 2.f * j / (HN - 1);
            float y1 = -1.f + 2.f * (j + 1) / (HN - 1);
            float p[4][3] = {
                {x0, y0, h[j  ][i  ]*0.3f},
                {x1, y0, h[j  ][i+1]*0.3f},
                {x0, y1, h[j+1][i  ]*0.3f},
                {x1, y1, h[j+1][i+1]*0.3f},
            };
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
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.02f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(-50.f, 1.f, 0.f, 0.f);

    const float pos[4] = { 0.3f, 0.5f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 0.9f, 1.f };
    const float amb[4] = { 0.05f, 0.08f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.5f, 0.7f, 0.4f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, (HN - 1) * (HN - 1) * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
