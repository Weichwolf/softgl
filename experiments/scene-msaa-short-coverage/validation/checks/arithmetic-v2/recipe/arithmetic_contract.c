/* Independent int64 and direct float-conversion oracles for frozen operations. */
#include "simd.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#define SCENE_SHORT_AUDIT(i,n) ((void)0)
#include "arithmetic_helper.inc"
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
static uint32_t random_state = UINT32_C(0x48107329);
static uint32_t random_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}
static uint64_t range_checks, mask_checks, raw_checks, admitted, rejected;
static int64_t floor_256(int64_t x) { return x >= 0 ? x/256 : -((-x+255)/256); }

int main(void) {
    for (int iteration = 0; iteration < 262144; iteration++) {
        int32_t dx[3], dy[3], values[3][4], remainder[2][4], correction[2][4];
        int bias[3];
        int paired_width = 2+(int)(random_value()%15u), height = 1+(int)(random_value()%16u);
        int64_t origins[3][4];
        sg_i32x4 edge[3], corrections[2], remainders[2];
        int all_fit = 1;
        for (int e = 0; e < 3; e++) {
            dx[e] = (int32_t)(random_value()%2001u)-1000;
            dy[e] = (int32_t)(random_value()%2001u)-1000;
            if (iteration%7 == 0) dx[e] = (int32_t)(random_value()%330001u)-165000;
            if (iteration%11 == 0) dy[e] = (int32_t)(random_value()%190001u)-95000;
            bias[e] = -(int)(random_value()&1u);
            int64_t low = INT64_MAX, high = INT64_MIN;
            for (int s = 0; s < 4; s++) {
                int32_t q = (int32_t)(random_value()%65539u)-32769;
                int r = (int)(random_value()&255u);
                if (iteration%3 == 0) r = 0;
                if (iteration%5 == 0) r = 255;
                origins[e][s] = (int64_t)q*256+r;
                values[e][s] = (int32_t)floor_256(origins[e][s]+bias[e]);
                if (values[e][s] < low) low = values[e][s];
                if (values[e][s] > high) high = values[e][s];
                if (e < 2) {
                    correction[e][s] = bias[e] && r == 0;
                    remainder[e][s] = r;
                }
            }
            int expected = 1;
            for (int s = 0; s < 4; s++) for (int y = 0; y < height; y += height > 1 ? height-1 : 1)
                for (int x = 0; x < paired_width; x += paired_width-1) {
                    int64_t raw = origins[e][s]+bias[e]+256*((int64_t)dx[e]*x+(int64_t)dy[e]*y);
                    int64_t q = floor_256(raw);
                    if (q < INT16_MIN || q > INT16_MAX) expected = 0;
                }
            CHECK(actual_range(low,high,dx,dy,e,paired_width,height,0) == expected);
            range_checks++;
            all_fit &= expected;
            edge[e] = actual_pack(values[e],dx,e);
            if (e < 2) {
                corrections[e] = _mm_loadu_si128((const sg_i32x4 *)correction[e]);
                remainders[e] = _mm_loadu_si128((const sg_i32x4 *)remainder[e]);
            }
        }
        if (!all_fit) { rejected++; continue; }
        admitted++;
        sg_i32x4 rows[3]; memcpy(rows,edge,sizeof(rows));
        for (int y = 0; y < height; y++) {
            memcpy(edge,rows,sizeof(edge));
            for (int x = 0; x+1 < paired_width; x += 2) {
                unsigned expected_mask = 0;
                for (int lane = 0; lane < 2; lane++) for (int s = 0; s < 4; s++) {
                    int visible = 1;
                    for (int e = 0; e < 3; e++) {
                        int64_t raw = origins[e][s]+bias[e]+256*((int64_t)dx[e]*(x+lane)+(int64_t)dy[e]*y);
                        visible &= raw >= 0;
                    }
                    expected_mask |= (unsigned)visible << (lane*4+s);
                }
                CHECK(actual_mask(edge) == expected_mask); mask_checks++;
                for (int lane = 0; lane < 2; lane++) {
                    sg_i32x4 raw[2]; actual_raw(edge,lane,corrections,remainders,raw);
                    for (int e = 0; e < 2; e++) {
                        int32_t integers[4]; float floats[4];
                        _mm_storeu_si128((sg_i32x4 *)integers,raw[e]);
                        _mm_storeu_ps(floats,_mm_cvtepi32_ps(raw[e]));
                        for (int s = 0; s < 4; s++) {
                            volatile int64_t independent = origins[e][s]+256*((int64_t)dx[e]*(x+lane)+(int64_t)dy[e]*y);
                            CHECK(integers[s] == independent);
                            float expected = (float)independent;
                            CHECK(!memcmp(floats+s,&expected,sizeof(float))); raw_checks++;
                        }
                    }
                }
                actual_advance_x(edge,dx);
            }
            actual_advance_y(rows,dy);
        }
    }
    CHECK(admitted > 100 && rejected > 100 && mask_checks > 10000);
    printf("Short edges: %llu range checks, %llu exact pair masks, %llu exact raw/float conversions; %llu admitted/%llu rejected boxes PASS\n",
        (unsigned long long)range_checks,(unsigned long long)mask_checks,(unsigned long long)raw_checks,
        (unsigned long long)admitted,(unsigned long long)rejected);
    return 0;
}
