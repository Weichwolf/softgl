#include "harness.h"
#include <math.h>
#include <stdlib.h>

/* Low-poly hilly landscape with 25 axis-aligned billboard trees. Trees
 * are always oriented with +Y up (world-space Y), so they're "Y-axis
 * billboards" — the common shortcut in Quake/HL-era engines. Rotated-Y
 * rendering would require per-tree view-dependent orientation; we fix
 * the camera so all billboards face it directly.
 *
 * Tree sprite: alpha-gated silhouette; rendered with GL_ALPHA_TEST. */

#define TT 16
static unsigned char tree_tex[TT * TT * 4];

static void make_tree(void) {
    for (int y = 0; y < TT; y++)
        for (int x = 0; x < TT; x++) {
            int i = (y * TT + x) * 4;
            /* Trunk: middle 2-wide column in bottom half. */
            int is_trunk = (x >= 7 && x <= 8) && (y < 8);
            /* Crown: triangle. */
            int dx = x - TT/2;
            int is_crown = (y >= 6) && (abs(dx) <= (TT - 2 - y));
            int opaque = is_trunk || is_crown;
            unsigned char r, g, b;
            if (is_trunk) { r = 90; g = 55; b = 30; }
            else if (is_crown) {
                /* Darken toward edges. */
                float dd = 1.f - (float)abs(dx) / (TT - 2 - y + 1);
                r = (unsigned char)(30 + 40 * dd);
                g = (unsigned char)(80 + 70 * dd);
                b = (unsigned char)(30 + 30 * dd);
            } else { r = 0; g = 0; b = 0; }
            tree_tex[i+0] = r; tree_tex[i+1] = g; tree_tex[i+2] = b;
            tree_tex[i+3] = opaque ? 255 : 0;
        }
}

#define HN 12
static float hh(int i, int j) {
    return 0.25f * sinf(0.9f * i) * cosf(0.7f * j) + 0.1f * sinf(1.7f * i + 0.5f * j);
}

static unsigned int rs = 0x1337u;
static float rng_f(void) {
    rs = rs * 1664525u + 1013904223u;
    return (float)(rs & 0xFFFFFF) / (float)0xFFFFFF;
}

void run_test(int w, int h) {
    make_tree();
    glViewport(0, 0, w, h);
    glClearColor(0.55f, 0.75f, 0.9f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.8f, -5.f);
    glRotatef(18.f, 1.f, 0.f, 0.f);

    /* Ground grid (terrain) with a flat green material. */
    glColor3f(0.45f, 0.7f, 0.35f);
    glBegin(GL_TRIANGLES);
    for (int j = 0; j < HN; j++) {
        for (int i = 0; i < HN; i++) {
            float x0 = -3.f + (float)i * (6.f / HN);
            float x1 = x0 + 6.f / HN;
            float z0 = -1.f - (float)j * (6.f / HN);
            float z1 = z0 - 6.f / HN;
            float y00 = hh(i, j), y10 = hh(i+1, j);
            float y01 = hh(i, j+1), y11 = hh(i+1, j+1);
            glVertex3f(x0, y00, z0); glVertex3f(x1, y10, z0); glVertex3f(x0, y01, z1);
            glVertex3f(x0, y01, z1); glVertex3f(x1, y10, z0); glVertex3f(x1, y11, z1);
        }
    }
    glEnd();

    /* Trees: alpha-tested billboards (axis-aligned to XY plane, Z = depth). */
    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, TT, TT, 0, GL_RGBA, GL_UNSIGNED_BYTE, tree_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glEnable(GL_ALPHA_TEST);
    glAlphaFunc(GL_GREATER, 0.5f);

    rs = 42u;
    for (int k = 0; k < 25; k++) {
        float tx = -2.6f + rng_f() * 5.2f;
        float tz = -1.3f - rng_f() * 5.2f;
        /* Snap to grid cell and sample height. */
        int ci = (int)((tx + 3.f) / (6.f / HN));
        int cj = (int)((-tz - 1.f) / (6.f / HN));
        if (ci < 0) ci = 0;
        if (ci > HN) ci = HN;
        if (cj < 0) cj = 0;
        if (cj > HN) cj = HN;
        float ty = hh(ci, cj);
        float sz = 0.3f + 0.15f * rng_f();
        glBegin(GL_QUADS);
        glTexCoord2f(0, 0); glVertex3f(tx - sz, ty,         tz);
        glTexCoord2f(1, 0); glVertex3f(tx + sz, ty,         tz);
        glTexCoord2f(1, 1); glVertex3f(tx + sz, ty + 2*sz,  tz);
        glTexCoord2f(0, 1); glVertex3f(tx - sz, ty + 2*sz,  tz);
        glEnd();
    }

    glDisable(GL_ALPHA_TEST);
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(1, &tex);
}
