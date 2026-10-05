#include "types.h"
#include "workers.h"
#include "raster_hz.h"
#include <stdio.h>
extern void glFinish(void);
#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
static int w=47, h=31;
enum { N=384, COUNT=N*3, PARTS=12, CASES=18 };

static void reset_state(void) {
    glDisable(GL_SCISSOR_TEST); glEnable(GL_DEPTH_TEST); glDisable(GL_STENCIL_TEST);
    glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST); glDisable(GL_SAMPLE_COVERAGE);
    glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE);
    glDisable(GL_POLYGON_OFFSET_FILL); glEnable(GL_MULTISAMPLE);
    glColorMask(1,1,1,1); glDepthMask(1); glDepthFunc(GL_LESS); glStencilMask(255);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glViewport(0,0,w,h);
    glClearColor(0,0,0,0); glClearDepth(.5); glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glColor4f(.3f,.7f,.9f,.6f);
}

static int references(softgl_ctx *c) {
    uint32_t first,last; int hit;
    sg_geometry_entry *entry=sg_workers_geometry_lookup(c,COUNT,GL_UNSIGNED_INT,NULL,&first,&last,&hit);
    if (!entry || !hit) return -1;
    sg_workers_geometry_replay(c,entry);
    sg_worker_pool *p=c->workers; int count=0;
    for (int i=0;i<p->nbins;i++) { count+=p->bins[i].count; p->bins[i].count=0; }
    return count;
}

