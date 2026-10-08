/* Private validation instrumentation is absent from performance binaries. */
#ifdef SOFTGL_SCENE_WIDE_AUDIT
static atomic_uint scene_wide_audit[19];
unsigned softgl_scene_native_wide_audit(unsigned index, int reset) {
    if (index >= 19) return 0;
    return reset ? atomic_exchange_explicit(&scene_wide_audit[index],0,memory_order_relaxed) :
        atomic_load_explicit(&scene_wide_audit[index],memory_order_relaxed);
}
#endif
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
#include <immintrin.h>
#if defined(__clang__)
#pragma clang fp contract(off)
#endif
#if defined(__clang__)
#define SCENE_WIDE __attribute__((target("avx512f,avx512dq,avx512bw,avx512vl")))
#else
#define SCENE_WIDE __attribute__((target("avx512f,avx512dq,avx512bw,avx512vl"),optimize("fp-contract=off")))
#endif
#define SCENE_WIDE_INLINE static inline SCENE_WIDE __attribute__((always_inline))

SCENE_WIDE_INLINE __m512 scene_wide_clamp(__m512 value) {
    __m512 zero = _mm512_setzero_ps(), one = _mm512_set1_ps(1.f);
    value = _mm512_mask_mov_ps(value,_mm512_cmp_ps_mask(value,zero,_CMP_LT_OQ),zero);
    return _mm512_mask_mov_ps(value,_mm512_cmp_ps_mask(value,one,_CMP_GT_OQ),one);
}

SCENE_WIDE_INLINE __m512 scene_wide_wrap(__m512 value, GLenum wrap) {
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE) return scene_wide_clamp(value);
    return _mm512_sub_ps(value,_mm512_floor_ps(value));
}

SCENE_WIDE_INLINE __m512i scene_wide_address(__m512i value, int size, GLenum wrap, int pot_mask) {
    __m512i zero = _mm512_setzero_si512(), limit = _mm512_set1_epi32(size-1);
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE)
        return _mm512_min_epi32(_mm512_max_epi32(value,zero),limit);
    if (pot_mask) return _mm512_and_si512(value,_mm512_set1_epi32(pot_mask));
    __mmask16 low = _mm512_cmp_epi32_mask(value,zero,_MM_CMPINT_LT);
    __mmask16 high = _mm512_cmp_epi32_mask(value,limit,_MM_CMPINT_GT);
    __m512i result = _mm512_mask_sub_epi32(value,high,value,_mm512_set1_epi32(size));
    return _mm512_mask_add_epi32(result,low,value,_mm512_set1_epi32(size));
}

SCENE_WIDE_INLINE void scene_wide_sample_2d(const sg_tex_unit_tri *u, __m512 x,
    __m512 y, __mmask16 live, __m512 out[4]) {
    __m512 fx = _mm512_mul_ps(scene_wide_wrap(x,u->wrap_s),_mm512_set1_ps((float)u->tw));
    __m512 fy = _mm512_mul_ps(scene_wide_wrap(y,u->wrap_t),_mm512_set1_ps((float)u->th));
    int linear = u->filter_mag != GL_NEAREST;
    if (linear) { fx = _mm512_sub_ps(fx,_mm512_set1_ps(.5f)); fy = _mm512_sub_ps(fy,_mm512_set1_ps(.5f)); }
    __m512 bx = _mm512_floor_ps(fx), by = _mm512_floor_ps(fy);
    __m512i xi = _mm512_cvttps_epi32(bx), yi = _mm512_cvttps_epi32(by);
    __m512i x0 = scene_wide_address(xi,u->tw,u->wrap_s,u->tw_mask_pot);
    __m512i y0 = scene_wide_address(yi,u->th,u->wrap_t,u->th_mask_pot);
    __m512i row0 = _mm512_mullo_epi32(y0,_mm512_set1_epi32(u->tw)), taps[4];
    __m512i zero = _mm512_setzero_si512(), mask = _mm512_set1_epi32(255);
    taps[0] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row0,x0),u->data0,4);
    if (!linear) {
        for (int k = 0; k < 4; k++) {
            out[k] = _mm512_mul_ps(_mm512_cvtepi32_ps(_mm512_and_si512(taps[0],mask)),_mm512_set1_ps(1.f/255.f));
            taps[0] = _mm512_srli_epi32(taps[0],8);
        }
        return;
    }
    __m512i one = _mm512_set1_epi32(1);
    __m512i x1 = scene_wide_address(_mm512_add_epi32(xi,one),u->tw,u->wrap_s,u->tw_mask_pot);
    __m512i y1 = scene_wide_address(_mm512_add_epi32(yi,one),u->th,u->wrap_t,u->th_mask_pot);
    __m512i row1 = _mm512_mullo_epi32(y1,_mm512_set1_epi32(u->tw));
    taps[1] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row0,x1),u->data0,4);
    taps[2] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row1,x0),u->data0,4);
    taps[3] = _mm512_mask_i32gather_epi32(zero,live,_mm512_add_epi32(row1,x1),u->data0,4);
    __m512 fu = _mm512_sub_ps(fx,bx), fv = _mm512_sub_ps(fy,by);
    __m512 ifu = _mm512_sub_ps(_mm512_set1_ps(1.f),fu), ifv = _mm512_sub_ps(_mm512_set1_ps(1.f),fv);
    for (int k = 0; k < 4; k++) {
        __m512 channel[4];
        for (int tap = 0; tap < 4; tap++) {
            channel[tap] = _mm512_cvtepi32_ps(_mm512_and_si512(taps[tap],mask));
            taps[tap] = _mm512_srli_epi32(taps[tap],8);
        }
        __m512 top = _mm512_add_ps(_mm512_mul_ps(channel[0],ifu),_mm512_mul_ps(channel[1],fu));
        __m512 bottom = _mm512_add_ps(_mm512_mul_ps(channel[2],ifu),_mm512_mul_ps(channel[3],fu));
        out[k] = _mm512_mul_ps(_mm512_add_ps(_mm512_mul_ps(top,ifv),_mm512_mul_ps(bottom,fv)),_mm512_set1_ps(1.f/255.f));
    }
}

