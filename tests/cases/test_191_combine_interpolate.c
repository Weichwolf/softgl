#include "harness.h"

/* GL_COMBINE + GL_INTERPOLATE with three sources: TEXTURE, PREVIOUS, CONSTANT.
 *
 * Two units: unit 0 does REPLACE with tex0 (a solid-red texture). Unit 1 runs
 * a COMBINE/INTERPOLATE that mixes its own texel (tex1, solid-blue) with the
 * PREVIOUS fragment color (red from unit 0) using CONSTANT=(0.5,0.5,0.5,0.5)
 * as the interpolation weight, producing a 50/50 mix (purple-ish).
 * Per spec: out = arg0 * arg2 + arg1 * (1 - arg2).
 */

static unsigned char tex_red[4 * 4 * 4];
static unsigned char tex_blue[4 * 4 * 4];

static void make_textures(void) {
    for (int i = 0; i < 16; i++) {
        tex_red[i*4+0] = 255; tex_red[i*4+1] = 0;
        tex_red[i*4+2] = 0;   tex_red[i*4+3] = 255;

        tex_blue[i*4+0] = 0;  tex_blue[i*4+1] = 0;
        tex_blue[i*4+2] = 255; tex_blue[i*4+3] = 255;
    }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint ids[2]; glGenTextures(2, ids);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex_red);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex_blue);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_INTERPOLATE);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PREVIOUS);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_RGB, GL_CONSTANT);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND2_RGB, GL_SRC_COLOR);
    float env_col[4] = { 0.5f, 0.5f, 0.5f, 1.f };
    glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, env_col);
    /* Alpha combiner left default (MODULATE of tex.a * prev.a = 1*1=1). */

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 0.f);
        glVertex2f(-0.7f, -0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 1.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 1.f, 0.f);
        glVertex2f( 0.7f, -0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 1.f, 1.f);
        glMultiTexCoord2f(GL_TEXTURE1, 1.f, 1.f);
        glVertex2f( 0.7f,  0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 1.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 1.f);
        glVertex2f(-0.7f,  0.7f);
    glEnd();

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDeleteTextures(2, ids);
}
