#include "harness.h"

void run_test(int w, int h) {
    int ok = glIsEnabled(GL_MULTISAMPLE) && !glIsEnabled(GL_SAMPLE_COVERAGE) &&
             !glIsEnabled(GL_SAMPLE_ALPHA_TO_COVERAGE) && !glIsEnabled(GL_SAMPLE_ALPHA_TO_ONE);
    GLfloat value;
    GLboolean invert;
    GLint buffers, samples;
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    glGetBooleanv(GL_SAMPLE_COVERAGE_INVERT, &invert);
    glGetIntegerv(GL_SAMPLE_BUFFERS, &buffers);
    glGetIntegerv(GL_SAMPLES, &samples);
    ok &= value == 1.f && invert == GL_FALSE && buffers == 0 && samples == 0;
    glSampleCoverage(-1.f, GL_TRUE);
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    glGetBooleanv(GL_SAMPLE_COVERAGE_INVERT, &invert);
    ok &= value == 0.f && invert == GL_TRUE;
    glSampleCoverage(2.f, GL_FALSE);
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    ok &= value == 1.f;
    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
    glSampleCoverage(.375f, GL_TRUE);
    glEnable(GL_SAMPLE_COVERAGE);
    glEndList();
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    ok &= value == 1.f && !glIsEnabled(GL_SAMPLE_COVERAGE);
    glCallList(list);
    glDeleteLists(list, 1);
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    glGetBooleanv(GL_SAMPLE_COVERAGE_INVERT, &invert);
    ok &= value == .375f && invert == GL_TRUE && glIsEnabled(GL_SAMPLE_COVERAGE);
    glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE);
    glEnable(GL_SAMPLE_ALPHA_TO_ONE);
    glDisable(GL_MULTISAMPLE);
    ok &= !glIsEnabled(GL_MULTISAMPLE) && glIsEnabled(GL_SAMPLE_ALPHA_TO_COVERAGE) &&
          glIsEnabled(GL_SAMPLE_ALPHA_TO_ONE);
    glBegin(GL_POINTS);
    glSampleCoverage(.5f, GL_FALSE);
    glEnd();
    ok &= glGetError() == GL_INVALID_OPERATION;
    glGetFloatv(GL_SAMPLE_COVERAGE_VALUE, &value);
    ok &= value == .375f;
    glViewport(0, 0, w, h);
    glClearColor(ok ? 0.f : 1.f, ok ? 1.f : 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
