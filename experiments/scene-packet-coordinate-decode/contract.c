#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <smmintrin.h>
#include "decode.inc"

static uint64_t comparisons;
static uint32_t random_state = 0x1928fabc;

static uint32_t random_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}

static void check(unsigned width, unsigned samples, const uint32_t input[4]) {
    uint32_t pixel[4], x[4], y[4];
    scene_decode_pixels(input,width,samples,scene_coordinate_magic(width),pixel,x,y);
    for (unsigned i = 0; i < 4; i++) {
        uint32_t p = samples ? input[i]/samples : input[i];
        if (pixel[i] != p || x[i] != p%width || y[i] != p/width) {
            fprintf(stderr,"decode mismatch width=%u samples=%u input=%u\n",width,samples,input[i]);
            exit(1);
        }
        comparisons++;
    }
}

int main(void) {
    const unsigned modes[] = {0,2,4,3,8};
    for (unsigned width = 1; width <= 65535; width++) {
        for (unsigned s = 0; s < sizeof(modes)/sizeof(modes[0]); s++) {
            uint32_t max_multiple = UINT32_MAX/width*width;
            uint32_t limits[4] = {0,width-1,width,UINT32_MAX};
            check(width,modes[s],limits);
            uint32_t ends[4] = {max_multiple-1,max_multiple,max_multiple+1,UINT32_MAX-1};
            check(width,modes[s],ends);
            for (unsigned k = 0; k < 4; k++) {
                uint32_t input[4];
                for (unsigned i = 0; i < 4; i++) input[i] = random_value();
                check(width,modes[s],input);
            }
        }
    }
    const unsigned wide[] = {65536,100003,16777215,16777216,1000000000,2147483646,2147483647};
    for (unsigned j = 0; j < sizeof(wide)/sizeof(wide[0]); j++)
        for (unsigned k = 0; k < 10000; k++) {
            uint32_t input[4];
            for (unsigned i = 0; i < 4; i++) input[i] = random_value();
            check(wide[j],modes[k%5],input);
        }
    for (unsigned samples = 0; samples <= 4; samples += 2)
        for (uint32_t first = 0; first < 640u*360u*(samples ? samples : 1u); first += 4) {
            uint32_t input[4] = {first,first+1,first+2,first+3};
            check(640,samples,input);
        }
    printf("Exact SIMD128 runtime-width pixel decoder: %llu scalar-reference comparisons PASS\n",
        (unsigned long long)comparisons);
    return 0;
}
