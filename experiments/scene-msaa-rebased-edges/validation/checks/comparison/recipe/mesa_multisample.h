#ifndef COMPARISON_MESA_MULTISAMPLE_H
#define COMPARISON_MESA_MULTISAMPLE_H

/* Genuine same-resolution MSAA; the OSMesa default buffer is single-sample.
 * Source: Khronos GL_ARB_framebuffer_object specification, revision 38. */
#include <GL/glext.h>

typedef struct {
    GLuint framebuffer, color, depth;
    GLint samples, sample_buffers, color_samples, depth_samples;
    GLfloat positions[4][2];
} comparison_multisample;

static int comparison_multisample_create(comparison_multisample *m, int w, int h, int samples) {
    memset(m, 0, sizeof(*m));
    if (samples != 0 && samples != 4) return 0;
    if (samples) {
        GLint maximum = 0;
        glGetIntegerv(GL_MAX_SAMPLES, &maximum);
        if (maximum < samples) return 0;
        glGenFramebuffers(1, &m->framebuffer);
        glBindFramebuffer(GL_FRAMEBUFFER, m->framebuffer);
        glGenRenderbuffers(1, &m->color);
        glBindRenderbuffer(GL_RENDERBUFFER, m->color);
        glRenderbufferStorageMultisample(GL_RENDERBUFFER, samples, GL_RGBA8, w, h);
        glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_SAMPLES, &m->color_samples);
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, m->color);
        glGenRenderbuffers(1, &m->depth);
        glBindRenderbuffer(GL_RENDERBUFFER, m->depth);
        glRenderbufferStorageMultisample(GL_RENDERBUFFER, samples, GL_DEPTH24_STENCIL8, w, h);
        glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_SAMPLES, &m->depth_samples);
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, m->depth);
        glDrawBuffer(GL_COLOR_ATTACHMENT0);
        glReadBuffer(GL_COLOR_ATTACHMENT0);
        if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE) return 0;
    }
    glGetIntegerv(GL_SAMPLES, &m->samples);
    glGetIntegerv(GL_SAMPLE_BUFFERS, &m->sample_buffers);
    if (m->samples != samples || m->sample_buffers != (samples != 0)) return 0;
    if (samples && (m->color_samples != samples || m->depth_samples != samples)) return 0;
    glEnable(GL_MULTISAMPLE);
    for (int i = 0; i < samples; i++) glGetMultisamplefv(GL_SAMPLE_POSITION, i, m->positions[i]);
    return glGetError() == GL_NO_ERROR;
}

static void comparison_multisample_finish(const comparison_multisample *m, int w, int h) {
    if (m->framebuffer) {
        glBindFramebuffer(GL_READ_FRAMEBUFFER, m->framebuffer);
        glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
        glDrawBuffer(GL_FRONT);
        glBlitFramebuffer(0, 0, w, h, 0, 0, w, h, GL_COLOR_BUFFER_BIT, GL_NEAREST);
    }
    glFinish();
    if (m->framebuffer) glBindFramebuffer(GL_FRAMEBUFFER, m->framebuffer);
}

static void comparison_multisample_destroy(comparison_multisample *m) {
    if (!m->framebuffer) return;
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    glDeleteFramebuffers(1, &m->framebuffer);
    glDeleteRenderbuffers(1, &m->color);
    glDeleteRenderbuffers(1, &m->depth);
}
#endif
