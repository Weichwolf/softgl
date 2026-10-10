static int actual_range(int64_t low, int64_t high, const int32_t dx[3],
    const int32_t dy[3], int e, int paired_width, int top, int bottom) {
    int proved_small = 0;
        int64_t x_delta = (int64_t)dx[e]*(paired_width-1);
        int64_t y_delta = (int64_t)dy[e]*(top-bottom-1);
        if (!proved_small && (low+(x_delta < 0 ? x_delta : 0)+(y_delta < 0 ? y_delta : 0) < INT16_MIN ||
            high+(x_delta > 0 ? x_delta : 0)+(y_delta > 0 ? y_delta : 0) > INT16_MAX)) {
            SCENE_SHORT_AUDIT(2,1); return 0;
        }
    return 1;
}
static sg_i32x4 actual_pack(const int32_t values[4], const int32_t dx[3], int e) {
    sg_i32x4 rows[3];
        sg_i32x4 first = _mm_loadu_si128((const sg_i32x4 *)values);
        rows[e] = _mm_packs_epi32(first,sg_i32x4_add(first,sg_i32x4_splat(dx[e])));
    return rows[e];
}
static unsigned actual_mask(const sg_i32x4 edge[3]) {
            sg_i32x4 signs = _mm_or_si128(_mm_or_si128(edge[0],edge[1]),edge[2]);
            unsigned pair_coverage = ~(unsigned)_mm_movemask_epi8(_mm_packs_epi16(signs,signs)) & 255u;
    return pair_coverage;
}
static void actual_raw(const sg_i32x4 edge[3], int lane, const sg_i32x4 corrections[2],
    const sg_i32x4 remainders[2], sg_i32x4 out[2]) {
                sg_i32x4 q0 = _mm_cvtepi16_epi32(lane ? _mm_srli_si128(edge[0],8) : edge[0]);
                sg_i32x4 q1 = _mm_cvtepi16_epi32(lane ? _mm_srli_si128(edge[1],8) : edge[1]);
                sg_i32x4 raw0 = _mm_or_si128(_mm_slli_epi32(sg_i32x4_add(q0,corrections[0]),8),remainders[0]);
                sg_i32x4 raw1 = _mm_or_si128(_mm_slli_epi32(sg_i32x4_add(q1,corrections[1]),8),remainders[1]);
    out[0] = raw0; out[1] = raw1;
}
static void actual_advance_x(sg_i32x4 edge[3], const int32_t dx[3]) {
    sg_i32x4 step_x[3];
    for (int e = 0; e < 3; e++) {
        step_x[e] = _mm_set1_epi16((int16_t)(uint16_t)(2*dx[e]));
    }
            for (int e = 0; e < 3; e++) edge[e] = _mm_add_epi16(edge[e],step_x[e]);
}
static void actual_advance_y(sg_i32x4 rows[3], const int32_t dy[3]) {
    sg_i32x4 step_y[3];
    for (int e = 0; e < 3; e++) {
        step_y[e] = _mm_set1_epi16((int16_t)(uint16_t)dy[e]);
            rows[e] = _mm_add_epi16(rows[e],step_y[e]);
    }
}
#define HAS_SMALL_PROOF 1
static int actual_small_box(int left, int right, int bottom, int top) {
    int proved_small = right-left <= 8 && top-bottom <= 8;
    return proved_small;
}
