#include "harness.h"
#include <math.h>

/* Final showcase: perspective-projected, lit, textured, fogged city block
 * with camera tilt, multiple materials. Exercises most of the pipeline. */

static unsigned char wall_tex[8 * 8 * 4];
static unsigned char ground_tex[4 * 4 * 4];

static void make_textures(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            int row = y;
            int col = x + ((row / 2) & 1) * 2;
            int is_mortar = (row & 3) == 0 || (col & 3) == 0;
            wall_tex[i+0] = is_mortar ? 210 : 145;
            wall_tex[i+1] = is_mortar ? 200 : 60;
            wall_tex[i+2] = is_mortar ? 190 : 40;
            wall_tex[i+3] = 255;
        }
    for (int i = 0; i < 16; i++) {
        int s = (i/4 + i%4) & 1;
        ground_tex[i*4+0] = s ? 100 : 70;
        ground_tex[i*4+1] = s ? 90  : 65;
        ground_tex[i*4+2] = s ? 80  : 60;
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
            out[k++] = uv[vi][0] * hx * 2.f;
            out[k++] = uv[vi][1] * hy * 2.f;
        }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.55f, 0.6f, 0.7f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_EXP2);
    glFogf(GL_FOG_DENSITY, 0.06f);
    const float fc[4] = { 0.55f, 0.6f, 0.7f, 1 };
    glFogfv(GL_FOG_COLOR, fc);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    float aspect = (float)w / (float)h;
    glFrustum(-aspect, aspect, -1, 1, 1, 40);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -2.f, -8.f);
    glRotatef(32.f, 1.f, 0.05f, 0.f);
    glRotatef(-12.f, 0.f, 1.f, 0.f);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float lpos[4] = { 0.7f, 0.85f, 0.3f, 0.f };
    const float ldif[4] = { 1.f, 0.95f, 0.85f, 1 };
    const float lamb[4] = { 0.2f, 0.25f, 0.35f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, lpos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, ldif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, lamb);
    const float mdif[4] = { 1, 1, 1, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint wid, gid; glGenTextures(1, &wid); glGenTextures(1, &gid);
    glBindTexture(GL_TEXTURE_2D, wid);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, wall_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glBindTexture(GL_TEXTURE_2D, gid);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, ground_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    /* Ground */
    float ground[] = {
        -30.f, 0.f,  0.f,  0,1,0,   0, 0,
         30.f, 0.f,  0.f,  0,1,0,  12, 0,
        -30.f, 0.f,-40.f,  0,1,0,   0, 16,
        -30.f, 0.f,-40.f,  0,1,0,   0, 16,
         30.f, 0.f,  0.f,  0,1,0,  12, 0,
         30.f, 0.f,-40.f,  0,1,0,  12, 16,
    };
    glBindTexture(GL_TEXTURE_2D, gid);
    GLuint gvbo; glGenBuffers(1, &gvbo);
    glBindBuffer(GL_ARRAY_BUFFER, gvbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(ground), ground, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    /* Buildings */
    glBindTexture(GL_TEXTURE_2D, wid);
    GLuint bvbo; glGenBuffers(1, &bvbo);
    for (int j = 0; j < 4; j++) {
        for (int i = 0; i < 5; i++) {
            float x = (i - 2) * 2.5f;
            float z = -4.f - j * 4.f;
            float height = 0.7f + 0.4f * sinf((float)(i * 3 + j * 7));
            float buf[36 * 8];
            build_cube(buf, 0.9f, height, 0.9f);
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
    glDeleteTextures(1, &wid); glDeleteTextures(1, &gid);
}
