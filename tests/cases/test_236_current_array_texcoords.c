#include "harness.h"
#include <stddef.h>

/* Disabled coordinate arrays use per-unit current coordinates. Exercise both
 * client vertices and indexed VBOs while two units have different constants. */
void run_test(int w, int h) {
    const float positions[] = {-.75f,-.75f,0, .75f,-.75f,0, -.75f,.75f,0, .75f,.75f,0};
    const GLuint indices[] = {0,1,2,2,1,3};
    const GLubyte pixels[] = {255,32,64,255, 32,255,64,255, 64,32,255,255, 128,192,224,255};
    glViewport(0,0,w,h);
    glClearColor(.1f,.1f,.1f,1); glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    GLuint textures[2]; glGenTextures(2,textures);
    for (int u = 0; u < 2; u++) {
        glActiveTexture(GL_TEXTURE0+u); glClientActiveTexture(GL_TEXTURE0+u);
        glBindTexture(GL_TEXTURE_2D,textures[u]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,u ? GL_MODULATE : GL_REPLACE);
        glDisableClientState(GL_TEXTURE_COORD_ARRAY);
        glMultiTexCoord4f(GL_TEXTURE0+u,u ? .25f : .75f,u ? .75f : .25f,0,1);
    }
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3,GL_FLOAT,0,positions);
    glViewport(0,0,w/2,h);
    glDrawArrays(GL_TRIANGLE_STRIP,0,4);
    glViewport(w/2,0,w-w/2,h);
    GLuint vbo; glGenBuffers(1,&vbo); glBindBuffer(GL_ARRAY_BUFFER,vbo);
    glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,GL_STATIC_DRAW);
    glVertexPointer(3,GL_FLOAT,0,NULL);
    glDrawElements(GL_TRIANGLES,6,GL_UNSIGNED_INT,indices);
    glBindBuffer(GL_ARRAY_BUFFER,0); glDeleteBuffers(1,&vbo);
    glDeleteTextures(2,textures);
}
