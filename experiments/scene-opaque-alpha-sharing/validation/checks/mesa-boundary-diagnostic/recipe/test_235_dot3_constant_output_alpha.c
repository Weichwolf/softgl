#include "harness.h"

void run_test(int w, int h) {
    glViewport(0,0,w,h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,w,0,h,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glClearColor(.12f,.2f,.31f,.7f); glClear(GL_COLOR_BUFFER_BIT);
    const GLubyte normal[4] = {180,150,210,255}, white[4] = {255,255,255,255};
    const GLubyte albedo[16] = {220,60,80,0,80,220,60,64,60,80,220,128,160,140,100,255};
    const GLubyte reflection[4] = {10,15,20,255};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0+u);
        GLuint texture; glGenTextures(1,&texture); glBindTexture(GL_TEXTURE_2D,texture);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,u == 2 ? 2 : 1,u == 2 ? 2 : 1,0,
            GL_RGBA,GL_UNSIGNED_BYTE,u == 0 ? normal : u == 1 ? white : u == 2 ? albedo : reflection);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,u == 0 ? GL_DOT3_RGB : u == 2 ? GL_MODULATE : GL_ADD);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,u == 0 ? GL_TEXTURE : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,u == 0 ? GL_PRIMARY_COLOR : u == 1 ? GL_CONSTANT : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,u == 2 ? GL_MODULATE : GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_ALPHA,GL_TEXTURE);
        const GLfloat ambient[4] = {.1f,.15f,.2f,1.f};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,ambient);
    }
    const GLfloat alpha[] = {0.f,.4f,.40000004f,.75f,1.f,1.f};
    for (int row = 0; row < 3; row++) for (int column = 0; column < 6; column++) {
        if (row == 1) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
        else glDisable(GL_ALPHA_TEST);
        if (row == 2) { glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA); }
        else glDisable(GL_BLEND);
        glActiveTexture(GL_TEXTURE3);
        const GLfloat environment[4] = {0.f,0.f,0.f,alpha[column]};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,environment);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,column == 5 ? GL_PREVIOUS : GL_CONSTANT);
        glColor4f(.8f,.7f,.9f,.6f);
        const GLfloat x0 = (GLfloat)(column*w/6+4), x1 = (GLfloat)((column+1)*w/6-4);
        const GLfloat y0 = (GLfloat)(row*h/3+4), y1 = (GLfloat)((row+1)*h/3-4);
        glBegin(GL_QUADS);
        for (int corner = 0; corner < 4; corner++) {
            GLfloat x = corner == 1 || corner == 2 ? 1.f : 0.f;
            GLfloat y = corner >= 2 ? 1.f : 0.f;
            for (int u = 0; u < 4; u++) glMultiTexCoord2f(GL_TEXTURE0+u,x,y);
            glVertex2f(x ? x1 : x0,y ? y1 : y0);
        }
        glEnd();
    }
}
