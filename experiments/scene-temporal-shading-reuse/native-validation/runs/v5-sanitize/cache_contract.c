/* Enabled memoization, fresh relighting, default reset and display-list edits. */
static int cache_test_mode;
#define main canonical_positions_main
#include "cache_positions.inc"
#undef main

static void texture_edit(softgl_ctx *c, unsigned serial) {
    softgl_make_current(c); glActiveTexture(GL_TEXTURE2);
    const uint8_t pixel[4] = {(uint8_t)(40+serial*17), 220, 30, 255};
    uint64_t old = c->scene_texture_epoch;
    glNewList(17, GL_COMPILE);
    glTexSubImage2D(GL_TEXTURE_2D,0,0,0,1,1,GL_RGBA,GL_UNSIGNED_BYTE,pixel);
    glEndList();
    CHECK(c->scene_texture_epoch == old);
    glCallList(17);
    CHECK(c->scene_texture_epoch > old);
    glDeleteLists(17,1);
}

int main(void) {
    generate();
    const int samples[] = {0,2,4}, helpers[] = {1,3};
    unsigned pairs = 0, changed = 0, mutations = 0;
    uint64_t hits = 0;
    for (unsigned h = 0; h < 2; h++) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]); CHECK(a && b);
        initialize(a,helpers[h]); initialize(b,helpers[h]);
        CHECK(!softgl_scene_material_cache(1));
        for (int mode = 0; mode < 5; mode++) for (int variant = 0; variant < 12; variant++) {
            cache_test_mode = 0; frame(a,1,variant);
            cache_test_mode = mode; frame(b,1,variant);
            const uint8_t *pb = softgl_read_rgba8(b);
            softgl_make_current(a); const uint8_t *pa = softgl_read_rgba8(a);
            size_t pixels = (size_t)640*360;
            CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
            CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
            if (samples[s]) {
                CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,pixels*samples[s]*sizeof(float)));
                CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,pixels*samples[s]));
            }
            int equal = !memcmp(pa,pb,pixels*4);
            if (mode == 0 || mode == 4) {
                CHECK(equal);
                if (samples[s]) CHECK(!memcmp(a->fb.sample_color,b->fb.sample_color,pixels*samples[s]*4));
            }
            softgl_make_current(b); hits += softgl_scene_material_cache_hits();
            changed += !equal; pairs++;
        }
        cache_test_mode = 4; frame(b,1,2); frame(b,1,2);
        CHECK(softgl_scene_material_cache_hits() > 0);
        texture_edit(a, h+s); texture_edit(b, h+s); mutations++;
        cache_test_mode = 0; frame(a,1,2);
        cache_test_mode = 4; frame(b,1,2); compare(a,b);
        /* Omitting the option on the next capture must use ordinary shading. */
        cache_test_mode = -1; frame(a,1,2); frame(b,1,2); compare(a,b);
        rollback(b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(pairs == 360 && changed && hits && mutations == 6);
    printf("{\"pairedFrames\":%u,\"changedColorPairs\":%u,\"cacheHits\":%llu,\"displayListMutationChecks\":%u,\"depthAndStencilExact\":true,\"disabledAndExactKeyColorsExact\":true,\"defaultResetExact\":true}\n",
        pairs,changed,(unsigned long long)hits,mutations);
    return 0;
}
