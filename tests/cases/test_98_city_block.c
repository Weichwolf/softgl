#include "harness.h"

/* Grid of buildings on a ground plane, lit + fog. */
static unsigned char wall_tex[4 * 4 * 4];
static unsigned char ground_tex[4 * 4 * 4];

static void make_textures(void) {
    for (int i = 0; i < 16; i++) {
        int row = i / 4;
        int col = i % 4;
        int brick = (row & 1) ^ (col & 1);
        wall_tex[i*4+0] = brick ? 180 : 90;
        wall_tex[i*4+1] = brick ? 130 : 70;
        wall_tex[i*4+2] = brick ? 100 : 40;
        wall_tex[i*4+3] = 255;
        ground_tex[i*4+0] = 90 + 20 * brick;
        ground_tex[i*4+1] = 90 + 30 * brick;
        ground_tex[i*4+2] = 80 + 25 * brick;
        ground_tex[i*4+3] = 255;
    }
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
            out[k++] = uv[vi][0] * hx;
            out[k++] = uv[vi][1] * hy;
        }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.55f, 0.65f, 0.75f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_EXP);
    glFogf(GL_FOG_DENSITY, 0.08f);
    const float fc[4] = { 0.55f, 0.65f, 0.75f, 1.f };
    glFogfv(GL_FOG_COLOR, fc);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 40);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -1.5f, -10.f);
    glRotatef(28.f, 1.f, 0.f, 0.f);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.9f, 0.4f, 0.f };
    const float dif[4] = { 1, 1, 0.9f, 1 };
    const float amb[4] = { 0.15f, 0.15f, 0.2f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 1, 1, 1, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint wall_id, ground_id; glGenTextures(1, &wall_id); glGenTextures(1, &ground_id);
    glBindTexture(GL_TEXTURE_2D, wall_id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, wall_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glBindTexture(GL_TEXTURE_2D, ground_id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, ground_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    /* Ground */
    float ground[] = {
        -20.f, 0.f, -1.f,  0,1,0, 0, 0,
         20.f, 0.f, -1.f,  0,1,0, 8, 0,
        -20.f, 0.f,-30.f,  0,1,0, 0, 12,
        -20.f, 0.f,-30.f,  0,1,0, 0, 12,
         20.f, 0.f, -1.f,  0,1,0, 8, 0,
         20.f, 0.f,-30.f,  0,1,0, 8, 12,
    };
    glBindTexture(GL_TEXTURE_2D, ground_id);
    GLuint gvbo; glGenBuffers(1, &gvbo);
    glBindBuffer(GL_ARRAY_BUFFER, gvbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(ground), ground, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    /* Buildings */
    glBindTexture(GL_TEXTURE_2D, wall_id);
    GLuint bvbo; glGenBuffers(1, &bvbo);
    for (int j = 0; j < 3; j++) {
        for (int i = 0; i < 3; i++) {
            float x = (i - 1) * 3.f;
            float z = -3.f - j * 3.f;
            float height = 0.6f + 0.3f * ((i + j) & 1);
            float buf[36 * 8];
            build_cube(buf, 0.7f, height, 0.7f);
            glPushMatrix();
                glTranslatef(x, height, z);
                glBindBuffer(GL_ARRAY_BUFFER, bvbo);
                glBufferData(GL_ARRAY_BUFFER, sizeof(buf), buf, GL_STREAM_DRAW);
                glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
                glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
                glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
                glDrawArrays(GL_TRIANGLES, 0, 36);
            glPopMatrix();
        }
    }

    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY); glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D); glDisable(GL_LIGHTING); glDisable(GL_FOG); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &gvbo); glDeleteBuffers(1, &bvbo);
    glDeleteTextures(1, &wall_id); glDeleteTextures(1, &ground_id);
}
