/* Independent explicit-sample oracle for partial cells and rectangle masks. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main
#include "raster_hz.h"
#include <math.h>

void softgl_scene_partial_hiz(GLboolean enabled);
static uint32_t random_state = UINT32_C(0x81284243);
static unsigned queries, positive, writes;
static unsigned char marked[12][12][4];

static uint32_t random_bits(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}

static void reset_region(softgl_ctx *c) {
    memset(marked,0,sizeof(marked));
    for (int x = 0; x < 12; x += 4) for (int y = 0; y < 12; y += 4)
        memset(sg_hz_at4(c,x,y),0,sizeof(sg_hz_tile));
    for (int y = 0; y < 12; y++) for (int x = 0; x < 12; x++)
        for (int sample = 0; sample < 4; sample++)
            c->fb.sample_depth[((size_t)y*c->fb.w+x)*4+sample] = 1.f;
}

static void write_pixel(softgl_ctx *c,int x,int y,unsigned mask,const float values[4]) {
    unsigned passed = 0;
    for (int sample = 0; sample < 4; sample++) if (mask & (1u << sample)) {
        size_t at = ((size_t)y*c->fb.w+x)*4+sample;
        if (values[sample] < c->fb.sample_depth[at]) {
            c->fb.sample_depth[at] = values[sample];
            marked[y][x][sample] = 1; passed |= 1u << sample;
        }
    }
    if (passed) sg_hz_record_pixel4(c,x,y,passed,values);
    writes += (unsigned)__builtin_popcount(passed);
}

static void check_bounds(softgl_ctx *c) {
    for (int x = 0; x < 12; x += 4) for (int y = 0; y < 12; y += 4) {
        const sg_hz_tile *tile = sg_hz_at4(c,x,y);
        uint64_t expected = 0;
        for (int row = 0; row < 4; row++) for (int col = 0; col < 4; col++)
            for (int sample = 0; sample < 4; sample++) if (marked[y+row][x+col][sample]) {
                expected |= UINT64_C(1) << ((row*4+col)*4+sample);
                size_t at = ((size_t)(y+row)*c->fb.w+x+col)*4+sample;
                CHECK(c->fb.sample_depth[at] <= tile->maximum);
            }
        CHECK(tile->written == expected);
    }
}

static int query(softgl_ctx *c,int left,int bottom,int right,int top,float near) {
    int hidden = sg_hz_occluded(c,left,bottom,right,top,near,near,near,0.f);
    queries++;
    if (hidden) {
        positive++;
        for (int y = bottom; y < top; y++) for (int x = left; x < right; x++)
            for (int sample = 0; sample < 4; sample++) {
                CHECK(marked[y][x][sample]);
                float depth = c->fb.sample_depth[((size_t)y*c->fb.w+x)*4+sample];
                CHECK(c->depth_func == GL_LESS ? depth <= near : depth < near);
            }
    }
    return hidden;
}

int main(void) {
    softgl_ctx *c = softgl_create_multisample(640,360,4); CHECK(c);
    initialize(c,3); CHECK(softgl_scene_visibility_begin());
    softgl_scene_partial_hiz(GL_TRUE);
    CHECK(sg_hz_state_from_ctx4(c)->active == 3);
    const float middle[4] = {.4f,.4f,.4f,.4f};
    /* Each nonempty cell-local rectangle, with every surrounding sample empty. */
    for (int bottom = 0; bottom < 4; bottom++) for (int top = bottom+1; top <= 4; top++)
        for (int left = 0; left < 4; left++) for (int right = left+1; right <= 4; right++) {
            reset_region(c);
            for (int y = bottom; y < top; y++) for (int x = left; x < right; x++)
                write_pixel(c,x,y,15,middle);
            check_bounds(c); CHECK(query(c,left,bottom,right,top,.8f));
            CHECK(!query(c,left,bottom,right,top,.3f));
            /* Leave one queried physical sample empty. All four are required. */
            reset_region(c);
            for (int y = bottom; y < top; y++) for (int x = left; x < right; x++)
                write_pixel(c,x,y,x == left && y == bottom ? 14u : 15u,middle);
            CHECK(!query(c,left,bottom,right,top,.8f));
        }
    /* Crossing cells, sparse samples, decreasing overwrites and varying depths. */
    for (int trial = 0; trial < 512; trial++) {
        reset_region(c);
        for (int step = 0; step < 192; step++) {
            int x = (int)(random_bits()%12u), y = (int)(random_bits()%12u);
            unsigned mask = random_bits()&15u; float values[4];
            for (int sample = 0; sample < 4; sample++)
                values[sample] = .1f+.5f*(float)(random_bits()&65535u)/65535.f;
            write_pixel(c,x,y,mask,values);
            if (!(step & 3)) {
                int left = (int)(random_bits()%12u), bottom = (int)(random_bits()%12u);
                int right = left+1+(int)(random_bits()%5u), top = bottom+1+(int)(random_bits()%5u);
                if (right > 12) right = 12; if (top > 12) top = 12;
                c->depth_func = step & 4 ? GL_LESS : GL_LEQUAL;
                query(c,left,bottom,right,top,.75f);
                c->depth_func = GL_LESS;
            }
            if (!(step & 31)) check_bounds(c);
        }
        check_bounds(c);
    }
    /* Ordinary masks have no partial bound; a new opt-in must invalidate them. */
    reset_region(c); softgl_scene_partial_hiz(GL_FALSE);
    write_pixel(c,1,1,15,middle); CHECK(!query(c,1,1,2,2,.8f));
    softgl_scene_partial_hiz(GL_TRUE); CHECK(!sg_hz_at4(c,1,1)->written);
    memset(marked,0,sizeof(marked));
    CHECK(!query(c,1,1,2,2,.8f));
    const float nearer[4] = {.2f,.2f,.2f,.2f};
    write_pixel(c,1,1,15,nearer); CHECK(query(c,1,1,2,2,.8f));
    c->stencil_test = 1; CHECK(!query(c,1,1,2,2,.8f)); c->stencil_test = 0;
    c->depth_func = GL_GREATER;
    sg_hz_record_pixel4(c,1,1,15,middle); CHECK(!sg_hz_at4(c,1,1)->written);
    c->depth_func = GL_LESS;
    reset_region(c);
    const float invalid[4] = {NAN,NAN,NAN,NAN};
    sg_hz_record_pixel4(c,1,1,15,invalid);
    CHECK(isinf(sg_hz_at4(c,1,1)->maximum)); CHECK(!sg_hz_occluded(c,1,1,2,2,.8f,.8f,.8f,0.f));
    glClearDepth(1.f); glClear(GL_DEPTH_BUFFER_BIT); CHECK(!sg_hz_at4(c,1,1)->written);
    CHECK(softgl_scene_visibility_end()); CHECK(!c->scene_visibility);
    CHECK(softgl_scene_visibility_begin()); CHECK(!(sg_hz_state_from_ctx4(c)->active & 2));
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c);
    CHECK(queries > 24000 && positive >= 100 && writes > 100000);
    printf("Partial-cell oracle: %u real sample writes, %u queries/%u positive; masks/bounds/holes/overwrites/reset/invalid state PASS\n",writes,queries,positive);
    return 0;
}
