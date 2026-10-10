#include "harness.h"

static unsigned char tex[4 * 4 * 4];

static void make_tex(void) {
    for (int i = 0; i < 16; i++) {
        int s = (i/4 + i%4) & 1;
        tex[i*4+0] = s ? 210 : 60;
        tex[i*4+1] = s ? 180 : 50;
        tex[i*4+2] = s ? 140 : 30;
        tex[i*4+3] = 255;
    }
}

static void build_cube(float *out, float hx, float hy, float hz) {
    float v[8][3] = {
        {-hx,-hy,-hz}, { hx,-hy,-hz}, {-hx, hy,-hz}, { hx, hy,-hz},
        {-hx,-hy, hz}, { hx,-hy, hz}, {-hx, hy, hz}, { hx, hy, hz},
    };
    int faces[6][4] = {
        {4,5,6,7}, {1,0,3,2}, {5,1,7,3}, {0,4,2,6}, {6,7,2,3}, {0,1,4,5}
    };
    float norms[6][3] = { {0,0,1},{0,0,-1},{1,0,0},{-1,0,0},{0,1,0},{0,-1,0} };
    float uv[4][2] = { {0,0},{1,0},{0,1},{1,1} };
    int tri[6] = { 0,1,2,2,1,3 };
    int k = 0;
    for (int f = 0; f < 6; f++) {
        for (int t = 0; t < 6; t++) {
            int vi = tri[t];
            out[k++] = v[faces[f][vi]][0];
            out[k++] = v[faces[f][vi]][1];
            out[k++] = v[faces[f][vi]][2];
            out[k++] = norms[f][0];
            out[k++] = norms[f][1];
            out[k++] = norms[f][2];
            out[k++] = uv[vi][0] * hx;
            out[k++] = uv[vi][1] * hy;
        }
    }
}

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.5f, 0.7f, 0.8f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -1.f, -6.f);
    glRotatef(25.f, 1.f, 0.f, 0.f);

    GLuint ttex; glGenTextures(1, &ttex);
    glBindTexture(GL_TEXTURE_2D, ttex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.9f, 0.4f, 0.f };
    const float dif[4] = { 1, 1, 0.9f, 1 };
    const float amb[4] = { 0.1f, 0.1f, 0.15f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 1, 1, 1, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    GLuint vbo; glGenBuffers(1, &vbo);

    float positions[3][3] = {
        {-1.2f, 0.f, -2.f},
        { 0.f,  0.f, -4.f},
        { 1.3f, 0.f, -3.f},
    };
    float sizes[3] = { 0.5f, 0.8f, 0.6f };

    for (int i = 0; i < 3; i++) {
        float buf[36 * 8];
        float hh = sizes[i];
        build_cube(buf, 0.4f, hh, 0.4f);
        glPushMatrix();
            glTranslatef(positions[i][0], positions[i][1] + hh, positions[i][2]);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, sizeof(buf), buf, GL_STREAM_DRAW);
            glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
            glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
            glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
            glDrawArrays(GL_TRIANGLES, 0, 36);
        glPopMatrix();
    }

    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY); glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D); glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &ttex);
}
