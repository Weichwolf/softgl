    if (f->context->fb.samples && f->context->multisample &&
        minx >= -262144 && maxx <= 262144 && miny >= -262144 && maxy <= 262144 &&
        (maxx-minx < 256 || maxy-miny < 256)) {
        unsigned n = (unsigned)f->context->fb.samples;
        unsigned full = (1u << n)-1u;
        SCENE_BETWEEN_AUDIT(0,1);
        int phase[4][2];
        for (unsigned s = 0; s < 4; s++) sg_sample_position((int)n,(int)(s < n ? s : 0),&phase[s][0],&phase[s][1]);
        sg_i32x4 phase_x = sg_i32x4_set(phase[0][0],phase[1][0],phase[2][0],phase[3][0]);
        sg_i32x4 phase_y = sg_i32x4_set(phase[0][1],phase[1][1],phase[2][1],phase[3][1]);
        sg_i32x4 next_x = _mm_add_epi32(_mm_slli_epi32(_mm_srai_epi32(_mm_add_epi32(
            _mm_sub_epi32(sg_i32x4_splat(minx),phase_x),sg_i32x4_splat(255)),8),8),phase_x);
        sg_i32x4 next_y = _mm_add_epi32(_mm_slli_epi32(_mm_srai_epi32(_mm_add_epi32(
            _mm_sub_epi32(sg_i32x4_splat(miny),phase_y),sg_i32x4_splat(255)),8),8),phase_y);
        unsigned possible = full & sg_i32x4_mask_nonneg(_mm_sub_epi32(sg_i32x4_splat(maxx),next_x)) &
            sg_i32x4_mask_nonneg(_mm_sub_epi32(sg_i32x4_splat(maxy),next_y));
        if (!possible) { SCENE_BETWEEN_AUDIT(1,1); return; }
        if ((minx >> 8) == (maxx >> 8) && (miny >> 8) == (maxy >> 8)) {
            SCENE_BETWEEN_AUDIT(2,1);
            /* Coordinate differences are <=255; even an inactive phase's
             * next sample differs by <=510. Two products remain below 2^19. */
            for (int i = 0; i < 3; i++) {
                int j = (i+1)%3;
                int32_t dx = x[j]-x[i], dy = y[j]-y[i];
                int bias = (dy < 0 || (dy == 0 && dx < 0)) ? 0 : -1;
                sg_i32x4 edge = _mm_sub_epi32(_mm_mullo_epi32(sg_i32x4_splat(dx),
                    _mm_sub_epi32(next_y,sg_i32x4_splat(y[i]))),
                    _mm_mullo_epi32(sg_i32x4_splat(dy),_mm_sub_epi32(next_x,sg_i32x4_splat(x[i]))));
                possible &= sg_i32x4_mask_nonneg(_mm_add_epi32(edge,sg_i32x4_splat(bias)));
            }
            if (!possible) { SCENE_BETWEEN_AUDIT(3,1); return; }
        }
    }
