#ifndef SOFTGL_MULTISAMPLE_H
#define SOFTGL_MULTISAMPLE_H

#include "types.h"

/* Fixed sample locations in 8-bit subpixel units, relative to pixel origin.
 * A rotated four-sample pattern avoids identical horizontal/vertical phases. */
SG_INLINE void sg_sample_position(int samples, int s, int *x, int *y) {
    static const int offsets[4][2] = {{96, 32}, {224, 96}, {32, 160}, {160, 224}};
    if (samples == 2) {
        *x = *y = s ? 192 : 64;
    } else {
        *x = offsets[s][0];
        *y = offsets[s][1];
    }
}

SG_INLINE unsigned sg_rect_sample_mask(const softgl_ctx *c, int x, int y,
                                       float x0, float y0, float x1, float y1) {
    unsigned mask = 0;
    for (int s = 0; s < c->fb.samples; s++) {
        int sx, sy; sg_sample_position(c->fb.samples, s, &sx, &sy);
        float px = x + sx * (1.f/256.f), py = y + sy * (1.f/256.f);
        if (px >= x0 && px < x1 && py >= y0 && py < y1) mask |= 1u << s;
    }
    return mask;
}

#endif
