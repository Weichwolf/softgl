#include "types.h"
#include "dlist.h"
#include "workers.h"

/* glColor / glNormal / glTexCoord / glMultiTexCoord / glVertex / glBegin /
 * glEnd / glArrayElement / glRect / glEdgeFlag live in immediate.c. */

/* Sync points. Both drain the worker pool — the GL spec only requires
 * that glFinish blocks until prior commands complete, but our flush is
 * already synchronous so glFlush collapses to the same. */
void glFinish(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
}
void glFlush(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
}

void glDepthMask(GLboolean b) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint8_t v = b ? 1 : 0;
        sg_dlist_emit(c, SG_OP_DEPTH_MASK, &v, sizeof(v));
        if (c->dlist_exec) _sg_depth_mask_real(b);
    } else _sg_depth_mask_real(b);
}

void softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    if (texture_unit >= SG_MAX_TEX_UNITS) { sg_set_error(GL_INVALID_VALUE); return; }
    c->vertex_attributes = program;
    c->vertex_attributes_full = NULL;
    c->vertex_attribute_data = user;
    c->vertex_attribute_unit = texture_unit;
}

void softgl_set_vertex_attributes_full(softgl_vertex_attributes_full_fn program, void *user) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->vertex_attributes = NULL;
    c->vertex_attributes_full = program;
    c->vertex_attribute_data = user;
}

void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->fused_dot3_enabled = tint != NULL;
    c->fused_dot3_quartic = quartic != 0;
    if (tint) for (int j = 0; j < 4; j++) c->fused_dot3_tint[j] = tint[j];
}
