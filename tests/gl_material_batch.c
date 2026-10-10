/* Public GL integration against the ordinary pipeline, including forced
 * storage/synchronization barriers and rollback from unsupported attributes. */
#include "types.h"
#include "workers.h"
#include <math.h>
#include <stdio.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
#define TRIANGLES 30000
typedef struct {
    GLuint position, color[2], uv, indices, texture[4];
    float *positions;
    int masked, quartic;
    float specular_alpha, cutoff;
} fixture;
static const float positions[] = {-.0625f,-.0625f,0, .0625f,-.0625f,0, 0,.0625f,0};
static const float coordinates[] = {.25f,.25f,.25f,.25f,.25f,.25f};
static const float colors[] = {.75f,.5f,.5f,1,.75f,.5f,.5f,1,.75f,.5f,.5f,1};
static unsigned comparisons;

static void initialize(softgl_ctx *c, fixture *f, int ordinary) {
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
    c->gl_batch_disabled = ordinary;
    f->masked = 0;
    f->quartic = 0; f->specular_alpha = 1.f;
    f->cutoff = .5f;
    GLuint buffers[5]; glGenBuffers(5,buffers);
    f->position = buffers[0]; f->color[0] = buffers[1]; f->color[1] = buffers[2];
    f->uv = buffers[3]; f->indices = buffers[4];
    const unsigned vertices = TRIANGLES*3;
    f->positions = malloc((size_t)vertices*3*sizeof(float));
    float *rgba = malloc((size_t)vertices*4*sizeof(float));
    float *uv = malloc((size_t)vertices*2*sizeof(float)); CHECK(f->positions && rgba && uv);
    for (unsigned i = 0; i < vertices; i++) {
        memcpy(f->positions+(size_t)i*3,positions+(i%3)*3,3*sizeof(float));
        if (i >= 3) f->positions[(size_t)i*3] += 8.f;
        memcpy(rgba+(size_t)i*4,colors+(i%3)*4,4*sizeof(float));
        memcpy(uv+(size_t)i*2,coordinates+(i%3)*2,2*sizeof(float));
    }
    glBindBuffer(GL_ARRAY_BUFFER,f->position); glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)vertices*3*sizeof(float),f->positions,GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glVertexPointer(3,GL_FLOAT,0,NULL);
    for (int k = 0; k < 2; k++) {
        glBindBuffer(GL_ARRAY_BUFFER,f->color[k]); glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)vertices*4*sizeof(float),rgba,GL_DYNAMIC_DRAW);
    }
    glEnableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER,f->uv); glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)vertices*2*sizeof(float),uv,GL_STATIC_DRAW);
    free(rgba); free(uv);
    for (int u = 0; u < 4; u++) {
        glClientActiveTexture(GL_TEXTURE0+u); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
        glTexCoordPointer(2,GL_FLOAT,0,NULL);
    }
    GLuint *indices = malloc((size_t)TRIANGLES*3*sizeof(*indices)); CHECK(indices);
    for (unsigned i = 0; i < TRIANGLES*3; i++) indices[i] = i;
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,f->indices);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,(GLsizeiptr)TRIANGLES*3*sizeof(*indices),indices,GL_STATIC_DRAW); free(indices);
    glGenTextures(4,f->texture);
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0+u); glBindTexture(GL_TEXTURE_2D,f->texture[u]);
        const uint8_t normal[4] = {255,128,128,255}, white[4] = {255,255,255,255};
        const uint8_t albedo[4] = {160,96,32,255}, black[4] = {0,0,0,255};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,
            u == 0 ? normal : u == 1 ? white : u == 2 ? albedo : black);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR); glEnable(GL_TEXTURE_2D);
    }
    glViewport(0,0,640,360);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glEnable(GL_DEPTH_TEST);
}

