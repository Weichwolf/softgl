#include "harness.h"
#include <math.h>

/* Lens-flare stack: 5 additive billboards along the line from a bright
 * source (the "sun" at screen-space (0.6, 0.5)) through the screen center
 * (0, 0). Each flare has a distinct radial sprite with its own color/size,
 * all additive. */

#define T 16
static unsigned char core_sprite[T * T * 4];
static unsigned char ring_sprite[T * T * 4];
static unsigned char hex_sprite [T * T * 4];

static void make_sprites(void) {
    for (int y = 0; y < T; y++)
        for (int x = 0; x < T; x++) {
            float dx = (x - T*0.5f + 0.5f) / (T*0.5f);
            float dy = (y - T*0.5f + 0.5f) / (T*0.5f);
            float r2 = dx*dx + dy*dy;
            unsigned char core = (unsigned char)(fmaxf(0.f, expf(-4.f * r2)) * 255);
            float rr = sqrtf(r2);
            float ring = fmaxf(0.f, 1.f - fabsf(rr - 0.6f) * 6.f);
            unsigned char ringc = (unsigned char)(ring * 180);
            int hexm = (int)(fmaxf(0.f, 1.f - fmaxf(fabsf(dx), fabsf(dy)) * 1.6f) * 200);
            if (hexm < 0) hexm = 0;
            int i = (y * T + x) * 4;
            core_sprite[i+0] = core_sprite[i+1] = core_sprite[i+2] = core_sprite[i+3] = core;
            ring_sprite[i+0] = ring_sprite[i+1] = ring_sprite[i+2] = ring_sprite[i+3] = ringc;
            hex_sprite[i+0] = hex_sprite[i+1] = hex_sprite[i+2] = hex_sprite[i+3] = (unsigned char)hexm;
        }
}

struct flare {
    float t;      /* position along line, 0 = sun, 1 = center, -0.3 beyond */
    float size;
    float r, g, b;
    int sprite;   /* 0=core 1=ring 2=hex */
};

void run_test(int w, int h) {
    make_sprites();
    glViewport(0, 0, w, h);
    glClearColor(0.04f, 0.05f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint ids[3]; glGenTextures(3, ids);
    unsigned char *datas[3] = { core_sprite, ring_sprite, hex_sprite };
    for (int i = 0; i < 3; i++) {
        glBindTexture(GL_TEXTURE_2D, ids[i]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, T, T, 0, GL_RGBA, GL_UNSIGNED_BYTE, datas[i]);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    }
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);

    const float sun[2] = { 0.6f * aspect, 0.5f };
    const float cen[2] = { 0.f, 0.f };
    const float dx = cen[0] - sun[0], dy = cen[1] - sun[1];

    struct flare flares[] = {
        { 0.00f, 0.30f, 1.00f, 0.95f, 0.80f, 0 }, /* sun core */
        { 0.25f, 0.10f, 0.80f, 0.40f, 0.20f, 1 },
        { 0.55f, 0.07f, 0.20f, 0.60f, 0.80f, 2 },
        { 0.85f, 0.12f, 0.90f, 0.50f, 0.30f, 1 },
        { 1.25f, 0.09f, 0.30f, 0.70f, 0.35f, 2 },
    };

    for (unsigned f = 0; f < sizeof(flares)/sizeof(flares[0]); f++) {
        float cx = sun[0] + dx * flares[f].t;
        float cy = sun[1] + dy * flares[f].t;
        float s  = flares[f].size;
        glBindTexture(GL_TEXTURE_2D, ids[flares[f].sprite]);
        glColor3f(flares[f].r, flares[f].g, flares[f].b);
        glBegin(GL_QUADS);
            glTexCoord2f(0, 0); glVertex2f(cx - s, cy - s);
            glTexCoord2f(1, 0); glVertex2f(cx + s, cy - s);
            glTexCoord2f(1, 1); glVertex2f(cx + s, cy + s);
            glTexCoord2f(0, 1); glVertex2f(cx - s, cy + s);
        glEnd();
    }

    glDisable(GL_BLEND);
    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(3, ids);
}
