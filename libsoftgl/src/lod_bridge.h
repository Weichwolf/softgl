#ifndef SG_LOD_BRIDGE_H
#define SG_LOD_BRIDGE_H
#include <stddef.h>
#include <stdint.h>
#define SG_LOD_AUTO_MAX_ERROR 8.f
#ifdef __cplusplus
extern "C" {
#endif

/* Owns a copy of the cluster hierarchy, never application buffer storage. */
void *sg_clod_build(const uint32_t *indices, size_t index_count,
                    const float *positions, size_t vertices,
                    const float *attributes, size_t attribute_count,
                    int (*canceled)(void *), void *cancel_context);
void sg_clod_destroy(void *mesh);
/* Select a complete DAG cut; group transitions preserve cluster boundaries.
 * mvp is column-major. Output refers to the application's original vertices. */
size_t sg_clod_select(void *mesh, const float mvp[16], int width, int height,
                      float pixel_error, uint32_t base, uint32_t *indices,
                      uint32_t *vertices, size_t *vertex_count,
                      float *effective_error, int *can_coarsen);
#ifdef __cplusplus
}
#endif
#endif
