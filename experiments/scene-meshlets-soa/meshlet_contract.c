#include "types.h"
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
static int capture_owned_meshlets(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes);
#define softgl_scene_visibility_positions capture_owned_meshlets
#include "quantized_fixture.inc"
#undef softgl_scene_visibility_positions

/* Poison/free the caller's input and release its handle before scene end.
 * Attribute callbacks keep their original independent user data. */
static int capture_owned_meshlets(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {
    /* The inherited rollback fixture deliberately lies about array size to
     * check rejection before reads. Preserve those legacy admission tests. */
    if (stride != sizeof(vertex) || vertex_count != VERTICES || count <= 0 || count % 3)
        return softgl_scene_visibility_positions(positions,coordinates,stride,vertex_count,
            indices,count,program,user,user_bytes);
    size_t bytes = (size_t)vertex_count*(unsigned)stride;
    uint8_t *p = calloc(1,bytes), *uv = calloc(1,bytes);
    uint32_t *ix = malloc((size_t)count*sizeof(*ix));
    CHECK(p && uv && ix);
    for (unsigned i = 0; i < vertex_count; i++) {
        memcpy(p+(size_t)i*stride,(const uint8_t *)positions+(size_t)i*stride,3*sizeof(float));
        memcpy(uv+(size_t)i*stride,(const uint8_t *)coordinates+(size_t)i*stride,2*sizeof(float));
    }
    memcpy(ix,indices,(size_t)count*sizeof(*ix));
    softgl_meshlets *meshlets = softgl_meshlets_create((const float *)p,(const float *)uv,
        stride,vertex_count,ix,count);
    CHECK(meshlets);
    memset(p,0xdd,bytes); memset(uv,0xdd,bytes); memset(ix,255,(size_t)count*sizeof(*ix));
    free(p); free(uv); free(ix);
    int result = softgl_scene_visibility_meshlets(meshlets,program,user,user_bytes);
    softgl_meshlets_destroy(meshlets);
    return result ? result : softgl_scene_visibility_positions(positions,coordinates,stride,
        vertex_count,indices,count,program,user,user_bytes);
}

extern unsigned long long softgl_scene_meshlet_audit(unsigned index);
int main(void) {
    int result = previous_quantized_main();
    unsigned long long handles = softgl_scene_meshlet_audit(0), groups = softgl_scene_meshlet_audit(1);
    unsigned long long transformed = softgl_scene_meshlet_audit(2), local = softgl_scene_meshlet_audit(3);
    unsigned long long captured_handles = softgl_scene_meshlet_audit(4), produced = softgl_scene_meshlet_audit(5);
    printf("Owned meshlets: handles=%llu groups=%llu transformed=%llu local=%llu captures=%llu packetsTriangles=%llu\n",
        handles,groups,transformed,local,captured_handles,produced);
    CHECK(handles && groups && transformed && local && captured_handles && produced);
    puts("Actual owned-input/local SIMD128 meshlet contract PASS");
#ifdef __EMSCRIPTEN__
    printf("WASM pointerBytes=%zu heapBytes=%zu\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return result;
}
