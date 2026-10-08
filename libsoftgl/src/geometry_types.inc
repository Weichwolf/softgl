#define SCENE_GEOMETRY_TASKS 16384
#define SCENE_GEOMETRY_BYTES (128u * 1024u * 1024u)
#define SCENE_VERTEX_BYTES (128u * 1024u * 1024u)
#define SCENE_REFERENCE_BYTES (16u * 1024u * 1024u)

typedef struct {
    const float *positions, *coordinates;
    const uint32_t *indices;
    uint32_t minimum, span, offset, count;
    size_t stride;
    sg_mat4 modelview, projection;
    int cull_enabled;
    GLenum cull_face, front_face;
    softgl_vertex_attributes_full_fn program;
    SG_ALIGN16 unsigned char user[128];
} scene_mesh;

typedef struct {
    sg_vec4 ndc[3];
    float basis[3][3], coordinates[3][2];
} scene_clipped_primitive;

typedef struct {
    uint32_t indices[3], clipped;
    uint16_t material, first_bin, last_bin, task;
} scene_primitive;

typedef struct { sg_vec4 clip, ndc; } scene_position;
typedef struct { sg_vec4 color, uv[4]; } scene_attribute;
typedef struct { uint32_t material, first, end; } scene_position_task;
typedef struct {
    uint32_t material, first, end;
    scene_primitive *primitives;
    uint32_t count, capacity;
    uint32_t bin_counts[SG_MAX_BINS], bin_offsets[SG_MAX_BINS];
    scene_clipped_primitive *clipped;
    uint32_t clipped_count, clipped_capacity;
} scene_geometry_task;
typedef struct { uint32_t *references, count, capacity; } scene_geometry_bin;

typedef struct {
    scene_position *positions;
    scene_attribute *attributes;
    uint8_t *outcodes;
    atomic_uchar *ready;
    uint32_t vertex_capacity, vertices;
    size_t primitive_bytes, reference_bytes;
    scene_position_task *position_tasks;
    scene_geometry_task *tasks;
    int position_count, task_count;
    scene_geometry_bin bins[SG_MAX_BINS];
    atomic_int next_task;
} scene_geometry;

static void scene_geometry_destroy(scene_geometry *g);
