#ifndef SOFTGL_PACKET_CHANNELS_H
#define SOFTGL_PACKET_CHANNELS_H
#include "types.h"
#include "simd.h"

/* Four RGBA8 texels become four unsigned 32-bit channel values.
 * Constant byte selectors preserve pixel order and zero every upper byte. */
#if defined(__wasm_simd128__)
#define SG_PACKET_CHANNEL_FUNCTION(name, k) \
    SG_INLINE sg_i32x4 name(sg_i32x4 rgba) { \
        return (sg_i32x4)wasm_i8x16_shuffle((v128_t)rgba, wasm_i32x4_splat(0), \
            k,16,16,16, k+4,16,16,16, k+8,16,16,16, k+12,16,16,16); \
    }
#else
#define SG_PACKET_CHANNEL_FUNCTION(name, k) \
    SG_INLINE sg_i32x4 name(sg_i32x4 rgba) { \
        return _mm_shuffle_epi8(rgba, _mm_setr_epi8( \
            k,-128,-128,-128, k+4,-128,-128,-128, \
            k+8,-128,-128,-128, k+12,-128,-128,-128)); \
    }
#endif
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_0, 0)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_1, 1)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_2, 2)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_3, 3)
#undef SG_PACKET_CHANNEL_FUNCTION
#endif
