#ifndef SCENE_FOOTPRINT_SAMPLER_H
#define SCENE_FOOTPRINT_SAMPLER_H

/* Continuous approximation of .5*log2(rho_squared), with matching values at
 * exponent boundaries. Each SIMD lane has its own footprint and mip pair. */
static inline sg_f32x4 scene_footprint_lod(sg_f32x4 rho_squared, unsigned last) {
    sg_f32x4 one = sg_f32x4_splat(1.f);
    rho_squared = sg_f32x4_max(one, rho_squared);
    sg_i32x4 bits = _mm_castps_si128(rho_squared);
    sg_i32x4 exponent = _mm_sub_epi32(_mm_srli_epi32(bits, 23), sg_i32x4_splat(127));
    sg_f32x4 mantissa = _mm_castsi128_ps(_mm_or_si128(
        _mm_and_si128(bits, sg_i32x4_splat(0x7fffff)), sg_i32x4_splat(0x3f800000)));
    sg_f32x4 x = sg_f32x4_sub(mantissa, one);
    sg_f32x4 log_fraction = sg_f32x4_mul(x, sg_f32x4_add(sg_f32x4_splat(1.44269504f),
        sg_f32x4_mul(x, sg_f32x4_add(sg_f32x4_splat(-.72134752f),
            sg_f32x4_mul(x, sg_f32x4_splat(.27865248f))))));
    return sg_f32x4_min(sg_f32x4_splat((float)last),
        sg_f32x4_mul(sg_f32x4_add(_mm_cvtepi32_ps(exponent), log_fraction), sg_f32x4_splat(.5f)));
}

static unsigned scene_footprint_last(const sg_tex_unit_tri *unit) {
    if (unit->active_slot != SG_TEX_TARGET_2D || !unit->tex ||
        unit->filter_mag != GL_LINEAR || !unit->data0) return 0;
    unsigned last = 0;
    int w = unit->tw, h = unit->th;
    for (unsigned level = 1; level < (unsigned)unit->tex->levels && level < SG_MAX_MIPMAP_LEVELS; level++) {
        w = w > 1 ? w/2 : 1; h = h > 1 ? h/2 : 1;
        if (!unit->tex->data[level] || unit->tex->w[level] != w || unit->tex->h[level] != h) break;
        last = level;
    }
    return last;
}

static void scene_footprint_unit(const sg_tex_unit_tri *unit, unsigned level, sg_tex_unit_tri *out) {
    *out = *unit;
    out->tw = unit->tex->w[level]; out->th = unit->tex->h[level];
    out->data0 = unit->tex->data[level];
    out->tw_mask_pot = (out->tw & (out->tw-1)) == 0 ? out->tw-1 : 0;
    out->th_mask_pot = (out->th & (out->th-1)) == 0 ? out->th-1 : 0;
    out->tw_log2 = 0;
    for (int w = out->tw; w > 1; w >>= 1) out->tw_log2++;
    out->constant_color_valid = out->tw == 1 && out->th == 1;
}

/* Only mixed levels need per-lane texel sources. Interpolation still uses
 * SIMD128 and the original float bilinear arithmetic. All addressing supports
 * NPOT, repeat and clamp using the scalar sampler's existing address helper. */
