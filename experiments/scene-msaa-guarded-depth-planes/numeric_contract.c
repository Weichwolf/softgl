/* Independent finite covered-edge oracle; original arithmetic is the reference. */
#include <float.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); return 1; } } while (0)
#ifndef GUARD_EPSILON
#define GUARD_EPSILON 0x1p-18f
#endif
static uint64_t random_state = UINT64_C(0x962abd16fac4871);
static uint64_t random64(void) {
    uint64_t x = random_state;
    x ^= x << 13; x ^= x >> 7; x ^= x << 17;
    return random_state = x;
}

static float vertex_depth(unsigned kind) {
    uint32_t bits = (uint32_t)(random64()%UINT64_C(0x3f800001));
    float value; __builtin_memcpy(&value,&bits,sizeof(value));
    if (kind%7 == 0) value = 1.f;
    if (kind%7 == 1) value = 0.f;
    if (kind%7 == 2) value = nextafterf(1.f,0.f);
    if (kind%7 == 3) value = (float)(random64()&65535u)/65535.f;
    return value;
}

static void depths(float b0, float b1, float z0, float z1, float z2,
    float *exact, float *upper) {
    float b2 = (1.f-b0)-b1;
    float before = ((b0*z0+b1*z1)+b2*z2)+0.f;
    float after = (b0*(z0-z2)+b1*(z1-z2))+z2;
    *exact = before < 0.f ? 0.f : before > 1.f ? 1.f : before;
    after += GUARD_EPSILON;
    *upper = after < 0.f ? 0.f : after > 1.f ? 1.f : after;
}

int main(void) {
    CHECK(FLT_RADIX == 2 && FLT_MANT_DIG == 24);
    unsigned uncertain = 0, decisions = 0;
    float worst = 0.f;
    const float width = 2.f*GUARD_EPSILON;
    for (unsigned i = 0; i < 4000000; i++) {
        uint64_t area = 1+random64()%UINT64_C(30600000000);
        if (i%11 == 0) area = 1+random64()%128;
        uint64_t e0 = random64()%(area+1), e1 = random64()%(area-e0+1);
        float inverse = 1.f/(float)area;
        float b0 = (float)e0*inverse, b1 = (float)e1*inverse;
        CHECK(b0 >= 0.f && b1 >= 0.f && b0+b1 <= 1.f+0x1p-21f);
        float z0 = vertex_depth(i), z1 = vertex_depth(i+2), z2 = vertex_depth(i+4);
        float exact, upper; depths(b0,b1,z0,z1,z2,&exact,&upper);
        CHECK(isfinite(exact) && isfinite(upper));
        CHECK(exact <= upper && exact >= upper-width);
        float delta = fabsf(exact-upper);
        if (delta > worst) worst = delta;
        float old_exact, old_upper;
        if (i%3 == 0) {
            old_exact = old_upper = vertex_depth(i+1);
        } else if (i%3 == 1) {
            float old0 = z0, old1 = z1, old2 = z2;
            if (i%5 == 0) old0 = nextafterf(z0,1.f);
            if (i%5 == 1) old1 = nextafterf(z1,0.f);
            if (i%5 == 2) old2 = nextafterf(z2,1.f);
            depths(b0,b1,old0,old1,old2,&old_exact,&old_upper);
        } else {
            depths(b0,b1,vertex_depth(i+1),vertex_depth(i+3),vertex_depth(i+5),&old_exact,&old_upper);
        }
        CHECK(old_exact <= old_upper && old_exact >= old_upper-width);
        int pass = upper < old_upper-width;
        int reject = upper-width >= old_upper;
        CHECK(!(pass && reject));
        if (pass) { CHECK(exact < old_exact); decisions++; }
        else if (reject) { CHECK(!(exact < old_exact)); decisions++; }
        else uncertain++;
    }
    printf("4,000,000 covered-edge intervals: %u separated / %u exact-fallback; maximum upper error %.9g PASS\n",
        decisions,uncertain,worst);
    return 0;
}
