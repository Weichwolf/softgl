/* Subpixel UV seam: opt-in colors, exact physical samples, reset and fallback. */
#include "types.h"
#include "workers.h"
#include <stdio.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
typedef struct { float position[3], uv[2]; } vertex;
static const vertex vertices[] = {
    {{318.25f,178.25f,0.f},{.1f,.1f}}, {{322.25f,178.25f,0.f},{.1f,.1f}},
    {{322.25f,182.25f,0.f},{.1f,.1f}}, {{318.25f,178.25f,0.f},{.9f,.1f}},
    {{322.25f,182.25f,0.f},{.9f,.1f}}, {{318.25f,182.25f,0.f},{.9f,.1f}}
};
static const GLuint indices[] = {0,1,2,3,4,5};
static int comparisons, approximate_frames, covered_samples, alpha_mask;

static void attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    (void)user; CHECK(index < 6);
    for (int k = 0; k < 4; k++) color[k] = 1.f;
    uv[1][0] = uv[1][1] = uv[1][2] = .75f;
    uv[3][0] = uv[3][1] = .5f;
}

static void initialize(softgl_ctx *c, int helpers) {
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,helpers);
    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3,GL_FLOAT,sizeof(vertex),vertices[0].position);
    for (int unit = 0; unit < 4; unit++) {
        glClientActiveTexture(GL_TEXTURE0+unit); glActiveTexture(GL_TEXTURE0+unit);
        glEnableClientState(GL_TEXTURE_COORD_ARRAY);
        glTexCoordPointer(2,GL_FLOAT,sizeof(vertex),vertices[0].uv);
        GLuint texture; glGenTextures(1,&texture); glBindTexture(GL_TEXTURE_2D,texture);
        const uint8_t white[4] = {255,255,255,255}, black[4] = {0,0,0,255};
        const uint8_t albedo[16] = {255,0,0,255,0,255,0,255,255,0,0,255,0,255,0,255};
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,unit == 2 ? 2 : 1,unit == 2 ? 2 : 1,
            0,GL_RGBA,GL_UNSIGNED_BYTE,unit == 2 ? albedo : unit == 3 ? black : white);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
        glEnable(GL_TEXTURE_2D);
        glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_RGB,unit == 0 ? GL_DOT3_RGB : unit == 2 ? GL_MODULATE : GL_ADD);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_RGB,unit == 0 ? GL_TEXTURE : GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_RGB,unit == 0 ? GL_PRIMARY_COLOR : unit == 1 ? GL_CONSTANT : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_RGB,GL_SRC_COLOR);
        glTexEnvi(GL_TEXTURE_ENV,GL_COMBINE_ALPHA,unit == 2 ? GL_MODULATE : GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,GL_PREVIOUS);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE1_ALPHA,GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND0_ALPHA,GL_SRC_ALPHA);
        glTexEnvi(GL_TEXTURE_ENV,GL_OPERAND1_ALPHA,GL_SRC_ALPHA);
        const float ambient[4] = {0,0,0,1};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,ambient);
    }
    glViewport(0,0,640,360); glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,640,0,360,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    CHECK(glGetError() == GL_NO_ERROR);
}

/* opt: -1 default, 0 off, 1 on, 2 on then off, 3 before begin;
 * 4 capture on then switch off, 5 capture off then switch on. */