static void material(const fixture *f, int specular) {
    glBindBuffer(GL_ARRAY_BUFFER,f->color[specular]); glColorPointer(4,GL_FLOAT,0,NULL);
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0+u);
        glBindTexture(GL_TEXTURE_2D,specular && u == 2 ? f->texture[1] : f->texture[u]);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,u == 0 ? GL_DOT3_RGB :
            specular || u == 2 ? GL_MODULATE : GL_ADD);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,u == 0 ? GL_TEXTURE : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,u == 2 && specular && f->quartic ? GL_PREVIOUS : u == 0 ? GL_PRIMARY_COLOR :
            u == 1 ? (specular ? GL_PREVIOUS : GL_CONSTANT) :
            u == 3 && specular ? GL_CONSTANT : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,u == 2 && !specular ? GL_MODULATE : GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,u == 3 && specular ? GL_CONSTANT : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_ALPHA,GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA,GL_SRC_ALPHA);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_ALPHA,GL_SRC_ALPHA);
        const GLfloat tint[4] = {.2f,.3f,.4f,f->specular_alpha}, ambient[4] = {.1f,.1f,.1f,1};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,u == 3 && specular ? tint : ambient);
    }
}

static void frame(softgl_ctx *c, fixture *f, int barrier) {
    softgl_make_current(c);
    glDepthMask(GL_TRUE); glDepthFunc(GL_LESS); glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST);
    if (f->masked) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,f->cutoff); }
    glClearColor(.1f,.2f,.3f,1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    if (barrier == 9) {
        glMatrixMode(GL_MODELVIEW); glPushMatrix(); glTranslatef(.0625f,0.f,0.f);
    }
    if (barrier == 10) {
        const uint8_t albedo[16] = {160,96,32,255,32,64,160,255,160,96,32,255,32,64,160,255};
        glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,4,1,0,GL_RGBA,GL_UNSIGNED_BYTE,albedo);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    }
    material(f,0); glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
    if (!c->gl_batch_disabled) CHECK(c->gl_batch && !c->scene_visibility);
    if (barrier == 1) { uint8_t pixel[4]; glReadPixels(320,180,1,1,GL_RGBA,GL_UNSIGNED_BYTE,pixel); }
    if (barrier == 2) {
        glBindBuffer(GL_ARRAY_BUFFER,f->color[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(colors),colors);
    }
    if (barrier == 3) {
        glBindBuffer(GL_ARRAY_BUFFER,f->position); void *p = glMapBuffer(GL_ARRAY_BUFFER,GL_WRITE_ONLY); CHECK(p);
        memcpy(p,positions,sizeof(positions)); CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
    }
    if (barrier == 4) {
        glDeleteBuffers(1,&f->position); glGenBuffers(1,&f->position);
        glBindBuffer(GL_ARRAY_BUFFER,f->position); glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)TRIANGLES*9*sizeof(float),f->positions,GL_STATIC_DRAW);
        glVertexPointer(3,GL_FLOAT,0,NULL);
    }
    if (barrier == 5) { GLuint temporary[40]; glGenTextures(40,temporary); glDeleteTextures(40,temporary); }
    if (barrier == 6) {
        const uint8_t normal[4] = {255,128,128,255};
        glActiveTexture(GL_TEXTURE0); glTexSubImage2D(GL_TEXTURE_2D,0,0,0,1,1,GL_RGBA,GL_UNSIGNED_BYTE,normal);
    }
    if (barrier == 7) {
        glBegin(GL_POINTS); glColor4f(1,0,0,1); glVertex3f(.25f,.25f,-.25f); glEnd();
    }
    if (barrier == 8) glFinish();
    if (barrier == 9) glPopMatrix();
    if (barrier == 10) {
        glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
    }
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE); glDepthMask(GL_FALSE); glDepthFunc(GL_EQUAL);
    material(f,1); glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
    GLint depth; glGetIntegerv(GL_DEPTH_FUNC,&depth); CHECK(depth == GL_EQUAL);
    CHECK(glGetError() == GL_NO_ERROR);
}

static void compare(softgl_ctx *a, softgl_ctx *b) {
    /* Reading noncurrent pending output must restore the current GL context. */
    softgl_make_current(b);
    const uint8_t *x = softgl_read_rgba8(a); CHECK(sg_current() == b);
    const uint8_t *y = softgl_read_rgba8(b);
    size_t pixels = (size_t)640*360;
    for (size_t i = 0; i < pixels*4; i++) {
        if (abs((int)x[i]-y[i]) > 1)
            fprintf(stderr,"comparison %u pixel %zu,%zu channel %zu reference %u candidate %u\n",
                comparisons,(i/4)%640,(i/4)/640,i%4,x[i],y[i]);
        CHECK(abs((int)x[i]-y[i]) <= 1);
    }
    CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,pixels*4*sizeof(float)));
    CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,pixels*4));
    for (size_t i = 0; i < pixels*16; i++) CHECK(abs((int)a->fb.sample_color[i]-b->fb.sample_color[i]) <= 1);
    comparisons++;
}

