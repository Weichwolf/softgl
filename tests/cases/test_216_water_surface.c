#include "harness.h"
#include <math.h>

/* Water surface combining a "reflection" base layer with a normal-map DOT3
 * lighting term for gischt highlights.
 *   Unit 0: reflection texture (warped sky/gradient) — acts as fake
 *           refraction underneath.
 *   Unit 1: normal map (waves) combined DOT3 against a light direction
 *           packed as primary-color. MODULATE unit 1 against PREVIOUS so
 *           the waves brighten the base where they face the light. */

#define WT 32
static unsigned char normalmap[WT * WT * 4];
#define RT 32
static unsigned char reflect_tex[RT * RT * 4];

static void make_normalmap(void) {
    for (int y = 0; y < WT; y++)
        for (int x = 0; x < WT; x++) {
            float u = (float)x / WT * 6.2832f;
            float v = (float)y / WT * 6.2832f;
            /* Two-scale wave derivatives. */
            float nx = 0.4f * cosf(u) + 0.2f * cosf(2.3f * u + 1.1f * v);
            float ny = 0.4f * cosf(v) + 0.2f * cosf(1.7f * v - 0.7f * u);
            float nz = sqrtf(fmaxf(0.f, 1.f - nx*nx - ny*ny));
            int i = (y * WT + x) * 4;
            normalmap[i+0] = (unsigned char)((nx * 0.5f + 0.5f) * 255);
            normalmap[i+1] = (unsigned char)((ny * 0.5f + 0.5f) * 255);
            normalmap[i+2] = (unsigned char)((nz * 0.5f + 0.5f) * 255);
            normalmap[i+3] = 255;
        }
}

static void make_reflect(void) {
    for (int y = 0; y < RT; y++)
        for (int x = 0; x < RT; x++) {
            float t = (float)y / (RT - 1);
            /* Vertical sky reflection with a horizon band. */
            float r = 0.15f + 0.35f * t;
            float g = 0.25f + 0.45f * t;
            float b = 0.45f + 0.45f * t;
            /* Add a warmer band in the middle (distant sun). */
            float sun = fmaxf(0.f, 1.f - fabsf(t - 0.55f) * 8.f);
            r += sun * 0.4f; g += sun * 0.3f; b += sun * 0.1f;
            if (r > 1.f) r = 1.f;
            if (g > 1.f) g = 1.f;
            if (b > 1.f) b = 1.f;
            int i = (y * RT + x) * 4;
            reflect_tex[i+0] = (unsigned char)(r * 255);
            reflect_tex[i+1] = (unsigned char)(g * 255);
            reflect_tex[i+2] = (unsigned char)(b * 255);
            reflect_tex[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_normalmap();
    make_reflect();

    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.07f, 0.12f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.2f, -3.f);
    glRotatef(30.f, 1.f, 0.f, 0.f);

    /* Light direction packed as primary color. Light from above-right. */
    const float lx = 0.3f, ly = 0.2f, lz = 0.93f;
    const float cr = lx * 0.5f + 0.5f;
    const float cg = ly * 0.5f + 0.5f;
    const float cb = lz * 0.5f + 0.5f;

    GLuint ids[2]; glGenTextures(2, ids);
    /* Unit 0: reflection (REPLACE). */
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, RT, RT, 0, GL_RGBA, GL_UNSIGNED_BYTE, reflect_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Unit 1: normal map + DOT3 vs PRIMARY_COLOR, then ADD with PREVIOUS. */
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, WT, WT, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    /* Chain: dot3 with primary color, ADD against PREVIOUS (reflection). */
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    glColor3f(cr, cg, cb);

    /* Water quad with tessellation so UVs interpolate smoothly. */
    const int N = 8;
    for (int j = 0; j < N; j++) {
        float v0 = (float)j / N;
        float v1 = (float)(j+1) / N;
        glBegin(GL_QUAD_STRIP);
        for (int i = 0; i <= N; i++) {
            float u = (float)i / N;
            float x = (u - 0.5f) * 3.f;
            float z0 = -1.f - v0 * 4.f;
            float z1 = -1.f - v1 * 4.f;
            /* Ref coord: sky reflection — use v along the world-Z axis. */
            float rv0 = 1.f - v0, rv1 = 1.f - v1;
            glMultiTexCoord2f(GL_TEXTURE0, u * 2.f, rv0);
            glMultiTexCoord2f(GL_TEXTURE1, u * 4.f, v0 * 4.f);
            glVertex3f(x, 0.f, z0);
            glMultiTexCoord2f(GL_TEXTURE0, u * 2.f, rv1);
            glMultiTexCoord2f(GL_TEXTURE1, u * 4.f, v1 * 4.f);
            glVertex3f(x, 0.f, z1);
        }
        glEnd();
    }

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
