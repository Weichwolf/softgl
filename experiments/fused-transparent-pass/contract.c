/* Independent constant-material oracle for premultiplied single-pass RGB.
 * D=.5, H=.5, S=.25 or .0625; tint=(.4,.2,.1,.5).
 * RGB = .5*A + S*tint.rgb*.5 + background*(1-A), background=(64,128,192)/255.
 * A is 0,64/255,1. The tables are independently rounded byte results. */
#include "types.h"
#include "workers.h"
#include <stdio.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
static GLuint albedo[3];
static const uint8_t expected[2][3][4] = {
    {{77,134,195,255},{93,134,179,255},{140,134,131,255}},
    {{67,130,193,255},{83,129,177,255},{131,129,128,255}}
};
static const GLfloat points[18] = {
    -.8f,-.8f,-2.f, .8f,-.8f,-2.f, .8f,.8f,-2.f,
    -.8f,-.8f,-2.f, .8f,.8f,-2.f, -.8f,.8f,-2.f
};
static void attributes(void *data, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    (void)data; (void)index;
    color[0]=.75f;color[1]=color[2]=.5f;color[3]=1.f;
    uv[1][0]=.75f;uv[1][1]=uv[1][2]=.5f;uv[1][3]=1.f;
}
static void initialize(softgl_ctx *c, int helpers) {
    softgl_make_current(c); sg_workers_shutdown(c);
    if (helpers) sg_workers_init(c,helpers);
    glViewport(0,0,640,360);
    glMatrixMode(GL_PROJECTION);glLoadIdentity();glOrtho(-1,1,-1,1,1,10);
    glMatrixMode(GL_MODELVIEW);glLoadIdentity();
    glEnableClientState(GL_VERTEX_ARRAY);glVertexPointer(3,GL_FLOAT,0,points);
    glColor4f(.75f,.5f,.5f,1.f);
    softgl_set_vertex_attributes_full(attributes,NULL);
    for (int u=0;u<4;u++) {
        glActiveTexture(GL_TEXTURE0+u);glEnable(GL_TEXTURE_2D);
        GLuint id;glGenTextures(1,&id);glBindTexture(GL_TEXTURE_2D,id);
        const uint8_t normal[4]={255,128,128,255},white[4]={255,255,255,255},black[4]={0,0,0,255};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,u==0?normal:u==3?black:white);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,u==0?GL_DOT3_RGB:u==2?GL_MODULATE:GL_ADD);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,u==0?GL_TEXTURE:GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,u==0?GL_PRIMARY_COLOR:u==1?GL_CONSTANT:GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,u==2?GL_MODULATE:GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_ALPHA,GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA,GL_SRC_ALPHA);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_ALPHA,GL_SRC_ALPHA);
        const GLfloat ambient[4]={0,0,0,1};glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,ambient);
        glMultiTexCoord4f(GL_TEXTURE0+u,u==1?.75f:0.f,u==1?.5f:0.f,u==1?.5f:0.f,1.f);
    }
    glActiveTexture(GL_TEXTURE2);glGenTextures(3,albedo);
    const uint8_t alpha[3]={0,64,255};
    for(int a=0;a<3;a++) {
        glBindTexture(GL_TEXTURE_2D,albedo[a]);const uint8_t rgba[4]={255,255,255,alpha[a]};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,rgba);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    }
    glEnable(GL_DEPTH_TEST);glDepthFunc(GL_LEQUAL);glDepthMask(GL_FALSE);
    glEnable(GL_BLEND);glBlendFunc(GL_ONE,GL_ONE_MINUS_SRC_ALPHA);
}
int main(void) {
    const int helpers[4]={0,1,3,8},samples[3]={0,2,4};int frames=0;
    for(int w=0;w<4;w++) for(int s=0;s<3;s++) {
        softgl_ctx *c=softgl_create_multisample(640,360,samples[s]);CHECK(c);initialize(c,helpers[w]);
        for(int quartic=0;quartic<2;quartic++) for(int a=0;a<3;a++) {
            glClearColor(64.f/255.f,128.f/255.f,192.f/255.f,1.f);
            glClearDepth(1);glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
            glActiveTexture(GL_TEXTURE2);glBindTexture(GL_TEXTURE_2D,albedo[a]);
            const GLfloat tint[4]={.4f,.2f,.1f,.5f};softgl_set_fused_dot3_transparent(tint,quartic);
            sg_tex_tri_ctx t;sg_tex_tri_prepare(c,&t);
            if(!w && !s && !quartic && !a) fprintf(stderr,"enabled=%d kind=%d active=%d tint=%g,%g,%g,%g\n",c->fused_dot3_enabled,t.combine_kind,t.any_active,c->fused_dot3_tint[0],c->fused_dot3_tint[1],c->fused_dot3_tint[2],c->fused_dot3_tint[3]);
            glDrawArrays(GL_TRIANGLES,0,6);
            /* Pending draws must retain the old copied material constants. */
            softgl_set_fused_dot3_transparent(NULL,GL_FALSE);
            const uint8_t *rgba=softgl_read_rgba8(c);CHECK(rgba);
            const size_t at=(size_t)180*640+320;
            if(memcmp(rgba+at*4,expected[quartic][a],4)) fprintf(stderr,"helpers=%d samples=%d quartic=%d alpha=%d actual=%u,%u,%u,%u expected=%u,%u,%u,%u depth=%g\n",helpers[w],samples[s],quartic,a,rgba[at*4],rgba[at*4+1],rgba[at*4+2],rgba[at*4+3],expected[quartic][a][0],expected[quartic][a][1],expected[quartic][a][2],expected[quartic][a][3],c->fb.depth[at]);
            for(int k=0;k<4;k++) CHECK(rgba[at*4+k]==expected[quartic][a][k]);
            CHECK(c->fb.depth[at]==1.f);
            for(int i=0;i<c->fb.samples;i++) {
                CHECK(c->fb.sample_depth[at*c->fb.samples+i]==1.f);
                for(int k=0;k<4;k++) CHECK(c->fb.sample_color[(at*c->fb.samples+i)*4+k]==expected[quartic][a][k]);
            }
            CHECK(glGetError()==GL_NO_ERROR);frames++;
        }
        softgl_destroy(c);
    }
    printf("Premultiplied material oracle: %d frames, zero/partial/full alpha, quadratic/quartic, serial/1/3/8 helpers, off/2x/4x PASS\n",frames);
    return 0;
}
