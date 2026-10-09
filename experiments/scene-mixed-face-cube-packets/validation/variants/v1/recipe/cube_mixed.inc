/* A full packet can use independent cube-face base pointers. */
SG_INLINE sg_i32x4 sg_packet_gather_faces(const uint8_t *data[4], const int address[4],
    unsigned live) {
    uint32_t rgba[4] = {0,0,0,0};
    for (int l = 0; l < 4; l++) if (live & (1u << l))
        memcpy(&rgba[l], data[l] + (size_t)address[l] * 4, 4);
    return sg_i32x4_set((int32_t)rgba[0], (int32_t)rgba[1],
        (int32_t)rgba[2], (int32_t)rgba[3]);
}

SG_INLINE void sg_packet_gather_face_pairs(const uint8_t *data[4], const int address[4],
    sg_i32x4 *left, sg_i32x4 *right) {
    sg_i32x4 a = _mm_loadl_epi64((const sg_i32x4 *)(data[0] + (size_t)address[0] * 4));
    sg_i32x4 b = _mm_loadl_epi64((const sg_i32x4 *)(data[1] + (size_t)address[1] * 4));
    sg_i32x4 d = _mm_loadl_epi64((const sg_i32x4 *)(data[2] + (size_t)address[2] * 4));
    sg_i32x4 e = _mm_loadl_epi64((const sg_i32x4 *)(data[3] + (size_t)address[3] * 4));
    sg_f32x4 ab = _mm_castsi128_ps(_mm_unpacklo_epi64(a,b));
    sg_f32x4 de = _mm_castsi128_ps(_mm_unpacklo_epi64(d,e));
    *left = _mm_castps_si128(_mm_shuffle_ps(ab,de,_MM_SHUFFLE(2,0,2,0)));
    *right = _mm_castps_si128(_mm_shuffle_ps(ab,de,_MM_SHUFFLE(3,1,3,1)));
}

/* GENERATED_FACE_SAMPLER */

static __attribute__((noinline)) int sg_packet_sample_cube_mixed(const sg_tex_unit_tri *u,
    sg_f32x4 x, sg_f32x4 y, sg_f32x4 z, unsigned live, sg_f32x4 out[4]) {
    if (live != 15 || !u->tex) return 0;
    sg_i32x4 absolute = sg_i32x4_splat(0x7fffffff);
    sg_f32x4 ax = _mm_castsi128_ps(_mm_and_si128(_mm_castps_si128(x),absolute));
    sg_f32x4 ay = _mm_castsi128_ps(_mm_and_si128(_mm_castps_si128(y),absolute));
    sg_f32x4 az = _mm_castsi128_ps(_mm_and_si128(_mm_castps_si128(z),absolute));
    sg_f32x4 largest = sg_f32x4_splat(0x1.fffffep127f);
    sg_i32x4 finite = sg_i32x4_and(sg_i32x4_and(sg_f32x4_le(ax,largest),
        sg_f32x4_le(ay,largest)),sg_f32x4_le(az,largest));
    if (sg_mask4_live(finite) != 15) return 0;
    sg_i32x4 xaxis = sg_i32x4_and(sg_f32x4_ge(ax,ay),sg_f32x4_ge(ax,az));
    sg_i32x4 yaxis = _mm_andnot_si128(xaxis,
        sg_i32x4_and(sg_f32x4_ge(ay,ax),sg_f32x4_ge(ay,az)));
    sg_f32x4 zero = sg_f32x4_splat(0.f), sign = sg_f32x4_splat(-0.f);
    sg_f32x4 direction = sg_f32x4_select(xaxis,x,sg_f32x4_select(yaxis,y,z));
    sg_i32x4 positive = sg_f32x4_ge(direction,zero);
    sg_i32x4 base = _mm_blendv_epi8(sg_i32x4_splat(4),sg_i32x4_splat(2),yaxis);
    base = _mm_blendv_epi8(base,sg_i32x4_splat(0),xaxis);
    sg_i32x4 selected = sg_i32x4_add(base,_mm_andnot_si128(positive,sg_i32x4_splat(1)));
    SG_ALIGN16 int faces[4];
    _mm_store_si128((sg_i32x4 *)faces,selected);
    const uint8_t *data[4];
    int width = u->tex->cube_w[faces[0]][0], height = u->tex->cube_h[faces[0]][0];
    if (width <= 0 || height <= 0) return 0;
    for (int l = 0; l < 4; l++) {
        data[l] = u->tex->cube_faces[faces[l]][0];
        if (!data[l] || u->tex->cube_w[faces[l]][0] != width ||
            u->tex->cube_h[faces[l]][0] != height) return 0;
    }
    sg_f32x4 major = sg_f32x4_select(xaxis,ax,sg_f32x4_select(yaxis,ay,az));
    major = sg_f32x4_select(sg_f32x4_lt(major,sg_f32x4_splat(1e-20f)),
        sg_f32x4_splat(1e-20f),major);
    sg_f32x4 xsc = sg_f32x4_select(positive,_mm_xor_ps(z,sign),z);
    sg_f32x4 zsc = sg_f32x4_select(positive,x,_mm_xor_ps(x,sign));
    sg_f32x4 sc = sg_f32x4_select(xaxis,xsc,sg_f32x4_select(yaxis,x,zsc));
    sg_f32x4 tc = sg_f32x4_select(yaxis,sg_f32x4_select(positive,z,_mm_xor_ps(z,sign)),
        _mm_xor_ps(y,sign));
    sg_f32x4 s = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_div(sc,major),
        sg_f32x4_splat(1.f)),sg_f32x4_splat(.5f));
    sg_f32x4 t = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_div(tc,major),
        sg_f32x4_splat(1.f)),sg_f32x4_splat(.5f));
    sg_tex_unit_tri view = *u;
    view.tw = width; view.th = height;
    view.tw_mask_pot = (width & (width-1)) == 0 ? width-1 : 0;
    view.th_mask_pot = (height & (height-1)) == 0 ? height-1 : 0;
    sg_packet_sample_face_pointers(&view,s,t,live,data,out);
    return 1;
}
