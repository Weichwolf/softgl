#include "harness.h"
#include <math.h>

/* Height-based 2-texture blend on a hillside grid. Unit 0: grass, Unit 1:
 * rock. Per-vertex alpha drives the blend via INTERPOLATE combiner:
 * result = rock * alpha + grass * (1 - alpha). Alpha is derived from the
 * vertex y-height: 0 at y=0, 1 at y=0.8. */

#define GT 16
static unsigned char grass_tex[GT * GT * 4];
static unsigned char rock_tex[GT * GT * 4];

static void make_textures(void) {
    for (int y = 0; y < GT; y++)
        for (int x = 0; x < GT; x++) {
            int i = (y * GT + x) * 4;
            int noise = ((x * 7 + y * 13) * 131 + x * y) & 31;
            grass_tex[i+0] = 60 + noise;
            grass_tex[i+1] = 120 + noise;
            grass_tex[i+2] = 40 + noise/2;
            grass_tex[i+3] = 255;
            int rn = ((x * 11 + y * 5) * 97) & 31;
            rock_tex[i+0] = 120 + rn;
            rock_tex[i+1] = 115 + rn;
            rock_tex[i+2] = 110 + rn;
            rock_tex[i+3] = 255;
        }
}

#define N 24
static float height(float x, float z) {
    return 0.4f * sinf(1.1f * x) * cosf(0.9f * z) + 0.2f * sinf(2.3f * x + 0.7f * z);
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.3f, 0.4f, 0.5f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.3f, -5.f);
    glRotatef(28.f, 1.f, 0.f, 0.f);

    GLuint ids[2]; glGenTextures(2, ids);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, GT, GT, 0, GL_RGBA, GL_UNSIGNED_BYTE, grass_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, GT, GT, 0, GL_RGBA, GL_UNSIGNED_BYTE, rock_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_INTERPOLATE);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PREVIOUS);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE2_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND2_RGB, GL_SRC_ALPHA);

    /* Grid strips. Per-vertex color.a encodes the rock-blend weight. */
    const float step = 4.f / N;
    for (int j = 0; j < N; j++) {
        float z0 = -2.f + (float)j * step;
        float z1 = z0 + step;
        glBegin(GL_QUAD_STRIP);
        for (int i = 0; i <= N; i++) {
            float x = -2.f + (float)i * step;
            float y0 = height(x, z0);
            float y1 = height(x, z1);
            float a0 = (y0 + 0.2f) / 0.8f;
            float a1 = (y1 + 0.2f) / 0.8f;
            if (a0 < 0.f) a0 = 0.f; if (a0 > 1.f) a0 = 1.f;
            if (a1 < 0.f) a1 = 0.f; if (a1 > 1.f) a1 = 1.f;
            float u = (x + 2.f) * 0.5f;
            float v0t = (z0 + 2.f) * 0.5f;
            float v1t = (z1 + 2.f) * 0.5f;
            glColor4f(1.f, 1.f, 1.f, a0);
            glMultiTexCoord2f(GL_TEXTURE0, u, v0t);
            glMultiTexCoord2f(GL_TEXTURE1, u, v0t);
            glVertex3f(x, y0, z0);
            glColor4f(1.f, 1.f, 1.f, a1);
            glMultiTexCoord2f(GL_TEXTURE0, u, v1t);
            glMultiTexCoord2f(GL_TEXTURE1, u, v1t);
            glVertex3f(x, y1, z1);
        }
        glEnd();
    }

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
