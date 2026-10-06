#include "visibility_copy.h"
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); exit(1); } } while (0)
static uint64_t cases, inputs, outputs;
static uint32_t rng = UINT32_C(0x7b12c593);
static uint32_t random_u32(void) {
    rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5;
    return rng;
}

/* Independent per-record bit oracle; it never groups bits, uses ctz, bulk
 * copies or the helper's visible mask. Compare exact16-byte payload order. */
static void one_case(int first, int count, int pattern, unsigned byte, int align) {
    size_t total = (size_t)first + (size_t)count;
    size_t src_bytes = total * sizeof(sg_worker_tri), out_bytes = (size_t)count * sizeof(sg_worker_tri);
    size_t bitmap_bytes = (total + 7) / 8;
    unsigned char *source_base = malloc(src_bytes + (size_t)align + (total ? 0 : 1));
    unsigned char *output_base = malloc(out_bytes + (size_t)align + 16);
    unsigned char *expected = malloc(out_bytes + 16);
    uint8_t *hidden = malloc(bitmap_bytes ? bitmap_bytes : 1);
    CHECK(source_base && output_base && expected && hidden);
    /* End allocations exactly at the last valid source/bitmap byte for ASan;
     * the single source byte exists only when total=0. Alignments are4-byte
     * compatible with the actual sg_worker_tri type, including non16B starts. */
    if (!total) memset(source_base, 0xa5, (size_t)align + 1);
    if (!bitmap_bytes) hidden[0] = 0xa5;
    sg_worker_tri *src = (sg_worker_tri *)(source_base + align);
    sg_worker_tri *dst = (sg_worker_tri *)(output_base + align);
    memset(output_base, 0x6d, out_bytes + (size_t)align + 16);
    memset(expected, 0x6d, out_bytes + 16);
    static const uint32_t depth_bits[] = {0, UINT32_C(0x80000000), 1,
        UINT32_C(0x7fc12345), UINT32_C(0xffc54321), UINT32_C(0x7f800000),
        UINT32_C(0xff800000), UINT32_C(0x807fffff), UINT32_C(0x3f800000)};
    for (size_t i = 0; i < total; i++) {
        uint32_t data[4] = {(uint32_t)i ^ SG_BIN_TRANSFORMED_VERTEX,
            UINT32_MAX - (uint32_t)i, (uint32_t)i * UINT32_C(0x9e3779b9),
            depth_bits[i % (sizeof(depth_bits)/sizeof(depth_bits[0]))]};
        sg_worker_tri tri;
        memcpy(&tri, data, sizeof(tri));
        memcpy(src + i, &tri, sizeof(tri));
    }
    for (size_t i = 0; i < bitmap_bytes; i++) {
        uint8_t value = (uint8_t)byte;
        switch (pattern) {
            case 0: break; /* every one of256 repeated byte masks */
            case 1: value = (i & 1) ? 255 : 0; break;
            case 2: value = (i & 1) ? 0 : 255; break;
            case 3: value = (uint8_t)random_u32(); break;
            case 4: value = (uint8_t)(1u << (i & 7)); break;
            case 5: value = (uint8_t)~(1u << (i & 7)); break;
            case 6: value = (i % 17 < 9) ? 255 : 0; break;
            case 7: value = i + 1 == bitmap_bytes ? 255 : 0; break;
            case 8: value = i == 0 ? 255 : 0; break;
            default: value = (uint8_t)(i * 73 + 19); break;
        }
        hidden[i] = value;
    }
    int expected_count = 0;
    for (int i = first; i < first + count; i++) {
        if (hidden[(unsigned)i / 8] & (uint8_t)(1u << ((unsigned)i % 8))) continue;
        for (size_t b = 0; b < sizeof(sg_worker_tri); b++)
            expected[(size_t)expected_count * sizeof(sg_worker_tri) + b] = ((const unsigned char *)src)[(size_t)i * sizeof(sg_worker_tri) + b];
        expected_count++;
    }
    int actual = sg_visibility_copy(dst, src, hidden, first, count);
    CHECK(actual == expected_count);
    /* Entire destination and poison tail, not just surviving payloads. */
    CHECK(memcmp(dst, expected, out_bytes + 16) == 0);
    for (int i = 0; i < align; i++) CHECK(output_base[i] == 0x6d);
    /* Input payloads remain untouched, including exact depth float bits. */
    for (size_t i = 0; i < total; i++) {
        uint32_t data[4] = {(uint32_t)i ^ SG_BIN_TRANSFORMED_VERTEX,
            UINT32_MAX - (uint32_t)i, (uint32_t)i * UINT32_C(0x9e3779b9),
            depth_bits[i % (sizeof(depth_bits)/sizeof(depth_bits[0]))]};
        CHECK(memcmp(src + i, data, sizeof(data)) == 0);
    }
    cases++; inputs += (unsigned)count; outputs += (unsigned)actual;
    free(hidden); free(expected); free(output_base); free(source_base);
}
int main(void) {
    CHECK(sizeof(sg_worker_tri) == 16);
    CHECK(sg_visibility_copy(NULL, NULL, NULL, 0, 0) == 0);
    CHECK(sg_visibility_copy(NULL, NULL, NULL, INT_MAX, 0) == 0);
    for (int align = 0; align < 16; align += 4)
        for (int first = 0; first < 8; first++)
            for (int count = 0; count <= 24; count++)
                for (unsigned mask = 0; mask < 256; mask++) one_case(first,count,0,mask,align);
    const int sizes[] = {31,32,33,63,64,65,127,128,129,255,256,257,1023,1024,1025,8191,8192,8193,65535};
    for (int align = 0; align < 16; align += 4)
        for (int first = 0; first < 32; first++)
            for (unsigned i = 0; i < sizeof(sizes)/sizeof(sizes[0]); i++)
                for (int pattern = 1; pattern <= 9; pattern++) one_case(first,sizes[i],pattern,0,align);
    for (int i = 0; i < 1000; i++) {
        /* Sequence PRNG calls explicitly: C leaves argument order unspecified. */
        int first = (int)(random_u32() % 129);
        int count = (int)(random_u32() % 8193);
        int align = (int)(random_u32() % 4) * 4;
        one_case(first, count, 3, 0, align);
    }
    printf("Visibility copy: %llu cases, %llu input records, %llu exact surviving16-byte payloads; all256 masks, first/end bits, byte/stage boundaries, aligned/unaligned records, source ends, poison tails and float bits passed\n",
        (unsigned long long)cases, (unsigned long long)inputs, (unsigned long long)outputs);
    return 0;
}
