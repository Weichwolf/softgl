typedef struct {
    float inverse_w[3];
    sg_vec4 color[3], uv[4][3];
    int64_t edge[2][3]; /* edge at pixel 0,0; one-pixel X/Y deltas */
    float inverse_area;
    uint32_t material;
    const scene_primitive *primitive;
} scene_triangle;