static void frame(softgl_ctx *c, int opt, int canonical, int separate_materials) {
    softgl_make_current(c);
    if (alpha_mask) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.25f); }
    else glDisable(GL_ALPHA_TEST);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    if (opt == 3) softgl_scene_msaa_material_merge(GL_TRUE);
    CHECK(softgl_scene_visibility_begin());
    if (opt >= 0 && opt != 3) softgl_scene_msaa_material_merge(opt && opt != 5 ? GL_TRUE : GL_FALSE);
    if (opt == 2) softgl_scene_msaa_material_merge(GL_FALSE);
    const float tint[4] = {0,0,0,0}; softgl_set_fused_dot3_material(tint,GL_FALSE);
    softgl_set_vertex_attributes_full(attributes,NULL);
    int parts = separate_materials ? 2 : 1;
    for (int part = 0; part < parts; part++) {
        softgl_scene_visibility_material();
        const GLuint *span = indices+part*3;
        int count = separate_materials ? 3 : 6;
        if (canonical) CHECK(softgl_scene_visibility_positions(vertices[0].position,
            vertices[0].uv,sizeof(vertex),6,span,count,attributes,NULL,0));
        else glDrawElements(GL_TRIANGLES,count,GL_UNSIGNED_INT,span);
    }
    softgl_set_vertex_attributes_full(NULL,NULL);
    if (opt == 4) softgl_scene_msaa_material_merge(GL_FALSE);
    if (opt == 5) softgl_scene_msaa_material_merge(GL_TRUE);
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

static void compare(softgl_ctx *a, softgl_ctx *b, int different_colors) {
    softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)640*360;
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    int differences = 0;
    for (size_t i = 0; i < pixels; i++) {
        CHECK(pa[i*4+3] == pb[i*4+3]);
        differences += memcmp(pa+i*4,pb+i*4,3) != 0;
        if (!a->fb.samples && a->fb.depth[i] == 1.f) CHECK(!memcmp(pa+i*4,pb+i*4,4));
    }
    CHECK(different_colors ? differences > 0 : differences == 0);
    if (a->fb.samples) {
        size_t samples = pixels*a->fb.samples;
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,samples*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,samples));
        for (size_t i = 0; i < samples; i++) {
            CHECK(a->fb.sample_color[i*4+3] == b->fb.sample_color[i*4+3]);
            if (a->fb.sample_depth[i] == 1.f)
                CHECK(!memcmp(a->fb.sample_color+i*4,b->fb.sample_color+i*4,4));
            else covered_samples++;
        }
        if (!different_colors) CHECK(!memcmp(a->fb.sample_color,b->fb.sample_color,samples*4));
    }
    approximate_frames += different_colors; comparisons++;
}

int main(void) {
    const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    softgl_make_current(NULL); softgl_scene_msaa_material_merge(GL_TRUE);
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]); CHECK(a && b);
        initialize(a,helpers[w]); initialize(b,helpers[w]);
        frame(a,0,1,0); frame(b,1,1,0); compare(a,b,samples[s] == 4);
        /* The next begin must clear an enabled flag even when the caller omits the setter. */
        frame(b,-1,1,0); compare(a,b,0);
        for (int opt = 0; opt <= 3; opt++) if (opt != 1) {
            frame(b,opt,1,0); compare(a,b,0);
        }
        frame(b,4,1,0); compare(a,b,samples[s] == 4);
        frame(b,5,1,0); compare(a,b,0);
        /* Separate materials and legacy draws must keep their own colors. */
        frame(a,0,1,1); frame(b,1,1,1); compare(a,b,0);
        frame(a,0,0,0); frame(b,1,0,0); compare(a,b,0);
        /* A mask can pass coverage with different alpha values at a UV seam.
         * It must retain each winner's own color/alpha even when opt-in is on. */
        softgl_ctx *contexts[] = {a,b};
        const uint8_t masked_green[8] = {0,255,0,192,0,255,0,192};
        for (int i = 0; i < 2; i++) {
            softgl_make_current(contexts[i]); glActiveTexture(GL_TEXTURE2);
            glTexSubImage2D(GL_TEXTURE_2D,0,1,0,1,2,GL_RGBA,GL_UNSIGNED_BYTE,masked_green);
        }
        alpha_mask = 1; frame(a,0,1,0); frame(b,1,1,0); compare(a,b,0); alpha_mask = 0;
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(approximate_frames == 6 && covered_samples > 0);
    printf("MSAA material merge: %d paired frames, %d deliberate seam approximations; depth, coverage, alpha, reset and fallback PASS\n",
        comparisons,approximate_frames);
    return 0;
}
