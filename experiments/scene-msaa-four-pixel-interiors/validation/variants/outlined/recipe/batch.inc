            if (batch_enabled && x+3 < end_x &&
                _mm_cvtsi128_si32(edge[0])+batch_min_delta[0]+batch_tail[0] >= 0 &&
                _mm_cvtsi128_si32(edge[1])+batch_min_delta[1]+batch_tail[1] >= 0 &&
                _mm_cvtsi128_si32(edge[2])+batch_min_delta[2]+batch_tail[2] >= 0) {
                /* Every original sample of all four pixels is inside. Flush
                 * pending distinct pixels before collecting the new block. */
                if (packet.count) {
                    scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                    packet.count = 0;
                }
                sg_i32x4 coarse0 = sg_i32x4_add(edge[0],corrections[0]);
                sg_i32x4 coarse1 = sg_i32x4_add(edge[1],corrections[1]);
                uint32_t raw0_bits = ((uint32_t)_mm_cvtsi128_si32(coarse0)<<8) |
                    (uint32_t)remainder[0][0];
                uint32_t raw1_bits = ((uint32_t)_mm_cvtsi128_si32(coarse1)<<8) |
                    (uint32_t)remainder[1][0];
                sg_f32x4 raw0 = _mm_cvtepi32_ps(sg_i32x4_add(
                    sg_i32x4_splat((int32_t)raw0_bits),batch_pixel_step[0]));
                sg_f32x4 raw1 = _mm_cvtepi32_ps(sg_i32x4_add(
                    sg_i32x4_splat((int32_t)raw1_bits),batch_pixel_step[1]));
                sg_f32x4 center = sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(raw0,batch_z0),sg_f32x4_mul(raw1,batch_z1)),z2);
                sg_f32x4 sample_z[4];
                for (int s = 0; s < 4; s++) {
                    sample_z[s] = sg_f32x4_add(center,batch_z_offset[s]);
                    sample_z[s] = sg_f32x4_select(sg_f32x4_lt(sample_z[s],sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),sample_z[s]);
                    sample_z[s] = sg_f32x4_select(sg_f32x4_gt(sample_z[s],sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),sample_z[s]);
                }
                size_t base = ((size_t)y*c->fb.w+x)*4;
                sg_f32x4 old_z[4] = {_mm_loadu_ps(c->fb.sample_depth+base),
                    _mm_loadu_ps(c->fb.sample_depth+base+4),
                    _mm_loadu_ps(c->fb.sample_depth+base+8),
                    _mm_loadu_ps(c->fb.sample_depth+base+12)};
                _MM_TRANSPOSE4_PS(old_z[0],old_z[1],old_z[2],old_z[3]);
                unsigned passed[4];
                for (int s = 0; s < 4; s++)
                    passed[s] = sg_mask4_live(sg_f32x4_lt(sample_z[s],old_z[s]));
                SCENE_SMALL_AUDIT(1,4);
                if (passed[0] | passed[1] | passed[2] | passed[3]) {
                    _MM_TRANSPOSE4_PS(sample_z[0],sample_z[1],sample_z[2],sample_z[3]);
                    SG_ALIGN16 int values0[4], values1[4];
                    _mm_store_si128((sg_i32x4 *)values0,coarse0);
                    _mm_store_si128((sg_i32x4 *)values1,coarse1);
                    for (int p = 0; p < 4; p++) {
                        unsigned coverage = ((passed[0]>>p)&1u) |
                            (((passed[1]>>p)&1u)<<1) | (((passed[2]>>p)&1u)<<2) |
                            (((passed[3]>>p)&1u)<<3);
                        if (!coverage) continue;
                        int l = packet.count++, first = __builtin_ctz(coverage);
                        SCENE_SMALL_AUDIT(2,__builtin_popcount(coverage));
                        packet.x[l] = x+p; packet.y[l] = y; packet.coverage[l] = coverage;
                        if (coverage == 15) {
                            packet.edge0[l] = ((int64_t)values0[0]+dx[0]*p+center_delta[0])*256+center_remainder[0];
                            packet.edge1[l] = ((int64_t)values1[0]+dx[1]*p+center_delta[1])*256+center_remainder[1];
                        } else {
                            packet.edge0[l] = ((int64_t)values0[first]+dx[0]*p)*256+remainder[0][first];
                            packet.edge1[l] = ((int64_t)values1[first]+dx[1]*p)*256+remainder[1][first];
                        }
                        sg_f32x4_store(packet.depths[l],sample_z[p]);
                    }
                    scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                    packet.count = 0;
                }
                for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(edge[e],sg_i32x4_splat(dx[e]*4));
                x += 3;
                continue;
            }
