/* Unsigned extrema oracle: independent byte decoding, exact allocation ends,
 * every alignment, vector/reduction/tail boundaries and extrema in each lane. */
#include "index_range.h"
#include <stdio.h>
#include <stdlib.h>

static uint64_t cases, items;
static uint32_t random_state = UINT32_C(0x938bac27);

static uint32_t next_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}

static void oracle(GLenum type, const uint8_t *data, int count,
                   uint32_t *minimum, uint32_t *maximum) {
    *minimum = UINT32_MAX; *maximum = 0;
    int size = type == GL_UNSIGNED_BYTE ? 1 : type == GL_UNSIGNED_SHORT ? 2 :
               type == GL_UNSIGNED_INT ? 4 : 0;
    for (int i = 0; i < count; i++) {
        uint32_t value = 0;
        if (data && size) for (int b = 0; b < size; b++)
            value |= (uint32_t)data[(size_t)i * size + b] << (8 * b);
        if (value < *minimum) *minimum = value;
        if (value > *maximum) *maximum = value;
    }
}

static int check(GLenum type, const uint8_t *data, int count) {
    uint32_t expected_min, expected_max, actual_min = 17, actual_max = 29;
    oracle(type, data, count, &expected_min, &expected_max);
    sg_index_range(type, data, count, &actual_min, &actual_max);
    if (actual_min != expected_min || actual_max != expected_max) {
        fprintf(stderr, "type=%u count=%d: expected %u/%u got %u/%u\n",
                type, count, expected_min, expected_max, actual_min, actual_max);
        return 0;
    }
    cases++; if (count > 0) items += (unsigned)count;
    return 1;
}

static void put_value(uint8_t *data, int size, int i, uint32_t value) {
    for (int b = 0; b < size; b++) data[(size_t)i * size + b] = (uint8_t)(value >> (8 * b));
}

static int span(GLenum type, int count, int offset, int pattern) {
    int size = type == GL_UNSIGNED_BYTE ? 1 : type == GL_UNSIGNED_SHORT ? 2 : 4;
    uint32_t limit = size == 1 ? UINT8_MAX : size == 2 ? UINT16_MAX : UINT32_MAX;
    /* End exactly at the allocation's ASan redzone: no padded SIMD tail. */
    size_t bytes = (size_t)count * size;
    uint8_t *allocation = malloc((size_t)offset + bytes + (bytes ? 0 : 1));
    if (!allocation) return 0;
    memset(allocation, 0xa5, (size_t)offset + bytes + (bytes ? 0 : 1));
    uint8_t *data = allocation + offset;
    for (int i = 0; i < offset; i++) allocation[i] = UINT8_C(0xa5);
    for (int i = 0; i < count; i++) {
        uint32_t value = pattern == 0 ? next_value() & limit :
                         pattern == 1 ? 0 : pattern == 2 ? limit :
                         pattern == 3 ? limit / 2 : (limit / 2) + 1;
        put_value(data, size, i, value);
    }
    int passed = check(type, data, count);
    /* Every lane and four-vector group position must affect the reduction;
     * repeat at the last group/tail, including the high unsigned bit. */
    if (pattern == 3 && count > 0) {
        int probes = count < 65 ? count : count <= 129 ? 65 : 4;
        for (int lane = 0; lane < probes && passed; lane++) {
            int positions[2] = {lane, count - 1 - lane};
            for (int p = 0; p < 2 && passed; p++) {
                int i = positions[p];
                put_value(data, size, i, 0);
                passed = check(type, data, count);
                put_value(data, size, i, limit);
                if (passed) passed = check(type, data, count);
                put_value(data, size, i, limit / 2);
            }
        }
    }
    for (int i = 0; i < offset; i++) if (allocation[i] != UINT8_C(0xa5)) passed = 0;
    free(allocation);
    return passed;
}

int main(void) {
    const GLenum types[] = {GL_UNSIGNED_BYTE, GL_UNSIGNED_SHORT, GL_UNSIGNED_INT};
    const int lengths[] = {127,128,129,255,256,257,1023,1024,1025,4095,4096,4097,16383,16384,16385};
    for (int t = 0; t < 3; t++) {
        for (int offset = 0; offset < 32; offset++) {
            for (int count = 0; count <= 67; count++)
                for (int pattern = 0; pattern < 5; pattern++)
                    if (!span(types[t],count,offset,pattern)) return 1;
            for (size_t n = 0; n < sizeof(lengths)/sizeof(lengths[0]); n++)
                for (int pattern = 0; pattern < 5; pattern++)
                    if (!span(types[t],lengths[n],offset,pattern)) return 1;
        }
        if (!span(types[t],180081,31,0)) return 1;
        for (int count = -1; count <= 67; count++) if (!check(types[t],NULL,count)) return 1;
    }
    uint8_t data[16] = {0xff,0x80,0x7f};
    const GLenum unsupported[] = {0,GL_BYTE,GL_SHORT,GL_INT,GL_FLOAT};
    for (size_t t = 0; t < sizeof(unsupported)/sizeof(unsupported[0]); t++)
        for (int count = -1; count <= 67; count++) if (!check(unsupported[t],data,count)) return 1;
    printf("Index range: %llu exact unsigned cases, %llu independently decoded items; all alignments, allocation ends, vector/unroll/tails, every lane, high bits and fallbacks passed\n",
           (unsigned long long)cases,(unsigned long long)items);
    return 0;
}
