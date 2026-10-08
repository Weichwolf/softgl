/* Variable-size canonical captures versus independent ordinary GL rendering.
 * Small test buffers stay within the user's 640x360 optimization limit. */
#include "types.h"
#include <stdio.h>
static softgl_ctx *reference_context;
static int begins, meshes;
static int begin_selected_viewport(void) {
    if (sg_current() == reference_context) return 0;
    int begun = softgl_scene_visibility_begin();
    if (!sg_current()->fb.samples && !begun) {
        fprintf(stderr,"begin rejected at %dx%d; workers=%p, scene=%p, depth=%d/%d/%x\n",
            sg_current()->fb.w,sg_current()->fb.h,sg_current()->workers,sg_current()->scene_visibility,
            sg_current()->depth_test,sg_current()->depth_mask,sg_current()->depth_func); abort();
    }
    begins += begun; return begun;
}
static int positions_selected(const GLfloat *p, const GLfloat *uv, GLsizei stride,
    GLuint vertices, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn fn, const void *user, GLuint bytes) {
    int queued = softgl_scene_visibility_positions(p,uv,stride,vertices,indices,count,fn,user,bytes);
    meshes += queued; return queued;
}
#define softgl_scene_visibility_begin begin_selected_viewport
#define softgl_scene_visibility_positions positions_selected
#define main previous_position_fixture_main
#include "../../tests/scene_positions.c"
#undef main
#undef softgl_scene_visibility_positions
#undef softgl_scene_visibility_begin
static void compare_dimensions(softgl_ctx *a, softgl_ctx *b) {
    CHECK(a->fb.w == b->fb.w && a->fb.h == b->fb.h);
    softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)a->fb.w*a->fb.h;
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    for (size_t i = 0; i < pixels*4; i++) CHECK(abs((int)pa[i]-(int)pb[i]) <= 1);
    if (a->fb.samples) {
        CHECK(!memcmp(a->fb.sample_color,b->fb.sample_color,pixels*a->fb.samples*4));
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,pixels*a->fb.samples*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,pixels*a->fb.samples));
    }
    comparisons++;
}
int main(void) {
    generate();
    const int sizes[][2] = {{8,4},{9,5},{16,8},{31,17},{32,24},{63,31},{64,32},
        {127,63},{128,72},{319,159},{320,180},{639,359},{640,360}};
    const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    for (unsigned n = 0; n < sizeof(sizes)/sizeof(sizes[0]); n++) for (int w = 0; w < 3; w++) for (int s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(sizes[n][0],sizes[n][1],samples[s]);
        softgl_ctx *b = softgl_create_multisample(sizes[n][0],sizes[n][1],samples[s]);
        CHECK(a && b); reference_context = a; initialize(a,1); initialize(b,helpers[w]);
        softgl_make_current(a); glViewport(0,0,a->fb.w,a->fb.h);
        softgl_make_current(b); glViewport(0,0,b->fb.w,b->fb.h);
        for (int variant = 0; variant < 18; variant++) {
            frame(a,0,variant); int before = meshes;
            frame(b,1,variant); compare_dimensions(a,b);
            if (!s) CHECK(meshes > before);
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(comparisons == 2106 && begins == 702 && meshes > 0);
    printf("Variable viewport: %d ordinary/deferred full-plane comparisons; %d active scene frames, %d canonical mesh captures; thirteen even/odd sizes, worker budgets, clipping and MSAA PASS\n",comparisons,begins,meshes);
    return 0;
}
