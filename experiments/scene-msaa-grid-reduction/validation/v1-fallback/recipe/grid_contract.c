#include "types.h"
#include "simd.h"
#include "raster_grid_edge.h"
#include <limits.h>
#include <stddef.h>
#include <stdio.h>

static uint32_t random_state = 971;

static uint32_t next(void) {
    random_state = random_state * UINT32_C(1664525) + UINT32_C(1013904223);
    return random_state;
}

static int64_t reference_floor(int64_t edge) {
    int64_t q = edge / 16;
    return q - (edge % 16 < 0);
}

typedef struct {
    SG_ALIGN16 uint32_t xy[3][4];
    SG_ALIGN16 float zw[3][2][4];
    uint32_t eligible;
    uint32_t residual[3];
} proposed_packet;

_Static_assert(sizeof(proposed_packet) == 160, "Original packet stride must not grow");
_Static_assert(offsetof(proposed_packet, residual) == 148, "Use only original padding");

int main(void) {
    uint64_t floor_checks = 0, float_checks = 0, packet_axes = 0, shortcuts_wrong = 0;
    const int32_t special[] = {INT32_MIN, INT32_MIN+1, -16777217, -16777216,
        -8388609, -1, 0, 1, 8388607, 8388608, 16777215, 16777216,
        16777217, 33554431, 33554433, INT32_MAX-1, INT32_MAX};
    for (unsigned iteration = 0; iteration < 1048576; iteration++) {
        int32_t q[4], r[4];
        float expected[4], actual[4], shortcut[4];
        for (int lane = 0; lane < 4; lane++) {
            q[lane] = iteration < sizeof(special)/sizeof(*special) ?
                special[(iteration+lane) % (sizeof(special)/sizeof(*special))] : (int32_t)next();
            r[lane] = (int32_t)(next() % 17u); /* biased remainder minus bias, 0..16 */
            expected[lane] = (float)((int64_t)q[lane]*16+r[lane]);
        }
        sg_i32x4 reduced = sg_i32x4_set(q[0],q[1],q[2],q[3]);
        sg_i32x4 remainder = sg_i32x4_set(r[0],r[1],r[2],r[3]);
        sg_f32x4_store(actual,sg_grid_edge_float(reduced,remainder));
        sg_f32x4_store(shortcut,sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(reduced),
            sg_f32x4_splat(16.f)),_mm_cvtepi32_ps(remainder)));
        if (memcmp(expected,actual,sizeof(expected))) return 1;
        for (int lane = 0; lane < 4; lane++) {
            if (memcmp(expected+lane,shortcut+lane,sizeof(float))) shortcuts_wrong++;
            float_checks++;
        }
        /* Independent integer predicate for signed origins, top-left bias
         * and positive/negative sample offsets on the original lattice. */
        int64_t edge = (int64_t)(int32_t)next()*16 + (next() & 15u);
        int bias = next() & 1u ? -1 : 0;
        int64_t offset = (int64_t)((int32_t)next()/1024)*16;
        int64_t full = edge+offset+bias;
        int64_t scaled = sg_grid_edge_floor(edge+bias)+offset/16;
        if (scaled != reference_floor(full) || (scaled >= 0) != (full >= 0) ||
            16*scaled+((edge+bias)-16*sg_grid_edge_floor(edge+bias))-bias != edge+offset) return 2;
        floor_checks++;
        /* Keep old 16.4 coordinates and eligibility bits; round-trip exact
         * signed 16.8 residues using twelve padding bytes and 24 spare bits. */
        proposed_packet packet = {0};
        unsigned old_eligible = next() & 15u;
        packet.eligible = old_eligible;
        for (unsigned vertex = 0; vertex < 3; vertex++) for (unsigned lane = 0; lane < 4; lane++) {
            float x = ((int32_t)(next()%(164353u*256u))-65536) / 65536.f;
            float y = ((int32_t)(next()%(92673u*256u))-65536) / 65536.f;
            int32_t ox = (int32_t)(x*16.f), oy = (int32_t)(y*16.f);
            int32_t px = (int32_t)(x*256.f), py = (int32_t)(y*256.f);
            int32_t rx = px-ox*16, ry = py-oy*16;
            if (rx < -15 || rx > 15 || ry < -15 || ry > 15) return 3;
            packet.xy[vertex][lane] = (uint16_t)ox | ((uint32_t)(uint16_t)oy << 16);
            unsigned magnitude = (unsigned)(rx < 0 ? -rx : rx) |
                ((unsigned)(ry < 0 ? -ry : ry) << 4);
            packet.residual[vertex] |= magnitude << (lane*8);
            unsigned signs = (rx < 0 ? 1u : 0u) | (ry < 0 ? 2u : 0u);
            packet.eligible |= signs << (4+vertex*8+lane*2);
            unsigned recovered = (packet.residual[vertex] >> (lane*8)) & 255u;
            unsigned flags = (packet.eligible >> (4+vertex*8+lane*2)) & 3u;
            int32_t bx = (int16_t)(packet.xy[vertex][lane] & 65535u);
            int32_t by = (int16_t)(packet.xy[vertex][lane] >> 16);
            int32_t dx = (int32_t)(recovered & 15u), dy = (int32_t)(recovered >> 4);
            if (flags & 1u) dx = -dx;
            if (flags & 2u) dy = -dy;
            if (bx != ox || by != oy || bx*16+dx != px || by*16+dy != py ||
                (packet.eligible & 15u) != old_eligible) return 4;
            packet_axes += 2;
        }
    }
    if (!shortcuts_wrong) return 5;
    printf("{\"integerChecks\":%llu,\"floatChecks\":%llu,\"packetAxes\":%llu,"
           "\"wrongF32Shortcuts\":%llu,\"packetBytes\":160,\"passed\":true}\n",
           (unsigned long long)floor_checks,(unsigned long long)float_checks,
           (unsigned long long)packet_axes,(unsigned long long)shortcuts_wrong);
    return 0;
}
