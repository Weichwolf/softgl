/* Final constant GL alpha: independent expected sample alpha, legacy/canonical
 * visibility comparison, copied material state and alpha-test boundaries. */
#define main positions_contract_main
#include "scene_positions.c"
#undef main

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

int main(void) {
    generate();
    const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    const float alpha[] = {0.f,.3f,.4f,.40000004f,.75f,1.f};
    for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]);
        CHECK(a && b); initialize(a,helpers[w]); initialize(b,helpers[w]);
        for (int k = 0; k < 6; k++) for (int variant = 0; variant < 18; variant++) {
            set_alpha(a,1,alpha[k]); set_alpha(b,1,alpha[k]);
            frame(a,0,variant); frame(b,1,variant); compare(a,b);
            check_alpha(a,alpha[k]); check_alpha(b,alpha[k]);
        }
        /* Reset to PREVIOUS on the same contexts; a prepared constant must
         * never survive a different final-unit source. */
        set_alpha(a,0,1.f); set_alpha(b,0,1.f);
        frame(a,0,1); frame(b,1,1); compare(a,b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(captured);
    printf("Final constant alpha: %d legacy/canonical paired frames; independent covered-sample alpha, cutoff ties and reset PASS\n",comparisons);
    return 0;
}