SCENE_WIDE_INLINE __m512 scene_wide_lerp(const scene_triangle *tri[16], int field,
    int channel, __m512 w0, __m512 w1, __m512 w2, __m512 inverse) {
    float values[3][16];
    for (int v = 0; v < 3; v++) for (int lane = 0; lane < 16; lane++) {
        const sg_vec4 *a = field < 0 ? &tri[lane]->color[v] : &tri[lane]->uv[field][v];
        values[v][lane] = channel == 0 ? a->x : channel == 1 ? a->y : channel == 2 ? a->z : a->w;
    }
    return _mm512_mul_ps(_mm512_add_ps(_mm512_add_ps(_mm512_mul_ps(_mm512_loadu_ps(values[0]),w0),
        _mm512_mul_ps(_mm512_loadu_ps(values[1]),w1)),_mm512_mul_ps(_mm512_loadu_ps(values[2]),w2)),inverse);
}

SCENE_WIDE_INLINE void scene_wide_sample_cube(const sg_tex_unit_tri *unit, __m512 x,
    __m512 y, __m512 z, __mmask16 live, __m512 out[4]) {
    float directions[3][16], values[4][16];
    _mm512_storeu_ps(directions[0],x); _mm512_storeu_ps(directions[1],y); _mm512_storeu_ps(directions[2],z);
    for (int first = 0; first < 16; first += 4) {
        sg_f32x4 sampled[4];
        sg_packet_sample_cube_target(unit,sg_f32x4_load(directions[0]+first),sg_f32x4_load(directions[1]+first),
            sg_f32x4_load(directions[2]+first),((unsigned)live >> first)&15,sampled);
        for (int k = 0; k < 4; k++) sg_f32x4_store(values[k]+first,sampled[k]);
    }
    for (int k = 0; k < 4; k++) out[k] = _mm512_loadu_ps(values[k]);
}

