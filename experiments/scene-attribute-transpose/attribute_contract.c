#include "types.h"
#include "simd.h"
typedef struct scene_primitive scene_primitive; /* Pointer only in the frozen layout. */
#include "triangle_layout.h"
#include "original_gather.h"
#include "scene_attribute_packet.h"
#include <stdio.h>

static uint32_t random_state = 17;

static float value(void) {
    random_state = random_state * UINT32_C(1664525) + UINT32_C(1013904223);
    return ((int32_t)(random_state >> 8) - 8388608) / 4096.f;
}

int main(void) {
    scene_triangle storage[4];
    unsigned long comparisons = 0;
    for (unsigned iteration = 0; iteration < 4096; iteration++) {
        for (unsigned lane = 0; lane < 4; lane++) for (unsigned v = 0; v < 3; v++) {
            sg_vec4 *fields[5] = {&storage[lane].color[v], &storage[lane].uv[0][v],
                &storage[lane].uv[1][v], &storage[lane].uv[2][v], &storage[lane].uv[3][v]};
            for (unsigned f = 0; f < 5; f++) {
                fields[f]->x = value(); fields[f]->y = value();
                fields[f]->z = value(); fields[f]->w = value();
            }
        }
        float weights[4][4];
        for (unsigned row = 0; row < 4; row++) for (unsigned lane = 0; lane < 4; lane++) {
            weights[row][lane] = value() / 2048.f;
        }
        sg_f32x4 w0 = sg_f32x4_load(weights[0]), w1 = sg_f32x4_load(weights[1]);
        sg_f32x4 w2 = sg_f32x4_load(weights[2]), inverse = sg_f32x4_load(weights[3]);
        for (unsigned alias = 0; alias < 256; alias++) {
            const scene_triangle *tri[4];
            for (unsigned lane = 0; lane < 4; lane++) tri[lane] = &storage[(alias >> (lane*2)) & 3u];
            for (int field = -1; field < 4; field++) {
                sg_f32x4 actual[4];
                scene_gather_lerp4(tri,field,4,w0,w1,w2,inverse,actual);
                for (int channel = 0; channel < 4; channel++) {
                    sg_f32x4 expected = scene_gather_lerp(tri,field,channel,w0,w1,w2,inverse);
                    float a[4], b[4];
                    sg_f32x4_store(a, actual[channel]); sg_f32x4_store(b, expected);
                    if (memcmp(a,b,sizeof(a))) {
                        fprintf(stderr,"Mismatch iteration %u alias %u field %d channel %d\n",
                            iteration,alias,field,channel);
                        return 1;
                    }
                    comparisons++;
                }
            }
        }
    }
    printf("{\"channelPacketComparisons\":%lu,\"bitExact\":true}\n", comparisons);
    return 0;
}
