/* Final constant GL alpha: independent analytic alpha-test oracle. RGB is
 * compared to the original PREVIOUS-alpha pipeline with alpha testing off. */
#include "types.h"
static int suppress_alpha_test;
static void oracle_enable(GLenum cap) {
    if (suppress_alpha_test && cap == GL_ALPHA_TEST) glDisable(cap);
    else glEnable(cap);
}
#define glEnable oracle_enable
#define main positions_contract_main
#include "scene_positions.c"
#undef main
#undef glEnable

static void set_alpha(softgl_ctx *c, int constant, float alpha) {
    softgl_make_current(c);
    glActiveTexture(GL_TEXTURE3);
    const float environment[4] = {0.f,0.f,0.f,alpha};
    glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,environment);
    glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,constant ? GL_CONSTANT : GL_PREVIOUS);
}

static void check_alpha(softgl_ctx *c, float alpha) {
    softgl_make_current(c);
    const uint8_t *pixels = softgl_read_rgba8(c);
    int expected = (int)(alpha*255.f+.5f);
    if (c->fb.samples) {
        size_t units = (size_t)640*360*c->fb.samples;
        for (size_t i = 0; i < units; i++)
            if (c->fb.sample_depth[i] != 1.f)
                CHECK(c->fb.sample_color[i*4+3] == expected);
    } else {
        for (size_t i = 0; i < (size_t)640*360; i++)
            if (c->fb.depth[i] != 1.f) CHECK(pixels[i*4+3] == expected);
    }
}

static void compare_rgb_depth(softgl_ctx *a, softgl_ctx *b) {
    softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)640*360;
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    for (size_t i = 0; i < pixels; i++) CHECK(!memcmp(pa+i*4,pb+i*4,3));
    if (a->fb.samples) {
        size_t units = pixels*a->fb.samples;
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,units*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,units));
        for (size_t i = 0; i < units; i++)
            CHECK(!memcmp(a->fb.sample_color+i*4,b->fb.sample_color+i*4,3));
    }
    comparisons++;
}

int main(void) {
    generate();
    const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    const float alpha[] = {0.f,.3f,.4f,.40000004f,.75f,1.f};
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]);
        CHECK(a && b); initialize(a,helpers[w]); initialize(b,helpers[w]);
        for (int k = 0; k < 6; k++) for (int variant = 0; variant < 18; variant++) {
            set_alpha(a,0,1.f); set_alpha(b,1,alpha[k]);
            suppress_alpha_test = 1;
            if (!(variant&1) || alpha[k] > .4f) frame(a,1,variant);
            else {
                softgl_make_current(a);
                glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
                glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
            }
            suppress_alpha_test = 0;
            frame(b,1,variant); compare_rgb_depth(a,b);
            check_alpha(b,alpha[k]);
        }
        /* Reset to PREVIOUS on the same contexts; a prepared constant must
         * never survive a different final-unit source. */
        set_alpha(a,0,1.f); set_alpha(b,0,1.f);
        frame(a,1,1); frame(b,1,1); compare(a,b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(captured);
    printf("Final constant alpha: %d analytic-oracle paired frames; exact RGB/depth/stencil, independent covered-sample alpha, cutoff ties and reset PASS\n",comparisons);
    return 0;
}
