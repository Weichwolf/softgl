#include "workers.h"
#include <math.h>

/* Per-fragment write in GL spec order: scissor -> alpha test -> stencil ->
 * depth -> stencil op -> depth write -> occlusion -> logic-op -> blend ->
 * color mask. y=0 is bottom (matches glReadPixels). Used as scalar fallback
 * from SIMD quad path; primary path for lines/points/pixels. */

void sg_write_fragment(softgl_ctx *c, int x, int y, float z, float r, float g, float b, float a);
void sg_write_fragment(softgl_ctx *c, int x, int y, float z, float r, float g, float b, float a) {
    if (x < 0 || y < 0 || x >= c->fb.w || y >= c->fb.h) return;
    if (c->scissor_enabled) {
        if (x < c->scissor[0] || y < c->scissor[1] ||
            x >= c->scissor[0] + c->scissor[2] ||
            y >= c->scissor[1] + c->scissor[3]) return;
    }
    int idx = y * c->fb.w + x;

    /* Alpha test before stencil (spec 4.1). */
    if (c->alpha_test) {
        int pass = 0;
        switch (c->alpha_func) {
            case GL_NEVER:    pass = 0; break;
            case GL_LESS:     pass = a < c->alpha_ref; break;
            case GL_EQUAL:    pass = a == c->alpha_ref; break;
            case GL_LEQUAL:   pass = a <= c->alpha_ref; break;
            case GL_GREATER:  pass = a > c->alpha_ref; break;
            case GL_NOTEQUAL: pass = a != c->alpha_ref; break;
            case GL_GEQUAL:   pass = a >= c->alpha_ref; break;
            case GL_ALWAYS:   pass = 1; break;
            default:          pass = 1; break;
        }
        if (!pass) return;
    }

    /* Stencil op runs even if depth fails; depth write needs both. */
    uint8_t s_cur = c->fb.stencil[idx];
    int s_pass = 1;
    if (c->stencil_test) {
        uint8_t s_ref = (uint8_t)(((uint32_t)c->stencil_ref) & c->stencil_value_mask);
        uint8_t s_val = (uint8_t)(s_cur & c->stencil_value_mask);
        switch (c->stencil_func) {
            case GL_NEVER:    s_pass = 0; break;
            case GL_LESS:     s_pass = s_ref <  s_val; break;
            case GL_LEQUAL:   s_pass = s_ref <= s_val; break;
            case GL_GREATER:  s_pass = s_ref >  s_val; break;
            case GL_GEQUAL:   s_pass = s_ref >= s_val; break;
            case GL_EQUAL:    s_pass = s_ref == s_val; break;
            case GL_NOTEQUAL: s_pass = s_ref != s_val; break;
            case GL_ALWAYS:   s_pass = 1; break;
            default:          s_pass = 1; break;
        }
    }

    /* Test only; write deferred until stencil+depth both pass. */
    int d_pass = 1;
    if (c->depth_test) {
        float d = c->fb.depth[idx];
        switch (c->depth_func) {
            case GL_NEVER:    d_pass = 0; break;
            case GL_LESS:     d_pass = z < d; break;
            case GL_EQUAL:    d_pass = z == d; break;
            case GL_LEQUAL:   d_pass = z <= d; break;
            case GL_GREATER:  d_pass = z > d; break;
            case GL_NOTEQUAL: d_pass = z != d; break;
            case GL_GEQUAL:   d_pass = z >= d; break;
            case GL_ALWAYS:   d_pass = 1; break;
            default:          d_pass = z < d; break;
        }
    }

    if (c->stencil_test) {
        GLenum op;
        if      (!s_pass) op = c->stencil_sfail;
        else if (!d_pass) op = c->stencil_dpfail;
        else              op = c->stencil_dppass;

        uint8_t s_new = s_cur;
        switch (op) {
            case GL_KEEP:      s_new = s_cur; break;
            case GL_ZERO:      s_new = 0; break;
            case GL_REPLACE:   s_new = (uint8_t)(c->stencil_ref & 0xFF); break;
            case GL_INCR:      s_new = (s_cur < 0xFF) ? (uint8_t)(s_cur + 1) : 0xFF; break;
            case GL_INCR_WRAP: s_new = (uint8_t)(s_cur + 1); break;
            case GL_DECR:      s_new = (s_cur > 0) ? (uint8_t)(s_cur - 1) : 0; break;
            case GL_DECR_WRAP: s_new = (uint8_t)(s_cur - 1); break;
            case GL_INVERT:    s_new = (uint8_t)(~s_cur); break;
            default:           s_new = s_cur; break;
        }
        uint8_t wm = (uint8_t)(c->stencil_write_mask & 0xFFu);
        c->fb.stencil[idx] = (uint8_t)((s_new & wm) | (s_cur & (uint8_t)~wm));
    }

    if (!s_pass) return;
    if (!d_pass) return;

    if (c->depth_test && c->depth_mask) c->fb.depth[idx] = z;

    /* Queries count surviving fragments even if color writes are masked
     * or a logic operation leaves the framebuffer unchanged. Workers own
     * their counters; only the calling thread writes query objects. */
    GLuint qsid = c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED];
    GLuint qaid = c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED];
    if (qsid || qaid) {
        if (sg_raster_bin) {
            sg_raster_bin->query_samples++;
        } else {
            sg_query *qs = sg_query_get(c, qsid);
            sg_query *qa = sg_query_get(c, qaid);
            if (qs && qs->active) qs->result++;
            if (qa && qa->active) qa->result = 1;
        }
    }

    uint8_t *px = c->fb.color + idx * 4;
    /* COLOR_LOGIC_OP takes priority over BLEND (spec). */
    if (c->color_logic_op_enabled) {
        uint8_t sr = sg_quantize(r), sg_ = sg_quantize(g),
                sb = sg_quantize(b), sa = sg_quantize(a);
        uint8_t dr = px[0], dg = px[1], db = px[2], da = px[3];
        uint8_t nr = sr, ng = sg_, nb = sb, na = sa;
        switch (c->logic_op) {
            case GL_CLEAR:         nr = ng = nb = na = 0x00; break;
            case GL_SET:           nr = ng = nb = na = 0xFF; break;
            case GL_COPY:          nr = sr; ng = sg_; nb = sb; na = sa; break;
            case GL_COPY_INVERTED: nr = (uint8_t)~sr; ng = (uint8_t)~sg_;
                                   nb = (uint8_t)~sb; na = (uint8_t)~sa; break;
            case GL_NOOP:          nr = dr; ng = dg; nb = db; na = da; break;
            case GL_INVERT:        nr = (uint8_t)~dr; ng = (uint8_t)~dg;
                                   nb = (uint8_t)~db; na = (uint8_t)~da; break;
            case GL_AND:           nr = sr & dr; ng = sg_ & dg;
                                   nb = sb & db; na = sa & da; break;
            case GL_NAND:          nr = (uint8_t)~(sr & dr); ng = (uint8_t)~(sg_ & dg);
                                   nb = (uint8_t)~(sb & db); na = (uint8_t)~(sa & da); break;
            case GL_OR:            nr = sr | dr; ng = sg_ | dg;
                                   nb = sb | db; na = sa | da; break;
            case GL_NOR:           nr = (uint8_t)~(sr | dr); ng = (uint8_t)~(sg_ | dg);
                                   nb = (uint8_t)~(sb | db); na = (uint8_t)~(sa | da); break;
            case GL_XOR:           nr = sr ^ dr; ng = sg_ ^ dg;
                                   nb = sb ^ db; na = sa ^ da; break;
            case GL_EQUIV:         nr = (uint8_t)~(sr ^ dr); ng = (uint8_t)~(sg_ ^ dg);
                                   nb = (uint8_t)~(sb ^ db); na = (uint8_t)~(sa ^ da); break;
            case GL_AND_REVERSE:   nr = sr & (uint8_t)~dr; ng = sg_ & (uint8_t)~dg;
                                   nb = sb & (uint8_t)~db; na = sa & (uint8_t)~da; break;
            case GL_AND_INVERTED:  nr = (uint8_t)~sr & dr; ng = (uint8_t)~sg_ & dg;
                                   nb = (uint8_t)~sb & db; na = (uint8_t)~sa & da; break;
            case GL_OR_REVERSE:    nr = sr | (uint8_t)~dr; ng = sg_ | (uint8_t)~dg;
                                   nb = sb | (uint8_t)~db; na = sa | (uint8_t)~da; break;
            case GL_OR_INVERTED:   nr = (uint8_t)~sr | dr; ng = (uint8_t)~sg_ | dg;
                                   nb = (uint8_t)~sb | db; na = (uint8_t)~sa | da; break;
            default: break;
        }
        if (c->color_mask[0]) px[0] = nr;
        if (c->color_mask[1]) px[1] = ng;
        if (c->color_mask[2]) px[2] = nb;
        if (c->color_mask[3]) px[3] = na;
        return;
    }
    if (c->blend) {
        float dr = px[0] * (1.0f / 255.0f);
        float dg = px[1] * (1.0f / 255.0f);
        float db = px[2] * (1.0f / 255.0f);
        float da = px[3] * (1.0f / 255.0f);
        float sf_r = 1.f, sf_g = 1.f, sf_b = 1.f, sf_a = 1.f;
        float df_r = 0.f, df_g = 0.f, df_b = 0.f, df_a = 0.f;
        switch (c->blend_src) {
            case GL_ZERO: sf_r = sf_g = sf_b = sf_a = 0.f; break;
            case GL_ONE:  sf_r = sf_g = sf_b = sf_a = 1.f; break;
            case GL_SRC_ALPHA: sf_r = sf_g = sf_b = sf_a = a; break;
            case GL_ONE_MINUS_SRC_ALPHA: sf_r = sf_g = sf_b = sf_a = 1.f - a; break;
            case GL_DST_ALPHA: sf_r = sf_g = sf_b = sf_a = da; break;
            case GL_ONE_MINUS_DST_ALPHA: sf_r = sf_g = sf_b = sf_a = 1.f - da; break;
            default: break;
        }
        switch (c->blend_dst) {
            case GL_ZERO: df_r = df_g = df_b = df_a = 0.f; break;
            case GL_ONE:  df_r = df_g = df_b = df_a = 1.f; break;
            case GL_SRC_ALPHA: df_r = df_g = df_b = df_a = a; break;
            case GL_ONE_MINUS_SRC_ALPHA: df_r = df_g = df_b = df_a = 1.f - a; break;
            case GL_DST_ALPHA: df_r = df_g = df_b = df_a = da; break;
            case GL_ONE_MINUS_DST_ALPHA: df_r = df_g = df_b = df_a = 1.f - da; break;
            default: break;
        }
        r = r * sf_r + dr * df_r;
        g = g * sf_g + dg * df_g;
        b = b * sf_b + db * df_b;
        a = a * sf_a + da * df_a;
    }

    if (c->color_mask[0]) px[0] = sg_quantize(r);
    if (c->color_mask[1]) px[1] = sg_quantize(g);
    if (c->color_mask[2]) px[2] = sg_quantize(b);
    if (c->color_mask[3]) px[3] = sg_quantize(a);

}
