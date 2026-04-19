#include "harness.h"

/* GL_DOT3_RGBA: dot-product combiner where alpha ALSO receives the dot3
 * result (not the alpha-combine path). Used when the dot3 scalar also wants
 * to drive a blend gate.
 *
 * Setup: texture = flat normal map (0,0,1) encoded as RGB=(128,128,255).
 * Vertex color encodes the light direction (lx,ly,lz) as (l+1)/2.
 * Since normal=(0,0,1), dot(n,l) == lz. We pick lz=0.75 so both RGB and A
 * get 0.75. Alpha blend with a contrasting clear makes the alpha visible. */

static unsigned char normalmap[4 * 4 * 4];

static void make_normal(void) {
    for (int i = 0; i < 16; i++) {
        normalmap[i*4+0] = 128;
        normalmap[i*4+1] = 128;
        normalmap[i*4+2] = 255;
        normalmap[i*4+3] = 255;
    }
}

static const float lx = 0.f, ly = 0.f, lz = 0.75f;

void run_test(int w, int h) {
    make_normal();
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.5f, 0.0f, 1.f);   /* green clear, visible through alpha */
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);

    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGBA);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    float cr = 0.5f + lx * 0.5f;
    float cg = 0.5f + ly * 0.5f;
    float cb = 0.5f + lz * 0.5f;

    glColor4f(cr, cg, cb, 1.f);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.7f, -0.7f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.7f, -0.7f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.7f,  0.7f);
        glTexCoord2f(0.f, 1.f); glVertex2f(-0.7f,  0.7f);
    glEnd();

    glDisable(GL_BLEND);
    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &tex);
}
