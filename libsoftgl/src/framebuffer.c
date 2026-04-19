#include "types.h"
#include "dlist.h"
#include <string.h>

static void sg_effective_scissor(const softgl_ctx *c, int *x0, int *y0, int *x1, int *y1) {
    int sx0 = 0, sy0 = 0, sx1 = c->fb.w, sy1 = c->fb.h;
    if (c->scissor_enabled) {
        sx0 = c->scissor[0];
        sy0 = c->scissor[1];
        sx1 = sx0 + c->scissor[2];
        sy1 = sy0 + c->scissor[3];
    }
    if (sx0 < 0) sx0 = 0;
    if (sy0 < 0) sy0 = 0;
    if (sx1 > c->fb.w) sx1 = c->fb.w;
    if (sy1 > c->fb.h) sy1 = c->fb.h;
    *x0 = sx0; *y0 = sy0; *x1 = sx1; *y1 = sy1;
}

void _sg_clear_real(GLbitfield mask) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int x0, y0, x1, y1;
    sg_effective_scissor(c, &x0, &y0, &x1, &y1);
    if (x1 <= x0 || y1 <= y0) return;

    if (mask & GL_COLOR_BUFFER_BIT) {
        uint8_t r = sg_quantize(c->clear_color[0]);
        uint8_t g = sg_quantize(c->clear_color[1]);
        uint8_t b = sg_quantize(c->clear_color[2]);
        uint8_t a = sg_quantize(c->clear_color[3]);
        /* glClear honours color mask (spec §4.2.3). */
        int all_on = c->color_mask[0] && c->color_mask[1] &&
                     c->color_mask[2] && c->color_mask[3];
        if (all_on) {
            uint32_t px = (uint32_t)r | ((uint32_t)g << 8) |
                          ((uint32_t)b << 16) | ((uint32_t)a << 24);
            for (int y = y0; y < y1; y++) {
                uint32_t *row = (uint32_t*)(c->fb.color + (y * c->fb.w + x0) * 4);
                for (int x = x0; x < x1; x++) row[x - x0] = px;
            }
        } else {
            for (int y = y0; y < y1; y++) {
                uint8_t *row = c->fb.color + (y * c->fb.w + x0) * 4;
                for (int x = x0; x < x1; x++) {
                    uint8_t *p = row + (x - x0) * 4;
                    if (c->color_mask[0]) p[0] = r;
                    if (c->color_mask[1]) p[1] = g;
                    if (c->color_mask[2]) p[2] = b;
                    if (c->color_mask[3]) p[3] = a;
                }
            }
        }
    }
    if (mask & GL_DEPTH_BUFFER_BIT) {
        float d = c->clear_depth;
        for (int y = y0; y < y1; y++) {
            float *row = c->fb.depth + y * c->fb.w + x0;
            for (int x = x0; x < x1; x++) row[x - x0] = d;
        }
    }
    if (mask & GL_STENCIL_BUFFER_BIT) {
        uint8_t s = (uint8_t)(c->clear_stencil & 0xFF);
        for (int y = y0; y < y1; y++) {
            uint8_t *row = c->fb.stencil + y * c->fb.w + x0;
            for (int x = x0; x < x1; x++) row[x - x0] = s;
        }
    }
    if (mask & GL_ACCUM_BUFFER_BIT) {
        /* Lazy-allocate the accum buffer on first use. */
        if (!c->accum) {
            size_t nf = (size_t)c->fb.w * (size_t)c->fb.h * 4;
            c->accum = (float*)malloc(nf * sizeof(float));
            if (c->accum) memset(c->accum, 0, nf * sizeof(float));
        }
        if (c->accum) {
            for (int y = y0; y < y1; y++) {
                float *row = c->accum + (y * c->fb.w + x0) * 4;
                for (int x = x0; x < x1; x++) {
                    float *p = row + (x - x0) * 4;
                    p[0] = c->clear_accum[0];
                    p[1] = c->clear_accum[1];
                    p[2] = c->clear_accum[2];
                    p[3] = c->clear_accum[3];
                }
            }
        }
    }
}

void glClear(GLbitfield mask) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_CLEAR, &mask, sizeof(mask));
        if (c->dlist_exec) _sg_clear_real(mask);
    } else _sg_clear_real(mask);
}