static void scene_footprint_level(const sg_tex_unit_tri *unit, sg_f32x4 x,
    sg_f32x4 y, const int levels[4], unsigned live, sg_f32x4 out[4]) {
    if (levels[0] == levels[1] && levels[0] == levels[2] && levels[0] == levels[3]) {
        if (!levels[0]) { sg_packet_sample_2d(unit,x,y,live,0,out); return; }
        sg_tex_unit_tri selected;
        scene_footprint_unit(unit, (unsigned)levels[0], &selected);
        sg_packet_sample_2d(&selected,x,y,live,0,out);
        return;
    }
    float px[4], py[4], fu[4], fv[4];
    sg_f32x4_store(px, sg_packet_wrap(x, unit->wrap_s));
    sg_f32x4_store(py, sg_packet_wrap(y, unit->wrap_t));
    SG_ALIGN16 uint32_t taps[4][4] = {{0}};
    for (unsigned lane = 0; lane < 4; lane++) {
        int level = levels[lane], w = unit->tex->w[level], h = unit->tex->h[level];
        float sx = px[lane]*(float)w-.5f, sy = py[lane]*(float)h-.5f;
        int bx = (int)floorf(sx), by = (int)floorf(sy);
        fu[lane] = sx-(float)bx; fv[lane] = sy-(float)by;
        if (!(live & (1u << lane))) continue;
        int mx = (w & (w-1)) == 0 ? w-1 : 0;
        int my = (h & (h-1)) == 0 ? h-1 : 0;
        int x0 = unit->wrap_s == GL_REPEAT && mx ? bx & mx : sg_packet_address(bx,w,unit->wrap_s);
        int x1 = unit->wrap_s == GL_REPEAT && mx ? (bx+1) & mx : sg_packet_address(bx+1,w,unit->wrap_s);
        int y0 = unit->wrap_t == GL_REPEAT && my ? by & my : sg_packet_address(by,h,unit->wrap_t);
        int y1 = unit->wrap_t == GL_REPEAT && my ? (by+1) & my : sg_packet_address(by+1,h,unit->wrap_t);
        const uint8_t *data = unit->tex->data[level];
        memcpy(&taps[0][lane], data+((size_t)y0*w+x0)*4, 4);
        memcpy(&taps[1][lane], data+((size_t)y0*w+x1)*4, 4);
        memcpy(&taps[2][lane], data+((size_t)y1*w+x0)*4, 4);
        memcpy(&taps[3][lane], data+((size_t)y1*w+x1)*4, 4);
    }
    sg_f32x4 u = sg_f32x4_load(fu), v = sg_f32x4_load(fv);
    sg_f32x4 iu = sg_f32x4_sub(sg_f32x4_splat(1.f),u);
    sg_f32x4 iv = sg_f32x4_sub(sg_f32x4_splat(1.f),v);
    sg_i32x4 packed[4];
    for (int tap = 0; tap < 4; tap++) packed[tap] = _mm_load_si128((const sg_i32x4 *)taps[tap]);
    for (int channel = 0; channel < 4; channel++) {
        sg_f32x4 c[4];
        for (int tap = 0; tap < 4; tap++) {
            c[tap] = _mm_cvtepi32_ps(sg_i32x4_and(packed[tap],sg_i32x4_splat(255)));
            packed[tap] = _mm_srli_epi32(packed[tap],8);
        }
        sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(c[0],iu),sg_f32x4_mul(c[1],u));
        sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(c[2],iu),sg_f32x4_mul(c[3],u));
        out[channel] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top,iv),sg_f32x4_mul(bot,v)),
            sg_f32x4_splat(1.f/255.f));
    }
}

static void scene_footprint_sample(const sg_tex_unit_tri *unit, sg_f32x4 x,
    sg_f32x4 y, sg_f32x4 gradients[2][2], unsigned last, unsigned live, sg_f32x4 out[4]) {
    sg_f32x4 rho[2];
    for (int axis = 0; axis < 2; axis++) {
        sg_f32x4 dx = sg_f32x4_mul(gradients[axis][0],sg_f32x4_splat((float)unit->tw));
        sg_f32x4 dy = sg_f32x4_mul(gradients[axis][1],sg_f32x4_splat((float)unit->th));
        rho[axis] = sg_f32x4_add(sg_f32x4_mul(dx,dx),sg_f32x4_mul(dy,dy));
    }
    sg_f32x4 lod = scene_footprint_lod(sg_f32x4_max(rho[0],rho[1]),last);
    sg_i32x4 floor = sg_f32x4_trunc_i32(lod);
    SG_ALIGN16 int low[4], high[4];
    _mm_store_si128((sg_i32x4 *)low,floor);
    _mm_store_si128((sg_i32x4 *)high,_mm_min_epi32(_mm_add_epi32(floor,sg_i32x4_splat(1)),
        sg_i32x4_splat((int)last)));
    scene_footprint_level(unit,x,y,low,live,out);
    sg_f32x4 fraction = sg_f32x4_sub(lod,_mm_cvtepi32_ps(floor));
    unsigned blend = live & sg_mask4_live(sg_f32x4_gt(fraction,sg_f32x4_splat(0.f)));
    if (!blend) return;
    sg_f32x4 upper[4];
    scene_footprint_level(unit,x,y,high,blend,upper);
    for (int k = 0; k < 4; k++) out[k] = sg_f32x4_add(out[k],
        sg_f32x4_mul(sg_f32x4_sub(upper[k],out[k]),fraction));
}

#endif
