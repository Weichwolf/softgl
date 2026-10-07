#include "types.h"
#include "workers.h"
#include "fragment_mask_stream.h"
#include "raster_types.h"
#include <stdio.h>

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
extern void sg_fragment_mask_test_enable(int);
extern double sg_fragment_mask_stat(int);
enum { W=65, H=35, N=2048, V=N*3, STAGES=16 };

static uint64_t bytes(const void *p, size_t n, uint64_t h) {
    const uint8_t *b=p;
    for (size_t i=0; i<n; i++) h=(h^b[i])*UINT64_C(1099511628211);
    return h;
}
static uint64_t planes(softgl_ctx *c) {
    uint64_t h=bytes(softgl_read_rgba8(c),W*H*4,UINT64_C(1469598103934665603));
    h=bytes(c->fb.color,W*H*4,h);
    h=bytes(c->fb.depth,W*H*sizeof(float),h);
    h=bytes(c->fb.stencil,W*H,h);
    if(c->fb.samples) {
        h=bytes(c->fb.sample_color,W*H*c->fb.samples*4,h);
        h=bytes(c->fb.sample_depth,W*H*c->fb.samples*sizeof(float),h);
        h=bytes(c->fb.sample_stencil,W*H*c->fb.samples,h);
    }
    return h;
}
static void chain(void) {
    for(int u=0;u<4;u++) {
        glActiveTexture(GL_TEXTURE0+u);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,u?GL_MODULATE:GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,u?GL_PREVIOUS:GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,u==0?GL_PRIMARY_COLOR:u==1?GL_PREVIOUS:u==2?GL_TEXTURE:GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,u==3?GL_CONSTANT:GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA,GL_SRC_ALPHA);
        const float constant[4]={.5f,.5f,.5f,.5f};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,constant);
    }
    glActiveTexture(GL_TEXTURE0);
}

static size_t transfer_planes(softgl_ctx *c,uint8_t *p,int restore) {
    size_t offset=0;
    void *parts[6]={c->fb.color,c->fb.depth,c->fb.stencil,c->fb.sample_color,c->fb.sample_depth,c->fb.sample_stencil};
    size_t sizes[6]={W*H*4,W*H*sizeof(float),W*H,
        W*H*c->fb.samples*4,W*H*c->fb.samples*sizeof(float),W*H*c->fb.samples};
    for(int i=0;i<6;i++) {
        if(sizes[i]) {
            if(restore)memcpy(parts[i],p+offset,sizes[i]);else memcpy(p+offset,parts[i],sizes[i]);
            offset+=sizes[i];
        }
    }
    return offset;
}

/* Direct original versus replay raster calls stress sample centroids, integer
 * edges outside signed 32 bits and screen bounds without front-end clipping. */
