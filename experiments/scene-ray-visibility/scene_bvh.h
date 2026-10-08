#ifndef SCENE_BVH_H
#define SCENE_BVH_H
#include <stdint.h>
typedef struct {
    float low[3]; uint32_t first;
    float high[3]; uint32_t count;
} scene_bvh_node;
void *sg_scene_bvh_create(const float *bounds, uint32_t count, float padding);
void sg_scene_bvh_destroy(void *data);
const scene_bvh_node *sg_scene_bvh_nodes(const void *data);
const uint32_t *sg_scene_bvh_indices(const void *data);
const uint32_t *sg_scene_bvh_subtree_counts(const void *data);
#endif
