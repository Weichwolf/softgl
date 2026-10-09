/* Public opt-in/reset policy, real sample depths, and failure recovery. */
#include "types.h"
static int quantized_msaa_request = -1;

static int begin_selected_msaa(void) {
    int begun = softgl_scene_visibility_begin();
    if (begun && quantized_msaa_request >= 0)
        softgl_scene_quantized_msaa(quantized_msaa_request);
    return begun;
}

#define softgl_scene_visibility_begin begin_selected_msaa
#include "msaa_fixture.inc"
#undef softgl_scene_visibility_begin

static void place_triangle(float extent, int gradient) {
    for (int j = 0; j < 3; j++) {
        float x = 319.24f+(j == 1 ? extent : 0.f);
        float y = 179.1f+(j == 2 ? extent : 0.f);
        vertices[10+j] = (vertex){{x/640.f*4.f-2.f,y/360.f*2.25f-1.125f,
            -2.f-(gradient ? j*.1f : 0.f)}, {j == 1 ? .9f : .1f,j == 2 ? .9f : .1f}};
    }
}

int main(void) {
    generate();
    const int helpers[] = {1,3,8}, modes[] = {1,-1,0,-1};
    for (int n = 2; n <= 4; n += 2) {
        size_t pixels = (size_t)640*360, units = pixels*(unsigned)n;
        uint8_t *color = malloc(units*4), *stencil = malloc(units);
        float *depth = malloc(units*sizeof(float));
        CHECK(color && stencil && depth);
        for (unsigned i = 0; i < sizeof(helpers)/sizeof(helpers[0]); i++) {
            softgl_ctx *c = softgl_create_multisample(640,360,n);
            CHECK(c); initialize(c,helpers[i]);
            place_triangle(.18f,0);
            for (unsigned k = 0; k < sizeof(modes)/sizeof(modes[0]); k++) {
                quantized_msaa_request = modes[k];
                /* Calling outside a scene must not enable the following one. */
                if (modes[k] < 0) softgl_scene_quantized_msaa(GL_TRUE);
                tiny_frame(c,1);
                unsigned covered = 0;
                for (int s = 0; s < n; s++)
                    covered += c->fb.sample_depth[((size_t)179*640+319)*n+s] < 1.f;
                /* On the 16-unit grid, sample zero (5110,2866) lies outside
                 * vertices (5107,2865), (5110,2865), (5107,2868). */
                CHECK(covered == (n == 4 && modes[k] == 1 ? 0u : 1u));
            }
            quantized_msaa_request = 1;
            place_triangle(15.7f,1); tiny_frame(c,1);
            const float *sample = c->fb.sample_depth+((size_t)180*640+320)*n;
            for (int s = 0; s < n; s++) CHECK(sample[s] >= 0.f && sample[s] < 1.f);
            CHECK(sample[0] != sample[n-1]);
            glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
            memcpy(color,c->fb.sample_color,units*4);
            memcpy(depth,c->fb.sample_depth,units*sizeof(float));
            memcpy(stencil,c->fb.sample_stencil,units);
            rollback(c);
            CHECK(!memcmp(color,c->fb.sample_color,units*4));
            CHECK(!memcmp(depth,c->fb.sample_depth,units*sizeof(float)));
            CHECK(!memcmp(stencil,c->fb.sample_stencil,units));
            softgl_destroy(c); rollback_replay(n,helpers[i]);
        }
        free(color); free(stencil); free(depth);
    }
    CHECK(restored == 12 && comparisons == 6);
    puts("Quantized MSAA: opt-in/reset, real sample gradients, 12 rollbacks and 6 replays PASS");
    return 0;
}
