#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); exit(1); } } while (0)
static unsigned cases, runs;
static uint64_t checked_records;
static uint32_t rng = UINT32_C(0x91c2783b);
static uint32_t random_u32(void) {
    rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5;
    return rng;
}
static sg_worker_tri triangle(unsigned serial, int general) {
    static const uint32_t depth_bits[] = {0, UINT32_C(0x80000000),
        UINT32_C(0x7fc12345), UINT32_C(0xffc54321), UINT32_C(0x7f800000),
        UINT32_C(0xff800000), 1, UINT32_C(0x807fffff), UINT32_C(0x3f800000)};
    sg_worker_tri tri;
    tri.v[0] = serial | (general ? 0 : SG_BIN_TRANSFORMED_VERTEX);
    tri.v[1] = serial ^ UINT32_C(0x12345678);
    tri.v[2] = UINT32_MAX - serial;
    uint32_t bits = depth_bits[serial % (sizeof(depth_bits) / sizeof(depth_bits[0]))];
    memcpy(&tri.zkey, &bits, sizeof(bits));
    return tri;
}
static int capacity_for(int need, int initial) {
    if (initial >= need) return initial;
    int cap = initial ? initial : 256;
    while (cap < need) cap *= 2;
    return cap;
}

/* Independent oracle examines all framebuffer-bin intervals, without using
 * descriptor first/end or the producer's range-count/difference algorithm. */
