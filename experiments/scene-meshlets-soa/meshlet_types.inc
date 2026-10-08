/* Owned input; sequential groups preserve source triangle order. */
typedef struct {
    SG_ALIGN16 float positions[3][64];
    uint32_t vertices[64];
    uint8_t indices[3][128];
    uint16_t vertex_count, triangle_count;
#if SG_MESHLET_CLIP_BOUNDS
    float lower[3], upper[3];
#endif
} scene_meshlet;

struct softgl_meshlets {
    atomic_uint references;
    scene_meshlet *groups;
    float *coordinates;
    uint32_t *indices;
    uint32_t group_count, group_capacity;
    uint32_t minimum, span, vertex_count, index_count;
    size_t bytes;
#if SG_MESHLET_CLIP_BOUNDS
    float lower[3], upper[3];
#endif
};

#define SCENE_MESHLET_BYTES (128u * 1024u * 1024u)
