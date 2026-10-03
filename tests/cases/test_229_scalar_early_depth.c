#include "harness.h"

/* Generic tex-env forces scalar shading. Encode complete query results to
 * check every depth function, alpha rejection and stencil depth-fail writes. */
static void quad(float z) {
    glBegin(GL_QUADS);
    glVertex3f(-1.f, -1.f, z); glVertex3f(1.f, -1.f, z);
    glVertex3f(1.f, 1.f, z); glVertex3f(-1.f, 1.f, z);
    glEnd();
}

void run_test(int w, int h) {
    const GLenum funcs[] = {GL_NEVER, GL_LESS, GL_EQUAL, GL_LEQUAL,
                           GL_GREATER, GL_NOTEQUAL, GL_GEQUAL, GL_ALWAYS};
    const GLubyte texel[] = {64, 128, 192, 128};
    GLuint texture, query, results[64];
    glGenTextures(1, &texture); glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, texel);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glGenQueries(1, &query);
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glEnable(GL_SCISSOR_TEST); glScissor(0, 0, 64, 64);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    for (int mode = 0; mode < 4; mode++) for (int f = 0; f < 8; f++) {
        int index = mode*8+f;
        glDepthMask(GL_TRUE); glClearDepth(.5); glClearStencil(1);
        glClear(GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
        glEnable(GL_TEXTURE_2D); glEnable(GL_DEPTH_TEST); glDepthFunc(funcs[f]);
        glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, mode & 1 ? .75f : .25f);
        if (mode >= 2) glEnable(GL_STENCIL_TEST); else glDisable(GL_STENCIL_TEST);
        glStencilFunc(GL_ALWAYS, 3, ~0u); glStencilOp(GL_KEEP, GL_INCR, GL_REPLACE);
        glBeginQuery(GL_SAMPLES_PASSED, query);
        quad(.5f); quad(0.f); quad(-.5f);
        glEndQuery(GL_SAMPLES_PASSED);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT, &results[index*2]);
        glDisable(GL_TEXTURE_2D); glDisable(GL_DEPTH_TEST); glDisable(GL_ALPHA_TEST);
        glEnable(GL_STENCIL_TEST); glStencilFunc(GL_EQUAL, 4, ~0u);
        glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
        glBeginQuery(GL_SAMPLES_PASSED, query); quad(0.f); glEndQuery(GL_SAMPLES_PASSED);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT, &results[index*2+1]);
        glDisable(GL_STENCIL_TEST);
    }
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    for (int i = 0; i < 64; i++) {
        GLuint n = results[i];
        glScissor(i*w/64, 0, (i+1)*w/64-i*w/64, h);
        glClearColor((n & 255u)/255.f, ((n >> 8) & 255u)/255.f,
                     ((n >> 16) & 255u)/255.f, ((n >> 24) & 255u)/255.f);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    glDisable(GL_SCISSOR_TEST);
    glDeleteQueries(1, &query); glDeleteTextures(1, &texture);
}
