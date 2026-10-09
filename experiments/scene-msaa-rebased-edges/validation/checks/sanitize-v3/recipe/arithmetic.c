/* Independent i64 predicate and conversion oracle for the measured helper. */
#include "simd.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "arithmetic_helper.inc"
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
static uint32_t random_state = UINT32_C(0x691215a7);
static uint32_t random_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}
static uint64_t float_checks, predicate_checks;

static void conversion(const int64_t values[4]) {
    int32_t coarse[4], fine[4]; float actual[4];
    int small = 1;
    for (int l = 0; l < 4; l++) {
        CHECK(values[l] >= -(INT64_C(1)<<35) && values[l] < (INT64_C(1)<<35));
        coarse[l] = (int32_t)(values[l] >> 8);
        fine[l] = (int32_t)((uint64_t)values[l] & 255u);
        if (values[l] < INT32_MIN || values[l] > INT32_MAX) small = 0;
    }
    sg_i32x4 q = _mm_loadu_si128((const sg_i32x4 *)coarse);
    sg_i32x4 r = _mm_loadu_si128((const sg_i32x4 *)fine);
    for (int mode = 0; mode <= small; mode++) {
        sg_f32x4_store(actual,scene_rebased_edge_float(q,r,mode));
        for (int l = 0; l < 4; l++) {
            volatile int64_t independent = values[l];
            float expected = (float)independent;
            CHECK(!memcmp(actual+l,&expected,sizeof(float)));
            float_checks++;
        }
    }
}

int main(void) {
    /* Both signs, halfway ties and low-bit changes around every mantissa
     * transition relevant to viewport-bounded original raw edges. */
    for (int exponent = 14; exponent < 35; exponent++) {
        int64_t midpoint = INT64_C(1) << exponent;
        int64_t half_ulp = exponent > 23 ? INT64_C(1) << (exponent-24) : 1;
        for (int offset = -260; offset <= 260; offset++) {
            int64_t values[4] = {midpoint+half_ulp+offset,midpoint-half_ulp+offset,
                -midpoint+half_ulp+offset,-midpoint-half_ulp+offset};
            conversion(values);
        }
    }
    for (int iteration = 0; iteration < 262144; iteration++) {
        int64_t values[4];
        for (int l = 0; l < 4; l++) {
            uint64_t bits = ((uint64_t)random_value()<<32)|random_value();
            values[l] = (int64_t)(bits & ((UINT64_C(1)<<36)-1))-(INT64_C(1)<<35);
        }
        conversion(values);
        /* An independently computed pixel delta must agree with the exact
         * coarse recurrence, including negative edges and the -1 tie bias. */
        for (int l = 0; l < 4; l++) for (int bias = -1; bias <= 0; bias++) {
            int32_t step = (int32_t)(random_value()%330001u)-165000;
            int x = (int)(random_value()%643u);
            int64_t before = values[l]+bias;
            int64_t after = before+(int64_t)step*256*x;
            int64_t q = (before >> 8)+(int64_t)step*x;
            CHECK(q == (after >> 8));
            CHECK((q >= 0) == (after >= 0));
            int64_t raw_q = q+(bias && ((uint64_t)values[l]&255u) == 0);
            CHECK(raw_q*256+(int64_t)((uint64_t)values[l]&255u) == after-bias);
            predicate_checks++;
        }
    }
    printf("Rebased edges: %llu exact float conversions, %llu independent pixel predicates PASS\n",
        (unsigned long long)float_checks,(unsigned long long)predicate_checks);
    return 0;
}
