#define SOFTGL_SCENE_LAZY_SPATIAL_API 1
#define SOFTGL_SCENE_LAZY_CLUSTERS 1
typedef struct {
    const float *bounds;
    uint32_t group_triangles, epoch;
} scene_lazy_mesh;
struct scene_lazy_storage {
    scene_lazy_mesh meshes[SCENE_MATERIALS];
    scene_occlusion_packet *bounds;
    atomic_uchar *position_ready, *task_ready;
    uint32_t position_capacity;
};
