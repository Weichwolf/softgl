#ifndef SOFTGL_PLATFORM_H
#define SOFTGL_PLATFORM_H

/* Host integration, separate from the OpenGL rendering API.
 * These functions need neither SDL nor a window system. */
#include <GL/softgl.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct softgl_ctx softgl_ctx;

softgl_ctx *softgl_create(GLsizei width, GLsizei height);
/* Supported sample counts: 0 (single sample), 2 and 4. */
softgl_ctx *softgl_create_multisample(GLsizei width, GLsizei height, GLsizei samples);
void softgl_destroy(softgl_ctx *context);
void softgl_make_current(softgl_ctx *context);
/* Resolved RGBA8, row zero at the bottom. The storage belongs to the context
 * and remains valid until destruction; rendering may change its contents. */
const void *softgl_read_rgba8(softgl_ctx *context);

#ifdef __cplusplus
}
#endif

#endif
