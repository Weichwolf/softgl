#include "types.h"
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
static int force_legacy;
static int capture_owned_meshlets(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes);
#define softgl_scene_visibility_positions capture_owned_meshlets
#include "quantized_fixture.inc"
#include "geometry_types.inc"
#undef softgl_scene_visibility_positions

/* Poison/free the caller's input and release its handle before scene end.
 * Attribute callbacks keep their original independent user data. */
static int capture_owned_meshlets(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {
    /* The inherited rollback fixture deliberately lies about array size to
     * check rejection before reads. Preserve those legacy admission tests. */
    if (force_legacy || stride != sizeof(vertex) || vertex_count != VERTICES || count <= 0 || count % 3)
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
    vertex saved[VERTICES]; memcpy(saved,vertices,sizeof(saved));
    for (unsigned t = 0; t < TRIANGLES; t++) for (unsigned j = 0; j < 3; j++) {
        vertex *v = &vertices[10+t*3+j];
        v->p[0] = -.12f+(t%3)*.04f+(j == 1 ? .03f : 0.f);
        v->p[1] = -.1f+((t/3)%3)*.04f+(j == 2 ? .03f : 0.f); v->p[2] = -3.f;
    }
    softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
    CHECK(a && b); initialize(a,1); initialize(b,3); request_quantization = 1;
    force_legacy = 1; frame(a,1,1); force_legacy = 0; frame(b,1,1);
    compare(a,b); CHECK(!memcmp(a->fb.color,b->fb.color,(size_t)640*360*4));
    softgl_destroy(a); softgl_destroy(b); memcpy(vertices,saved,sizeof(saved));
    puts("Controlled fully-inside clip bounds: legacy/owned full planes exact");
    unsigned long long handles = softgl_scene_meshlet_audit(0), groups = softgl_scene_meshlet_audit(1);
    unsigned long long transformed = softgl_scene_meshlet_audit(2), local = softgl_scene_meshlet_audit(3);
    unsigned long long captured_handles = softgl_scene_meshlet_audit(4), produced = softgl_scene_meshlet_audit(5);
    printf("Owned meshlets: handles=%llu groups=%llu transformed=%llu local=%llu captures=%llu packetsTriangles=%llu\n",
        handles,groups,transformed,local,captured_handles,produced);
    CHECK(handles && groups && transformed && local && captured_handles && produced);
    unsigned long long simd = softgl_scene_meshlet_audit(6), culled = softgl_scene_meshlet_audit(7);
    unsigned long long inside = softgl_scene_meshlet_audit(8), fast = softgl_scene_meshlet_audit(9);
    printf("Meshlet variant: simdPackets=%llu culledGroups=%llu insideGroups=%llu fastVertices=%llu\n",simd,culled,inside,fast);
    CHECK(fast);
#if SG_MESHLET_PACKET_SIMD
    CHECK(simd);
#endif
#if SG_MESHLET_CLIP_BOUNDS
    CHECK(culled && inside);
#endif
    puts("Actual owned-input/local SIMD128 meshlet contract PASS");
#ifdef __EMSCRIPTEN__
    printf("WASM pointerBytes=%zu heapBytes=%zu\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return result;
}
