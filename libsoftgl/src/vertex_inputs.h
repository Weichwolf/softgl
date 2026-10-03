#ifndef SG_VERTEX_INPUTS_H
#define SG_VERTEX_INPUTS_H
#include "types.h"
/* Resolved addresses are immutable during the joined vertex job. Raster
 * snapshots never read them; the next draw resolves current storage again. */
typedef struct {
    const uint8_t *base;
    int stride, size;
    GLenum type;
} sg_resolved_attrib;
typedef struct {
    sg_resolved_attrib position, normal, color, uv[SG_MAX_TEX_UNITS];
} sg_vertex_inputs;
void sg_prepare_vertex_inputs(softgl_ctx *c, sg_vertex_inputs *inputs);
#endif
