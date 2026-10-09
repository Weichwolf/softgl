/* Direct private-helper controls complement the real renderer fixtures.
 * The test-only header adds one counter increment to the exact reducer. */
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
static unsigned scans;
#define SG_LAZY_FIXTURE_SCAN() (++scans)
#include "lazy_fixture_hz.h"
#include "workers.h"
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"check failed: %s:%d: %s\n",__FILE__,__LINE__,#x); exit(1); } } while (0)

static void write_pixel(softgl_ctx *c, unsigned pixel, float depth) {
    int x = 20+(int)(pixel%4), y = 20+(int)(pixel/4);
    float z[4] = {depth,depth,depth,depth};
    memcpy(c->fb.sample_depth+((size_t)y*c->fb.w+x)*4,z,sizeof(z));
    sg_hz_record_pixel4(c,x,y,15,z);
}

static int hidden(softgl_ctx *c, float near) {
    return sg_hz_occluded4(c,20,20,24,24,near,near,near,0.f);
}

static void marker(softgl_ctx *c, int expected) {
#ifdef SOFTGL_LAZY_DEPTH_TEST
    CHECK(!!(sg_hz_at4(c,20,20)->maximum_sample & UINT32_C(0x80000000)) == expected);
#else
    (void)expected;
    CHECK(!(sg_hz_at4(c,20,20)->maximum_sample & UINT32_C(0x80000000)));
#endif
}

int main(void) {
    softgl_ctx *c = softgl_create_multisample(640,360,4); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
    glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    c->depth_test = 1; c->depth_func = GL_LESS; c->stencil_test = 0;
    CHECK(sg_hz_active4(c));
    sg_worker_pool *pool = c->workers;
    for (int i = 0; i < pool->nbins; i++)
        CHECK(!(pool->bins[i].ix0 & 3) && !(pool->bins[i].ix1 & 3));
    /* No GL API, worker dispatch or renderer dereference while this direct
     * helper fixture supplies its test-only active-scene token. */
    unsigned scene_token = 0;
    c->scene_visibility = (void *)&scene_token;
    for (unsigned i = 0; i < 16; i++) write_pixel(c,i,.8f);
    CHECK(scans == 1); CHECK(hidden(c,.9f)); marker(c,0);
    unsigned before = scans;
    for (unsigned i = 0; i < 16; i++) write_pixel(c,i,.6f);
    marker(c,1);
    unsigned update_scans = scans-before;
    CHECK(hidden(c,.7f)); marker(c,0);
    unsigned including_query = scans-before;
#ifdef SOFTGL_LAZY_DEPTH_TEST
    CHECK(update_scans == 0 && including_query == 1);
#else
    CHECK(update_scans == 16 && including_query == 16);
#endif
    CHECK(sg_hz_at4(c,20,20)->maximum == .6f);
    write_pixel(c,0,.59f); marker(c,1);
    before = scans; CHECK(hidden(c,.7f)); marker(c,1);
    CHECK(scans == before); /* Stale conservative bound is already sufficient. */
    CHECK(!hidden(c,.5f)); marker(c,0);
    write_pixel(c,15,.3f); marker(c,0); CHECK(hidden(c,.7f));

    /* A nonmonotonic write must invalidate even a pending dirty summary. */
    write_pixel(c,1,.58f); marker(c,1);
    c->depth_func = GL_ALWAYS; write_pixel(c,2,.9f);
    CHECK(sg_hz_at4(c,20,20)->written == 0); CHECK(!hidden(c,.95f));
    c->depth_func = GL_LESS;
    for (unsigned i = 0; i < 15; i++) write_pixel(c,i,.4f);
    CHECK(!hidden(c,.95f)); /* Last pixel/sample coverage is still missing. */
    write_pixel(c,15,.4f); CHECK(hidden(c,.7f)); marker(c,0);
    c->depth_func = GL_LEQUAL; write_pixel(c,0,.4f); marker(c,0);
    CHECK(!hidden(c,.4f)); CHECK(hidden(c,.5f));
    c->depth_func = GL_LESS; write_pixel(c,0,.3f); marker(c,1);
    c->scene_visibility = NULL;
    write_pixel(c,1,.2f); marker(c,0); CHECK(hidden(c,.5f));

    uint64_t hash = UINT64_C(1469598103934665603);
    for (int y = 20; y < 24; y++) {
        const uint8_t *data = (const uint8_t *)(c->fb.sample_depth+((size_t)y*c->fb.w+20)*4);
        for (size_t i = 0; i < 4*4*sizeof(float); i++)
            hash = (hash ^ data[i])*UINT64_C(1099511628211);
    }
    fprintf(stderr,"maximum-reduction scans: writes=%u including-query=%u\n",update_scans,including_query);
    printf("{\"sampleDepth\":\"%016llx\",\"queryControls\":\"pass\"}\n",(unsigned long long)hash);
    softgl_destroy(c);
    return 0;
}
