#include "harness.h"
#include <math.h>

/* Half-Life 2 style pre-baked lightmap × base texture.
 *
 *   Unit 0: "base" wall/floor texture (grid pattern).
 *   Unit 1: smoother low-res lightmap with a hotspot and one dark
 *           ("shadow") corner.
 *   Env: unit 0 REPLACE, unit 1 MODULATE → final = base * lightmap.
 *
 * Corridor geometry: floor + two side walls + ceiling, as a short box piece
 * the camera looks down into.
 */

#define BT 16
#define LT 16
static unsigned char base_tex[BT * BT * 4];
static unsigned char light_tex[LT * LT * 4];

static void make_textures(void) {
    for (int y = 0; y < BT; y++)
        for (int x = 0; x < BT; x++) {
            int cell = ((x / 4) + (y / 4)) & 1;
            int seam = (x % 4 == 0) || (y % 4 == 0);
            int i = (y * BT + x) * 4;
            base_tex[i+0] = cell ? 180 : 120;
            base_tex[i+1] = cell ? 170 : 110;
            base_tex[i+2] = cell ? 160 : 100;
            if (seam) { base_tex[i+0] = 70; base_tex[i+1] = 60; base_tex[i+2] = 55; }
            base_tex[i+3] = 255;
        }
    for (int y = 0; y < LT; y++)
        for (int x = 0; x < LT; x++) {
            /* Gaussian hotspot near (4, 8). */
            float dx = (x - 4.f) / 6.f, dy = (y - 8.f) / 6.f;
            float hot = expf(-(dx*dx + dy*dy));
            /* Shadow blob near (12, 2). */
            float sx = (x - 12.f) / 4.f, sy = (y - 2.f) / 4.f;
            float sh = 1.f - 0.7f * expf(-(sx*sx + sy*sy));
            float v = (0.25f + 0.95f * hot) * sh;
            if (v > 1.f) v = 1.f;
            int i = (y * LT + x) * 4;
            unsigned char c = (unsigned char)(v * 255);
            light_tex[i+0] = c; light_tex[i+1] = c; light_tex[i+2] = c; light_tex[i+3] = 255;
        }
}

/* Draw a quad with base+light UVs (light uses a continuous 0..1 over the
 * whole surface; base tiles). */
static void quad(float v0[3], float v1[3], float v2[3], float v3[3],
                 float bs, float bt) {
    glBegin(GL_QUADS);
        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 0.f);
        glVertex3fv(v0);
        glMultiTexCoord2f(GL_TEXTURE0, bs, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 1.f, 0.f);
        glVertex3fv(v1);
        glMultiTexCoord2f(GL_TEXTURE0, bs, bt);
        glMultiTexCoord2f(GL_TEXTURE1, 1.f, 1.f);
        glVertex3fv(v2);
        glMultiTexCoord2f(GL_TEXTURE0, 0.f, bt);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 1.f);
        glVertex3fv(v3);
    glEnd();
}

void run_test(int w, int h) {
    make_textures();

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.3f, -3.f);
    glRotatef(8.f, 1.f, 0.f, 0.f);

    GLuint ids[2]; glGenTextures(2, ids);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, BT, BT, 0, GL_RGBA, GL_UNSIGNED_BYTE, base_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, LT, LT, 0, GL_RGBA, GL_UNSIGNED_BYTE, light_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glColor4f(1, 1, 1, 1);

    /* Corridor: floor, left wall, right wall, ceiling. */
    float fv0[3]={-1.2f,-0.5f,-0.5f}, fv1[3]={1.2f,-0.5f,-0.5f};
    float fv2[3]={ 1.2f,-0.5f,-6.5f}, fv3[3]={-1.2f,-0.5f,-6.5f};
    quad(fv0, fv1, fv2, fv3, 3.f, 6.f);

    float cv0[3]={-1.2f, 0.9f,-6.5f}, cv1[3]={1.2f, 0.9f,-6.5f};
    float cv2[3]={ 1.2f, 0.9f,-0.5f}, cv3[3]={-1.2f, 0.9f,-0.5f};
    quad(cv0, cv1, cv2, cv3, 3.f, 6.f);

    float lv0[3]={-1.2f,-0.5f,-0.5f}, lv1[3]={-1.2f,-0.5f,-6.5f};
    float lv2[3]={-1.2f, 0.9f,-6.5f}, lv3[3]={-1.2f, 0.9f,-0.5f};
    quad(lv0, lv1, lv2, lv3, 6.f, 2.f);

    float rv0[3]={ 1.2f,-0.5f,-6.5f}, rv1[3]={ 1.2f,-0.5f,-0.5f};
    float rv2[3]={ 1.2f, 0.9f,-0.5f}, rv3[3]={ 1.2f, 0.9f,-6.5f};
    quad(rv0, rv1, rv2, rv3, 6.f, 2.f);

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
