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

/* Actual four-unit DOT3 chain selects the packet raster depth producer. */
static void configure_packet_chain(void) {
    const float constant[4] = {1, 1, 1, 1};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u);
        glEnable(GL_TEXTURE_2D);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, u ? GL_MODULATE : GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, u ? GL_PREVIOUS : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, !u ? GL_PRIMARY_COLOR :
                  u == 1 ? GL_PREVIOUS : u == 2 ? GL_TEXTURE : GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, u == 3 ? GL_CONSTANT : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_ALPHA, GL_SRC_ALPHA);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
    }
}

static int run_configuration(int samples,int workers) {
    softgl_ctx *c=softgl_create_multisample(w,h,samples); REQUIRE(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c,workers);
    float positions[COUNT][3]; GLuint indices[COUNT*PARTS],buffers[2],textures[4],query;
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
    int units = samples ? 2 : 4, cases = samples ? CASES : CASES + 4;
    glGenTextures(units,textures); const uint8_t white[16]={255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255};
    for (int u=0;u<units;u++) {
        glActiveTexture(GL_TEXTURE0+u); glBindTexture(GL_TEXTURE_2D,textures[u]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,white);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D); glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE);
    }
    glGenQueries(1,&query);
    size_t planes_samples=samples?samples:1;
    size_t color_bytes=(size_t)w*h*planes_samples*4,depth_bytes=(size_t)w*h*planes_samples*sizeof(float),stencil_bytes=(size_t)w*h*planes_samples;
    uint8_t *expected=malloc(w*h*4+color_bytes+depth_bytes+stencil_bytes); REQUIRE(expected);
    for (int test=0;test<cases;test++) {
        GLuint expected_query=0;
        for (int cold=0;cold<2;cold++) {
            glBindBuffer(GL_ARRAY_BUFFER,buffers[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(positions),positions);
            reset_state();
            glDisable(GL_FOG);
            if (!samples) configure_packet_chain();
            if (w==128 && samples) {
                /* Fully written cells force the strict early-HZ replay path. */
                glBegin(GL_QUADS);
                glVertex3f(-1,-1,-.2f); glVertex3f(1,-1,-.2f);
                glVertex3f(1,1,-.2f); glVertex3f(-1,1,-.2f);
                glEnd();
                softgl_read_rgba8(c);
                REQUIRE(sg_hz_active(c));
                REQUIRE(sg_hz_at(c,4,4)->written==(samples==2 ? UINT32_MAX : UINT64_MAX));
            }
            if (test==13) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_NEVER,.4f); }
            if (test==14) { glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(0,0); }
            for (int part=0;part<PARTS;part++)
                glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,(void*)((uintptr_t)part*COUNT*sizeof(GLuint)));
            glDisable(GL_ALPHA_TEST); glDisable(GL_SAMPLE_COVERAGE);
            int filtered=-1;
            glDepthFunc(GL_LEQUAL); glDepthMask(0);
            if (!cold && test==0) { filtered=references(c); REQUIRE(filtered>=0); }
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
                case 18:
                    for (int u=0;u<4;u++) { glActiveTexture(GL_TEXTURE0+u); glDisable(GL_TEXTURE_2D); }
                    break;
                case 19:
                    for (int u=1;u<4;u++) { glActiveTexture(GL_TEXTURE0+u); glDisable(GL_TEXTURE_2D); }
                    glActiveTexture(GL_TEXTURE0); glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE);
                    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR); break;
                case 20:
                    for (int u=0;u<4;u++) { glActiveTexture(GL_TEXTURE0+u); glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE); }
                    break;
                case 21: glEnable(GL_FOG); glFogi(GL_FOG_MODE,GL_EXP); glFogf(GL_FOG_DENSITY,.2f); break;
            }
            glColor4f(.8f,.4f,.2f,.7f);
            glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,NULL);
            GLuint result=0;
            if (test==11) { glEndQuery(GL_SAMPLES_PASSED); glGetQueryObjectuiv(query,GL_QUERY_RESULT,&result); }
            const uint8_t *pixels=softgl_read_rgba8(c);
            const void *planes[]={pixels,samples?c->fb.sample_color:c->fb.color,
                samples?c->fb.sample_depth:c->fb.depth,samples?c->fb.sample_stencil:c->fb.stencil};
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
    free(expected); glDeleteQueries(1,&query); glDeleteTextures(units,textures); glDeleteBuffers(2,buffers); softgl_destroy(c);
    printf("depth replay: %dx%d samples=%d workers=%d, %d actual queued state/sample-plane cases exact\n",w,h,samples,workers,cases);
    return 0;
}
/* Compare transient classification with actual LEQUAL and ALWAYS rendering.
 * Sample depth is immutable across these draws. Ties may reject LESS color
 * writes but must never classify a reference as strictly hidden. */
