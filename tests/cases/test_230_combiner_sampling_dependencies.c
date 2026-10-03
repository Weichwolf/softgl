#include "harness.h"

static void sources(GLenum channel, GLenum a, GLenum b, GLenum c) {
    glTexEnvi(GL_TEXTURE_ENV, channel, a);
    glTexEnvi(GL_TEXTURE_ENV, channel+1, b);
    glTexEnvi(GL_TEXTURE_ENV, channel+2, c);
}
static void panel(int w, int h, int col, int row) {
    float x0=col*w/4.f+4, x1=(col+1)*w/4.f-4;
    float y0=row*h/6.f+4, y1=(row+1)*h/6.f-4;
    for (int unit=0;unit<4;unit++) glMultiTexCoord2f(GL_TEXTURE0+unit,.125f+unit*.25f,.5f);
    glBegin(GL_QUADS);
    glVertex2f(x0,y0); glVertex2f(x1,y0); glVertex2f(x1,y1); glVertex2f(x0,y1);
    glEnd();
}
/* Sampling dependencies span RGB, alpha and other units. A stage which reads
 * only PREVIOUS/CONSTANT must still execute; DOT3_RGBA overrides alpha inputs. */
void run_test(int w, int h) {
    glViewport(0,0,w,h); glClearColor(.06f,.08f,.1f,1); glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,w,0,h,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    GLuint textures[4]; glGenTextures(4,textures);
    for (int unit=0;unit<4;unit++) {
        unsigned char pixels[4*4];
        for (int x=0;x<4;x++) {
            pixels[x*4]=153+unit*18-x*11; pixels[x*4+1]=114+unit*25+x*9;
            pixels[x*4+2]=179-unit*16+x*7; pixels[x*4+3]=51+unit*37+x*11;
        }
        glActiveTexture(GL_TEXTURE0+unit); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D,textures[unit]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,4,1,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
    }
    for (int row=0;row<6;row++) for (int col=0;col<4;col++) {
        for (int unit=0;unit<4;unit++) {
            glActiveTexture(GL_TEXTURE0+unit);
            glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,GL_REPLACE);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,GL_REPLACE);
            sources(GL_SOURCE0_RGB,GL_PREVIOUS,GL_TEXTURE1,GL_TEXTURE3);
            sources(GL_SOURCE0_ALPHA,GL_PREVIOUS,GL_TEXTURE2,GL_TEXTURE3);
            for (int arg=0;arg<3;arg++) {
                glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB+arg,GL_SRC_COLOR);
                glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA+arg,GL_SRC_ALPHA);
            }
            float constant[4]={.125f,.25f,.375f,.625f};
            glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,constant);
        }
        glActiveTexture(GL_TEXTURE0);
        switch (row) {
        case 0:
            sources(GL_SOURCE0_RGB,GL_TEXTURE2,GL_TEXTURE1,GL_TEXTURE3); break;
        case 1:
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,GL_MODULATE);
            sources(GL_SOURCE0_RGB,GL_TEXTURE0,GL_TEXTURE3,GL_TEXTURE2);
            sources(GL_SOURCE0_ALPHA,GL_TEXTURE1,GL_TEXTURE2,GL_TEXTURE3); break;
        case 2:
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,GL_INTERPOLATE);
            sources(GL_SOURCE0_RGB,GL_TEXTURE2,GL_TEXTURE3,GL_TEXTURE1);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,GL_INTERPOLATE);
            sources(GL_SOURCE0_ALPHA,GL_TEXTURE1,GL_TEXTURE2,GL_TEXTURE0); break;
        case 3: case 4:
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,row==3 ? GL_DOT3_RGB : GL_DOT3_RGBA);
            sources(GL_SOURCE0_RGB,GL_TEXTURE,GL_PRIMARY_COLOR,GL_TEXTURE1);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,GL_INTERPOLATE);
            sources(GL_SOURCE0_ALPHA,GL_TEXTURE3,GL_TEXTURE2,GL_TEXTURE1); break;
        case 5:
            sources(GL_SOURCE0_RGB,GL_CONSTANT,GL_TEXTURE1,GL_TEXTURE3);
            glActiveTexture(GL_TEXTURE1);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,GL_MODULATE);
            sources(GL_SOURCE0_RGB,GL_PREVIOUS,GL_CONSTANT,GL_TEXTURE3);
            sources(GL_SOURCE0_ALPHA,GL_TEXTURE0,GL_TEXTURE2,GL_TEXTURE3);
            glActiveTexture(GL_TEXTURE2);
            sources(GL_SOURCE0_ALPHA,GL_TEXTURE1,GL_TEXTURE3,GL_TEXTURE0);
            glActiveTexture(GL_TEXTURE3);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,GL_ADD);
            sources(GL_SOURCE0_RGB,GL_PREVIOUS,GL_CONSTANT,GL_TEXTURE2);
            glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,GL_MODULATE);
            sources(GL_SOURCE0_ALPHA,GL_PREVIOUS,GL_TEXTURE0,GL_TEXTURE3); break;
        }
        glActiveTexture(GL_TEXTURE0);
        glColor4f(.8f,.6f,.9f,.8f);
        if (col==1 || col==3) { glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA); }
        else glDisable(GL_BLEND);
        if (col>=2) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.45f); }
        else glDisable(GL_ALPHA_TEST);
        panel(w,h,col,row);
    }
    glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST); glDeleteTextures(4,textures);
}
