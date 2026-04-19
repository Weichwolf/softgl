#include "harness.h"

/* Unit cube as a textured building with a brick pattern, lit. */
static unsigned char brick[4 * 4 * 4];

static void make_brick(void) {
    for (int y = 0; y < 4; y++)
        for (int x = 0; x < 4; x++) {
            int i = (y * 4 + x) * 4;
            int mortar = (y == 0) || (y == 2) || ((x == 0 || x == 2) && (y < 2)) || ((x == 1 || x == 3) && y >= 2);
            brick[i+0] = mortar ? 200 : 140;
            brick[i+1] = mortar ? 200 : 60;
            brick[i+2] = mortar ? 200 : 50;
            brick[i+3] = 255;
        }
}

/* 6 faces × 2 tris × 3 verts × 8 floats (pos+normal+uv) */
static float cube[36 * 8];

static void build_cube(void) {
    float faces[6][4][3] = {
        /* +Z front */
        { {-1,-1, 1}, { 1,-1, 1}, {-1, 1, 1}, { 1, 1, 1} },
        /* -Z back */
        { { 1,-1,-1}, {-1,-1,-1}, { 1, 1,-1}, {-1, 1,-1} },
        /* +X right */
        { { 1,-1, 1}, { 1,-1,-1}, { 1, 1, 1}, { 1, 1,-1} },
        /* -X left */
        { {-1,-1,-1}, {-1,-1, 1}, {-1, 1,-1}, {-1, 1, 1} },
        /* +Y top */
        { {-1, 1, 1}, { 1, 1, 1}, {-1, 1,-1}, { 1, 1,-1} },
        /* -Y bottom */
        { {-1,-1,-1}, { 1,-1,-1}, {-1,-1, 1}, { 1,-1, 1} },
    };
    float normals[6][3] = { {0,0,1}, {0,0,-1}, {1,0,0}, {-1,0,0}, {0,1,0}, {0,-1,0} };
    float uv[4][2] = { {0,0}, {1,0}, {0,1}, {1,1} };
    int tri[6] = { 0, 1, 2, 2, 1, 3 };
    int k = 0;
    for (int f = 0; f < 6; f++) {
        for (int t = 0; t < 6; t++) {
            int v = tri[t];
            cube[k++] = faces[f][v][0] * 0.5f;
            cube[k++] = faces[f][v][1] * 0.5f;
            cube[k++] = faces[f][v][2] * 0.5f;
            cube[k++] = normals[f][0];
            cube[k++] = normals[f][1];
            cube[k++] = normals[f][2];
            cube[k++] = uv[v][0];
            cube[k++] = uv[v][1];
        }
    }
}

void run_test(int w, int h) {
    make_brick();
    build_cube();

    glViewport(0, 0, w, h);
    glClearColor(0.4f, 0.6f, 0.8f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 15);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, 0.f, -3.f);
    glRotatef(28.f, 1.f, 0.4f, 0.f);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, brick);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.8f, 0.5f, 0.f };
    const float dif[4] = { 1, 1, 0.9f, 1 };
    const float amb[4] = { 0.1f, 0.1f, 0.12f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 1, 1, 1, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(cube), cube, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 36);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY); glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D); glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &tex);
}
