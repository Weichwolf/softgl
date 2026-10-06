#include "frag_combine_hot.h"
#include <stdio.h>

static uint32_t expected_bits(uint32_t bits) {
    uint32_t magnitude = bits & UINT32_C(0x7fffffff);
    if (magnitude > UINT32_C(0x7f800000) || magnitude == 0) return bits;
    if (bits >> 31) return 0;
    return bits > UINT32_C(0x3f800000) ? UINT32_C(0x3f800000) : bits;
}

#if defined(__EMSCRIPTEN__)
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
void sg_clamp_test_apply(const uint32_t bits[4], uint32_t output[4]) {
    sg_f32x4 input;
    memcpy(&input, bits, sizeof(input));
    input = sg_chain_clamp(input);
    memcpy(output, &input, sizeof(input));
}

static int check(const uint32_t bits[4]) {
    uint32_t output[4];
    sg_clamp_test_apply(bits, output);
    for (int lane = 0; lane < 4; lane++) {
        if (output[lane] != expected_bits(bits[lane])) {
            fprintf(stderr, "lane %d input %08x expected %08x got %08x\n",
                    lane, bits[lane], expected_bits(bits[lane]), output[lane]);
            return 1;
        }
    }
    return 0;
}

int main(void) {
    /* Every positive/negative NaN payload and both infinities. */
    for (uint32_t payload = 0; payload < UINT32_C(0x800000); payload += 2) {
        uint32_t bits[4] = {UINT32_C(0x7f800000) | payload,
            UINT32_C(0x7f800000) | (payload + 1),
            UINT32_C(0xff800000) | payload,
            UINT32_C(0xff800000) | (payload + 1)};
        if (check(bits)) return 1;
    }
    uint32_t seed = 721;
    for (int packet = 0; packet < 262144; packet++) {
        uint32_t bits[4];
        for (int lane = 0; lane < 4; lane++) {
            seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5;
            bits[lane] = seed;
        }
        if (check(bits)) return 1;
    }
    /* Signed zero, all small subnormal magnitudes and the one boundary. */
    for (uint32_t i = 0; i < 65536; i++) {
        uint32_t bits[4] = {i, i | UINT32_C(0x80000000),
            UINT32_C(0x3f800000) + i, UINT32_C(0x3f800000) - i};
        if (check(bits)) return 1;
    }
    puts("18087936 exact clamp lanes passed; all NaN payloads, infinities, signed zero and boundary cases");
    return 0;
}