static SCENE_WIDE void scene_shade_wide(struct sg_scene_visibility *f, scene_material *m,
    const uint32_t pixels[16], __mmask16 live) {
    softgl_ctx *c = f->context;
    const scene_triangle *tri[16]; float bary[3][16]; int shared_uv = 1;
    for (int lane = 0; lane < 16; lane++) {
        const scene_triangle *t = tri[lane] = scene_triangle_at(f,f->winner[pixels[lane]]);
        shared_uv &= t->primitive != NULL;
        int x = (int)(pixels[lane] % 640u), y = (int)(pixels[lane] / 640u);
        bary[0][lane] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
        bary[1][lane] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;
        bary[2][lane] = 1.f-bary[0][lane]-bary[1][lane];
        for (int v = 0; v < 3; v++) bary[v][lane] *= t->inverse_w[v];
    }
#ifdef SOFTGL_SCENE_WIDE_AUDIT
    atomic_fetch_add_explicit(&scene_wide_audit[0],1,memory_order_relaxed);
    atomic_fetch_add_explicit(&scene_wide_audit[shared_uv ? 1 : 2],1,memory_order_relaxed);
    atomic_fetch_add_explicit(&scene_wide_audit[2+__builtin_popcount((unsigned)live)],1,memory_order_relaxed);
#endif
    __m512 w0 = _mm512_loadu_ps(bary[0]), w1 = _mm512_loadu_ps(bary[1]), w2 = _mm512_loadu_ps(bary[2]);
    __m512 inverse = _mm512_div_ps(_mm512_set1_ps(1.f),_mm512_add_ps(_mm512_add_ps(w0,w1),w2));
    __m512 primary[4], encoded_half[3], tex[4][4], shared_x, shared_y; int have_uv = 0;
    for (int k = 0; k < 4; k++) primary[k] = scene_wide_lerp(tri,-1,k,w0,w1,w2,inverse);
    for (int k = 0; k < 3; k++) encoded_half[k] = scene_wide_lerp(tri,1,k,w0,w1,w2,inverse);
    for (int unit = 0; unit < 4; unit++) {
        if (unit == 1) continue;
        const sg_tex_unit_tri *u = &m->texture.unit[unit];
        if (u->constant_color_valid) {
            for (int k = 0; k < 4; k++) tex[unit][k] = _mm512_set1_ps(u->constant_color[k]);
            continue;
        }
        __m512 x, y;
        if (unit == 2 && have_uv) { x = shared_x; y = shared_y; }
        else {
            x = scene_wide_lerp(tri,unit,0,w0,w1,w2,inverse);
            y = scene_wide_lerp(tri,unit,1,w0,w1,w2,inverse);
            if (unit == 0 && shared_uv) { shared_x = x; shared_y = y; have_uv = 1; }
        }
        if (u->active_slot == SG_TEX_TARGET_CUBE) {
            __m512 z = scene_wide_lerp(tri,unit,2,w0,w1,w2,inverse);
            scene_wide_sample_cube(u,x,y,z,live,tex[unit]);
        } else scene_wide_sample_2d(u,x,y,live,tex[unit]);
    }
    __m512 dot[3], spec[3], half = _mm512_set1_ps(.5f);
    for (int k = 0; k < 3; k++) {
        __m512 normal = _mm512_sub_ps(tex[0][k],half);
        dot[k] = _mm512_mul_ps(normal,_mm512_sub_ps(primary[k],half));
        spec[k] = _mm512_mul_ps(normal,_mm512_sub_ps(encoded_half[k],half));
    }
    __m512 diffuse = scene_wide_clamp(_mm512_mul_ps(_mm512_set1_ps(4.f),_mm512_add_ps(_mm512_add_ps(dot[0],dot[1]),dot[2])));
    __m512 highlight = scene_wide_clamp(_mm512_mul_ps(_mm512_set1_ps(4.f),_mm512_add_ps(_mm512_add_ps(spec[0],spec[1]),spec[2])));
    highlight = _mm512_mul_ps(highlight,highlight);
    if (m->texture.combine_kind == 5) highlight = _mm512_mul_ps(highlight,highlight);
    __m512 color[4];
    for (int k = 0; k < 3; k++) {
        __m512 base = scene_wide_clamp(_mm512_add_ps(diffuse,_mm512_set1_ps(m->ambient[k])));
        base = scene_wide_clamp(_mm512_mul_ps(base,tex[2][k]));
        base = scene_wide_clamp(_mm512_add_ps(base,tex[3][k]));
        __m512 tinted = scene_wide_clamp(_mm512_mul_ps(highlight,_mm512_set1_ps(m->tint[k])));
        color[k] = scene_wide_clamp(_mm512_add_ps(base,_mm512_mul_ps(tinted,_mm512_set1_ps(sg_clampf(m->tint[3],0.f,1.f)))));
    }
    color[3] = scene_wide_clamp(_mm512_mul_ps(primary[3],tex[2][3]));
    __m512i packed = _mm512_setzero_si512();
    for (int k = 0; k < 4; k++) {
        __m512i bytes = _mm512_cvttps_epi32(_mm512_add_ps(_mm512_mul_ps(color[k],_mm512_set1_ps(255.f)),_mm512_set1_ps(.5f)));
        bytes = _mm512_min_epi32(_mm512_max_epi32(bytes,_mm512_setzero_si512()),_mm512_set1_epi32(255));
        packed = _mm512_or_si512(packed,_mm512_sllv_epi32(bytes,_mm512_set1_epi32(k*8)));
    }
    _mm512_mask_i32scatter_epi32(c->fb.color,live,_mm512_loadu_si512(pixels),packed,4);
}
#undef SCENE_WIDE_INLINE
#undef SCENE_WIDE
#endif

int softgl_scene_native_wide(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    int available = 0;
#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
    available = __builtin_cpu_supports("avx512f") && __builtin_cpu_supports("avx512dq") &&
        __builtin_cpu_supports("avx512bw") && __builtin_cpu_supports("avx512vl");
#endif
    f->native_wide = enabled && available;
    return f->native_wide;
}
