/* Original C11 binned-SAH builder, conventional 32-byte binary nodes. */
#include "scene_bvh.h"
#include <stdlib.h>
#include <math.h>
#include <float.h>

#define BVH_BINS 16
typedef struct { float low[3], high[3]; uint32_t count; } build_bin;
typedef struct {
    scene_bvh_node *nodes;
    uint32_t *indices, next;
    const float *bounds;
    float padding;
} scene_bvh;

static void clear_bin(build_bin *b) {
    b->count = 0;
    for (int k = 0; k < 3; k++) { b->low[k] = FLT_MAX; b->high[k] = -FLT_MAX; }
}
static void merge_bin(build_bin *a, const build_bin *b) {
    if (!b->count) return;
    a->count += b->count;
    for (int k = 0; k < 3; k++) {
        if (b->low[k] < a->low[k]) a->low[k] = b->low[k];
        if (b->high[k] > a->high[k]) a->high[k] = b->high[k];
    }
}
static float area_bin(const build_bin *b) {
    if (!b->count) return 0.f;
    float x = b->high[0]-b->low[0], y = b->high[1]-b->low[1], z = b->high[2]-b->low[2];
    return x*y+x*z+y*z;
}
static unsigned bucket(float center, float low, float scale) {
    float value = (center-low)*scale;
    if (!(value > 0.f)) return 0;
    if (value >= BVH_BINS-1) return BVH_BINS-1;
    return (unsigned)value;
}
static void build_node(scene_bvh *b, uint32_t id, uint32_t first, uint32_t count, int depth) {
    scene_bvh_node *node = b->nodes+id;
    build_bin full; clear_bin(&full);
    float center_low[3] = {FLT_MAX,FLT_MAX,FLT_MAX}, center_high[3] = {-FLT_MAX,-FLT_MAX,-FLT_MAX};
    for (uint32_t i = first; i < first+count; i++) {
        const float *box = b->bounds+(size_t)b->indices[i]*6;
        full.count++;
        for (int k = 0; k < 3; k++) {
            float low = box[k]-b->padding, high = box[k+3]+b->padding, center = (box[k]+box[k+3])*.5f;
            if (low < full.low[k]) full.low[k] = low;
            if (high > full.high[k]) full.high[k] = high;
            if (center < center_low[k]) center_low[k] = center;
            if (center > center_high[k]) center_high[k] = center;
        }
    }
    for (int k = 0; k < 3; k++) { node->low[k] = full.low[k]; node->high[k] = full.high[k]; }
    node->first = first; node->count = count;
    if (count <= 4 || depth >= 60) return;
    float best = area_bin(&full)*count; int axis = -1, split = -1; float selected_scale = 0.f;
    for (int k = 0; k < 3; k++) {
        float extent = center_high[k]-center_low[k];
        if (!(extent > 1e-15f)) continue;
        float scale = BVH_BINS/extent;
        build_bin bins[BVH_BINS]; for (int j = 0; j < BVH_BINS; j++) clear_bin(bins+j);
        for (uint32_t i = first; i < first+count; i++) {
            const float *box = b->bounds+(size_t)b->indices[i]*6;
            unsigned j = bucket((box[k]+box[k+3])*.5f,center_low[k],scale);
            build_bin *bin = bins+j; bin->count++;
            for (int l = 0; l < 3; l++) {
                float low = box[l]-b->padding, high = box[l+3]+b->padding;
                if (low < bin->low[l]) bin->low[l] = low;
                if (high > bin->high[l]) bin->high[l] = high;
            }
        }
        build_bin left, right; clear_bin(&left); clear_bin(&right);
        float right_cost[BVH_BINS]; uint32_t right_count[BVH_BINS];
        for (int j = BVH_BINS-1; j > 0; j--) {
            merge_bin(&right,bins+j); right_cost[j] = area_bin(&right)*right.count; right_count[j] = right.count;
        }
        for (int j = 0; j < BVH_BINS-1; j++) {
            merge_bin(&left,bins+j);
            if (!left.count || !right_count[j+1]) continue;
            float cost = area_bin(&left)*left.count+right_cost[j+1]+area_bin(&full);
            if (cost < best) { best = cost; axis = k; split = j; selected_scale = scale; }
        }
    }
    if (axis < 0) return;
    uint32_t begin = first, end = first+count;
    while (begin < end) {
        const float *box = b->bounds+(size_t)b->indices[begin]*6;
        if (bucket((box[axis]+box[axis+3])*.5f,center_low[axis],selected_scale) <= (unsigned)split) begin++;
        else { uint32_t tmp = b->indices[begin]; b->indices[begin] = b->indices[--end]; b->indices[end] = tmp; }
    }
    uint32_t left_count = begin-first;
    if (!left_count || left_count == count) return;
    uint32_t children = b->next; b->next += 2;
    node->first = children; node->count = 0;
    build_node(b,children,first,left_count,depth+1);
    build_node(b,children+1,begin,count-left_count,depth+1);
}
void *sg_scene_bvh_create(const float *bounds, uint32_t count, float padding) {
    if (!count || count > 750000 || !(padding > 0.f && isfinite(padding))) return NULL;
    scene_bvh *b = calloc(1,sizeof(*b)); if (!b) return NULL;
    b->nodes = malloc((size_t)count*2*sizeof(*b->nodes)); b->indices = malloc((size_t)count*sizeof(uint32_t));
    if (!b->nodes || !b->indices) { sg_scene_bvh_destroy(b); return NULL; }
    b->bounds = bounds; b->padding = padding; b->next = 2;
    for (uint32_t i = 0; i < count; i++) b->indices[i] = i;
    build_node(b,0,0,count,0);
    return b;
}
void sg_scene_bvh_destroy(void *data) {
    scene_bvh *b = data; if (!b) return;
    free(b->nodes); free(b->indices); free(b);
}
const scene_bvh_node *sg_scene_bvh_nodes(const void *data) { return ((const scene_bvh *)data)->nodes; }
const uint32_t *sg_scene_bvh_indices(const void *data) { return ((const scene_bvh *)data)->indices; }
