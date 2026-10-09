/* Keep density-policy selection outside the hot visibility translation unit.
 * Legacy hint entrypoints retain their original heuristics and code layout. */
#include "types.h"

int softgl_scene_visibility_begin_adaptive(GLuint triangles, GLuint mode) {
    softgl_ctx *c = sg_current();
    if (c && c->fb.samples && (uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h)
        return 0;
    int started = softgl_scene_visibility_begin();
    if (started) softgl_scene_depth_order(mode);
    return started;
}
