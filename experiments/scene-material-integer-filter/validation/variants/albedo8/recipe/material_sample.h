#ifndef SG_MATERIAL_SAMPLE_H
#define SG_MATERIAL_SAMPLE_H

#define MATERIAL_FILTER_BITS @FILTER_BITS@
#define MATERIAL_FILTER_ROUNDED @FILTER_ROUNDED@

_Static_assert(MATERIAL_FILTER_BITS <= 11, "255 * weight squared fits signed int32");

SG_INLINE void sg_material_sample_2d(const sg_tex_unit_tri *u,
                                    sg_f32x4 x, sg_f32x4 y,
                                    unsigned live,
                                    sg_f32x4 out[4]) {
    const float inv255 = 1.f / 255.f;
    sg_f32x4 fx = sg_f32x4_mul(sg_packet_wrap(x, u->wrap_s), sg_f32x4_splat((float)u->tw));
    sg_f32x4 fy = sg_f32x4_mul(sg_packet_wrap(y, u->wrap_t), sg_f32x4_splat((float)u->th));
    int linear = u->filter_mag != GL_NEAREST;
    if (linear) {
        fx = sg_f32x4_sub(fx, sg_f32x4_splat(.5f));
        fy = sg_f32x4_sub(fy, sg_f32x4_splat(.5f));
    }
    sg_f32x4 bx = _mm_floor_ps(fx), by = _mm_floor_ps(fy);
    sg_i32x4 xi = sg_f32x4_trunc_i32(bx), yi = sg_f32x4_trunc_i32(by);
    sg_i32x4 x0 = sg_packet_address4(xi, u->tw, u->wrap_s, u->tw_mask_pot);
    sg_i32x4 y0 = sg_packet_address4(yi, u->th, u->wrap_t, u->th_mask_pot);
    sg_i32x4 row0 = _mm_mullo_epi32(y0, sg_i32x4_splat(u->tw));
    int paired = 0;
    SG_ALIGN16 int address[4][4];
    _mm_store_si128((sg_i32x4 *)address[0], sg_i32x4_add(row0, x0));
    if (linear) {
        sg_i32x4 x1 = sg_packet_address4(sg_i32x4_add(xi, sg_i32x4_splat(1)), u->tw, u->wrap_s, u->tw_mask_pot);
        sg_i32x4 y1 = sg_packet_address4(sg_i32x4_add(yi, sg_i32x4_splat(1)), u->th, u->wrap_t, u->th_mask_pot);
        sg_i32x4 row1 = _mm_mullo_epi32(y1, sg_i32x4_splat(u->tw));
        _mm_store_si128((sg_i32x4 *)address[1], sg_i32x4_add(row0, x1));
        _mm_store_si128((sg_i32x4 *)address[2], sg_i32x4_add(row1, x0));
        _mm_store_si128((sg_i32x4 *)address[3], sg_i32x4_add(row1, x1));
        paired = live == 15 && sg_mask4_live(_mm_cmpeq_epi32(x1,
            sg_i32x4_add(x0, sg_i32x4_splat(1)))) == 15;
    }
    sg_i32x4 taps[4];
    if (!linear) {
        taps[0] = sg_packet_gather(u->data0, address[0], live);
        for (int k = 0; k < 4; k++) {
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_and(taps[0],
                sg_i32x4_splat(255))), sg_f32x4_splat(inv255));
            taps[0] = _mm_srli_epi32(taps[0], 8);
        }
        return;
    }
    if (paired) {
        sg_packet_gather_pairs(u->data0, address[0], &taps[0], &taps[1]);
        sg_packet_gather_pairs(u->data0, address[2], &taps[2], &taps[3]);
    } else {
        for (int s = 0; s < 4; s++) taps[s] = sg_packet_gather(u->data0, address[s], live);
    }
    sg_f32x4 fu = sg_f32x4_sub(fx, bx), fv = sg_f32x4_sub(fy, by);
    sg_f32x4 ifu = sg_f32x4_sub(sg_f32x4_splat(1.f), fu);
    sg_f32x4 ifv = sg_f32x4_sub(sg_f32x4_splat(1.f), fv);
    sg_i32x4 iu = sg_i32x4_splat(0), iv = iu, iiv = iu, weights = iu;
    {
        iu = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(fu,
            sg_f32x4_splat((float)(1u << MATERIAL_FILTER_BITS))), sg_f32x4_splat(.5f)));
        iv = sg_f32x4_trunc_i32(sg_f32x4_add(sg_f32x4_mul(fv,
            sg_f32x4_splat((float)(1u << MATERIAL_FILTER_BITS))), sg_f32x4_splat(.5f)));
        weights = sg_packet_pairs(_mm_sub_epi32(sg_i32x4_splat(1u << MATERIAL_FILTER_BITS), iu), iu);
        iiv = _mm_sub_epi32(sg_i32x4_splat(1u << MATERIAL_FILTER_BITS), iv);
    }
    for (int k = 0; k < 4; k++) {
        sg_i32x4 channel[4];
        for (int s = 0; s < 4; s++) {
            channel[s] = sg_i32x4_and(taps[s], sg_i32x4_splat(255));
            taps[s] = _mm_srli_epi32(taps[s], 8);
        }
        if (k < 3) {
            sg_i32x4 top = _mm_madd_epi16(sg_packet_pairs(channel[0], channel[1]), weights);
            sg_i32x4 bot = _mm_madd_epi16(sg_packet_pairs(channel[2], channel[3]), weights);
            sg_i32x4 sum = _mm_add_epi32(_mm_mullo_epi32(top, iiv), _mm_mullo_epi32(bot, iv));
#if MATERIAL_FILTER_ROUNDED
            sum = _mm_srli_epi32(_mm_add_epi32(sum,
                sg_i32x4_splat(1u << (2*MATERIAL_FILTER_BITS-1))),2*MATERIAL_FILTER_BITS);
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps(sum), sg_f32x4_splat(inv255));
#else
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps(sum),
                sg_f32x4_splat(1.f / ((1u << (2*MATERIAL_FILTER_BITS))*255.f)));
#endif
        } else {
            sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(channel[0]), ifu),
                                         sg_f32x4_mul(_mm_cvtepi32_ps(channel[1]), fu));
            sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(channel[2]), ifu),
                                         sg_f32x4_mul(_mm_cvtepi32_ps(channel[3]), fu));
            out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top, ifv),
                                                 sg_f32x4_mul(bot, fv)), sg_f32x4_splat(inv255));
        }
    }
}

#endif
