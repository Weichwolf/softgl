/* Included with a compile-time off-depth capture mode. */
int SG_RASTER_TRI_FUNCTION(softgl_ctx *c,
                             const sg_vert *v0,
                             const sg_vert *v1,
                             const sg_vert *v2,
                             int tile_ix0, int tile_ix1,
                             const sg_tex_tri_ctx *tctx) {
#if !SG_RASTER_OFF_CAPTURE
    if (!c->fb.samples && sg_raster_bin && sg_raster_bin->depth_capture)
        return sg_raster_triangle_depth_capture(c, v0, v1, v2, tile_ix0, tile_ix1, tctx);
#endif
    /* 16.8 fixed-point screen coords. */
    sg_screen_t x0 = sg_fp_screen_from_float(v0->ndc.x);
    sg_screen_t y0 = sg_fp_screen_from_float(v0->ndc.y);
    sg_screen_t x1 = sg_fp_screen_from_float(v1->ndc.x);
    sg_screen_t y1 = sg_fp_screen_from_float(v1->ndc.y);
    sg_screen_t x2 = sg_fp_screen_from_float(v2->ndc.x);
    sg_screen_t y2 = sg_fp_screen_from_float(v2->ndc.y);

    int64_t area2 = (int64_t)(x1 - x0) * (int64_t)(y2 - y0)
                  - (int64_t)(y1 - y0) * (int64_t)(x2 - x0);
    if (area2 <= 0) return c->scissor_enabled ? -1 : 1;   /* degenerate or back-face */

    int bias0 = sg_is_top_left(x1, y1, x2, y2) ? 0 : -1;
    int bias1 = sg_is_top_left(x2, y2, x0, y0) ? 0 : -1;
    int bias2 = sg_is_top_left(x0, y0, x1, y1) ? 0 : -1;

    sg_screen_t min_x_fp = x0; if (x1 < min_x_fp) min_x_fp = x1; if (x2 < min_x_fp) min_x_fp = x2;
    sg_screen_t max_x_fp = x0; if (x1 > max_x_fp) max_x_fp = x1; if (x2 > max_x_fp) max_x_fp = x2;
    sg_screen_t min_y_fp = y0; if (y1 < min_y_fp) min_y_fp = y1; if (y2 < min_y_fp) min_y_fp = y2;
    sg_screen_t max_y_fp = y0; if (y1 > max_y_fp) max_y_fp = y1; if (y2 > max_y_fp) max_y_fp = y2;

    int ix0 = (int)(min_x_fp >> SG_FP_SUBPIXEL_BITS);
    int iy0 = (int)(min_y_fp >> SG_FP_SUBPIXEL_BITS);
    int ix1 = (int)(max_x_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    int iy1 = (int)(max_y_fp >> SG_FP_SUBPIXEL_BITS) + 1;
    if (min_x_fp < 0) ix0 = (int)((min_x_fp - (SG_FP_SUBPIXEL_ONE - 1)) >> SG_FP_SUBPIXEL_BITS);
    if (min_y_fp < 0) iy0 = (int)((min_y_fp - (SG_FP_SUBPIXEL_ONE - 1)) >> SG_FP_SUBPIXEL_BITS);

    if (ix0 < tile_ix0) ix0 = tile_ix0;
    if (iy0 < 0) iy0 = 0;
    if (ix1 > tile_ix1) ix1 = tile_ix1;
    if (iy1 > c->fb.h) iy1 = c->fb.h;
    if (c->scissor_enabled) {
        int sx0 = c->scissor[0], sy0 = c->scissor[1];
        int sx1 = sx0 + c->scissor[2], sy1 = sy0 + c->scissor[3];
        if (ix0 < sx0) ix0 = sx0;
        if (iy0 < sy0) iy0 = sy0;
        if (ix1 > sx1) ix1 = sx1;
        if (iy1 > sy1) iy1 = sy1;
    }
    if (ix0 >= ix1 || iy0 >= iy1) return c->scissor_enabled ? -1 : 1;

    /* Start sample at pixel center (ix0+0.5, iy0+0.5) in 16.8. */
    const sg_screen_t half = SG_FP_SUBPIXEL_ONE >> 1;
    sg_screen_t px_start = (sg_screen_t)ix0 * SG_FP_SUBPIXEL_ONE + half;
    sg_screen_t py_start = (sg_screen_t)iy0 * SG_FP_SUBPIXEL_ONE + half;

    int64_t E0_row0 = (int64_t)(x2 - x1) * (int64_t)(py_start - y1)
                    - (int64_t)(y2 - y1) * (int64_t)(px_start - x1);
    int64_t E1_row0 = (int64_t)(x0 - x2) * (int64_t)(py_start - y2)
                    - (int64_t)(y0 - y2) * (int64_t)(px_start - x2);
    int64_t E2_row0 = (int64_t)(x1 - x0) * (int64_t)(py_start - y0)
                    - (int64_t)(y1 - y0) * (int64_t)(px_start - x0);

    /* Step deltas pre-scaled by SUBPIXEL_ONE. */
    int64_t dE0_dx = -(int64_t)(y2 - y1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE0_dy =  (int64_t)(x2 - x1) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dx = -(int64_t)(y0 - y2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE1_dy =  (int64_t)(x0 - x2) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dx = -(int64_t)(y1 - y0) * (int64_t)SG_FP_SUBPIXEL_ONE;
    int64_t dE2_dy =  (int64_t)(x1 - x0) * (int64_t)SG_FP_SUBPIXEL_ONE;

    float inv_area_f = 1.0f / (float)area2;

    float z_offset = 0.f;
    if (c->polygon_offset_fill && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        float fx0 = v0->ndc.x, fy0 = v0->ndc.y;
        float fx1 = v1->ndc.x, fy1 = v1->ndc.y;
        float fx2 = v2->ndc.x, fy2 = v2->ndc.y;
        float area_f = (fx1 - fx0) * (fy2 - fy0) - (fy1 - fy0) * (fx2 - fx0);
        if (area_f != 0.f) {
            float z0v = v0->ndc.z, z1v = v1->ndc.z, z2v = v2->ndc.z;
            float dzdx = ((z1v - z0v) * (fy2 - fy0) - (z2v - z0v) * (fy1 - fy0)) / area_f;
            float dzdy = ((z2v - z0v) * (fx1 - fx0) - (z1v - z0v) * (fx2 - fx0)) / area_f;
            float adx = dzdx < 0.f ? -dzdx : dzdx;
            float ady = dzdy < 0.f ? -dzdy : dzdy;
            float slope = adx > ady ? adx : ady;
            z_offset = c->polygon_offset_factor * slope
                     + c->polygon_offset_units  * 1e-6f;
        }
    }

    float invw0 = v0->ndc.w;
    float invw1 = v1->ndc.w;
    float invw2 = v2->ndc.w;

#if !SG_RASTER_OFF_CAPTURE
    if (c->fb.samples) {
        int result;
        if (c->fb.samples == 4) {
            if (sg_fragment_mask_matches(ix0, iy0, ix1, iy1))
                result = sg_raster_triangle_msaa4_replay(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
            else if (sg_fragment_mask_current.capture)
                result = sg_raster_triangle_msaa4_mask_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
            else if (sg_raster_bin && sg_raster_bin->depth_capture)
                result = sg_raster_triangle_msaa4_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
            else
                result = sg_raster_triangle_msaa4(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
        }
        else if (sg_fragment_mask_matches(ix0, iy0, ix1, iy1))
            result = sg_raster_triangle_msaa2_replay(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                area2, bias0, bias1, bias2, z_offset);
        else if (sg_fragment_mask_current.capture)
            result = sg_raster_triangle_msaa2_mask_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
        else if (sg_raster_bin && sg_raster_bin->depth_capture)
            result = sg_raster_triangle_msaa2_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
        else
            result = sg_raster_triangle_msaa2(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                                    area2, bias0, bias1, bias2, z_offset);
        return c->scissor_enabled ? -1 : result;
    }

#endif

    /* SIMD 2x2-quad path. Per-edge min/max-across-quad offsets enable
     * scalar trivial accept/reject; (E+bias) is computed per lane in
     * full i64 then saturated to i32 to avoid wrap when TL is at INT32_MAX. */
    int64_t min_off0 = 0, max_off0 = 0;
    if (dE0_dx < 0) min_off0 += dE0_dx; else max_off0 += dE0_dx;
    if (dE0_dy < 0) min_off0 += dE0_dy; else max_off0 += dE0_dy;
    int64_t min_off1 = 0, max_off1 = 0;
    if (dE1_dx < 0) min_off1 += dE1_dx; else max_off1 += dE1_dx;
    if (dE1_dy < 0) min_off1 += dE1_dy; else max_off1 += dE1_dy;
    int64_t min_off2 = 0, max_off2 = 0;
    if (dE2_dx < 0) min_off2 += dE2_dx; else max_off2 += dE2_dx;
    if (dE2_dy < 0) min_off2 += dE2_dy; else max_off2 += dE2_dy;

    int use_simd_quad = !sg_quad_needs_scalar(c, tctx);
    int use_packet = tctx->combine_kind && sg_packet_supported(c, tctx);
    int common_store = use_packet && sg_can_store_common(c, 0);

#if SG_RASTER_OFF_CAPTURE
    int coverage_seen = 0, weak_seen = 0;
    float near = v0->ndc.z < v1->ndc.z ? v0->ndc.z : v1->ndc.z;
    if (v2->ndc.z < near) near = v2->ndc.z;
    /* Off depth remains unclamped. The same covered-edge rounding bound as
     * HZ protects later scalar/quad producer changes, including LESS ties. */
    float lower = near - 2e-6f;
    if (!c->depth_test || c->stencil_test || c->polygon_offset_fill ||
        (c->depth_func != GL_LESS && c->depth_func != GL_LEQUAL)) weak_seen = 1;
    const sg_vert *vertices[] = {v0, v1, v2};
    for (int i = 0; i < 3; i++) {
        uint32_t bits;
        memcpy(&bits, &vertices[i]->ndc.z, sizeof(bits));
        if ((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000) ||
            !(vertices[i]->ndc.z >= 0.f && vertices[i]->ndc.z <= 1.f)) weak_seen = 1;
    }
#endif

    int64_t E0_row = E0_row0;
    int64_t E1_row = E1_row0;
    int64_t E2_row = E2_row0;

    for (int iy = iy0; iy < iy1; iy += 2) {
        int64_t E0 = E0_row;
        int64_t E1 = E1_row;
        int64_t E2 = E2_row;

        /* BL/BR (lanes 2/3) valid only if iy+1 < iy1. */
        unsigned row_mask = 0x3u;
        if (iy + 1 < iy1) row_mask |= 0xCu;

        for (int ix = ix0; ix < ix1; ix += 2) {
            /* TR/BR (lanes 1/3) valid only if ix+1 < ix1. */
            unsigned col_mask = 0x5u;
            if (ix + 1 < ix1) col_mask |= 0xAu;
            unsigned bounds_mask = row_mask & col_mask;

            int64_t e0_tl = E0 + bias0;
            int64_t e1_tl = E1 + bias1;
            int64_t e2_tl = E2 + bias2;

            if ((e0_tl + max_off0) < 0 ||
                (e1_tl + max_off1) < 0 ||
                (e2_tl + max_off2) < 0) {
                goto step;
            }

            unsigned cov;
            if ((e0_tl + min_off0) >= 0 &&
                (e1_tl + min_off1) >= 0 &&
                (e2_tl + min_off2) >= 0) {
                cov = bounds_mask;
            } else {
                sg_i32x4 v0v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e0_tl),
                    sg_sat_i64_to_i32(e0_tl + dE0_dx),
                    sg_sat_i64_to_i32(e0_tl + dE0_dy),
                    sg_sat_i64_to_i32(e0_tl + dE0_dx + dE0_dy));
                sg_i32x4 v1v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e1_tl),
                    sg_sat_i64_to_i32(e1_tl + dE1_dx),
                    sg_sat_i64_to_i32(e1_tl + dE1_dy),
                    sg_sat_i64_to_i32(e1_tl + dE1_dx + dE1_dy));
                sg_i32x4 v2v = sg_i32x4_set(
                    sg_sat_i64_to_i32(e2_tl),
                    sg_sat_i64_to_i32(e2_tl + dE2_dx),
                    sg_sat_i64_to_i32(e2_tl + dE2_dy),
                    sg_sat_i64_to_i32(e2_tl + dE2_dx + dE2_dy));

                unsigned m0 = sg_i32x4_mask_nonneg(v0v);
                unsigned m1 = sg_i32x4_mask_nonneg(v1v);
                unsigned m2 = sg_i32x4_mask_nonneg(v2v);

                cov = m0 & m1 & m2 & bounds_mask;
            }

            if (cov) {
#if SG_RASTER_OFF_CAPTURE
                coverage_seen = 1;
#endif
                /* Quad loads/stores touch both pixels of each row. Keep
                 * them inside this worker's stripe and framebuffer. */
                if (use_simd_quad && ix + 1 < tile_ix1) {
#if SG_RASTER_OFF_CAPTURE
                    /* This first trial reuses packet depth loads only. */
                    weak_seen = 1;
#endif
                    sg_shade_quad(c, tctx, v0, v1, v2, ix, iy, cov,
                                  E0, E1,
                                  dE0_dx, dE0_dy, dE1_dx, dE1_dy,
                                  inv_area_f, invw0, invw1, invw2, z_offset);
                } else if (use_packet) {
                    int64_t edges0[4] = {E0, E0 + dE0_dx, E0 + dE0_dy, E0 + dE0_dx + dE0_dy};
                    int64_t edges1[4] = {E1, E1 + dE1_dx, E1 + dE1_dy, E1 + dE1_dx + dE1_dy};
                    float depths[4] = {0}, colors[4][4];
                    for (int l = 0; l < 4; l++) {
                        if (!(cov & (1u << l))) continue;
                        float b0 = (float)edges0[l] * inv_area_f;
                        float b1 = (float)edges1[l] * inv_area_f;
                        float b2 = 1.f - b0 - b1;
                        depths[l] = b0 * v0->ndc.z + b1 * v1->ndc.z + b2 * v2->ndc.z + z_offset;
                        int px = ix + (l & 1), py = iy + (l >> 1);
#if SG_RASTER_OFF_CAPTURE
                        if (c->depth_test && !c->stencil_test) {
                            float old_depth = c->fb.depth[py * c->fb.w + px];
                            int passed = sg_sample_depth_pass(c->depth_func, depths[l], old_depth);
                            if (!weak_seen && (passed || lower <= old_depth)) weak_seen = 1;
                            if (!passed) cov &= ~(1u << l);
                        }
#else
                        if (c->depth_test && !c->stencil_test &&
                            !sg_sample_depth_pass(c->depth_func, depths[l], c->fb.depth[py * c->fb.w + px]))
                            cov &= ~(1u << l);
#endif
                    }
                    if (cov) {
                        cov = sg_shade_packet(c, tctx, v0, v1, v2, edges0, edges1,
                                              inv_area_f, cov, colors);
                        for (int l = 0; l < 4; l++) {
                            if (cov & (1u << l)) {
                                if (common_store)
                                    sg_store_off_post_depth(c, ix + (l & 1), iy + (l >> 1), depths[l], colors[l]);
                                else sg_write_fragment(c, ix + (l & 1), iy + (l >> 1), depths[l],
                                                       colors[l][0], colors[l][1], colors[l][2], colors[l][3]);
                            }
                        }
                    }
                } else {
#if SG_RASTER_OFF_CAPTURE
                    weak_seen = 1;
#endif
                    /* Per-lane scalar fallback (stencil/logic-op/stipple/
                     * occlusion); raw i64 edge values for byte-equal
                     * barycentrics with scalar reference. */
                    if (cov & 0x1u) {
                        sg_shade_pixel(c, tctx, v0, v1, v2, ix, iy,
                                       E0, E1,
                                       inv_area_f, invw0, invw1, invw2, z_offset, NULL);
                    }
                    if (cov & 0x2u) {
                        sg_shade_pixel(c, tctx, v0, v1, v2, ix + 1, iy,
                                       E0 + dE0_dx, E1 + dE1_dx,
                                       inv_area_f, invw0, invw1, invw2, z_offset, NULL);
                    }
                    if (cov & 0x4u) {
                        sg_shade_pixel(c, tctx, v0, v1, v2, ix, iy + 1,
                                       E0 + dE0_dy, E1 + dE1_dy,
                                       inv_area_f, invw0, invw1, invw2, z_offset, NULL);
                    }
                    if (cov & 0x8u) {
                        sg_shade_pixel(c, tctx, v0, v1, v2, ix + 1, iy + 1,
                                       E0 + dE0_dx + dE0_dy,
                                       E1 + dE1_dx + dE1_dy,
                                       inv_area_f, invw0, invw1, invw2, z_offset, NULL);
                    }
                }
            }

        step:
            E0 += dE0_dx * 2;
            E1 += dE1_dx * 2;
            E2 += dE2_dx * 2;
        }

        E0_row += dE0_dy * 2;
        E1_row += dE1_dy * 2;
        E2_row += dE2_dy * 2;
    }
#if SG_RASTER_OFF_CAPTURE
    return c->scissor_enabled ? -1 : !coverage_seen ? 1 : weak_seen ? 0 : 2;
#else
    return -1;
#endif
}
