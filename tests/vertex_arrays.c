#include "types.h"
#include "material_fixture.h"
#include "workers.h"
#include <math.h>
#include <stdio.h>

#define TRIANGLES 1536
#define VERTICES (TRIANGLES*3)
#define CHECK(x) do { if (!(x)) { fprintf(stderr, "line %d: %s\n", __LINE__, #x); exit(1); } } while (0)
static float positions[VERTICES][3];
static float colors[VERTICES][4], coordinates[VERTICES][2];
static uint32_t indices[VERTICES];
static float eager_colors[VERTICES][4], eager_coordinates[VERTICES][4];
typedef struct { int phase; } program_data;

static void attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4]) {
    const program_data *data = user;
    CHECK(index < VERTICES);
    color[0] *= .6f+(index%5)*.05f;
    color[1] += data->phase*.003f;
    uv[0] += (index%13)*.007f;
    uv[1] -= data->phase*.009f;
}

static void attributes_second(void *user, GLuint index, GLfloat color[4], GLfloat uv[4]) {
    attributes(user,index,color,uv);
    color[2] *= .7f;
}

static void generate(void) {
    for (int t = 0; t < TRIANGLES; t++) {
        int group = t/64, local = t%64;
        float x = ((group%8)-3.5f)*1.4f + (local%8)*.015f;
        float y = ((group/8)-1.f)*1.2f + (local/8)*.015f;
        float z = -2.f + (group%5)*.22f;
        for (int j = 0; j < 3; j++) {
            positions[t*3+j][0] = x+(j == 1 ? .014f : 0);
            positions[t*3+j][1] = y+(j == 2 ? .014f : 0);
            positions[t*3+j][2] = z;
            indices[t*3+j] = (uint32_t)(t*3+j);
            colors[t*3+j][0] = .2f+(group%7)*.1f;
            colors[t*3+j][1] = .1f+(local%8)*.1f;
            colors[t*3+j][2] = .3f+(j*.2f);
            colors[t*3+j][3] = .6f;
            coordinates[t*3+j][0] = (t%19)*.13f+(j == 1 ? .2f : 0);
            coordinates[t*3+j][1] = (t%13)*.17f+(j == 2 ? .2f : 0);
        }
    }
}

static void compare(softgl_ctx *a, softgl_ctx *b, GLuint qa, GLuint qb) {
    softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)a->fb.w*a->fb.h;
    CHECK(!memcmp(pa, pb, pixels*4));
    CHECK(!memcmp(a->fb.depth, b->fb.depth, pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil, b->fb.stencil, pixels));
    if (a->fb.samples) {
        CHECK(!memcmp(a->fb.sample_color, b->fb.sample_color, pixels*(unsigned)a->fb.samples*4));
        CHECK(!memcmp(a->fb.sample_depth, b->fb.sample_depth, pixels*(unsigned)a->fb.samples*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil, b->fb.sample_stencil, pixels*(unsigned)a->fb.samples));
    }
    GLuint va, vb;
    softgl_make_current(a); glGetQueryObjectuiv(qa, GL_QUERY_RESULT, &va);
    softgl_make_current(b); glGetQueryObjectuiv(qb, GL_QUERY_RESULT, &vb);
    CHECK(va == vb);
}

