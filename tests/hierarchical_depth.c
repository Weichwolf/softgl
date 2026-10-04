#include "types.h"
#include "workers.h"
#include "raster_hz.h"
#include <stdio.h>
#include <math.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); return 1; } } while (0)
static uint32_t rng=194;
static uint32_t next(void) { rng^=rng<<13; rng^=rng>>17; rng^=rng<<5; return rng; }
static float value(void) { return (next()>>8)*(1.f/16777216.f); }
static int check_maximum(softgl_ctx *c) {
    for (int x=0;x<c->fb.w;x+=4) for (int y=0;y+3<c->fb.h;y+=4) {
        sg_hz_tile *t=sg_hz_at(c,x,y);
        if (t->written!=UINT64_MAX) continue;
        float maximum=-INFINITY;
        for (int j=0;j<4;j++) for (int i=0;i<16;i++) {
            float z=c->fb.sample_depth[((y+j)*c->fb.w+x)*4+i];
            if (z>maximum) maximum=z;
        }
        CHECK(t->maximum==maximum);
        int k=(int)t->maximum_sample;
        CHECK(k<64);
        CHECK(c->fb.sample_depth[((y+k/16)*c->fb.w+x+k/4%4)*4+k%4]==maximum);
    }
    return 0;
}
static void quad(float z) {
    glBegin(GL_QUADS); glVertex3f(0,0,z);glVertex3f(128,0,z);
    glVertex3f(128,32,z);glVertex3f(0,32,z);glEnd();
}
static GLuint draw(softgl_ctx *c,int enabled,int variant,GLenum func) {
    softgl_make_current(c); sg_hz_state_from_ctx(c)->active=enabled;
    glDisable(GL_SCISSOR_TEST);glDisable(GL_STENCIL_TEST);glDisable(GL_ALPHA_TEST);
    glDisable(GL_BLEND);glDisable(GL_POLYGON_OFFSET_FILL);
    glDepthMask(GL_TRUE);glEnable(GL_DEPTH_TEST);glDepthFunc(GL_LESS);
    glClearColor(.1f,.2f,.3f,1);glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glColor4f(.2f,.3f,.4f,1);quad(.5f);
    if (variant & 32) {
        const float raised[4] = {.9f, .9f, .9f, .9f};
        glRasterPos2i(8, 8);
        glDrawPixels(2, 2, GL_DEPTH_COMPONENT, GL_FLOAT, raised);
        glRasterPos2i(16, 8);
        glCopyPixels(8, 8, 2, 2, GL_DEPTH);
    }
    if(variant&1) { glEnable(GL_SCISSOR_TEST);glScissor(3,5,91,19);glClear(GL_DEPTH_BUFFER_BIT); }
    if(variant&2) { glEnable(GL_ALPHA_TEST);glAlphaFunc(GL_GREATER,.4f); }
    if(variant&4) { glEnable(GL_STENCIL_TEST);glStencilFunc(GL_ALWAYS,3,255);glStencilOp(GL_INCR,GL_DECR,GL_REPLACE); }
    if(variant&8) { glEnable(GL_BLEND);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA); }
    if(variant&16) glDepthMask(GL_FALSE);
    if(variant&32) { glEnable(GL_POLYGON_OFFSET_FILL);glPolygonOffset(-.3f,1.f); }
    glDepthFunc(func);
    GLuint q=0,result=0;
    glGenQueries(1,&q);glBeginQuery(GL_SAMPLES_PASSED,q);
    for(int i=0;i<23;i++) {
        float x=(i%11)*11.f-2,y=(i%7)*5.f-1,z=(i%5-2)*.35f;
        glColor4f((i%4)*.29f,(i%6)*.19f,(i%3)*.39f,(i%5)*.23f);
        glBegin(GL_TRIANGLES);glVertex3f(x,y,z);glVertex3f(x+51,y+2,z+.05f);
        glVertex3f(x+2,y+21,z-.07f);glEnd();
    }
    glEndQuery(GL_SAMPLES_PASSED);glGetQueryObjectuiv(q,GL_QUERY_RESULT,&result);glDeleteQueries(1,&q);
    softgl_read_rgba8(c);return result;
}
int main(void) {
    CHECK(sizeof(sg_hz_state) == 64);
#if SIZE_MAX == UINT32_MAX
    CHECK(!softgl_create_multisample(134217727, 2, 4));
#endif
    const GLenum funcs[]={GL_NEVER,GL_LESS,GL_EQUAL,GL_LEQUAL,GL_GREATER,GL_NOTEQUAL,GL_GEQUAL,GL_ALWAYS};
    softgl_ctx *c=softgl_create_multisample(128,32,4);CHECK(c&&sg_hz_state_from_ctx(c)->active);
    softgl_make_current(c);sg_workers_shutdown(c);sg_workers_init(c,1);
    c->depth_test=1;c->depth_mask=1;c->depth_func=GL_LESS;
    glClearDepth(1);glClear(GL_DEPTH_BUFFER_BIT);
    float color[4]={.2f,.3f,.4f,1};
    for(int y=0;y<32;y++) for(int x=0;x<128;x++) {
        float z[4]={.6f,.6f,.6f,.6f};sg_write_multisample(c,x,y,15,z,color);
    }
    CHECK(!check_maximum(c));
    CHECK(sg_hz_occluded(c,0,0,128,32,.8f,.9f,1.f,0));
    CHECK(!sg_hz_occluded(c,0,0,128,32,.5f,.9f,1.f,0));
    CHECK(!sg_hz_occluded(c,0,0,128,32,.8f,.9f,1.f,NAN));
    CHECK(!sg_hz_occluded(c,0,0,128,32,.8f,.9f,1.f,INFINITY));
    c->stencil_test=1;CHECK(!sg_hz_occluded(c,0,0,128,32,.8f,.9f,1.f,0));c->stencil_test=0;
    for(int n=0;n<131072;n++) {
        int x=next()%128,y=next()%32;unsigned coverage=next()&15;
        c->depth_func=n<32768?GL_LESS:funcs[(n/4096)%8];
        c->blend=(n/2048)&1;
        float z[4]={value(),value(),value(),value()};
        sg_write_multisample(c,x,y,coverage,z,color);
        if(!(n%257)) CHECK(!check_maximum(c));
    }
    CHECK(!check_maximum(c));c->blend=0;c->depth_func=GL_LESS;
    /* Actual sample interpolation grouping; integer barycentric partitions
       include tiny triangles, values beyond i32, edge ties and large offsets. */
    for (int n = 0; n < 1048576; n++) {
        uint64_t area = 1 + ((((uint64_t)next() << 32) | next()) &
                            UINT64_C(0x7ffffffffffffffe));
        if (n % 5 == 0) area = 1;
        if (n % 5 == 1) area = 2;
        if (n % 5 == 2) area = 255;
        if (n % 5 == 3) area = (uint64_t)INT32_MAX + 17;
        uint64_t e0 = (((uint64_t)next() << 32) | next()) % (area + 1);
        uint64_t e1 = (((uint64_t)next() << 32) | next()) % (area - e0 + 1);
        if (n % 7 == 0) { e0 = area; e1 = 0; }
        if (n % 7 == 1) { e0 = 0; e1 = area; }
        float inv = 1.f / (float)area;
        float b0 = (float)e0 * inv, b1 = (float)e1 * inv, b2 = 1.f - b0 - b1;
        float z0 = value(), z1 = value(), z2 = value();
        float offset = (value() * 2 - 1) * (n % 3 == 0 ? 1000000.f : .1f);
        float z = ((b0 * z0 + b1 * z1) + b2 * z2) + offset;
        z = z < 0 ? 0 : z > 1 ? 1 : z;
        /* One covered sample passes the original test. The actual hierarchy
         * predicate must retain the triangle, including exact LEQUAL ties. */
        sg_hz_tile *tile = sg_hz_at(c, 0, 0);
        tile->written = UINT64_MAX;
        tile->maximum = z;
        c->depth_func = GL_LEQUAL;
        CHECK(!sg_hz_occluded(c, 0, 0, 4, 4, z0, z1, z2, offset));
        if (z < 1.f) {
            tile->maximum = nextafterf(z, INFINITY);
            c->depth_func = GL_LESS;
            CHECK(!sg_hz_occluded(c, 0, 0, 4, 4, z0, z1, z2, offset));
        }
    }
    glMatrixMode(GL_PROJECTION);glLoadIdentity();glOrtho(0,128,0,32,-1,1);
    glMatrixMode(GL_MODELVIEW);glLoadIdentity();
    c->blend = 0;
    glClearDepth(1); glClear(GL_DEPTH_BUFFER_BIT);
    glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    quad(.5f); softgl_read_rgba8(c);
    CHECK(sg_hz_at(c, 8, 8)->written == UINT64_MAX);
    CHECK(sg_hz_at(c, 16, 8)->written == UINT64_MAX);
    const float raised[4] = {.9f, .9f, .9f, .9f};
    glRasterPos2i(8, 8);
    glDrawPixels(2, 2, GL_DEPTH_COMPONENT, GL_FLOAT, raised);
    CHECK(sg_hz_at(c, 8, 8)->written != UINT64_MAX);
    glRasterPos2i(16, 8);
    glCopyPixels(8, 8, 2, 2, GL_DEPTH);
    CHECK(sg_hz_at(c, 16, 8)->written != UINT64_MAX);
    uint8_t colors[128*32*16],stencil[128*32*4];float depths[128*32*4];
    for(int workers=1;workers<=8;workers=workers==1?3:8) {
        sg_workers_shutdown(c);sg_workers_init(c,workers);CHECK(sg_hz_state_from_ctx(c)->active);
        for(int f=0;f<8;f++) for(int v=0;v<64;v++) {
            GLuint q=draw(c,1,v,funcs[f]);CHECK(!check_maximum(c));
            memcpy(colors,c->fb.sample_color,sizeof(colors));memcpy(depths,c->fb.sample_depth,sizeof(depths));
            memcpy(stencil,c->fb.sample_stencil,sizeof(stencil));
            CHECK(q==draw(c,0,v,funcs[f]));
            CHECK(!memcmp(colors,c->fb.sample_color,sizeof(colors)));
            CHECK(!memcmp(depths,c->fb.sample_depth,sizeof(depths)));
            CHECK(!memcmp(stencil,c->fb.sample_stencil,sizeof(stencil)));
            CHECK(glGetError()==GL_NO_ERROR);
        }
        if(workers==8) break;
    }
    softgl_destroy(c);
    c = softgl_create_multisample(128, 35, 4);
    CHECK(c && sg_hz_state_from_ctx(c)->active);
    c->depth_test = 1; c->depth_mask = 1; c->depth_func = GL_LESS;
    for (int y = 32; y < 35; y++) for (int x = 0; x < 4; x++) {
        float z[4] = {.6f, .6f, .6f, .6f};
        sg_write_multisample(c, x, y, 15, z, color);
    }
    CHECK(sg_hz_at(c, 0, 32)->written != UINT64_MAX);
    CHECK(!sg_hz_occluded(c, 0, 32, 4, 35, .8f, .9f, 1.f, 0));
    softgl_destroy(c);
    c=softgl_create_multisample(129,32,4);CHECK(c&&!sg_hz_active(c));softgl_destroy(c);
    c=softgl_create_multisample(640,480,4);CHECK(c&&!sg_hz_active(c));softgl_destroy(c);
    c=softgl_create_multisample(128,32,2);CHECK(c&&!sg_hz_active(c));softgl_destroy(c);
    puts("131072 tracked writes, 1048576 numerical bounds, 1536 exact HZ-on/off frames and sample queries, 1/3/8 workers, fallbacks passed");
    return 0;
}
