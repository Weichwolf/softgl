#ifndef SG_SCENE_KEY_CACHE_H
#define SG_SCENE_KEY_CACHE_H
#include "types.h"
int sg_mat4_inverse(sg_mat4 *, const sg_mat4 *);

/* Borrowed texture storage requires one immutable resident canonical model.
 * Model ownership resets this cache before texture/mesh replacement. These
 * interfaces are internal and do not intercept ordinary OpenGL draws. */
typedef struct SG_ALIGN16 {
    float position[4], normal[4], geometric[4], albedo[4], facet[4], residual[4];
    uint64_t primitive;
    uint32_t lit;
    uint16_t material, coverage;
} sg_key_surface;

typedef struct SG_ALIGN16 {
    float facet[4];
    int16_t normal[4], geometric[4], residual[4];
    uint32_t albedo;
    uint16_t material, filter;
} sg_key_sample;
_Static_assert(sizeof(sg_key_sample) == 48,"compact surface layout");

typedef struct {
    sg_key_surface *surface;
    sg_key_sample *sample;
    void *materials;
    int width, height, material_count;
    sg_mat4 modelview, projection;
} sg_key_atlas;

typedef struct {
    uint64_t outside_pixels, background_pixels, shaded_pixels;
    uint64_t frustum_pixels, invalid_geometry_pixels;
    uint64_t consensus_background_pixels;
    uint64_t approximate_distance_pixels;
    int rotation_supported;
} sg_key_result;

int sg_key_capture(softgl_ctx *context, sg_key_atlas *atlas);
int sg_key_finalize(softgl_ctx *context, sg_key_atlas *atlas);
int sg_key_compact(softgl_ctx *context, sg_key_atlas *atlas);
void sg_key_present(softgl_ctx *context);
void sg_key_destroy(sg_key_atlas *atlas);
int sg_key_reconstruct(softgl_ctx *context, const sg_key_atlas *key,
    const sg_key_atlas *oracle, int block, uint32_t *rgba,
    uint16_t *materials, float *depth, sg_key_result *result);
int sg_key_reconstruct_many(softgl_ctx *context, const sg_key_atlas *const *keys,
    int key_count, const sg_key_atlas *oracle, int block, uint32_t *rgba,
    uint16_t *materials, float *depth, sg_key_result *result);
#endif
