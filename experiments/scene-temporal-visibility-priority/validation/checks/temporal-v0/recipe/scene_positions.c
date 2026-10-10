/* Canonical mesh commands, copied programs, clipping, masks and rollback. */
#include "types.h"
#include "workers.h"
#include <stdio.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
#define TRIANGLES 96
#define VERTICES (TRIANGLES*3+10)
typedef struct { float p[3], uv[2]; } vertex;
typedef struct { float phase; } program_data;
static vertex vertices[VERTICES];
static GLuint indices[TRIANGLES*3];
static int captured, restored, comparisons;

static void attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    const program_data *data = user;
    CHECK(index < VERTICES);
    color[0] = .6f+(index%3)*.08f;
    color[1] = .65f+data->phase*.005f;
    color[2] = .8f;
    color[3] = 1.f;
    uv[1][0] = .6f; uv[1][1] = .7f; uv[1][2] = .8f;
    uv[3][0] = .2f; uv[3][1] = .3f;
}

static void invalid_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    attributes(user,index,color,uv); color[3] = .5f;
}

static void diffuse_chain(void) {
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0+u);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,u == 0 ? GL_DOT3_RGB : u == 2 ? GL_MODULATE : GL_ADD);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,u == 0 ? GL_TEXTURE : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,u == 0 ? GL_PRIMARY_COLOR : u == 1 ? GL_CONSTANT : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,u == 2 ? GL_MODULATE : GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_ALPHA,GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA,GL_SRC_ALPHA);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_ALPHA,GL_SRC_ALPHA);
        const float ambient[4] = {.15f,.2f,.25f,1.f};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,ambient);
    }
}

static void initialize(softgl_ctx *c, int helpers) {
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,helpers);
    glEnableClientState(GL_VERTEX_ARRAY); glVertexPointer(3,GL_FLOAT,sizeof(vertex),vertices[0].p);
    for (int u = 0; u < 4; u++) {
        glClientActiveTexture(GL_TEXTURE0+u); glActiveTexture(GL_TEXTURE0+u);
        glEnableClientState(GL_TEXTURE_COORD_ARRAY); glTexCoordPointer(2,GL_FLOAT,sizeof(vertex),vertices[0].uv);
        GLuint texture; glGenTextures(1,&texture); glBindTexture(GL_TEXTURE_2D,texture);
        const uint8_t normal[4] = {128,200,225,255}, white[4] = {255,255,255,255};
        const uint8_t reflection[4] = {10,20,30,255};
        const uint8_t albedo[16] = {180,80,30,255,20,180,100,192,60,10,180,128,120,130,140,0};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,u == 2 ? 2 : 1,u == 2 ? 2 : 1,0,GL_RGBA,GL_UNSIGNED_BYTE,
            u == 0 ? normal : u == 1 ? white : u == 2 ? albedo : reflection);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR); glEnable(GL_TEXTURE_2D);
    }
    diffuse_chain(); glViewport(0,0,640,360);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS);
}

static void generate(void) {
    for (int t = 0; t < TRIANGLES; t++) {
        float x = (t%8-3.5f)*.8f, y = ((t/8)%4-1.5f)*.7f;
        for (int j = 0; j < 3; j++) {
            int id = 10+t*3+j;
            vertices[id] = (vertex){{x+(j == 1 ? .75f : 0.f),y+(j == 2 ? .65f : 0.f),-2.f-(t/32)*.2f},
                {(t%7)*.13f+(j == 1 ? .3f : 0.f),(t%5)*.17f+(j == 2 ? .3f : 0.f)}};
            indices[t*3+j] = (GLuint)id;
        }
    }
}

