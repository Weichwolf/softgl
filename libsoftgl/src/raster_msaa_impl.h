/* Included twice with compile-time sample count and function name. */
#ifdef __EMSCRIPTEN__
/* LLVM noinline alone is lost before Binaryen. Retain these two roots so
 * the whole-program optimizer keeps sample-count loops outside the common
 * rasterizer. No additional GL API is declared. */
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
void SG_MSAA_FUNCTION(softgl_ctx *c,
                         const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                         const sg_tex_tri_ctx *tctx,
                         int ix0, int iy0, int ix1, int iy1,
                         int64_t area, int bias0, int bias1, int bias2,
                         float z_offset) {
#if SG_MSAA_SAMPLES == 4
    if (sg_hz_occluded(c, ix0, iy0, ix1, iy1,
        v0->ndc.z, v1->ndc.z, v2->ndc.z, z_offset)) return;
#endif
    int32_t vx[3] = {sg_fp_screen_from_float(v0->ndc.x),
                     sg_fp_screen_from_float(v1->ndc.x),
                     sg_fp_screen_from_float(v2->ndc.x)};
    int32_t vy[3] = {sg_fp_screen_from_float(v0->ndc.y),
                     sg_fp_screen_from_float(v1->ndc.y),
                     sg_fp_screen_from_float(v2->ndc.y)};
    int64_t dx[3], dy[3], row[3], offsets[4][3], min_offset[3], max_offset[3];
    for (int e = 0; e < 3; e++) {
        int a = (e + 1) % 3, b = (e + 2) % 3;
        dx[e] = -(int64_t)(vy[b] - vy[a]);
        dy[e] = (int64_t)(vx[b] - vx[a]);
        row[e] = dy[e] * ((int64_t)iy0 * 256 - vy[a])
               + dx[e] * ((int64_t)ix0 * 256 - vx[a]);
        for (int s = 0; s < SG_MSAA_SAMPLES; s++) {
            int sx = 128, sy = 128;
            if (c->multisample) sg_sample_position(SG_MSAA_SAMPLES, s, &sx, &sy);
            offsets[s][e] = dx[e] * sx + dy[e] * sy;
        }
        min_offset[e] = max_offset[e] = offsets[0][e];
        for (int s = 1; s < SG_MSAA_SAMPLES; s++) {
            if (offsets[s][e] < min_offset[e]) min_offset[e] = offsets[s][e];
            if (offsets[s][e] > max_offset[e]) max_offset[e] = offsets[s][e];
        }
    }
    int bias[3] = {bias0, bias1, bias2};
    float inv_area = 1.f / (float)area;
    unsigned full = (1u << SG_MSAA_SAMPLES) - 1u;
    /* A covered sample has raw barycentric edges in [0, area]. Other
     * samples of that pixel differ by at most 256*(abs(dx)+abs(dy)).
     * Only this proven range uses packed signed-32 conversion, after coverage
     * is verified. Uncovered pixels can have arbitrarily large edge values. */
    int small_edges = 1;
    for (int e = 0; e < 2; e++) {
        int64_t span = 256 * ((dx[e] < 0 ? -dx[e] : dx[e]) +
                             (dy[e] < 0 ? -dy[e] : dy[e]));
        if (span > INT32_MAX || area > INT32_MAX - span) small_edges = 0;
    }
    sg_i32x4 offset0 = sg_i32x4_splat(0), offset1 = sg_i32x4_splat(0);
    if (small_edges && SG_MSAA_SAMPLES == 4) {
        offset0 = sg_i32x4_set((int32_t)offsets[0][0], (int32_t)offsets[1][0],
                              (int32_t)offsets[2][0], (int32_t)offsets[3][0]);
        offset1 = sg_i32x4_set((int32_t)offsets[0][1], (int32_t)offsets[1][1],
                              (int32_t)offsets[2][1], (int32_t)offsets[3][1]);
    }
    int packet_shader = sg_packet_supported(c, tctx);
    int opaque_store = SG_MSAA_OPAQUE_CAN(c);
    sg_pixel_packet packet;
    packet.count = 0;
    /* Approximate intersections propose bounds only. Exact integer edge
     * predicates prove that excluded pixels cannot cover any sample. */
    int use_spans = ix1-ix0 >= 8 && (int64_t)(ix1-ix0)*(iy1-iy0) >= 64;
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float inverse_step = 1.f/(float)(dx[e]*256);
        intersection_x[e] = -(float)(row[e]+max_offset[e]+bias[e])*inverse_step;
        intersection_step[e] = (float)(dy[e]*256)*inverse_step;
    }
    for (int y = iy0; y < iy1; y++) {
        int first_x = ix0, end_x = ix1;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int64_t step = dx[e]*256;
            int64_t at_first = row[e]+max_offset[e]+bias[e];
            if (step > 0) {
                if (at_first + step*(ix1-ix0-1) < 0) { end_x = first_x; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? ix0 : intersection >= (float)(ix1-ix0) ? ix1 : ix0+(int)intersection;
                if (candidate > first_x && at_first + step*(candidate-ix0-1) < 0) first_x = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end_x = first_x; break; }
                if (at_first + step*(ix1-ix0-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? ix0 : intersection >= (float)(ix1-ix0-2) ? ix1 : ix0+(int)intersection+2;
                if (candidate < end_x && at_first + step*(candidate-ix0) < 0) end_x = candidate;
            } else if (at_first < 0) { end_x = first_x; break; }
        }
        int64_t edge[3] = {row[0]+dx[0]*256*(first_x-ix0),
                          row[1]+dx[1]*256*(first_x-ix0),
                          row[2]+dx[2]*256*(first_x-ix0)};
        for (int x = first_x; x < end_x; x++) {
            unsigned coverage = 0;
            float depths[4];
            /* Edge extrema reject an empty pixel or accept all samples with
             * three comparisons. Only boundary pixels need individual tests. */
            if (edge[0] + max_offset[0] + bias[0] >= 0 &&
                edge[1] + max_offset[1] + bias[1] >= 0 &&
                edge[2] + max_offset[2] + bias[2] >= 0) {
                if (edge[0] + min_offset[0] + bias[0] >= 0 &&
                    edge[1] + min_offset[1] + bias[1] >= 0 &&
                    edge[2] + min_offset[2] + bias[2] >= 0) {
                    coverage = full;
                } else {
                    for (int s = 0; s < SG_MSAA_SAMPLES; s++) {
                        if (edge[0] + offsets[s][0] + bias[0] >= 0 &&
                            edge[1] + offsets[s][1] + bias[1] >= 0 &&
                            edge[2] + offsets[s][2] + bias[2] >= 0)
                            coverage |= 1u << s;
                    }
                }
            }
            if (coverage && SG_MSAA_SAMPLES == 4) {
                /* SIMD lanes are samples of one pixel. Keep scalar expression
                 * grouping so sample depth and the selected shading point match. */
                sg_f32x4 b0, b1;
                if (small_edges) {
                    b0 = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_add(
                        sg_i32x4_splat((int32_t)edge[0]), offset0)), sg_f32x4_splat(inv_area));
                    b1 = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_add(
                        sg_i32x4_splat((int32_t)edge[1]), offset1)), sg_f32x4_splat(inv_area));
                } else {
                    b0 = sg_f32x4_mul(sg_f32x4_set(
                        (float)(edge[0] + offsets[0][0]), (float)(edge[0] + offsets[1][0]),
                        (float)(edge[0] + offsets[2][0]), (float)(edge[0] + offsets[3][0])),
                        sg_f32x4_splat(inv_area));
                    b1 = sg_f32x4_mul(sg_f32x4_set(
                        (float)(edge[1] + offsets[0][1]), (float)(edge[1] + offsets[1][1]),
                        (float)(edge[1] + offsets[2][1]), (float)(edge[1] + offsets[3][1])),
                        sg_f32x4_splat(inv_area));
                }
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f), b0), b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(b0, sg_f32x4_splat(v0->ndc.z)),
                    sg_f32x4_mul(b1, sg_f32x4_splat(v1->ndc.z))),
                    sg_f32x4_mul(b2, sg_f32x4_splat(v2->ndc.z))),
                    sg_f32x4_splat(z_offset));
                z = sg_f32x4_select(sg_f32x4_lt(z, sg_f32x4_splat(0.f)), sg_f32x4_splat(0.f), z);
                z = sg_f32x4_select(sg_f32x4_gt(z, sg_f32x4_splat(1.f)), sg_f32x4_splat(1.f), z);
                sg_f32x4_store(depths, z);
                if (c->depth_test && !c->stencil_test) {
                    size_t idx = ((size_t)y * c->fb.w + x) * 4;
                    coverage &= sg_mask4_live(sg_depth_test_simd(c->depth_func, z,
                        _mm_loadu_ps(&c->fb.sample_depth[idx])));
                }
            } else if (coverage) {
                for (int s = 0; s < SG_MSAA_SAMPLES; s++) {
                    if (!(coverage & (1u << s))) continue;
                    float b0 = (float)(edge[0] + offsets[s][0]) * inv_area;
                    float b1 = (float)(edge[1] + offsets[s][1]) * inv_area;
                    float b2 = 1.f - b0 - b1;
                    float z = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;
                    depths[s] = z < 0.f ? 0.f : z > 1.f ? 1.f : z;
                    if (c->depth_test && !c->stencil_test &&
                        !sg_sample_depth_pass(c->depth_func, depths[s],
                            c->fb.sample_depth[((size_t)y * c->fb.w + x) * SG_MSAA_SAMPLES + s]))
                        coverage &= ~(1u << s);
                }
            }
            if (coverage) {
                int first = __builtin_ctz(coverage);
                int64_t e0 = edge[0] + (coverage == full ? (dx[0] + dy[0]) * 128 : offsets[first][0]);
                int64_t e1 = edge[1] + (coverage == full ? (dx[1] + dy[1]) * 128 : offsets[first][1]);
                if (packet_shader) {
                    int l = packet.count++;
                    packet.x[l] = x; packet.y[l] = y;
                    packet.coverage[l] = coverage;
                    packet.edge0[l] = e0; packet.edge1[l] = e1;
                    memcpy(packet.depths[l], depths, SG_MSAA_SAMPLES * sizeof(float));
                    if (packet.count == 4) {
                        SG_MSAA_PACKET_WRITE(c, tctx, v0, v1, v2, &packet, inv_area, opaque_store);
                        packet.count = 0;
                    }
                } else {
                    float color[4];
                    if (sg_shade_pixel(c, tctx, v0, v1, v2, x, y, e0, e1,
                                      inv_area, v0->ndc.w, v1->ndc.w, v2->ndc.w, z_offset, color)) {
                        if (opaque_store) SG_MSAA_OPAQUE_STORE(c, x, y, coverage, depths, color);
                        else sg_write_multisample(c, x, y, coverage, depths, color);
                    }
                }
            }
            for (int e = 0; e < 3; e++) edge[e] += dx[e] * 256;
        }
        for (int e = 0; e < 3; e++) row[e] += dy[e] * 256;
        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];
    }
    for (int l = 0; l < packet.count; l++) {
        float color[4];
        if (sg_shade_pixel(c, tctx, v0, v1, v2, packet.x[l], packet.y[l],
                          packet.edge0[l], packet.edge1[l], inv_area,
                          v0->ndc.w, v1->ndc.w, v2->ndc.w, z_offset, color)) {
            if (opaque_store)
                SG_MSAA_OPAQUE_STORE(c, packet.x[l], packet.y[l], packet.coverage[l], packet.depths[l], color);
            else sg_write_multisample(c, packet.x[l], packet.y[l], packet.coverage[l],
                                     packet.depths[l], color);
        }
    }
}

