#include "harness.h"
#include <math.h>

/* 100 axis-aligned additive particles. Seeded PRNG gives deterministic
 * positions/colors. Sprite texture is a radial Gaussian alpha-gated (but
 * we use additive blend, so the RGB accumulates toward white in the
 * densely-populated center and fades at the edges). */

#define ST 16
static unsigned char sprite[ST * ST * 4];

static unsigned int rng_state = 12345u;
static unsigned int rng(void) {
    rng_state = rng_state * 1664525u + 1013904223u;
    return rng_state;
}
static float rng_f(void) { return (float)(rng() & 0xFFFFFF) / (float)0xFFFFFF; }

static void make_sprite(void) {
    for (int y = 0; y < ST; y++)
        for (int x = 0; x < ST; x++) {
            float dx = (x - ST*0.5f + 0.5f) / (ST*0.5f);
            float dy = (y - ST*0.5f + 0.5f) / (ST*0.5f);
            float r2 = dx*dx + dy*dy;
            float v = expf(-3.f * r2);
            unsigned char c = (unsigned char)(v * 255);
            int i = (y * ST + x) * 4;
            sprite[i+0] = c; sprite[i+1] = c; sprite[i+2] = c;
            sprite[i+3] = c;
        }
}

void run_test(int w, int h) {
    make_sprite();
    glViewport(0, 0, w, h);
    glClearColor(0.03f, 0.02f, 0.08f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, ST, ST, 0, GL_RGBA, GL_UNSIGNED_BYTE, sprite);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);
    glDepthMask(GL_FALSE);

    rng_state = 99173u;
    glBegin(GL_QUADS);
    for (int i = 0; i < 100; i++) {
        float cx = (rng_f() * 2.f - 1.f) * aspect * 0.8f;
        float cy = (rng_f() * 2.f - 1.f) * 0.8f;
        float s  = 0.04f + 0.05f * rng_f();
        /* Warm color variance. */
        float r = 0.6f + 0.4f * rng_f();
        float g = 0.3f + 0.4f * rng_f();
        float b = 0.1f + 0.2f * rng_f();
        glColor3f(r, g, b);
        glTexCoord2f(0, 0); glVertex2f(cx - s, cy - s);
        glTexCoord2f(1, 0); glVertex2f(cx + s, cy - s);
        glTexCoord2f(1, 1); glVertex2f(cx + s, cy + s);
        glTexCoord2f(0, 1); glVertex2f(cx - s, cy + s);
    }
    glEnd();

    glDepthMask(GL_TRUE);
    glDisable(GL_BLEND);
    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &tex);
}
