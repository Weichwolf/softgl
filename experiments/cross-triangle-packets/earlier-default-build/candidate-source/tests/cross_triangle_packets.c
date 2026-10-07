#include "types.h"
#include "simd.h"
#include "frag_hot.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "frag_varying_packet.h"
#include "cross_packet.h"
#include "workers.h"
#include <stdio.h>

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t random_state = 719;
static uint32_t random_bits(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}
static float random_float(void) { return (random_bits() >> 8) * (1.f / 16777216.f); }

static int varying_shader(void) {
    softgl_ctx *c = calloc(1, sizeof(*c));
    REQUIRE(c);
    uint8_t data[32 * 32 * 2 * 4];
    for (unsigned i = 0; i < sizeof(data); i++) data[i] = (uint8_t)random_bits();
    sg_texture texture = {0}, constant = {0};
    texture.levels = 1; texture.data[0] = data;
    texture.w[0] = 31; texture.h[0] = 3; texture.d[0] = 2;
    constant.levels = 1; constant.data[0] = data; constant.w[0] = constant.h[0] = 1;
    for (int face = 0; face < 6; face++) {
        texture.cube_faces[face][0] = data + face * 4;
        texture.cube_w[face][0] = 3; texture.cube_h[face][0] = 1;
    }
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP, GL_CLAMP_TO_EDGE};
    unsigned comparisons = 0, rejected = 0, wide = 0;
    for (int kind = 0; kind < 6; kind++) for (int n = 0; n < 4096; n++) {
        sg_tex_tri_ctx t = {0};
        t.any_active = kind != 0;
        t.fastpath_kind = kind == 1 || kind == 2 ? kind : 0;
        t.combine_kind = kind >= 3 ? kind - 2 : 0;
        t.sample_mask = t.combine_kind == 1 ? 13u : t.combine_kind == 2 ? 5u : 1u;
        for (int u = 0; u < 4; u++) {
            sg_tex_unit_tri *a = &t.unit[u];
            a->tex = &texture; a->data0 = data;
            a->tw = texture.w[0]; a->th = texture.h[0]; a->td = 2;
            a->tw_mask_pot = sg_hot_pot_mask(a->tw); a->th_mask_pot = sg_hot_pot_mask(a->th);
            a->filter_min = GL_NEAREST; a->filter_mag = n & 1 ? GL_LINEAR : GL_NEAREST;
            a->wrap_s = wraps[n % 3]; a->wrap_t = wraps[(n / 3) % 3]; a->wrap_r = GL_REPEAT;
            a->active_slot = SG_TEX_TARGET_2D;
            if (t.fastpath_kind) {
                a->wrap_s = a->wrap_t = GL_REPEAT; a->filter_mag = GL_LINEAR;
            } else if (t.combine_kind) {
                if (u == 0 && n % 3 == 0) a->active_slot = SG_TEX_TARGET_3D;
                if (u == 2 && n % 5 == 0) a->active_slot = SG_TEX_TARGET_1D;
                if (u == 3 && n % 2) a->active_slot = SG_TEX_TARGET_CUBE;
            }
            a->constant_color_valid = a->active_slot == SG_TEX_TARGET_2D && n % 4 == 0;
            if (a->constant_color_valid) { a->tex = &constant; a->tw = a->th = 1; }
            for (int k = 0; k < 4; k++) {
                a->constant_color[k] = data[k] * (1.f / 255.f);
                c->tex_env[u].env_color[k] = random_float() * 2.f - .5f;
            }
        }
        sg_varying_packet p = {0};
        sg_vert v[4][3] = {0};
        for (int l = 0; l < 4; l++) {
            int shift = n % 7 == 0 ? 28 : 0;
            int64_t area = (int64_t)(512 + random_bits() % 8192) << shift;
            p.inv_area[l] = 1.f / (float)area;
            p.edge0[l] = (int64_t)(random_bits() % 256) << shift;
            p.edge1[l] = (int64_t)(random_bits() % 256) << shift;
            if (p.edge0[l] > INT32_MAX || p.edge1[l] > INT32_MAX) wide++;
            for (int j = 0; j < 3; j++) {
                float inv_w = n % 11 == 0 ? 0.f : n % 13 == 0 ? -.01f - random_float() : .001f + random_float() * 8.f;
                v[l][j].ndc.w = p.inv_w[j][l] = inv_w;
                for (int k = 0; k < 4; k++) {
                    float f = random_float() * 2.f - .5f;
                    p.color[j][k][l] = f;
                    if (k == 0) v[l][j].color.x = f;
                    else if (k == 1) v[l][j].color.y = f;
                    else if (k == 2) v[l][j].color.z = f;
                    else v[l][j].color.w = f;
                }
                for (int u = 0; u < 4; u++) {
                    v[l][j].uv[u].x = p.uv[j][u][0][l] = random_float() * 16.f - 8.f;
                    v[l][j].uv[u].y = p.uv[j][u][1][l] = random_float() * 16.f - 8.f;
                    v[l][j].uv[u].z = p.uv[j][u][2][l] = random_float() * 16.f - 8.f;
                }
            }
        }
        for (unsigned live = 1; live < 16; live++) {
            float actual[4][4];
            sg_varying_packet masked = p;
            for (int l = 0; l < 4; l++) if (!(live & (1u << l))) {
                masked.inv_area[l] = NAN;
                for (int j = 0; j < 3; j++) {
                    masked.inv_w[j][l] = NAN;
                    for (int k = 0; k < 4; k++) masked.color[j][k][l] = NAN;
                    for (int u = 0; u < 4; u++) for (int k = 0; k < 3; k++)
                        masked.uv[j][u][k][l] = k & 1 ? INFINITY : NAN;
                }
            }
            unsigned returned = sg_shade_varying_packet(c, &t, &masked, live, actual);
            unsigned expected_live = 0;
            for (int l = 0; l < 4; l++) {
                if (!(live & (1u << l))) continue;
                float b0 = (float)p.edge0[l] * p.inv_area[l];
                float b1 = (float)p.edge1[l] * p.inv_area[l];
                float b2 = 1.f - b0 - b1;
                float w0 = b0 * v[l][0].ndc.w, w1 = b1 * v[l][1].ndc.w, w2 = b2 * v[l][2].ndc.w;
                float sum = w0 + w1 + w2;
                if (sum <= 0.f) { rejected++; continue; }
                expected_live |= 1u << l;
                float inverse = 1.f / sum, primary[4], reference[4];
                const float a[4] = {v[l][0].color.x,v[l][0].color.y,v[l][0].color.z,v[l][0].color.w};
                const float b[4] = {v[l][1].color.x,v[l][1].color.y,v[l][1].color.z,v[l][1].color.w};
                const float d[4] = {v[l][2].color.x,v[l][2].color.y,v[l][2].color.z,v[l][2].color.w};
                for (int k = 0; k < 4; k++) primary[k] = (a[k] * w0 + b[k] * w1 + d[k] * w2) * inverse;
                if (t.fastpath_kind) {
                    float x = (v[l][0].uv[0].x * w0 + v[l][1].uv[0].x * w1 + v[l][2].uv[0].x * w2) * inverse;
                    float y = (v[l][0].uv[0].y * w0 + v[l][1].uv[0].y * w1 + v[l][2].uv[0].y * w2) * inverse;
                    sg_hot_fastpath_shade_fast(&t,t.fastpath_kind,x,y,primary,reference);
                } else if (t.combine_kind) {
                    float tex[4][4]; int active[4];
                    sg_tex_tri_sample_units(&t,&v[l][0],&v[l][1],&v[l][2],w0,w1,w2,inverse,tex,active);
                    sg_dot3_chain_shade(t.combine_kind,c->tex_env,primary,tex,reference);
                } else memcpy(reference,primary,sizeof(primary));
                if (memcmp(reference,actual[l],sizeof(reference))) {
                    fprintf(stderr,"Varying shader mismatch kind=%d n=%d live=%u lane=%d\n",kind,n,live,l);
                    for (int k = 0; k < 4; k++) fprintf(stderr,"%a %a\n",reference[k],actual[l][k]);
                    free(c); return 1;
                }
                comparisons++;
            }
            REQUIRE(returned == expected_live);
        }
    }
    free(c);
    printf("Varying shader: %u exact scalar comparisons, %u nonpositive-W rejections, %u wide edge inputs; six shader classes and all15 live masks passed\n",comparisons,rejected,wide);
    return 0;
}

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

