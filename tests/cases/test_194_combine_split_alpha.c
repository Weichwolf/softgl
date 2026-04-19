#include "harness.h"

/* Independent RGB and Alpha combiners.
 * Unit 0: plain REPLACE with a color texture (colorful). Produces PREVIOUS
 *         color = tex0.rgb, alpha = tex0.a (=255).
 * Unit 1: COMBINE where RGB = MODULATE(PREVIOUS, TEXTURE) with operand
 *         SRC_COLOR (classic lighting-style modulation with a grayscale
 *         shadow map), but Alpha = REPLACE from TEXTURE's alpha (i.e. alpha
 *         source is decoupled from RGB).
 * Blend with GL_SRC_ALPHA/GL_ONE_MINUS_SRC_ALPHA over the red clear so we
 * can see the alpha path actually sourced the right channel. */

static unsigned char tex_color[8 * 8 * 4];
static unsigned char tex_mask[8 * 8 * 4];

static void make_textures(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            tex_color[i+0] = (unsigned char)(x * 32);
            tex_color[i+1] = (unsigned char)(y * 32);
            tex_color[i+2] = 200;
            tex_color[i+3] = 255;

            /* Diagonal alpha gradient — 0 top-left, 255 bottom-right. RGB
             * stays mid-gray so if the alpha combiner accidentally reads
             * RGB the result would be a gray modulation not a transparency. */
            int a = (x + y) * 255 / 14;
            if (a > 255) a = 255;
            tex_mask[i+0] = 180;
            tex_mask[i+1] = 180;
            tex_mask[i+2] = 180;
            tex_mask[i+3] = (unsigned char)a;
        }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.6f, 0.0f, 0.0f, 1.f);  /* dark red so alpha blend is visible */
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    GLuint ids[2]; glGenTextures(2, ids);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex_color);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex_mask);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);

    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_MODULATE);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_PREVIOUS);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_ALPHA, GL_SRC_ALPHA);

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

    glDisable(GL_BLEND);
    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDeleteTextures(2, ids);
}
