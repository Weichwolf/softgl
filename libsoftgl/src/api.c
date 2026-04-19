#include "types.h"
#include "dlist.h"

/* glColor / glNormal / glTexCoord / glMultiTexCoord / glVertex / glBegin /
 * glEnd / glArrayElement / glRect / glEdgeFlag live in immediate.c. */

void glDepthMask(GLboolean b) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint8_t v = b ? 1 : 0;
        sg_dlist_emit(c, SG_OP_DEPTH_MASK, &v, sizeof(v));
        if (c->dlist_exec) _sg_depth_mask_real(b);
    } else _sg_depth_mask_real(b);
}