static int run_configuration(int samples,int workers) {
    softgl_ctx *c=softgl_create_multisample(w,h,samples); REQUIRE(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c,workers);
    float positions[COUNT][3]; GLuint indices[COUNT*PARTS],buffers[2],textures[2],query;
    for (int i=0;i<N;i++) {
        float x=-.92f+(i%16)*.11f,y=-.92f+((i/16)%16)*.11f;
        float extent=(i&1)?.002f:.09f;
        for (int v=0;v<3;v++) {
            positions[i*3+v][0]=x+(v==1?extent:0);
            positions[i*3+v][1]=y+(v==2?extent:0);
            positions[i*3+v][2]=(i&2)?.6f:-.6f;
        }
    }
    for (int i=0;i<COUNT*PARTS;i++) indices[i]=i%COUNT;
    glGenBuffers(2,buffers); glBindBuffer(GL_ARRAY_BUFFER,buffers[0]);
    glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,GL_DYNAMIC_DRAW);
    glVertexPointer(3,GL_FLOAT,0,NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
    glGenTextures(2,textures); const uint8_t white[16]={255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255};
    for (int u=0;u<2;u++) {
        glActiveTexture(GL_TEXTURE0+u); glBindTexture(GL_TEXTURE_2D,textures[u]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,white);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D); glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE);
    }
    glGenQueries(1,&query);
    size_t color_bytes=(size_t)w*h*samples*4,depth_bytes=(size_t)w*h*samples*sizeof(float),stencil_bytes=(size_t)w*h*samples;
    uint8_t *expected=malloc(w*h*4+color_bytes+depth_bytes+stencil_bytes); REQUIRE(expected);
    for (int test=0;test<CASES;test++) {
        GLuint expected_query=0;
        for (int cold=0;cold<2;cold++) {
            glBindBuffer(GL_ARRAY_BUFFER,buffers[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(positions),positions);
            reset_state();
            if (w==128) {
                /* Fully written cells force the strict early-HZ replay path. */
                glBegin(GL_QUADS);
                glVertex3f(-1,-1,-.2f); glVertex3f(1,-1,-.2f);
                glVertex3f(1,1,-.2f); glVertex3f(-1,1,-.2f);
                glEnd();
                softgl_read_rgba8(c);
                if (samples==4) {
                    REQUIRE(sg_hz_active(c));
                    REQUIRE(sg_hz_at(c,4,4)->written==UINT64_MAX);
                }
            }
            if (test==13) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_NEVER,.4f); }
            if (test==14) { glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(0,0); }
            for (int part=0;part<PARTS;part++)
                glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,(void*)((uintptr_t)part*COUNT*sizeof(GLuint)));
            glDisable(GL_ALPHA_TEST); glDisable(GL_SAMPLE_COVERAGE);
            int filtered=-1;
            glDepthFunc(GL_LEQUAL); glDepthMask(0);
            if (!cold && test==0 && samples==4) { filtered=references(c); REQUIRE(filtered>=0); }
            if (cold) glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(positions),positions);
            switch (test) {
                case 1: glDepthFunc(GL_EQUAL); break;
                case 2: glDepthFunc(GL_LESS); break;
                case 3: glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS,3,255); glStencilOp(GL_KEEP,GL_INCR,GL_REPLACE); break;
                case 4: glEnable(GL_POLYGON_OFFSET_FILL); glPolygonOffset(-2.f,-1000000.f); break;
                case 5: glDisable(GL_DEPTH_TEST); break;
                case 6: case 7:
                    glDepthFunc(test==6?GL_ALWAYS:GL_GREATER); glDepthMask(1);
                    glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,NULL);
                    glDepthFunc(GL_LEQUAL); glDepthMask(0); break;
                case 8: {
                    float depth[w*h]; for (int i=0;i<w*h;i++) depth[i]=1.f;
                    glDepthFunc(GL_ALWAYS); glDepthMask(1); glRasterPos2f(-1,-1);
                    glDrawPixels(w,h,GL_DEPTH_COMPONENT,GL_FLOAT,depth);
                    glDepthFunc(GL_LEQUAL); glDepthMask(0); break;
                }
                case 9:
                    glDepthMask(1); glClearDepth(1); glEnable(GL_SCISSOR_TEST); glScissor(3,2,29,21);
                    glClear(GL_DEPTH_BUFFER_BIT); glDisable(GL_SCISSOR_TEST); glDepthMask(0); break;
                case 10: glFinish(); break;
                case 11: glBeginQuery(GL_SAMPLES_PASSED,query); break;
                case 12:
                    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE);
                    glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); break;
                case 15: {
                    float changed[COUNT][3]; memcpy(changed,positions,sizeof(changed));
                    for (int i=0;i<COUNT;i++) changed[i][2]=-.9f;
                    glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(changed),changed); break;
                }
                case 16: glTranslatef(.03f,.01f,-.3f); break;
                case 17: glDisable(GL_MULTISAMPLE); break;
            }
            glColor4f(.8f,.4f,.2f,.7f);
            glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,NULL);
            GLuint result=0;
            if (test==11) { glEndQuery(GL_SAMPLES_PASSED); glGetQueryObjectuiv(query,GL_QUERY_RESULT,&result); }
            const uint8_t *pixels=softgl_read_rgba8(c);
            const void *planes[]={pixels,c->fb.sample_color,c->fb.sample_depth,c->fb.sample_stencil};
            const size_t lengths[]={w*h*4,color_bytes,depth_bytes,stencil_bytes}; size_t offset=0;
            for (int plane=0;plane<4;plane++) {
                if (cold) REQUIRE(!memcmp(expected+offset,planes[plane],lengths[plane]));
                else memcpy(expected+offset,planes[plane],lengths[plane]);
                offset+=lengths[plane];
            }
            if (cold) REQUIRE(result==expected_query); else expected_query=result;
            if (filtered>=0) { int full=references(c); REQUIRE(full>filtered); }
            REQUIRE(glGetError()==GL_NO_ERROR);
        }
    }
    free(expected); glDeleteQueries(1,&query); glDeleteTextures(2,textures); glDeleteBuffers(2,buffers); softgl_destroy(c);
    printf("depth replay: %dx%d samples=%d workers=%d, %d actual queued state/sample-plane cases exact\n",w,h,samples,workers,CASES);
    return 0;
}
int main(void) {
    const int workers[]={1,3,8};
    for (int hz=0;hz<2;hz++) {
        w=hz?128:47; h=hz?32:31;
        for (int samples=2;samples<=4;samples+=2)
            for (int i=0;i<3;i++) REQUIRE(!run_configuration(samples,workers[i]));
    }
    return 0;
}