static int check_capture_classes(void) {
    uint64_t classes[2][3] = {{0}}, ties = 0, cases = 0;
    for (int samples = 2; samples <= 4; samples += 2) {
        softgl_ctx *c = softgl_create_multisample(36, 24, samples);
        REQUIRE(c);
        softgl_make_current(c);
        sg_workers_shutdown(c);
        sg_hz_state *hz = sg_hz_state_from_ctx(c);
        if (hz) hz->active = 0;
        glEnable(GL_DEPTH_TEST);
        glDepthMask(GL_FALSE);
        glClearColor(0, 0, 0, 0);
        sg_tex_tri_ctx texture;
        sg_tex_tri_prepare(c, &texture);
        for (int enabled = 0; enabled < 2; enabled++) {
            c->multisample = enabled;
            for (int function = 0; function < 2; function++) {
                for (int test = 0; test < 1024; test++) {
                    sg_vert v[3];
                    memset(v, 0, sizeof(v));
                    float below = nextafterf(.5f, 0.f), above = nextafterf(.5f, 1.f);
                    v[0].ndc = (sg_vec4){3.125f + (test & 7) * .125f, 2.25f, .5f, 1.f};
                    v[1].ndc = (sg_vec4){30.25f, 5.125f, (test & 64) ? below : .5f, 1.f};
                    v[2].ndc = (sg_vec4){8.375f, 21.25f, (test & 128) ? above : .5f, 1.f};
                    if ((test & 15) == 0) {
                        for (int i = 0; i < 3; i++) v[i].ndc.x -= 40.f;
                    } else if ((test & 15) == 1) {
                        v[1].ndc.x = v[0].ndc.x;
                        v[1].ndc.y = v[0].ndc.y;
                    } else if ((test & 15) == 2) {
                        v[1].ndc.x = v[0].ndc.x + .0625f;
                        v[1].ndc.y = v[0].ndc.y;
                        v[2].ndc.x = v[0].ndc.x;
                        v[2].ndc.y = v[0].ndc.y + .0625f;
                    }
                    for (int i = 0; i < 3; i++) v[i].color = (sg_vec4){1, 1, 1, 1};
                    for (int i = 0; i < 36 * 24 * samples; i++) {
                        const float stored[] = {.25f, .5f, .75f, below, above};
                        int kind = (test >> 4) & 7;
                        c->fb.sample_depth[i] = stored[kind < 5 ? kind : (i + test) % 5];
                    }
                    glClear(GL_COLOR_BUFFER_BIT);
                    c->depth_func = function ? GL_LEQUAL : GL_LESS;
                    sg_worker_bin bin = {0};
                    bin.depth_capture = 1;
                    sg_raster_bin = &bin;
                    int captured = sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                                   0, 36, &texture);
                    sg_raster_bin = NULL;
                    int less_visible = 0;
                    for (int i = 0; i < 36 * 24 * samples; i++)
                        less_visible |= c->fb.sample_color[i * 4] != 0;
                    int visible[2] = {0};
                    for (int pass = 0; pass < 2; pass++) {
                        glClear(GL_COLOR_BUFFER_BIT);
                        c->depth_func = pass ? GL_ALWAYS : GL_LEQUAL;
                        sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2, 0, 36, &texture);
                        for (int i = 0; i < 36 * 24 * samples; i++)
                            visible[pass] |= c->fb.sample_color[i * 4] != 0;
                    }
                    int expected = !visible[1] ? 1 : visible[0] ? 0 : 2;
                    if (captured != expected) {
                        fprintf(stderr, "capture class: samples=%d enabled=%d function=%d "
                            "test=%d expected=%d got=%d\n", samples, enabled, function,
                            test, expected, captured);
                        softgl_destroy(c);
                        return 1;
                    }
                    classes[samples == 4][captured]++;
                    ties += !function && !less_visible && visible[0];
                    cases++;
                }
            }
        }
        softgl_destroy(c);
    }
    for (int mode = 0; mode < 2; mode++)
        for (int kind = 0; kind < 3; kind++) REQUIRE(classes[mode][kind]);
    REQUIRE(ties);
    printf("depth capture: %llu actual LEQUAL/ALWAYS classification cases exact; "
        "2x visible/empty/hidden=%llu/%llu/%llu 4x=%llu/%llu/%llu, %llu LESS ties preserved\n",
        (unsigned long long)cases,
        (unsigned long long)classes[0][0], (unsigned long long)classes[0][1],
        (unsigned long long)classes[0][2], (unsigned long long)classes[1][0],
        (unsigned long long)classes[1][1], (unsigned long long)classes[1][2],
        (unsigned long long)ties);
    return 0;
}

/* Class 2 is conservative, not an exact count of all invisible references.
 * Compare with actual ordinary packet, scalar and quad depth producers. */