static int sequence(int samples,int layout,int wide,int enabled,uint64_t output[STAGES]) {
    sg_cross_packet_test_enable(enabled);
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
    glClientActiveTexture(GL_TEXTURE0);glActiveTexture(GL_TEXTURE0);if(layout!=2)chain();
    const int draw_count=layout==0?768:wide?V/4:V;
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
        /* Resolve the first draw before changing its depth and color state. */
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
            /* Change transform while earlier queued source attributes remain
             * retained by their own immutable jobs. */
            glTranslatef(.125f,0,0);glDrawElements(GL_TRIANGLES,draw_count,GL_UNSIGNED_INT,NULL);
        }
        output[stage]^=planes(c);
        REQUIRE(glGetError()==GL_NO_ERROR);
    }
    REQUIRE(sg_cross_packet_pending()==0);
    softgl_destroy(c);
    return 0;
}
static int direct_batches(void) {
    unsigned comparisons = 0, deferred = 0;
    for (int mode = 0; mode < 3; mode++) {
        int samples = mode == 0 ? 0 : mode == 1 ? 2 : 4;
        softgl_ctx *c = samples ? softgl_create_multisample(W,H,samples) : softgl_create(W,H);
        REQUIRE(c); softgl_make_current(c); sg_workers_shutdown(c);
        GLuint textures[4]; glGenTextures(4,textures);
        for (int u = 0; u < 4; u++) {
            glActiveTexture(GL_TEXTURE0+u); glBindTexture(GL_TEXTURE_2D,textures[u]);
            const uint8_t texels[8] = {255,192,128,255,128,255,192,128};
            glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,1,0,GL_RGBA,GL_UNSIGNED_BYTE,texels);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
            glEnable(GL_TEXTURE_2D);
        }
        chain(); glDepthMask(GL_FALSE); glDisable(GL_DEPTH_TEST);
        sg_tex_tri_ctx t; sg_tex_tri_prepare(c,&t);
        REQUIRE(t.combine_kind && sg_packet_supported(c,&t));
        size_t size = (size_t)W*H*9*(1+samples);
        uint8_t *saved = malloc(size), *expected = malloc(size), *actual = malloc(size);
        REQUIRE(saved && expected && actual);
        for (int state = 0; state < 12; state++) {
            glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND); glDisable(GL_SCISSOR_TEST);
            glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE); glDisable(GL_SAMPLE_COVERAGE);
            glColorMask(GL_TRUE,GL_TRUE,GL_TRUE,GL_TRUE); glEnable(GL_MULTISAMPLE);
            glDepthMask(GL_FALSE); glEnable(GL_DEPTH_TEST);
            glDepthFunc(state%3 == 0 ? GL_LESS : state%3 == 1 ? GL_LEQUAL : GL_EQUAL);
            glClearColor(.1f,.2f,.3f,.4f); glClearDepth(1.f);
            glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            if (state >= 2) { glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, state%2 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA); }
            if (state == 4) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.3f); }
            if (state == 5) glColorMask(GL_TRUE,GL_FALSE,GL_TRUE,GL_FALSE);
            if (state == 6) glDisable(GL_MULTISAMPLE);
            if (state == 7) { glEnable(GL_SCISSOR_TEST); glScissor(10,10,21,13); }
            if (state == 8) glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE);
            if (state == 9) glEnable(GL_SAMPLE_ALPHA_TO_ONE);
            if (state == 10) { glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(.5f,GL_TRUE); }
            if (state == 11) {
                for (int q = 0; q < W*H; q++) c->fb.depth[q] = .2f+.15f*(q%5);
                for (int q = 0; q < W*H*samples; q++) c->fb.sample_depth[q] = .2f+.15f*(q%5);
            }
            size_t used = transfer_planes(c,saved,0);
            for (int enabled = 0; enabled < 2; enabled++) {
                transfer_planes(c,saved,1); sg_cross_packet_test_enable(enabled);
                for (int stripe = 0; stripe < 2; stripe++) {
                    REQUIRE(sg_cross_packet_begin(c,&t) == enabled);
                    int x0 = stripe ? 32 : 0, x1 = stripe ? W : 32;
                    for (int k = 0; k < 23; k++) {
                        sg_vert v[3] = {0};
                        float x = stripe ? 44.1f : 12.1f, y = 12.1f;
                        int large = k == 4 || k == 9 || k == 18;
                        float span = large ? 9.8f : .8f;
                        for (int j = 0; j < 3; j++) {
                            v[j].ndc = (sg_vec4){x+(j==1?span:j==2?span*.5f:0.f),y+(j==2?span:0.f),.2f+.15f*j,.5f+.25f*j};
                            v[j].color = (sg_vec4){.51f+.015f*k+.03f*j,.7f-.011f*k,.4f+.015f*j,.15f+.03f*k};
                            for (int u = 0; u < 4; u++) v[j].uv[u] = (sg_vec4){.1f+.03f*k+.07f*j,.5f,0.f,1.f};
                        }
                        REQUIRE(sg_raster_triangle_tile_prepared(c,&v[0],&v[1],&v[2],x0,x1,&t) >= -1);
                        /* This address is deliberately overwritten before the next triangle:
                         * pending lanes must own every consumed attribute. */
                        memset(v,0xcf,sizeof(v));
                        if (enabled && state == 0 && k < 3) {
                            REQUIRE(sg_cross_packet_pending() == k+1); deferred++;
                        }
                    }
                    sg_cross_packet_end(); REQUIRE(sg_cross_packet_pending()==0);
                }
                REQUIRE(transfer_planes(c,enabled?actual:expected,0)==used);
            }
            REQUIRE(!memcmp(expected,actual,used)); comparisons++;
        }
        /* Prove effects with inter-fragment dependencies retain ordinary work. */
        sg_cross_packet_test_enable(1);
        c->depth_mask=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->depth_mask=0;
        c->stencil_test=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->stencil_test=0;
        c->color_logic_op_enabled=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->color_logic_op_enabled=0;
        c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED]=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED]=0;
        c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED]=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED]=0;
        c->fog_enabled=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->fog_enabled=0;
        c->polygon_stipple_enable=1; REQUIRE(!sg_cross_packet_begin(c,&t)); sg_cross_packet_end(); c->polygon_stipple_enable=0;
        free(saved); free(expected); free(actual); softgl_destroy(c);
    }
    printf("Direct packet raster: %u bytewise complete-plane cases, %u proven deferred tiny-triangle stages; overlap/order, vertex overwrite, full-packet and bin drains, fresh partial-MSAA centroids and guarded effects passed\n",comparisons,deferred);
    return 0;
}

