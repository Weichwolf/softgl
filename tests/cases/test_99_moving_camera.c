#include "harness.h"
#include <math.h>

/* Camera offset (single frame) looking down at a row of boxes.
 * Tests a realistic camera setup via gluLookAt-style matrix construction. */

static void look_at(float ex, float ey, float ez, float tx, float ty, float tz,
                    float ux, float uy, float uz) {
    float fx = tx - ex, fy = ty - ey, fz = tz - ez;
    float flen = sqrtf(fx*fx + fy*fy + fz*fz);
    if (flen > 0) { fx/=flen; fy/=flen; fz/=flen; }
    float sx = fy*uz - fz*uy;
    float sy = fz*ux - fx*uz;
    float sz = fx*uy - fy*ux;
    float slen = sqrtf(sx*sx + sy*sy + sz*sz);
    if (slen > 0) { sx/=slen; sy/=slen; sz/=slen; }
    float vx = sy*fz - sz*fy;
    float vy = sz*fx - sx*fz;
    float vz = sx*fy - sy*fx;
    float m[16] = {
        sx, vx, -fx, 0,
        sy, vy, -fy, 0,
        sz, vz, -fz, 0,
        0,  0,   0,  1,
    };
    glMultMatrixf(m);
    glTranslatef(-ex, -ey, -ez);
}

static void build_cube(float *out, float hx, float hy, float hz) {
    float v[8][3] = {
        {-hx,-hy,-hz}, { hx,-hy,-hz}, {-hx, hy,-hz}, { hx, hy,-hz},
        {-hx,-hy, hz}, { hx,-hy, hz}, {-hx, hy, hz}, { hx, hy, hz},
    };
    int faces[6][4] = { {4,5,6,7},{1,0,3,2},{5,1,7,3},{0,4,2,6},{6,7,2,3},{0,1,4,5} };
    float norms[6][3] = { {0,0,1},{0,0,-1},{1,0,0},{-1,0,0},{0,1,0},{0,-1,0} };
    float uv[4][2] = { {0,0},{1,0},{0,1},{1,1} };
    int tri[6] = { 0,1,2,2,1,3 };
    int k = 0;
    for (int f = 0; f < 6; f++)
        for (int t = 0; t < 6; t++) {
            int vi = tri[t];
            out[k++] = v[faces[f][vi]][0];
            out[k++] = v[faces[f][vi]][1];
            out[k++] = v[faces[f][vi]][2];
            out[k++] = norms[f][0]; out[k++] = norms[f][1]; out[k++] = norms[f][2];
            out[k++] = uv[vi][0]; out[k++] = uv[vi][1];
        }
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.3f, 0.4f, 0.5f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    /* Camera slightly up and to the right, looking at origin */
    look_at(3.f, 2.f, 3.f, 0.f, 0.f, 0.f, 0.f, 1.f, 0.f);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.9f, 0.4f, 0.f };
    const float dif[4] = { 1, 1, 0.9f, 1 };
    const float amb[4] = { 0.15f, 0.15f, 0.2f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, amb);

    float buf[36 * 8];
    build_cube(buf, 0.4f, 0.4f, 0.4f);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);

    const float mdif[5][3] = {
        {0.9f, 0.3f, 0.3f},
        {0.3f, 0.9f, 0.3f},
        {0.3f, 0.3f, 0.9f},
        {0.9f, 0.9f, 0.3f},
        {0.9f, 0.3f, 0.9f},
    };
    GLuint vbo; glGenBuffers(1, &vbo);
    for (int i = 0; i < 5; i++) {
        glPushMatrix();
            glTranslatef((i - 2) * 1.2f, 0.f, 0.f);
            float md[4] = { mdif[i][0], mdif[i][1], mdif[i][2], 1 };
            glMaterialfv(GL_FRONT, GL_DIFFUSE, md);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, sizeof(buf), buf, GL_STREAM_DRAW);
            glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
            glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
            glDrawArrays(GL_TRIANGLES, 0, 36);
        glPopMatrix();
    }
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