static int check_off_capture_bound(void) {
    softgl_ctx *c = softgl_create(36, 24);
    REQUIRE(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    GLuint textures[4];
    glGenTextures(4, textures);
    const uint8_t white[] = {255, 255, 255, 255};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA,
                     GL_UNSIGNED_BYTE, white);
    }
    configure_packet_chain();
    glEnable(GL_DEPTH_TEST);
    glDepthMask(GL_FALSE);
    glClearColor(0, 0, 0, 0);
    sg_tex_tri_ctx producers[3];
    sg_tex_tri_prepare(c, producers);
    REQUIRE(producers[0].combine_kind == 2);
    producers[1] = producers[0];
    producers[1].combine_kind = 0;
    memset(producers + 2, 0, sizeof(producers[2]));
    producers[2].fastpath_kind = 3;
    uint64_t classes[3] = {0}, ties = 0, retained_hidden = 0, cases = 0;
    for (int function = 0; function < 2; function++) {
        for (int test = 0; test < 2048; test++) {
            sg_vert v[3];
            memset(v, 0, sizeof(v));
            float below = nextafterf(.5f, 0.f), above = nextafterf(.5f, 1.f);
            v[0].ndc = (sg_vec4){3.125f + (test & 7) * .125f, 2.25f, .5f, 1.f};
            v[1].ndc = (sg_vec4){30.25f, 5.125f, (test & 64) ? below : .5f, 1.f};
            v[2].ndc = (sg_vec4){8.375f, 21.25f, (test & 128) ? above : .5f, 1.f};
            if (test & 1024) { v[1].ndc.z = .25f; v[2].ndc.z = .75f; }
            if ((test & 15) == 0) {
                for (int i = 0; i < 3; i++) v[i].ndc.x -= 40.f;
            } else if ((test & 15) == 1) {
                v[1].ndc.x = v[0].ndc.x;
                v[1].ndc.y = v[0].ndc.y;
            } else if ((test & 15) == 2) {
                v[1].ndc.x = v[0].ndc.x + .0625f;
                v[1].ndc.y = v[0].ndc.y;
                v[2].ndc.x = v[0].ndc.x;
                v[2].ndc.y = v[0].ndc.y + .0625f;
            }
            for (int i = 0; i < 3; i++) v[i].color = (sg_vec4){1, 1, 1, 1};
            for (int i = 0; i < 36 * 24; i++) {
                const float stored[] = {.125f, .5f, .875f, below, above};
                int kind = (test >> 4) & 7;
                c->fb.depth[i] = stored[kind < 5 ? kind : (i + test) % 5];
            }
            float original_depth[36 * 24];
            memcpy(original_depth, c->fb.depth, sizeof(original_depth));
            glClear(GL_COLOR_BUFFER_BIT);
            c->depth_func = function ? GL_LEQUAL : GL_LESS;
            sg_worker_bin bin = {0};
            bin.depth_capture = 1;
            sg_raster_bin = &bin;
            int captured = sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                           0, 36, producers);
            sg_raster_bin = NULL;
            REQUIRE(captured >= 0 && captured <= 2);
            int less_visible = 0, visible_any = 0, covered_any = 0;
            for (int i = 0; i < 36 * 24; i++) less_visible |= c->fb.color[i * 4] != 0;
            for (int producer = 0; producer < 3; producer++) {
                int visible[2] = {0};
                for (int pass = 0; pass < 2; pass++) {
                    glClear(GL_COLOR_BUFFER_BIT);
                    c->depth_func = pass ? GL_ALWAYS : GL_LEQUAL;
                    sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                   0, 36, producers + producer);
                    for (int i = 0; i < 36 * 24; i++) visible[pass] |= c->fb.color[i * 4] != 0;
                    REQUIRE(!memcmp(original_depth, c->fb.depth, sizeof(original_depth)));
                }
                if (captured == 2) REQUIRE(visible[1] && !visible[0]);
                if (captured == 1) REQUIRE(!visible[1]);
                visible_any |= visible[0];
                covered_any |= visible[1];
                if (!producer) ties += !function && !less_visible && visible[0];
            }
            if (!covered_any) REQUIRE(captured == 1);
            if (visible_any) REQUIRE(captured == 0);
            retained_hidden += covered_any && !visible_any && captured == 0;
            classes[captured]++;
            cases++;
        }
    }
    for (int i = 0; i < 3; i++) REQUIRE(classes[i]);
    REQUIRE(ties && retained_hidden);
    printf("off capture: %llu cases against actual packet/scalar/quad LEQUAL/ALWAYS "
        "renders safe; visible/empty/hidden=%llu/%llu/%llu, %llu LESS ties and "
        "%llu conservative hidden references retained\n", (unsigned long long)cases,
        (unsigned long long)classes[0], (unsigned long long)classes[1],
        (unsigned long long)classes[2], (unsigned long long)ties,
        (unsigned long long)retained_hidden);
    glDeleteTextures(4, textures);
    softgl_destroy(c);
    return 0;
}

int main(void) {
    REQUIRE(!check_off_capture_bound());
    REQUIRE(!check_capture_classes());
    const int workers[]={1,3,8};
    for (int hz=0;hz<2;hz++) {
        w=hz?128:47; h=hz?32:31;
        for (int samples=0;samples<=4;samples+=2)
            for (int i=0;i<3;i++) REQUIRE(!run_configuration(samples,workers[i]));
    }
    return 0;
}