static void check_mode(int samples, int workers) {
    softgl_ctx *contexts[2]; GLuint buffers[2][2], queries[2];
    generate();
    for (int side = 0; side < 2; side++) {
        softgl_ctx *c = samples ? softgl_create_multisample(640,360,samples) : softgl_create(640,360);
        CHECK(c); contexts[side] = c; softgl_make_current(c);
        sg_workers_shutdown(c); sg_workers_init(c,workers);
        glGenBuffers(2,buffers[side]); glGenQueries(1,&queries[side]);
        glBindBuffer(GL_ARRAY_BUFFER,buffers[side][0]);
        glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,side ? GL_STATIC_DRAW : GL_DYNAMIC_DRAW);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[side][1]);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
        glEnableClientState(GL_VERTEX_ARRAY); glVertexPointer(3,GL_FLOAT,0,NULL);
        /* Attributes use different storage than position. Dense vertex IDs
         * must still fetch every attribute through its original source ID. */
        glBindBuffer(GL_ARRAY_BUFFER,0);
        glEnableClientState(GL_COLOR_ARRAY); glColorPointer(4,GL_FLOAT,0,colors);
        glClientActiveTexture(GL_TEXTURE3); glActiveTexture(GL_TEXTURE3);
        glEnableClientState(GL_TEXTURE_COORD_ARRAY); glTexCoordPointer(2,GL_FLOAT,0,coordinates);
        GLuint texture; glGenTextures(1,&texture); glBindTexture(GL_TEXTURE_2D,texture);
        const uint8_t texels[16] = {255,80,30,255, 20,255,100,255, 60,10,255,255, 220,230,240,255};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,texels);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
        glEnable(GL_TEXTURE_2D);
        glViewport(0,0,640,360);
    }
    program_data data;
    for (int variant = 0; variant < 31; variant++) {
        data.phase = variant;
        fixture_attributes_fn fn = variant%7 == 0 ? NULL : variant%3 == 0 ? attributes_second : attributes;
        for (int i = 0; i < VERTICES; i++) {
            memcpy(eager_colors[i],colors[i],sizeof(eager_colors[i]));
            eager_coordinates[i][0] = coordinates[i][0]; eager_coordinates[i][1] = coordinates[i][1];
            eager_coordinates[i][2] = 0; eager_coordinates[i][3] = 1;
            if (fn) fn(&data,(GLuint)i,eager_colors[i],eager_coordinates[i]);
        }
        for (int side = 0; side < 2; side++) {
            softgl_ctx *c = contexts[side]; softgl_make_current(c);
            glBindBuffer(GL_ARRAY_BUFFER,0);
            glColorPointer(4,GL_FLOAT,0,eager_colors);
            glClientActiveTexture(GL_TEXTURE3);
            glTexCoordPointer(4,GL_FLOAT,0,eager_coordinates);
            glBindBuffer(GL_ARRAY_BUFFER,buffers[side][0]);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[side][1]);
            if (variant == 8) {
                float replacement[3] = {0,0,-2};
                glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(replacement),replacement);
            }
            if (variant == 12) {
                float *mapped = glMapBuffer(GL_ARRAY_BUFFER,GL_WRITE_ONLY); CHECK(mapped);
                for (int i = 0; i < VERTICES; i++) mapped[i*3] += .5f;
                CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
            }
            if (variant == 16) {
                glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,side ? GL_STATIC_DRAW : GL_DYNAMIC_DRAW);
                uint32_t rotated[VERTICES];
                for (int i = 0; i < VERTICES; i++) rotated[i] = indices[(i+192)%VERTICES];
                glBufferSubData(GL_ELEMENT_ARRAY_BUFFER,0,sizeof(rotated),rotated);
            }
            if (variant == 20) {
                glDeleteBuffers(2,buffers[side]); glGenBuffers(2,buffers[side]);
                glBindBuffer(GL_ARRAY_BUFFER,buffers[side][0]);
                glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,side ? GL_STATIC_DRAW : GL_DYNAMIC_DRAW);
                glVertexPointer(3,GL_FLOAT,0,NULL);
                glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[side][1]);
                glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
            }
            glMatrixMode(GL_PROJECTION); glLoadIdentity();
            if (variant%3) glFrustum(-1,1,-.5625,.5625,1,10);
            else glOrtho(-2,2,-1.125,1.125,1,10);
            glMatrixMode(GL_MODELVIEW); glLoadIdentity();
            glRotatef((float)(variant < 24 ? variant*7 : 0),0,1,0);
            if (variant >= 24) { glScalef(.12f,.12f,.12f); glTranslatef(0,0,-20); }
            if (variant == 3) glTranslatef(100,0,0); /* entirely rejected */
            if (variant == 4) glTranslatef(2.0000001f,0,0); /* clip boundary */
            glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClearStencil(0);
            glColorMask(GL_TRUE,GL_TRUE,GL_TRUE,GL_TRUE); glDepthMask(GL_TRUE);
            glDisable(GL_BLEND); glDisable(GL_STENCIL_TEST);
            glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS);
            if (variant&1) { glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA); }
            if (variant&2) { glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS,1,255); glStencilOp(GL_KEEP,GL_KEEP,GL_INCR); }
            glColor4f(.7f,.3f,.5f,.6f);
            glBeginQuery(GL_SAMPLES_PASSED,queries[side]);
            if (variant == 27) glDrawArrays(GL_TRIANGLES,192,192);
            else if (variant == 28) {
                uint16_t small[384];
                for (int i = 0; i < 384; i++) small[i] = (uint16_t)(i+192);
                glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);
                glDrawElements(GL_TRIANGLES,384,GL_UNSIGNED_SHORT,small);
            } else if (variant == 29) glDrawArrays(GL_POINTS,1280,128);
            else if (variant == 30) {
                glBegin(GL_TRIANGLES);
                glColor4f(.2f,.4f,.8f,.6f); glMultiTexCoord2f(GL_TEXTURE3,.25f,.5f);
                glVertex3f(-1,-1,-2); glVertex3f(1,-1,-2); glVertex3f(0,1,-2);
                glEnd();
            } else glDrawElements(GL_TRIANGLES,VERTICES,GL_UNSIGNED_INT,NULL);
            glEndQuery(GL_SAMPLES_PASSED);
            CHECK(glGetError() == GL_NO_ERROR);
        }
        compare(contexts[0],contexts[1],queries[0],queries[1]);
    }
    if (workers) CHECK(((sg_worker_pool *)contexts[1]->workers)->cluster_cache != NULL);
    softgl_destroy(contexts[0]); softgl_destroy(contexts[1]);
}

int main(void) {
    for (int workers = 0; workers <= 3; workers += workers ? 2 : 1) {
        check_mode(0,workers); check_mode(2,workers); check_mode(4,workers);
    }
    puts("Vertex arrays: 279 paired frames, full color/depth/stencil/sample planes and queries PASS");
    return 0;
}
