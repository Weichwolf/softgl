        /* Check all four components without accepting infinities or NaNs. */
        __m128 finite = _mm_castsi128_ps(_mm_set1_epi32(-1));
        const __m128 sign = _mm_set1_ps(-0.f), zero = _mm_setzero_ps();
        for (int k = 0; k < 4; k++)
            finite = _mm_and_ps(finite,_mm_cmple_ps(_mm_andnot_ps(sign,clip[k]),_mm_set1_ps(FLT_MAX)));
        if (_mm_movemask_ps(finite) != 15) { scene_geometry_fail(f); return; }
        __m128 equal_zero = _mm_cmpeq_ps(clip[3],zero);
        __m128 denominator = _mm_or_ps(_mm_and_ps(equal_zero,_mm_set1_ps(1e-20f)),
                                      _mm_andnot_ps(equal_zero,clip[3]));
        __m128 inverse = _mm_div_ps(_mm_set1_ps(1.f),denominator);
        __m128 half = _mm_set1_ps(.5f), viewport[4];
        viewport[0] = _mm_mul_ps(_mm_add_ps(_mm_mul_ps(_mm_mul_ps(clip[0],inverse),half),half),_mm_set1_ps(640.f));
        viewport[1] = _mm_mul_ps(_mm_add_ps(_mm_mul_ps(_mm_mul_ps(clip[1],inverse),half),half),_mm_set1_ps(360.f));
        viewport[2] = _mm_add_ps(_mm_mul_ps(_mm_mul_ps(clip[2],inverse),half),half);
        viewport[3] = inverse;
        __m128 distances[6] = {
            _mm_add_ps(clip[0],clip[3]), _mm_add_ps(_mm_xor_ps(clip[0],sign),clip[3]),
            _mm_add_ps(clip[1],clip[3]), _mm_add_ps(_mm_xor_ps(clip[1],sign),clip[3]),
            _mm_add_ps(clip[2],clip[3]), _mm_add_ps(_mm_xor_ps(clip[2],sign),clip[3])};
        __m128i outcodes = _mm_setzero_si128();
        for (int k = 0; k < 6; k++)
            outcodes = _mm_or_si128(outcodes,_mm_and_si128(_mm_castps_si128(_mm_cmplt_ps(distances[k],zero)),_mm_set1_epi32(1 << k)));
        int codes[4]; _mm_storeu_si128((__m128i *)codes,outcodes);
        _MM_TRANSPOSE4_PS(clip[0],clip[1],clip[2],clip[3]);
        _MM_TRANSPOSE4_PS(viewport[0],viewport[1],viewport[2],viewport[3]);
        for (int l = 0; l < 4 && i+(unsigned)l < end; l++) {
            uint32_t at = m->offset+i+(unsigned)l;
            _mm_store_ps(&g->positions[at].clip.x,clip[l]);
            _mm_store_ps(&g->positions[at].ndc.x,viewport[l]);
            g->outcodes[at] = (uint8_t)codes[l];
            atomic_store_explicit(&g->ready[at],0,memory_order_relaxed);
        }
