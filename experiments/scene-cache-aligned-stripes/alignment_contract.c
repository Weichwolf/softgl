/* White-box allocation/ownership gate; never linked into a timed driver. */
#include "scene_visibility.c"
#include <stdio.h>
#include <stdlib.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static void separate_rows(const uint8_t *base, unsigned bytes_per_pixel,
    const softgl_ctx *c, const sg_worker_pool *pool) {
    CHECK(((uintptr_t)base & 63u) == 0);
    for (int y = 0; y < c->fb.h; y++) {
        for (int bin = 1; bin < pool->nbins; bin++) {
            size_t pixel = (size_t)y*c->fb.w+pool->bins[bin].ix0;
            uintptr_t boundary = (uintptr_t)(base+pixel*bytes_per_pixel);
            CHECK(((boundary-1) >> 6) != (boundary >> 6));
        }
    }
}

int main(void) {
    const int widths[] = {1,7,16,31,64,127,128,256,511,512,624,640};
    const int samples[] = {0,2,4}, helpers[] = {1,3,8};
    int partitions = 0, separated = 0;
    for (unsigned w = 0; w < sizeof(widths)/sizeof(widths[0]); w++) {
        for (unsigned s = 0; s < 3; s++) for (unsigned h = 0; h < 3; h++) {
            softgl_ctx *c = softgl_create_multisample(widths[w],9,samples[s]);
            CHECK(c); softgl_make_current(c);
            sg_workers_shutdown(c); sg_workers_init(c,helpers[h]);
            const sg_worker_pool *pool = c->workers;
            CHECK(pool && pool->nbins > 0 && pool->nbins <= SG_MAX_BINS);
            CHECK(pool->bins[0].ix0 == 0 && pool->bins[pool->nbins-1].ix1 == c->fb.w);
            for (int bin = 0; bin < pool->nbins; bin++) {
                CHECK(pool->bins[bin].ix0 < pool->bins[bin].ix1);
                if (bin) CHECK(pool->bins[bin-1].ix1 == pool->bins[bin].ix0);
                for (int x = pool->bins[bin].ix0; x < pool->bins[bin].ix1; x++)
                    CHECK(pool->column_bin[x] == bin);
            }
            if (samples[s] == 4 && c->fb.w % 16 == 0 && c->fb.w/16 >= pool->nbins) {
#ifdef SOFTGL_STRIPES_ALIGNMENT_ONLY
                CHECK(((uintptr_t)c->fb.sample_color & 63u) == 0);
                CHECK(((uintptr_t)c->fb.sample_depth & 63u) == 0);
#else
                separate_rows(c->fb.sample_color,16,c,pool);
                separate_rows((const uint8_t *)c->fb.sample_depth,16,c,pool);
#endif
                separated++;
            }
            partitions++; softgl_destroy(c);
        }
    }
    softgl_ctx *c = softgl_create_multisample(640,360,4);
    CHECK(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c,3);
    glEnable(GL_DEPTH_TEST); glEnable(GL_MULTISAMPLE);
    CHECK(softgl_scene_visibility_begin());
    struct sg_scene_visibility *f = c->scene_visibility;
#ifdef SOFTGL_STRIPES_ALIGNMENT_ONLY
    CHECK(((uintptr_t)f->winner & 63u) == 0);
    CHECK(((uintptr_t)f->pixel_material & 63u) == 0);
    CHECK(((uintptr_t)f->sample_point & 63u) == 0);
    CHECK(((uintptr_t)f->shade_mask & 63u) == 0);
#else
    separate_rows((const uint8_t *)f->winner,16,c,c->workers);
    separate_rows((const uint8_t *)f->pixel_material,8,c,c->workers);
    separate_rows(f->sample_point,4,c,c->workers);
    separate_rows(f->shade_mask,4,c,c->workers);
#endif
    CHECK(softgl_scene_visibility_end()); softgl_destroy(c);
#ifdef SOFTGL_STRIPES_ALIGNMENT_ONLY
    printf("Alignment-only bases: %d complete partitions, %d sample-plane base checks, four scene metadata bases PASS\n",
        partitions,separated);
#else
    printf("Cache ownership: %d complete partitions, %d sample-plane ownership checks, four scene metadata planes PASS\n",
        partitions,separated);
#endif
    return 0;
}