static int api_sequences(void) {
    unsigned comparisons = 0;
    for (int mode = 0; mode < 3; mode++) for (int layout = 0; layout < 3; layout++) for (int wide = 0; wide < 2; wide++) {
        int samples = mode == 0 ? 0 : mode == 1 ? 2 : 4;
        uint64_t expected[STAGES], actual[STAGES];
        REQUIRE(!sequence(samples,layout,wide,0,expected));
        REQUIRE(!sequence(samples,layout,wide,1,actual));
        for (int stage = 0; stage < STAGES; stage++) {
            if (expected[stage] != actual[stage]) {
                fprintf(stderr,"API mismatch samples=%d layout=%d wide=%d stage=%d %llu/%llu\n",samples,layout,wide,stage,
                    (unsigned long long)expected[stage],(unsigned long long)actual[stage]);
                return 1;
            }
            comparisons++;
        }
    }
    printf("Queued packet API: %u matching full-plane/query signatures across off/2x/4x raw-DOT3, packed-DOT3 and generic fallback sequences\n",comparisons);
    return 0;
}

int main(void) {
    #ifndef SG_CROSS_SKIP_VARYING_SHADER
    REQUIRE(!varying_shader());
    #endif
    REQUIRE(!direct_batches());
    REQUIRE(!api_sequences());
    return 0;
}
