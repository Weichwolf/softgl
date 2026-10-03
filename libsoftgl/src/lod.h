#ifndef SG_LOD_H
#define SG_LOD_H
#include "types.h"

typedef struct {
    const uint32_t *indices, *vertices;
    int count, vertex_count, vertex_limit;
} sg_lod_draw;

sg_lod_draw sg_lod_select(softgl_ctx *c, GLenum mode, GLsizei count,
                         GLenum type, const void *indices);
void sg_lod_invalidate(softgl_ctx *c, GLuint buffer);
void sg_lod_begin_frame(softgl_ctx *c);
void sg_lod_start_frame(softgl_ctx *c);
void sg_lod_draw_finished(softgl_ctx *c);
void sg_lod_finish_frame(softgl_ctx *c);
void sg_lod_feedback(softgl_ctx *c, float milliseconds);
void sg_lod_shutdown(softgl_ctx *c);
#endif
