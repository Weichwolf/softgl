typedef struct {
    SG_ALIGN16 int32_t x[3][4], y[3][4];
    SG_ALIGN16 float zw[3][2][4];
    SG_ALIGN16 int64_t area[4];
    SG_ALIGN16 int32_t bounds[4][4]; /* left, right, bottom, top */
    uint32_t eligible;
} scene_msaa_triangle_packet;
_Static_assert(sizeof(scene_msaa_triangle_packet) == 304, "full-precision MSAA packet stride");
