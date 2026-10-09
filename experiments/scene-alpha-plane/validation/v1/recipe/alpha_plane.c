#include "types.h"
#include <stdlib.h>

#define SCENE_ALPHA_BYTES (64u * 1024u * 1024u)

const uint8_t *sg_scene_alpha_prepare(softgl_ctx *c, sg_texture *t) {
    if (!c || !t || t->target != GL_TEXTURE_2D || !t->data[0] ||
        t->w[0] <= 0 || t->h[0] <= 0) return NULL;
    if (t->scene_alpha) return t->scene_alpha;
    uint64_t pixels = (uint64_t)t->w[0] * (uint64_t)t->h[0];
    if (pixels > SCENE_ALPHA_BYTES) return NULL;
    size_t used = 0;
    for (size_t i = 0; i < c->textures_cap; i++) {
        const sg_texture *other = &c->textures[i];
        if (other->scene_alpha) used += (size_t)other->w[0] * other->h[0];
    }
    if (pixels > SCENE_ALPHA_BYTES - used) return NULL;
    uint8_t *alpha = malloc((size_t)pixels);
    if (!alpha) return NULL;
    for (size_t i = 0; i < (size_t)pixels; i++) alpha[i] = t->data[0][i * 4 + 3];
    t->scene_alpha = alpha;
    return alpha;
}

void sg_scene_alpha_invalidate(sg_texture *t, GLint level) {
    if (level != 0) return;
    free(t->scene_alpha);
    t->scene_alpha = NULL;
}

/* Keep borrowed scene-material views current for in-place subimage writes.
 * Full uploads invalidate before replacing level zero. */
void sg_scene_alpha_refresh(sg_texture *t, GLint level) {
    if (level != 0 || !t->scene_alpha) return;
    size_t pixels = (size_t)t->w[0] * t->h[0];
    for (size_t i = 0; i < pixels; i++) t->scene_alpha[i] = t->data[0][i * 4 + 3];
}