static void oracle_append(sg_worker_pool *p, const sg_prepared_tri *r,
                           sg_worker_tri **expected, int *counts) {
    for (int b = 0; b < p->nbins; b++) {
        if (r->ix1 > p->bins[b].ix0 && r->ix0 < p->bins[b].ix1)
            expected[b][counts[b]++] = r->tri;
    }
}
static void compare(sg_worker_pool *p, sg_worker_tri **expected, int *counts,
                    int *capacities) {
    for (int b = 0; b < p->nbins; b++) {
        sg_worker_bin *bin = &p->bins[b];
        CHECK(bin->count == counts[b]);
        capacities[b] = capacity_for(counts[b], capacities[b]);
        CHECK(bin->cap == capacities[b]);
        CHECK(bin->count == 0 || bin->sort_keys != NULL);
        CHECK(bin->count == 0 || memcmp(bin->tris, expected[b],
            (size_t)bin->count * sizeof(*bin->tris)) == 0);
        checked_records += (unsigned)bin->count;
    }
}
static void run_case(int width, int nbins, int mapped, int n, int pattern, int prefix) {
    softgl_ctx context; sg_worker_pool pool;
    memset(&context, 0, sizeof(context)); memset(&pool, 0, sizeof(pool));
    context.workers = &pool; context.fb.w = width;
    pool.nbins = nbins; pool.nworkers = 3;
    if (mapped) { pool.column_bin = malloc((size_t)width); CHECK(pool.column_bin); }
    sg_worker_tri *expected[SG_MAX_BINS]; int counts[SG_MAX_BINS], capacities[SG_MAX_BINS];
    for (int b = 0; b < nbins; b++) {
        sg_worker_bin *bin = &pool.bins[b];
        bin->ix0 = (int)((int64_t)width * b / nbins);
        bin->ix1 = (int)((int64_t)width * (b + 1) / nbins);
        if (mapped) memset(pool.column_bin + bin->ix0, b, (size_t)(bin->ix1 - bin->ix0));
        counts[b] = bin->count = prefix;
        capacities[b] = bin->cap = capacity_for(prefix, 0);
        if (bin->cap) {
            bin->tris = sg_aligned_alloc((size_t)bin->cap * sizeof(*bin->tris), 16);
            bin->sort_keys = sg_aligned_alloc((size_t)bin->cap * 2 * sizeof(uint32_t), 16);
            CHECK(bin->tris && bin->sort_keys);
        }
        expected[b] = malloc((size_t)(prefix + n + 1) * sizeof(sg_worker_tri)); CHECK(expected[b]);
        for (int j = 0; j < prefix; j++) bin->tris[j] = expected[b][j] = triangle((unsigned)j + 100000, 1);
    }
    sg_prepared_tri *records = malloc((size_t)(n + 1) * sizeof(*records)); CHECK(records);
    for (int i = 0; i < n; i++) {
        sg_prepared_tri *r = &records[i]; memset(r, 0xa5, sizeof(*r));
        int kind = pattern == 0 ? SG_TRI_READY : pattern == 1 ? SG_TRI_REJECT :
            pattern == 2 ? SG_TRI_GENERAL : pattern == 3 ? i % 3 :
            pattern == 4 ? (i % 1024 == 1023 ? SG_TRI_GENERAL : SG_TRI_READY) :
            pattern == 5 ? (i % 2 ? SG_TRI_GENERAL : SG_TRI_READY) : (int)(random_u32() % 3);
        r->kind = (uint8_t)kind;
        if (kind == SG_TRI_REJECT) continue;
        r->tri = triangle((unsigned)i + 1000, kind == SG_TRI_GENERAL);
        if (width > 0) {
            r->ix0 = (int)(random_u32() % (unsigned)width);
            r->ix1 = r->ix0 + 1 + (int)(random_u32() % (unsigned)(width - r->ix0 + 7));
            if (i % 7 == 0) { r->ix0 = 0; r->ix1 = width + 9; }
            int last = r->ix1 > width ? width : r->ix1;
            r->first = mapped ? pool.column_bin[r->ix0] : 0;
            r->end = mapped ? (uint8_t)(pool.column_bin[last - 1] + 1) : (uint8_t)nbins;
        } else {
            r->ix0 = r->ix1 = 0; r->first = r->end = 0;
        }
    }
    int at = 0;
    do {
        int remaining = n - at;
        /* Exercise arbitrary caller chunks as well as full stage-size runs. */
        int chunk = pattern == 6 && remaining > 0 ?
            1 + (int)(random_u32() % (unsigned)remaining) : remaining;
        int consumed = sg_workers_bin_prepared_run(&context, records + at, chunk);
        runs++;
        int predicted = 0;
        while (predicted < chunk && records[at + predicted].kind != SG_TRI_GENERAL) predicted++;
        CHECK(consumed == predicted);
        for (int j = 0; j < consumed; j++)
            if (records[at + j].kind == SG_TRI_READY)
                oracle_append(&pool, &records[at + j], expected, counts);
        compare(&pool, expected, counts, capacities);
        at += consumed;
        if (at < n && consumed < chunk) {
            CHECK(records[at].kind == SG_TRI_GENERAL);
            /* Represents serial clipping output inserted at this barrier;
             * actual GL clipping/order states are covered by full regressions. */
            sg_workers_bin_prepared_tri(&context, &records[at]);
            oracle_append(&pool, &records[at], expected, counts);
            compare(&pool, expected, counts, capacities); at++;
        }
    } while (at < n);
    for (int b = 0; b < nbins; b++) {
        sg_aligned_free(pool.bins[b].tris); sg_aligned_free(pool.bins[b].sort_keys); free(expected[b]);
    }
    free(records); free(pool.column_bin); cases++;
}
int main(void) {
    const int widths[] = {0,1,2,3,7,17,31,32,33,47,129,640,641};
    const int sizes[] = {0,1,2,3,15,31,127,128,129,1023,1024,1025,8192};
    const int prefixes[] = {0,1,255,256,257,511,512,8191};
    for (unsigned w = 0; w < sizeof(widths)/sizeof(widths[0]); w++) {
        for (int mapped = 0; mapped <= 1; mapped++) {
            if (mapped && widths[w] == 0) continue;
            int bins[] = {1,3,12,32};
            for (unsigned b = 0; b < sizeof(bins)/sizeof(bins[0]); b++) {
                if (mapped && bins[b] > widths[w]) continue;
                for (unsigned k = 0; k < sizeof(sizes)/sizeof(sizes[0]); k++) {
                    /* Large barrier-dense cases would repeatedly compare O(N^2)
                     * prefixes; keep those shapes small, keep full READY stages. */
                    for (int pattern = 0; pattern < 7; pattern++) {
                        if (sizes[k] > 129 && (pattern == 2 || pattern == 3 || pattern == 5 || pattern == 6)) continue;
                        int prefix = prefixes[(w + b + k + (unsigned)pattern) % (sizeof(prefixes)/sizeof(prefixes[0]))];
                        run_case(widths[w], bins[b], mapped, sizes[k], pattern, prefix);
                    }
                }
            }
        }
    }
    printf("Prepared bins: %u interval/order/capacity cases, %u actual run calls, %llu exact 16-byte records checked; mapped/fallback, empty/odd widths, rejects, GENERAL barriers, stage boundaries and depth bits passed\n",
        cases, runs, (unsigned long long)checked_records);
    return 0;
}
