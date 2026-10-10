                /* Query only this rectangle's four actual samples per pixel.
                 * Recording keeps the original inexpensive written-mask update. */
                sg_f32x4 maxima = sg_f32x4_splat(-INFINITY);
                sg_i32x4 valid = sg_i32x4_splat(-1);
                for (int row_index = bottom; row_index < top; row_index++) {
                    const float *depth = c->fb.sample_depth +
                        ((size_t)(y*4+row_index)*c->fb.w+x*4+left)*4;
                    for (int col = left; col < right; col++, depth += 4) {
                        sg_f32x4 z = sg_f32x4_load(depth);
                        valid = sg_i32x4_and(valid,sg_f32x4_eq(z,z));
                        maxima = _mm_max_ps(maxima,z);
                    }
                }
                maxima = _mm_max_ps(maxima,_mm_movehl_ps(maxima,maxima));
                maxima = _mm_max_ss(maxima,_mm_shuffle_ps(maxima,maxima,_MM_SHUFFLE(1,1,1,1)));
                maximum = sg_mask4_live(valid) == 15 ? _mm_cvtss_f32(maxima) : INFINITY;
