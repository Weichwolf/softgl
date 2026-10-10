#ifndef SG_MATERIAL_FIXTURE_H
#define SG_MATERIAL_FIXTURE_H

/* Component fixtures may select private kernels directly. Applications and
 * integration tests express materials solely with GL state and draw calls. */
#include "types.h"

typedef void (*fixture_attributes_fn)(void *, GLuint, GLfloat[4], GLfloat[4]);
typedef void (*fixture_attributes_full_fn)(void *, GLuint, GLfloat[4], GLfloat[4][4]);

static void fixture_material(const GLfloat tint[4], GLboolean quartic) {
    softgl_ctx *c = sg_current();
    c->fused_dot3_enabled = tint != NULL;
    c->fused_dot3_quartic = quartic != 0;
    if (tint) memcpy(c->fused_dot3_tint, tint, sizeof(c->fused_dot3_tint));
}

static void fixture_transparent_material(const GLfloat tint[4], GLboolean quartic) {
    fixture_material(tint, quartic);
    if (tint) sg_current()->fused_dot3_enabled = 2;
}

#endif