static void transparent_frame(softgl_ctx *c, fixture *f, float alpha, float specular,
    int quartic, int barrier) {
    f->masked = 0; f->quartic = quartic; f->specular_alpha = specular;
    frame(c,f,0); glFinish();
    float front[18] = {-.0625f,-.0625f,-.5f, .0625f,-.0625f,-.5f, -.0625f,.0625f,-.5f,
        .0625f,-.0625f,-.5f, .0625f,.0625f,-.5f, -.0625f,.0625f,-.5f};
    float rgba[24];
    for (int v = 0; v < 6; v++) { memcpy(rgba+v*4,colors,4*sizeof(float)); rgba[v*4+3] = alpha; }
    glBindBuffer(GL_ARRAY_BUFFER,f->position); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(front),front);
    glBindBuffer(GL_ARRAY_BUFFER,f->color[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(rgba),rgba);
    const uint8_t holes[8] = {160,96,32,0,160,96,32,255};
    glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,1,0,GL_RGBA,GL_UNSIGNED_BYTE,holes);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    glDepthMask(GL_FALSE); glDepthFunc(GL_LEQUAL);
    glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,0.f);
    material(f,0); glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
    if (barrier) glFinish();
    glBlendFunc(GL_SRC_ALPHA,GL_ONE); material(f,1);
    glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
    CHECK(glGetError() == GL_NO_ERROR);
}

