/* Independent raw/coarse-edge interval check for the second plane variant. */
#define main unused_weighted_interval_main
#include "numeric_contract.c"
#undef main

static float plane_upper(uint64_t area, uint64_t e0, uint64_t e1,
    float z0, float z1, float z2, int small) {
    float inverse = 1.f/(float)area;
    float coefficient0 = inverse*(z0-z2), coefficient1 = inverse*(z1-z2);
    float approximate;
    if (small) {
        approximate = ((float)e0*coefficient0+(float)e1*coefficient1)+z2;
    } else {
        float constant = ((float)(e0&255u)*coefficient0+
            (float)(e1&255u)*coefficient1)+z2;
        approximate = ((float)(int32_t)(e0>>8)*(256.f*coefficient0)+
            (float)(int32_t)(e1>>8)*(256.f*coefficient1))+constant;
    }
    approximate += GUARD_EPSILON;
    return approximate < 0.f ? 0.f : approximate > 1.f ? 1.f : approximate;
}

int main(void) {
    unsigned uncertain = 0, decisions = 0;
    float worst = 0.f;
    const float width = 2.f*GUARD_EPSILON;
    for (unsigned i = 0; i < 4000000; i++) {
        uint64_t area = 1+random64()%UINT64_C(30600000000);
        if (i%11 == 0) area = 1+random64()%128;
        uint64_t e0 = random64()%(area+1), e1 = random64()%(area-e0+1);
        float inverse = 1.f/(float)area;
        float b0 = (float)e0*inverse, b1 = (float)e1*inverse;
        float z0 = vertex_depth(i), z1 = vertex_depth(i+2), z2 = vertex_depth(i+4);
        float exact, unused; depths(b0,b1,z0,z1,z2,&exact,&unused);
        int small = area < 33554432 && i%2;
        float upper = plane_upper(area,e0,e1,z0,z1,z2,small);
        CHECK(isfinite(exact) && isfinite(upper));
        CHECK(exact <= upper && exact >= upper-width);
        float delta = fabsf(exact-upper);
        if (delta > worst) worst = delta;
        float old_exact, old_upper;
        if (i%3 == 0) old_exact = old_upper = vertex_depth(i+1);
        else {
            float old0 = z0, old1 = z1, old2 = z2;
            if (i%3 == 2) {
                old0 = vertex_depth(i+1); old1 = vertex_depth(i+3); old2 = vertex_depth(i+5);
            } else {
                if (i%5 == 0) old0 = nextafterf(z0,1.f);
                if (i%5 == 1) old1 = nextafterf(z1,0.f);
                if (i%5 == 2) old2 = nextafterf(z2,1.f);
            }
            depths(b0,b1,old0,old1,old2,&old_exact,&unused);
            old_upper = plane_upper(area,e0,e1,old0,old1,old2,small);
        }
        CHECK(old_exact <= old_upper && old_exact >= old_upper-width);
        int pass = upper < old_upper-width, reject = upper-width >= old_upper;
        CHECK(!(pass && reject));
        if (pass) { CHECK(exact < old_exact); decisions++; }
        else if (reject) { CHECK(!(exact < old_exact)); decisions++; }
        else uncertain++;
    }
    printf("4,000,000 raw/coarse-edge plane intervals: %u separated / %u exact-fallback; maximum upper error %.9g PASS\n",
        decisions,uncertain,worst);
    return 0;
}
