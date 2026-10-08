/* Capture owns a whole pixel within its bin. Partial capture RMW is safe;
 * resolve partial colors MUST instead store only each job's owned samples. */
static void scene_msaa_store(struct sg_scene_visibility *f, size_t base,
    unsigned coverage, const float *depth, uint32_t record,
    uint16_t material, uint8_t point) {
    softgl_ctx *c = f->context;
    unsigned n = (unsigned)c->fb.samples;
    __m128i ids = _mm_set1_epi32((int)record);
    __m128i mats = _mm_set1_epi16((short)material);
    uint32_t points = UINT32_C(0x01010101)*point;
    if (coverage == (1u << n)-1u) {
        if (n == 4) {
            _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));
            _mm_storeu_si128((__m128i *)(f->winner+base),ids);
            _mm_storel_epi64((__m128i *)(f->pixel_material+base),mats);
            memcpy(f->sample_point+base,&points,4);
        } else {
            _mm_storel_epi64((__m128i *)(c->fb.sample_depth+base),_mm_loadl_epi64((const __m128i *)depth));
            _mm_storel_epi64((__m128i *)(f->winner+base),ids);
            uint32_t mat = (uint32_t)material*UINT32_C(0x00010001);
            memcpy(f->pixel_material+base,&mat,4);
            memcpy(f->sample_point+base,&points,2);
        }
        return;
    }
    __m128i mask = _mm_set_epi32(-(int)!!(coverage&8),-(int)!!(coverage&4),
                                -(int)!!(coverage&2),-(int)!!(coverage&1));
    __m128i short_mask = _mm_packs_epi32(mask,_mm_setzero_si128());
    uint32_t byte_mask = (uint32_t)_mm_cvtsi128_si32(_mm_packs_epi16(short_mask,_mm_setzero_si128()));
    if (n == 4) {
        _mm_storeu_ps(c->fb.sample_depth+base,_mm_blendv_ps(_mm_loadu_ps(c->fb.sample_depth+base),_mm_loadu_ps(depth),_mm_castsi128_ps(mask)));
        _mm_storeu_si128((__m128i *)(f->winner+base),_mm_blendv_epi8(_mm_loadu_si128((const __m128i *)(f->winner+base)),ids,mask));
        _mm_storel_epi64((__m128i *)(f->pixel_material+base),_mm_blendv_epi8(_mm_loadl_epi64((const __m128i *)(f->pixel_material+base)),mats,short_mask));
        uint32_t old; memcpy(&old,f->sample_point+base,4);
        points = (points&byte_mask)|(old&~byte_mask);
        memcpy(f->sample_point+base,&points,4);
    } else {
        _mm_storel_epi64((__m128i *)(c->fb.sample_depth+base),_mm_blendv_epi8(_mm_loadl_epi64((const __m128i *)(c->fb.sample_depth+base)),_mm_loadl_epi64((const __m128i *)depth),mask));
        _mm_storel_epi64((__m128i *)(f->winner+base),_mm_blendv_epi8(_mm_loadl_epi64((const __m128i *)(f->winner+base)),ids,mask));
        uint32_t old_mat, mat = (uint32_t)material*UINT32_C(0x00010001);
        uint32_t mat_mask = (uint32_t)_mm_cvtsi128_si32(short_mask);
        memcpy(&old_mat,f->pixel_material+base,4);
        mat = (mat&mat_mask)|(old_mat&~mat_mask);
        memcpy(f->pixel_material+base,&mat,4);
        uint16_t old; memcpy(&old,f->sample_point+base,2);
        points = (points&byte_mask)|((uint32_t)old&~byte_mask);
        memcpy(f->sample_point+base,&points,2);
    }
}