static int direct_edges(void) {
    unsigned checks=0,empty=0;
    for(int samples=2;samples<=4;samples+=2) {
        softgl_ctx *c=softgl_create_multisample(W,H,samples);REQUIRE(c);
        softgl_make_current(c);sg_workers_shutdown(c);
        size_t size=(size_t)W*H*9*(1+samples);
        uint8_t *saved=malloc(size),*expected=malloc(size),*wire=malloc(65536);
        REQUIRE(saved && expected && wire);
        for(int enabled=0;enabled<2;enabled++)for(int kind=0;kind<4;kind++)for(int k=0;k<32;k++) {
            glDisable(GL_BLEND);glEnable(GL_DEPTH_TEST);glDepthMask(GL_FALSE);glDepthFunc(GL_LEQUAL);
            if(enabled)glEnable(GL_MULTISAMPLE);else glDisable(GL_MULTISAMPLE);
            glClearColor(.1f,.2f,.3f,.4f);glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            for(int p=0;p<W*H*samples;p++)c->fb.sample_depth[p]=.2f+.15f*(p%5);
            float span=kind==0?1000000.f:kind==1?4096.f:kind==2?32.f:.0625f;
            sg_vert v[3]={0};
            v[0].ndc=(sg_vec4){-span+4.5f,-span+5.125f,.25f,.5f};
            v[1].ndc=(sg_vec4){span+4.5f,-span+5.125f,.55f,.8f};
            v[2].ndc=(sg_vec4){4.5f,span+5.125f,.4f,1.f};
            for(int i=0;i<3;i++)v[i].color=(sg_vec4){.2f+.1f*i,.3f,.4f,.5f};
            sg_tex_tri_ctx t;sg_tex_tri_prepare(c,&t);
            sg_fragment_mask_bin bin={.capacity=65536};
            sg_fragment_mask_current=(sg_fragment_mask_cursor){.capture=1,.bin=&bin,.data=wire};
            sg_raster_triangle_tile_prepared(c,v,v+1,v+2,0,W,&t);
            sg_fragment_mask_cursor capture=sg_fragment_mask_current;
            REQUIRE(capture.started && !capture.overflow && capture.used>=12);
            sg_fragment_put32(wire,capture.used);
            if(capture.used==12)empty++;
            memset(&sg_fragment_mask_current,0,sizeof(sg_fragment_mask_current));
            REQUIRE(transfer_planes(c,saved,0)==size);
            glEnable(GL_BLEND);glBlendFunc(GL_SRC_ALPHA,GL_ONE);
            glDepthFunc(k%3==0?GL_EQUAL:k%3==1?GL_LESS:GL_LEQUAL);
            for(int i=0;i<3;i++)v[i].color=(sg_vec4){.6f-.1f*i,.8f,.7f,.25f};
            sg_tex_tri_prepare(c,&t);
            sg_raster_triangle_tile_prepared(c,v,v+1,v+2,0,W,&t);
            softgl_read_rgba8(c);REQUIRE(transfer_planes(c,expected,0)==size);
            REQUIRE(transfer_planes(c,saved,1)==size);
            sg_fragment_mask_current=(sg_fragment_mask_cursor){.read=wire,.end=wire+capture.used};
            sg_raster_triangle_tile_prepared(c,v,v+1,v+2,0,W,&t);
            REQUIRE(sg_fragment_mask_current.started);
            memset(&sg_fragment_mask_current,0,sizeof(sg_fragment_mask_current));
            softgl_read_rgba8(c);REQUIRE(transfer_planes(c,saved,0)==size);
            REQUIRE(!memcmp(saved,expected,size));checks++;
        }
        free(saved);free(expected);free(wire);softgl_destroy(c);
    }
    REQUIRE(empty>0);
    printf("Direct replay: %u exact full-plane wide-edge/centroid/depth cases, %u empty geometric streams\n",checks,empty);
    return 0;
}
static int sequence(int samples,int packed,int wide,int enabled,uint64_t output[STAGES],double stats[8]) {
    sg_fragment_mask_test_enable(enabled);
    softgl_ctx *c=samples?softgl_create_multisample(W,H,samples):softgl_create(W,H);
    REQUIRE(c);softgl_make_current(c);sg_workers_shutdown(c);sg_workers_init(c,3);
    float positions[V][3],uv[V][2];GLuint indices[V];
    for(int t=0;t<N;t++)for(int k=0;k<3;k++) {
        int i=t*3+k;
        positions[i][0]=1.f+(t%16)*3.5f+(k==1?5.25f:0);
        positions[i][1]=1.f+((t/16)%8)*3.5f+(k==2?4.75f:0);
        positions[i][2]=.25f*(t%3);
        if(wide) {
            positions[i][0]=.5f+(k==1?W-1.f:0.f);
            positions[i][1]=.5f+(k==2?H-1.f:0.f);
        }
        uv[i][0]=(t&1)?.75f:.25f;uv[i][1]=.5f;indices[i]=(GLuint)i;
    }
    glViewport(0,0,W,H);glMatrixMode(GL_PROJECTION);glLoadIdentity();glOrtho(0,W,0,H,-1,1);
    glMatrixMode(GL_MODELVIEW);glLoadIdentity();
    GLuint buffers[2],textures[4],query;
    glGenBuffers(2,buffers);glBindBuffer(GL_ARRAY_BUFFER,buffers[0]);
    glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,GL_STATIC_DRAW);
    glVertexPointer(3,GL_FLOAT,0,NULL);glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[1]);glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
    glGenTextures(4,textures);
    for(int u=0;u<4;u++) {
        glActiveTexture(GL_TEXTURE0+u);glBindTexture(GL_TEXTURE_2D,textures[u]);
        uint8_t texels[8]={255,192,128,255,128,255,192,128};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,1,0,GL_RGBA,GL_UNSIGNED_BYTE,texels);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D);glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE);
        glClientActiveTexture(GL_TEXTURE0+u);glBindBuffer(GL_ARRAY_BUFFER,0);
        glTexCoordPointer(2,GL_FLOAT,0,uv);glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    }
    glClientActiveTexture(GL_TEXTURE0);glActiveTexture(GL_TEXTURE0);if(packed)chain();
    const int draw_count=wide==1?V/4:V;
    glGenQueries(1,&query);
    for(int stage=0;stage<STAGES;stage++) {
        glDisable(GL_SCISSOR_TEST);glDisable(GL_POLYGON_OFFSET_FILL);glDisable(GL_STENCIL_TEST);
        glDisable(GL_ALPHA_TEST);glDisable(GL_BLEND);glDepthMask(GL_TRUE);glDepthFunc(GL_LESS);
        glEnable(GL_DEPTH_TEST);glEnable(GL_MULTISAMPLE);
        glClearColor(.1f,.2f,.3f,.4f);glClearDepth(1);glClearStencil(stage);
        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
        glMatrixMode(GL_MODELVIEW);glLoadIdentity();
        glTranslatef((stage%3)*.125f,0,0);
        glColor4f(.8f,.7f,.6f,.5f);
        if(wide && stage==15)glDepthMask(GL_FALSE);
        glDrawElements(GL_TRIANGLES,draw_count,GL_UNSIGNED_INT,NULL);
        /* Finish before lookup: coverage publication and mask cache ownership
         * must both belong to the completed first draw. */
        sg_workers_flush(c);
        glDepthMask(GL_FALSE);glDepthFunc(GL_LEQUAL);glEnable(GL_BLEND);glBlendFunc(GL_SRC_ALPHA,GL_ONE);
        glColor4f(.6f,.8f,.7f,.5f);
        if(stage==3) {glEnable(GL_SCISSOR_TEST);glScissor(7,3,32,21);}
        if(stage==4)glDisable(GL_MULTISAMPLE);
        if(stage==5) {glEnable(GL_POLYGON_OFFSET_FILL);glPolygonOffset(.25f,1.f);}
        if(stage==6) {glEnable(GL_ALPHA_TEST);glAlphaFunc(GL_GREATER,.25f);}
        if(stage==7) {glEnable(GL_STENCIL_TEST);glStencilFunc(GL_ALWAYS,7,255);glStencilOp(GL_KEEP,GL_INCR,GL_INCR);}
        if(stage==8)glDepthFunc(GL_ALWAYS);
        if(stage==9)glDepthFunc(GL_EQUAL);
        if(stage==10) {
            positions[0][0]+=.125f;glBindBuffer(GL_ARRAY_BUFFER,buffers[0]);
            glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(positions),positions);glBindBuffer(GL_ARRAY_BUFFER,0);
        }
        if(stage==11) {uv[0][0]=.99f;glActiveTexture(GL_TEXTURE2);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);}
        if(stage==12)glBeginQuery(GL_SAMPLES_PASSED,query);
        glDrawElements(GL_TRIANGLES,draw_count,GL_UNSIGNED_INT,NULL);
        if(stage==12) {GLuint count;glEndQuery(GL_SAMPLES_PASSED);glGetQueryObjectuiv(query,GL_QUERY_RESULT,&count);output[stage]=count;}
        else output[stage]=0;
        /* Extra ordered replays exercise four-slot reuse and refreshed colors. */
        if(stage==13)for(int pass=0;pass<7;pass++) {
            glColor4f(.5f+(float)pass*.01f,.6f,.7f,.2f);glDrawElements(GL_TRIANGLES,draw_count,GL_UNSIGNED_INT,NULL);
        }
        if(stage==14) {
            /* Invalidate cache ownership while the previous immutable replay
             * job is still retained by the ordered queue. */
            glTranslatef(.125f,0,0);glDrawElements(GL_TRIANGLES,draw_count,GL_UNSIGNED_INT,NULL);
        }
        output[stage]^=planes(c);
        REQUIRE(glGetError()==GL_NO_ERROR);
    }
    for(int i=0;i<8;i++)stats[i]=sg_fragment_mask_stat(i);
    softgl_destroy(c);
    REQUIRE(sg_fragment_mask_stat(6)==0);
    return 0;
}
int main(void) {
    REQUIRE(!direct_edges());
    for(int mode=0;mode<3;mode++)for(int packed=0;packed<2;packed++)for(int wide=0;wide<3;wide++) {
        int samples=mode==0?0:mode==1?2:4;
        uint64_t expected[STAGES],actual[STAGES];double inactive[8],active[8];
        REQUIRE(!sequence(samples,packed,wide,0,expected,inactive));
        REQUIRE(!sequence(samples,packed,wide,1,actual,active));
        for(int stage=0;stage<STAGES;stage++) {
            if(expected[stage]!=actual[stage]) {
                fprintf(stderr,"Mismatch samples=%d packed=%d stage=%d %llu/%llu\n",samples,packed,stage,
                    (unsigned long long)expected[stage],(unsigned long long)actual[stage]);return 1;
            }
        }
        REQUIRE(active[4]<=4194304);
        if(samples && wide!=2)REQUIRE(active[0]>0 && active[1]>0 && active[2]>0);
        else REQUIRE(active[0]==0 && active[1]==0 && active[2]==0);
        if(samples && wide==1)REQUIRE(active[3]>0);
        printf("%dx %s %s: %d exact plane/query stages; allocated=%.0f retained=%.0f replayed=%.0f overflow=%.0f budget_peak=%.0f fallback=%.0f\n",
            samples,packed?"packed":"raw",wide==2?"oversized":wide?"wide":"grid",STAGES,active[0],active[1],active[2],active[3],active[4],active[5]);
    }
    return 0;
}
