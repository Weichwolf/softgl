/* Actual interval helper versus the original four-sample depth expression. */
#include "multisample.h"
#include "simd.h"
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "interval_helper.inc"

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"case %u line %d: %s\n",i,__LINE__,#x); return 1; } } while (0)
static uint64_t random_state = UINT64_C(0x92acd321847fe915);
static uint64_t random64(void) {
    uint64_t x = random_state;
    x ^= x << 13; x ^= x >> 7; x ^= x << 17;
    return random_state = x;
}

static float vertex_depth(unsigned i) {
    uint32_t bits = (uint32_t)(random64()%UINT64_C(0x3f800001));
    float value; memcpy(&value,&bits,sizeof(value));
    if (i%7 == 0) value = 1.f;
    if (i%7 == 1) value = 0.f;
    if (i%7 == 2) value = nextafterf(1.f,0.f);
    if (i%7 == 3) value = (float)(random64()&65535u)/65535.f;
    if (i%7 == 4) value = -0.f;
    return value;
}

static float original_depth(int64_t e0, int64_t e1, float inverse,
    float z0, float z1, float z2) {
    float b0 = (float)e0*inverse, b1 = (float)e1*inverse;
    float b2 = (1.f-b0)-b1;
    float z = ((b0*z0+b1*z1)+b2*z2)+0.f;
    return z < 0.f ? 0.f : z > 1.f ? 1.f : z;
}

int main(void) {
    unsigned separated = 0, uncertain = 0;
    float maximum_slack = 0.f;
    for (unsigned i = 0; i < 1000000; i++) {
        int64_t area = 1+(int64_t)(random64()%UINT64_C(2100000000));
        if (i%11 == 0) area = 1+(int64_t)(random64()%128);
        int limit = (int)(area/4096);
        if (limit > 32767) limit = 32767;
        int32_t dx[3] = {0}, dy[3] = {0};
        for (int e = 0; e < 2; e++) {
            dx[e] = (int32_t)(random64()%(unsigned)(2*limit+1))-limit;
            dy[e] = (int32_t)(random64()%(unsigned)(2*limit+1))-limit;
        }
        float inverse = 1.f/(float)area;
        sg_vert vertices[3] = {0};
        for (int j = 0; j < 3; j++) vertices[j].ndc.z = vertex_depth(i+j);
        scene_packet_depth_state state;
        scene_packet_depth_prepare(&state,vertices,vertices+1,vertices+2,inverse,dx,dy);
        SG_ALIGN16 float center_edges[2][4], lower[4], upper[4];
        int64_t centers[2][4];
        for (int l = 0; l < 4; l++) {
            int valid;
            do {
                centers[0][l] = (int64_t)(random64()%(uint64_t)(area+1));
                centers[1][l] = (int64_t)(random64()%(uint64_t)(area-centers[0][l]+1));
                valid = 1;
                for (int s = 0; s < 4; s++) {
                    int sx, sy; sg_sample_position(4,s,&sx,&sy);
                    int64_t a = centers[0][l]+(int64_t)dx[0]*(sx-128)+(int64_t)dy[0]*(sy-128);
                    int64_t b = centers[1][l]+(int64_t)dx[1]*(sx-128)+(int64_t)dy[1]*(sy-128);
                    if (a < 0 || b < 0 || a+b > area) valid = 0;
                }
            } while (!valid);
            for (int e = 0; e < 2; e++) center_edges[e][l] = (float)centers[e][l];
        }
        interval_bounds(&state,center_edges,lower,upper);
        for (int l = 0; l < 4; l++) {
            CHECK(isfinite(lower[l]) && isfinite(upper[l]) && lower[l] <= upper[l]);
            float old_z[4], old_lower = INFINITY, old_upper = -INFINITY;
            for (int s = 0; s < 4; s++) {
                old_z[s] = vertex_depth(i+l+s+2);
                if (i%3 == 0) old_z[s] = upper[l];
                if (i%3 == 1) old_z[s] = nextafterf(lower[l],0.f);
                if (old_z[s] < old_lower) old_lower = old_z[s];
                if (old_z[s] > old_upper) old_upper = old_z[s];
            }
            int pass = upper[l] < old_lower, reject = lower[l] >= old_upper;
            CHECK(!(pass && reject));
            for (int s = 0; s < 4; s++) {
                int sx, sy; sg_sample_position(4,s,&sx,&sy);
                int64_t a = centers[0][l]+(int64_t)dx[0]*(sx-128)+(int64_t)dy[0]*(sy-128);
                int64_t b = centers[1][l]+(int64_t)dx[1]*(sx-128)+(int64_t)dy[1]*(sy-128);
                float exact = original_depth(a,b,inverse,vertices[0].ndc.z,vertices[1].ndc.z,vertices[2].ndc.z);
                CHECK(exact >= lower[l] && exact <= upper[l]);
                if (upper[l]-exact > maximum_slack) maximum_slack = upper[l]-exact;
                if (pass) CHECK(exact < old_z[s]);
                if (reject) CHECK(!(exact < old_z[s]));
            }
            if (pass || reject) separated++; else uncertain++;
        }
    }
    printf("4,000,000 full pixel intervals / 16,000,000 original samples: %u separated, %u exact fallback, max upper slack %.9g PASS\n",
        separated,uncertain,maximum_slack);
    return 0;
}
