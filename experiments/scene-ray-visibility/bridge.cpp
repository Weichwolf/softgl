#define TINYBVH_IMPLEMENTATION
#define NO_THREADED_BUILDS
#include "tiny_bvh.h"
#include <new>

extern "C" int sg_scene_ray_candidate(uint32_t, float *);
struct scene_bvh {
    tinybvh::BVH bvh;
    const float *bounds;
    float padding;
};
static void bounds(uint32_t id, tinybvh::bvhvec3& low, tinybvh::bvhvec3& high, void *data) {
    const scene_bvh *b = static_cast<scene_bvh *>(data);
    const float *p = b->bounds+id*6;
    low = tinybvh::bvhvec3(p[0]-b->padding,p[1]-b->padding,p[2]-b->padding);
    high = tinybvh::bvhvec3(p[3]+b->padding,p[4]+b->padding,p[5]+b->padding);
}
static bool candidate(tinybvh::Ray& ray, uint32_t id, void *) {
    float upper;
    if (!sg_scene_ray_candidate(id,&upper)) return false;
    ray.hit.t = upper; ray.hit.prim = id;
    return true;
}
extern "C" void *sg_scene_bvh_create(const float *boxes, uint32_t count, float padding) {
    scene_bvh *b = new(std::nothrow) scene_bvh;
    if (!b) return nullptr;
    b->bounds = boxes; b->padding = padding; b->bvh.customUserdata = b;
    b->bvh.Build(bounds,count);
    b->bvh.customIntersect = candidate;
    return b;
}
extern "C" void sg_scene_bvh_destroy(void *data) { delete static_cast<scene_bvh *>(data); }
extern "C" void sg_scene_bvh_trace(void *data, const float origin[3], const float direction[3], float maximum) {
    scene_bvh *b = static_cast<scene_bvh *>(data);
    tinybvh::Ray ray(tinybvh::bvhvec3(origin[0],origin[1],origin[2]),
        tinybvh::bvhvec3(direction[0],direction[1],direction[2]),maximum);
    b->bvh.Intersect(ray);
}
