/* Preserve existing selector code and keep new policy after ordinary text. */
#include "types.h"

#if !defined(__EMSCRIPTEN__) && (defined(__GNUC__) || defined(__clang__))
__attribute__((section(".text.softgl_scene_cost_hint")))
#endif
int softgl_scene_visibility_begin_cost_hint(GLuint triangles, GLuint mode) {
    softgl_ctx *c = sg_current();
    if (!c || !c->fb.samples || (uint64_t)triangles >= (uint64_t)c->fb.w*c->fb.h)
        return softgl_scene_visibility_begin_adaptive(triangles, mode);
    if ((uint64_t)triangles*8u < (uint64_t)c->fb.w*c->fb.h)
        return 0;
    int started = softgl_scene_visibility_begin();
    if (started) softgl_scene_depth_order(mode);
    return started;
}
