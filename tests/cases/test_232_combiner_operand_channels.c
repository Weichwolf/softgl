#include "harness.h"

static void panel(int w, int h, int col, int row) {
    float x0 = col*w/4.f+4, x1 = (col+1)*w/4.f-4;
    float y0 = row*h/8.f+4, y1 = (row+1)*h/8.f-4;
    for (int unit = 0; unit < 4; unit++)
        glMultiTexCoord2f(GL_TEXTURE0+unit, .5f, .5f);
    glBegin(GL_QUADS);
    glVertex2f(x0, y0); glVertex2f(x1, y0);
    glVertex2f(x1, y1); glVertex2f(x0, y1);
    glEnd();
}

/* Exercise channel selection and inversion through every combine operation.
 * Later stages retain the previous alpha and color; crossbar sources are
 * independent of the currently executing stage's own texture. */
void run_test(int w, int h) {
    static const GLenum rgb_ops[] = {
        GL_REPLACE, GL_MODULATE, GL_ADD, GL_ADD_SIGNED,
        GL_INTERPOLATE, GL_SUBTRACT, GL_DOT3_RGB, GL_DOT3_RGBA
    };
    static const GLenum operands[] = {
        GL_SRC_COLOR, GL_ONE_MINUS_SRC_COLOR,
        GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA
    };
    static const GLenum alpha_ops[] = {GL_REPLACE, GL_MODULATE, GL_INTERPOLATE};
    static const unsigned char texels[4][4] = {
        {32, 160, 224, 96}, {192, 64, 128, 208},
        {112, 208, 48, 144}, {224, 96, 176, 64}
    };
    const float constant[4] = {.125f, .25f, .375f, .625f};
    GLuint textures[4];
    glViewport(0, 0, w, h);
    glClearColor(.125f, .25f, .375f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glGenTextures(4, textures);
    for (int unit = 0; unit < 4; unit++) {
        glActiveTexture(GL_TEXTURE0+unit); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[unit]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0,
                     GL_RGBA, GL_UNSIGNED_BYTE, texels[unit]);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
        glTexEnvi(GL_TEXTURE_ENV, GL_RGB_SCALE, 1);
        glTexEnvi(GL_TEXTURE_ENV, GL_ALPHA_SCALE, 1);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_TEXTURE1);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_RGB, GL_TEXTURE3);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_ALPHA, GL_TEXTURE0);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_ALPHA, GL_TEXTURE2);
        for (int arg = 0; arg < 3; arg++) {
            glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB+arg, GL_SRC_COLOR);
            glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_ALPHA+arg, GL_SRC_ALPHA);
        }
    }
    glActiveTexture(GL_TEXTURE0);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE2);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_RGB, GL_CONSTANT);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_TEXTURE3);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_ALPHA, GL_CONSTANT);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_ALPHA, GL_TEXTURE1);
    for (int row = 0; row < 8; row++) for (int col = 0; col < 4; col++) {
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, rgb_ops[row]);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, alpha_ops[(row+col)%3]);
        for (int arg = 0; arg < 3; arg++) {
            glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB+arg, operands[(col+arg)%4]);
            glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_ALPHA+arg,
                       (col+arg)%2 ? GL_ONE_MINUS_SRC_ALPHA : GL_SRC_ALPHA);
        }
        glColor4f(.25f, .5f, .75f, .875f);
        if (col%2) {
            glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        } else glDisable(GL_BLEND);
        panel(w, h, col, row);
    }
    glDisable(GL_BLEND); glDeleteTextures(4, textures);
    for (int unit = 0; unit < 4; unit++) {
        glActiveTexture(GL_TEXTURE0+unit); glDisable(GL_TEXTURE_2D);
    }
    glActiveTexture(GL_TEXTURE0);
}
