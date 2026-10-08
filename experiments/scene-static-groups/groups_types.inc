#define SCENE_GROUP_TRIANGLES 64u
#define SCENE_GROUP_INDICES (SCENE_GROUP_TRIANGLES*3u)
#define SCENE_GROUP_CACHE_BYTES (8u*1024u*1024u)
typedef struct {
    float lo[3], hi[3], axis[3], cutoff;
#if SCENE_GROUP_UNIQUE
    uint32_t first, count;
#endif
} scene_static_group;
typedef struct {
    const float *positions;
    const uint32_t *indices;
    size_t stride;
    uint32_t count, minimum, span, groups;
    scene_static_group *bounds, whole;
    uint8_t *live;
#if SCENE_GROUP_UNIQUE
    uint32_t *references;
#endif
    double planes[6][4], error[6][4], camera[3];
    int cone_sign;
} scene_static_entry;