static void frame(softgl_ctx *c, int deferred, int variant) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    if (variant%2) glFrustum(-1,1,-.5625,.5625,1,10); else glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef((float)variant*9.f,0,1,0);
    if (variant == 8) glTranslatef(20,0,0);
    if (variant == 9) glTranslatef(0,0,1.5f);
    if (variant%3 == 0) { glEnable(GL_CULL_FACE); glCullFace(variant%2 ? GL_FRONT : GL_BACK); }
    else glDisable(GL_CULL_FACE);
    glFrontFace(variant%4 ? GL_CCW : GL_CW);
    if (variant&1) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); } else glDisable(GL_ALPHA_TEST);
    int begun = softgl_scene_visibility_begin();
    for (int part = 0; part < 3; part++) {
        const float tint[4] = {.1f+part*.1f,.2f,.3f,.5f};
        softgl_set_fused_dot3_material(tint,variant&1);
        program_data data = {(float)(variant+part)};
        softgl_set_vertex_attributes_full(attributes,&data);
        if (begun) softgl_scene_visibility_material();
        int queued = deferred && softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),VERTICES,indices+part*96,96,attributes,&data,sizeof(data));
        if (queued) captured++;
        else glDrawElements(GL_TRIANGLES,96,GL_UNSIGNED_INT,indices+part*96);
        /* Deferred work must use its copied program, even after the original
         * stack object, callback and matrices have been changed. */
        data.phase = 1000.f; softgl_set_vertex_attributes_full(NULL,NULL);
        glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef((float)variant*9.f,0,1,0);
        if (variant == 8) glTranslatef(20,0,0);
        if (variant == 9) glTranslatef(0,0,1.5f);
    }
    glLoadIdentity();
    if (begun) CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

static void compare(softgl_ctx *a, softgl_ctx *b) {
    softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)640*360;
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    for (size_t i = 0; i < pixels*4; i++) CHECK(abs((int)pa[i]-(int)pb[i]) <= 1);
    if (a->fb.samples) {
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,pixels*a->fb.samples*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,pixels*a->fb.samples));
        CHECK(!memcmp(a->fb.sample_color,b->fb.sample_color,pixels*a->fb.samples*4));
    }
    comparisons++;
}

static void rollback(softgl_ctx *c) {
    softgl_make_current(c); glDisable(GL_ALPHA_TEST); glDisable(GL_CULL_FACE);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    size_t pixels = (size_t)640*360; uint8_t *color = malloc(pixels*4); float *depth = malloc(pixels*sizeof(float));
    CHECK(color && depth); memcpy(color,c->fb.color,pixels*4); memcpy(depth,c->fb.depth,pixels*sizeof(float));
    CHECK(softgl_scene_visibility_begin());
    const float tint[4] = {.1f,.2f,.3f,.5f}; softgl_set_fused_dot3_material(tint,0);
    softgl_scene_visibility_material(); program_data data = {1.f};
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,indices,96,attributes,&data,sizeof(data)));
    /* A span exceeds the allocation budget before any vertex is accessed. */
    const GLuint huge[] = {0,2000000,1}; softgl_scene_visibility_material();
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),2000001,huge,3,attributes,&data,sizeof(data)));
    CHECK(!softgl_scene_visibility_end());
    CHECK(!memcmp(color,c->fb.color,pixels*4)); CHECK(!memcmp(depth,c->fb.depth,pixels*sizeof(float)));
    CHECK(!softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,indices,96,attributes,&data,sizeof(data)));
    restored++;
    CHECK(softgl_scene_visibility_begin());
    softgl_scene_visibility_material();
    CHECK(!softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,13,VERTICES,indices,96,attributes,&data,sizeof(data)));
    CHECK(!softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,indices,2,attributes,&data,sizeof(data)));
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,indices,96,invalid_attributes,&data,sizeof(data)));
    /* Failure after the position/raster phases must undo all written depth. */
    CHECK(!softgl_scene_visibility_end());
    CHECK(!memcmp(color,c->fb.color,pixels*4)); CHECK(!memcmp(depth,c->fb.depth,pixels*sizeof(float)));
    restored++; free(color); free(depth);
}

int main(void) {
    generate(); const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]); CHECK(a && b);
        initialize(a,helpers[w]); initialize(b,helpers[w]);
        for (int variant = 0; variant < 18; variant++) { frame(a,0,variant); frame(b,1,variant); compare(a,b); }
        if (!samples[s]) rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(captured && restored);
    printf("Canonical positions: %d paired full-plane frames, %d mesh commands, %d budget rollbacks PASS\n",comparisons,captured,restored);
    return 0;
}