static void transparent_layers(softgl_ctx *c, fixture *f, int quartic) {
    transparent_frame(c,f,.25f,.5f,quartic,0);
    /* Multiple overlapping material pairs must keep their original order
     * without a framebuffer read or storage mutation between layers. */
    for (int layer = 1; layer < 3; layer++) {
        glMatrixMode(GL_MODELVIEW); glPushMatrix();
        glTranslatef((float)layer*.015625f,0.f,0.f);
        glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
        material(f,0); glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
        f->specular_alpha = (float)layer*.25f;
        glBlendFunc(GL_SRC_ALPHA,GL_ONE); material(f,1);
        glDrawElements(GL_TRIANGLES,TRIANGLES*3,GL_UNSIGNED_INT,NULL);
        glPopMatrix();
    }
    CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    fixture fixtures[2];
    softgl_ctx *a = softgl_create_multisample(640,360,4), *b = softgl_create_multisample(640,360,4); CHECK(a && b);
    initialize(a,&fixtures[0],1); initialize(b,&fixtures[1],0);
    for (int barrier = 0; barrier <= 10; barrier++) {
        frame(a,&fixtures[0],barrier); frame(b,&fixtures[1],barrier); compare(a,b);
        if (!barrier) CHECK(b->scene_storage);
    }
    /* Two triangles share a pixel and material but sample different alpha.
     * RGB is constant, so every sample has an independent exact RGBA oracle. */
    const float rectangle[18] = {-.0625f,-.0625f,0, .0625f,-.0625f,0, -.0625f,.0625f,0,
        .0625f,-.0625f,0, .0625f,.0625f,0, -.0625f,.0625f,0};
    const float discontinuous_uv[12] = {.25f,.5f,.25f,.5f,.25f,.5f,.75f,.5f,.75f,.5f,.75f,.5f};
    const uint8_t masked_texture[8] = {160,96,32,192,160,96,32,255};
    for (int side = 0; side < 2; side++) {
        softgl_ctx *c = side ? b : a; fixture *f = &fixtures[side]; softgl_make_current(c);
        glBindBuffer(GL_ARRAY_BUFFER,f->position); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(rectangle),rectangle);
        glBindBuffer(GL_ARRAY_BUFFER,f->uv); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(discontinuous_uv),discontinuous_uv);
        glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,1,0,GL_RGBA,GL_UNSIGNED_BYTE,masked_texture);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        f->masked = 1; frame(c,f,0);
    }
    compare(a,b);
    const uint8_t constant_alpha[] = {0,128,255};
    for (unsigned alpha = 0; alpha < 3; alpha++) {
        for (int side = 0; side < 2; side++) {
            softgl_ctx *c = side ? b : a; fixture *f = &fixtures[side]; softgl_make_current(c);
            uint8_t constant[16];
            for (int texel = 0; texel < 4; texel++) {
                constant[texel*4] = 160; constant[texel*4+1] = 96;
                constant[texel*4+2] = 32; constant[texel*4+3] = constant_alpha[alpha];
            }
            glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
            glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,constant);
            f->masked = 1; frame(c,f,0);
        }
        compare(a,b);
    }
    /* Constant texture alpha alone cannot reject a draw with an explicit
     * primary-alpha array. No winning vertex may remain to validate later. */
    for (int side = 0; side < 2; side++) {
        softgl_ctx *c = side ? b : a; fixture *f = &fixtures[side]; softgl_make_current(c);
        const uint8_t constant[16] = {160,96,32,128,160,96,32,128,
            160,96,32,128,160,96,32,128};
        glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D,f->texture[2]);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,2,0,GL_RGBA,GL_UNSIGNED_BYTE,constant);
        float primary[24];
        for (int v = 0; v < 6; v++) { memcpy(primary+v*4,colors,4*sizeof(float)); primary[v*4+3] = 2.f; }
        glBindBuffer(GL_ARRAY_BUFFER,f->color[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(primary),primary);
        f->masked = 1; f->cutoff = .75f; frame(c,f,0);
        f->cutoff = .5f;
    }
    compare(a,b);
    for (int side = 0; side < 2; side++) {
        fixture *f = &fixtures[side]; softgl_make_current(side ? b : a); f->masked = 0;
        glBindBuffer(GL_ARRAY_BUFFER,f->position); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(positions),positions);
    }
    /* Nonunit primary alpha rejects the canonical path and replays ordinary
     * commands inside the library. The caller does not retry any draw. */
    for (int side = 0; side < 2; side++) {
        softgl_ctx *c = side ? b : a; fixture *f = &fixtures[side]; softgl_make_current(c);
        float partial[12]; memcpy(partial,colors,sizeof(partial));
        for (int v = 0; v < 3; v++) partial[v*4+3] = .4f;
        glBindBuffer(GL_ARRAY_BUFFER,f->color[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(partial),partial);
        frame(c,f,0);
    }
    compare(a,b);
    const float diffuse_alpha[] = {.25f,1.f}, specular_alpha[] = {0.f,.15f,.5f,1.f};
    for (int quartic = 0; quartic < 2; quartic++) for (int barrier = 0; barrier < 2; barrier++)
        for (int d = 0; d < 2; d++) for (int s = 0; s < 4; s++) {
            transparent_frame(a,&fixtures[0],diffuse_alpha[d],specular_alpha[s],quartic,barrier);
            transparent_frame(b,&fixtures[1],diffuse_alpha[d],specular_alpha[s],quartic,barrier);
            compare(a,b);
        }
    for (int quartic = 0; quartic < 2; quartic++) {
        transparent_layers(a,&fixtures[0],quartic);
        transparent_layers(b,&fixtures[1],quartic);
        compare(a,b);
    }
    for (int side = 0; side < 2; side++) {
        fixtures[side].quartic = 0; fixtures[side].specular_alpha = 1.f;
    }
    /* Repeated coplanar primitives accumulate repeatedly in the additive pass.
     * This topology must fall back instead of fusing one visible surface. */
    GLuint *repeated = malloc((size_t)TRIANGLES*3*sizeof(*repeated)); CHECK(repeated);
    for (unsigned i = 0; i < TRIANGLES*3; i++) repeated[i] = i%3;
    for (int side = 0; side < 2; side++) {
        softgl_ctx *c = side ? b : a; fixture *f = &fixtures[side]; softgl_make_current(c);
        glBindBuffer(GL_ARRAY_BUFFER,f->color[0]); glBufferSubData(GL_ARRAY_BUFFER,0,sizeof(colors),colors);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,f->indices);
        glBufferSubData(GL_ELEMENT_ARRAY_BUFFER,0,(GLsizeiptr)TRIANGLES*3*sizeof(*repeated),repeated);
        frame(c,f,0);
    }
    compare(a,b); free(repeated);
    softgl_destroy(a); softgl_destroy(b);
    free(fixtures[0].positions); free(fixtures[1].positions);
    puts("Automatic GL materials: opaque pairs, separate VBO arrays, storage/read/draw barriers and rollback PASS");
    return 0;
}
