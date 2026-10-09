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

typedef struct {
    SG_ALIGN16 uint32_t xy[3][4];
    SG_ALIGN16 float zw[3][2][4];
    uint32_t eligible;
} scene_triangle_packet;
_Static_assert(sizeof(scene_triangle_packet) == 160, "four-triangle packet stride");

#define SCENE_OCCLUSION_PACKET_TRIANGLES 4
typedef struct {
    uint16_t left, right, bottom, top;
    float near;
    uint32_t eligible;
} scene_occlusion_packet;
_Static_assert(sizeof(scene_occlusion_packet) == 16, "compact occlusion packet stride");

typedef struct { sg_vec4 clip, ndc; } scene_position;
typedef struct { sg_vec4 color, uv[4]; } scene_attribute;
typedef struct { uint32_t material, first, end; } scene_position_task;
typedef struct {
    uint32_t material, first, end;
    scene_primitive *primitives;
    uint32_t count, capacity;
    uint32_t packet_bins;
    uint32_t bin_counts[SG_MAX_BINS], bin_offsets[SG_MAX_BINS];
    scene_occlusion_packet *occlusion_packets;
    uint32_t occlusion_capacity;
    scene_triangle_packet *packets;
    uint32_t packet_capacity;
    scene_clipped_primitive *clipped;
    uint32_t clipped_count, clipped_capacity;
} scene_geometry_task;
typedef struct { uint64_t *references; uint32_t count, capacity; } scene_geometry_bin;

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

#define SOFTGL_SCENE_ORDER_SEPARATE_STAGE 1
typedef struct { uint64_t reference; float depth; uint32_t key; } scene_order_reference;
typedef struct { scene_order_reference *data; uint32_t capacity, mode; } scene_order_storage;
_Static_assert(sizeof(scene_order_storage) <= 128, "sort cache fits unused bin padding");
static void scene_geometry_destroy(scene_geometry *g);
