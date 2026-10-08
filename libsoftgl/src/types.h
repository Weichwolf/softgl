#ifndef SOFTGL_TYPES_H
#define SOFTGL_TYPES_H

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <GL/softgl.h>

#define SG_ALIGN16 __attribute__((aligned(16)))
#define SG_INLINE  static inline __attribute__((always_inline))
#define SG_RESTRICT __restrict__

#define SG_MAX_LIGHTS        8
#define SG_MAX_TEX_UNITS     4
#define SG_MAX_MATRIX_STACK  32
#define SG_MAX_MIPMAP_LEVELS 16
#define SG_MAX_CLIP_VERTS    12   /* triangle × 6 planes → up to 9, +spares */
#define SG_TILE_SIZE         16
#define SG_MAX_EVAL_ORDER    12   /* Bezier order clamp (spec minimum is 8). */
#define SG_MAX_NAME_STACK    64

/* Framebuffer is RGBA8888; internal math is float. */

/* vec4 / mat4 are 16B-aligned so SIMD loads use whole struct. */
typedef struct SG_ALIGN16 {
    float x, y, z, w;
} sg_vec4;

typedef struct SG_ALIGN16 {
    float m[16];   /* column-major */
} sg_mat4;

typedef struct SG_ALIGN16 {
    sg_vec4 clip;      /* post-projection clip space */
    sg_vec4 ndc;       /* post-divide: xy=screen, z=depth, w=1/w */
    sg_vec4 color;     /* FRONT-lit (or raw if lighting off) */
    sg_vec4 color_back;/* BACK-lit (only valid with two_side) */
    sg_vec4 normal;
    sg_vec4 uv[SG_MAX_TEX_UNITS];
    sg_vec4 eye;       /* eye-space position */
} sg_vert;

typedef struct {
    uint64_t written;
    float maximum;
    uint32_t maximum_sample;
} sg_hz_tile;

/* Prefix of the multisample color allocation, shared by draw snapshots.
 * Keep the original framebuffer/context layout and align color to 64 bytes. */
typedef struct __attribute__((aligned(64))) {
    sg_hz_tile *tiles;
    int rows, active;
} sg_hz_state;

typedef struct {
    int w, h;
    uint8_t *color;    /* w*h*4 bytes RGBA8 */
    float   *depth;    /* w*h, 0..1 */
    uint8_t *stencil;  /* w*h, 8-bit */
    int      samples; /* 0 for single sample; otherwise 2 or 4 */
    uint8_t *sample_color; /* pixel-major RGBA8 sample values */
    float   *sample_depth;
    uint8_t *sample_stencil;
} sg_framebuffer;

typedef struct {
    uint32_t id;
    int      in_use;
    size_t   size;
    void    *data;
    GLenum   usage;
    uint64_t revision;     /* content/storage identity for prepared-draw caches */
    int      mapped;       /* 1 between glMapBuffer / glUnmapBuffer */
    GLenum   access;
} sg_buffer;

/* ARB_occlusion_query. */
typedef struct {
    uint32_t id;
    int      in_use;
    GLenum   target;        /* GL_SAMPLES_PASSED | GL_ANY_SAMPLES_PASSED */
    int      active;        /* 1 between glBeginQuery / glEndQuery */
    GLuint64 result;        /* sample count (or 0/1 for ANY_SAMPLES_PASSED) */
    int      result_available;
} sg_query;

#define SG_QUERY_TARGET_SAMPLES_PASSED     0
#define SG_QUERY_TARGET_ANY_SAMPLES_PASSED 1
#define SG_QUERY_TARGET_COUNT              2

#define SG_TEX_TARGET_1D   0
#define SG_TEX_TARGET_2D   1
#define SG_TEX_TARGET_3D   2
#define SG_TEX_TARGET_CUBE 3
#define SG_TEX_TARGET_COUNT 4

/* 1D/2D/3D: data[level] (slices back-to-back for 3D).
 * CUBE: cube_faces[face][level] + cube_w/h; data[] mirrors face 0. */
typedef struct {
    uint32_t id;
    int      in_use;
    GLenum   target;
    GLenum   wrap_s, wrap_t, wrap_r;
    GLenum   min_filter, mag_filter;
    int      levels;
    int      w[SG_MAX_MIPMAP_LEVELS];
    int      h[SG_MAX_MIPMAP_LEVELS];
    int      d[SG_MAX_MIPMAP_LEVELS];                   /* 1 for 1D/2D */
    uint8_t *data[SG_MAX_MIPMAP_LEVELS];                /* 1D/2D/3D */
    uint8_t *cube_faces[6][SG_MAX_MIPMAP_LEVELS];
    int      cube_w[6][SG_MAX_MIPMAP_LEVELS];
    int      cube_h[6][SG_MAX_MIPMAP_LEVELS];
} sg_texture;

typedef struct {
    GLenum env_mode;
    GLenum combine_rgb;
    GLenum combine_a;
    GLenum src_rgb[3];
    GLenum src_a[3];
    GLenum op_rgb[3];
    GLenum op_a[3];
    float  env_color[4];
    float  rgb_scale;    /* legal 1/2/4 */
    float  alpha_scale;  /* legal 1/2/4 */
    int    enabled_target[SG_TEX_TARGET_COUNT];
    GLuint bound_tex_target[SG_TEX_TARGET_COUNT];
} sg_tex_env;

typedef struct {
    int   enabled;
    float ambient[4];
    float diffuse[4];
    float specular[4];
    float position[4];   /* w=0 directional, w=1 positional (eye-space) */
    float att_const;
    float att_linear;
    float att_quad;
} sg_light;

typedef struct {
    float ambient[4];
    float diffuse[4];
    float specular[4];
    float emission[4];
    float shininess;
} sg_material;

typedef struct {
    int     enabled;
    int     size;
    GLenum  type;
    int     stride;
    const uint8_t *ptr;
    GLuint  buffer;       /* VBO id, 0 = client array */
} sg_attrib_ptr;

/* Evaluators: one slot per target. Control points packed 4 floats each,
 * unused components zeroed. */
enum {
    SG_EV1_VERTEX_3 = 0, SG_EV1_VERTEX_4, SG_EV1_COLOR_4, SG_EV1_NORMAL,
    SG_EV1_TEX_1, SG_EV1_TEX_2, SG_EV1_TEX_3, SG_EV1_TEX_4,
    SG_EV1_COUNT
};
enum {
    SG_EV2_VERTEX_3 = 0, SG_EV2_VERTEX_4, SG_EV2_COLOR_4, SG_EV2_NORMAL,
    SG_EV2_TEX_1, SG_EV2_TEX_2, SG_EV2_TEX_3, SG_EV2_TEX_4,
    SG_EV2_COUNT
};

typedef struct {
    int     enabled;
    int     defined;
    float   u0, u1;
    int     order;
    int     components;
    float  *points;           /* order * 4 floats */
} sg_map1;

typedef struct {
    int     enabled;
    int     defined;
    float   u0, u1, v0, v1;
    int     u_order, v_order;
    int     components;
    float  *points;           /* uorder * vorder * 4 floats */
} sg_map2;

struct softgl_ctx {
    sg_framebuffer fb;

    /* Clear state */
    float clear_color[4];
    float clear_depth;

    /* Viewport / scissor */
    int  viewport[4];
    int  scissor[4];
    int  scissor_enabled;

    /* Raster state */
    int    cull_enabled;
    GLenum cull_face;
    GLenum front_face;
    int    depth_test;
    GLenum depth_func;
    int    depth_mask;
    int    blend;
    GLenum blend_src, blend_dst;
    int    alpha_test;
    GLenum alpha_func;
    float  alpha_ref;

    int    multisample;
    int    sample_alpha_to_coverage;
    int    sample_alpha_to_one;
    int    sample_coverage;
    float  sample_coverage_value;
    int    sample_coverage_invert;

    int    stencil_test;
    GLenum stencil_func;
    GLint  stencil_ref;
    GLuint stencil_value_mask;
    GLuint stencil_write_mask;
    GLenum stencil_sfail;
    GLenum stencil_dpfail;
    GLenum stencil_dppass;
    GLint  clear_stencil;

    float  line_width;
    float  point_size;
    GLenum polygon_mode_front;
    GLenum polygon_mode_back;
    float  polygon_offset_factor;
    float  polygon_offset_units;
    int    polygon_offset_fill;
    int    polygon_offset_line;
    int    polygon_offset_point;

    /* Fog */
    int    fog_enabled;
    GLenum fog_mode;
    float  fog_density;
    float  fog_start, fog_end;
    float  fog_color[4];

    /* Lighting */
    int         lighting;
    int         normalize;
    sg_light    lights[SG_MAX_LIGHTS];
    sg_material material_front;
    sg_material material_back;            /* used when two_side */
    float       light_model_ambient[4];   /* default (0.2,0.2,0.2,1) */
    int         light_model_local_viewer;
    int         light_model_two_side;
    int         color_material_enabled;
    GLenum      color_material_face;
    GLenum      color_material_mode;
    GLenum      shade_model;

    /* User clip planes: stored in eye-space (post inverse-MV xform). */
    double      clip_plane_eq[6][4];
    int         clip_plane_enabled[6];

    int         color_mask[4];
    int         color_logic_op_enabled;
    GLenum      logic_op;
    GLuint      index_writemask;          /* state-only */

    /* Hints: state-only. */
    GLenum      hint_perspective_correction;
    GLenum      hint_point_smooth;
    GLenum      hint_line_smooth;
    GLenum      hint_polygon_smooth;
    GLenum      hint_fog;
    GLenum      hint_generate_mipmap;

    /* Matrix stacks */
    GLenum   matrix_mode;
    sg_mat4  mv_stack[SG_MAX_MATRIX_STACK];
    sg_mat4  pr_stack[SG_MAX_MATRIX_STACK];
    sg_mat4  tex_stack[SG_MAX_TEX_UNITS][SG_MAX_MATRIX_STACK];
    int      mv_top;
    int      pr_top;
    int      tex_top[SG_MAX_TEX_UNITS];

    GLuint      active_tex_unit;
    GLuint      client_tex_unit;
    sg_tex_env  tex_env[SG_MAX_TEX_UNITS];

    sg_buffer  *buffers;    size_t buffers_cap;
    sg_texture *textures;   size_t textures_cap;
    GLuint      array_buffer_binding;
    GLuint      element_buffer_binding;

    /* Occlusion queries */
    sg_query *queries;
    size_t    queries_cap;
    GLuint    current_query[SG_QUERY_TARGET_COUNT];  /* 0 = none */

    softgl_vertex_attributes_fn vertex_attributes;
    softgl_vertex_attributes_full_fn vertex_attributes_full;
    int fused_dot3_enabled, fused_dot3_quartic;
    float fused_dot3_tint[4];
    void *vertex_attribute_data;
    GLuint vertex_attribute_unit;

    /* Client vertex state */
    sg_attrib_ptr attr_pos;
    sg_attrib_ptr attr_normal;
    sg_attrib_ptr attr_color;
    sg_attrib_ptr attr_tex[SG_MAX_TEX_UNITS];
    float         current_color[4];
    float         current_normal[3];
    float         current_texcoord[SG_MAX_TEX_UNITS][4];
    int           current_edge_flag;

    /* Immediate mode */
    int        imm_active;
    GLenum     imm_mode;
    sg_vert   *imm_buf;
    size_t     imm_count;
    size_t     imm_cap;

    /* Display lists */
    struct sg_dlist *lists;
    size_t     lists_cap;
    int        dlist_recording;
    GLuint     dlist_cur;
    int        dlist_exec;          /* GL_COMPILE_AND_EXECUTE */
    GLuint     dlist_base;
    int        dlist_depth;         /* nested call counter */

    /* Pixel-transfer state */
    struct {
        GLint alignment;      /* 1/2/4/8 (default 4) */
        GLint row_length;     /* 0 = use width */
        GLint skip_rows;
        GLint skip_pixels;
        GLint lsb_first;
        GLint swap_bytes;
    } pack, unpack;
    float  pixel_zoom_x;
    float  pixel_zoom_y;

    /* Raster position: post-transform window-space + snapshot of color/
     * texcoord at glRasterPos time. */
    float  raster_pos[4];
    float  raster_color[4];
    float  raster_texcoord[4];
    int    raster_pos_valid;

    /* Evaluators */
    sg_map1 map1[SG_EV1_COUNT];
    sg_map2 map2[SG_EV2_COUNT];
    int     map1_grid_n;        float map1_grid_u0, map1_grid_u1;
    int     map2_grid_nu;       float map2_grid_u0, map2_grid_u1;
    int     map2_grid_nv;       float map2_grid_v0, map2_grid_v1;
    int     auto_normal;

    /* Accum buffer: lazy-alloc on first glAccum. */
    float  *accum;
    float   clear_accum[4];

    /* Selection + Feedback */
    GLenum  render_mode;
    GLuint *sel_buffer;
    GLsizei sel_buffer_size;
    GLsizei sel_buffer_used;
    int     sel_overflow;
    GLuint  name_stack[SG_MAX_NAME_STACK];
    int     name_stack_top;     /* -1 = empty */
    int     sel_hit_count;
    int     sel_hit_record_open;
    float   sel_hit_zmin, sel_hit_zmax;
    GLfloat *fb_buffer;
    GLsizei  fb_buffer_size;
    GLsizei  fb_buffer_used;
    GLenum   fb_type;
    int      fb_overflow;

    /* Parallel raster workers (sg_worker_pool*, opaque here to keep
     * pthread out of the GL header fan-out). NULL = single-thread. */
    void   *workers;

    /* Stipple */
    int     line_stipple_enable;
    int     line_stipple_factor;
    GLushort line_stipple_pattern;
    int     line_stipple_counter;
    int     polygon_stipple_enable;
    GLubyte polygon_stipple[128];  /* 32 rows * 4 bytes */

    GLenum last_error;
    struct sg_scene_visibility *scene_visibility;
    struct sg_scene_visibility *scene_storage;
    int scene_material;

};

SG_INLINE float sg_clampf(float v, float lo, float hi) {
    return v < lo ? lo : (v > hi ? hi : v);
}

SG_INLINE uint8_t sg_quantize(float f) {
    float c = f < 0.f ? 0.f : (f > 1.f ? 1.f : f);
    return (uint8_t)(c * 255.0f + 0.5f);
}

void *sg_aligned_alloc(size_t size, size_t align);
void  sg_aligned_free(void *p);

struct softgl_ctx *sg_current(void);
void sg_msaa_resolve(softgl_ctx *c);
void sg_write_multisample(softgl_ctx *c, int x, int y, unsigned coverage,
                          const float z[4], const float color[4]);
void  sg_set_error(GLenum e);

void sg_mat4_mul(sg_mat4 *out, const sg_mat4 *a, const sg_mat4 *b);
void sg_mat4_mul_vec4(sg_vec4 *out, const sg_mat4 *m, const sg_vec4 *v);
void sg_mat4_normal_matrix(float out9[9], const sg_mat4 *m);
void sg_mat4_from_normal_matrix(sg_mat4 *out, const float nm9[9]);

struct sg_buffer_s;
struct sg_texture_s;
sg_buffer  *sg_buffer_get(softgl_ctx *c, GLuint id);
sg_texture *sg_texture_get(softgl_ctx *c, GLuint id);
sg_query   *sg_query_get(softgl_ctx *c, GLuint id);

/* Texture samplers: RGBA floats in [0,1]. */
void sg_sample_tex2d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t,
                     float u, float v, int mag, float out[4]);
void sg_sample_tex1d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, float u, int mag, float out[4]);
void sg_sample_tex3d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t, GLenum wrap_r,
                     float u, float v, float r, int mag, float out[4]);
void sg_sample_tex_cube(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                        GLenum wrap_s, GLenum wrap_t,
                        float x, float y, float z, int mag, float out[4]);
void sg_tex_env_combine_full(const sg_tex_env *env, int current_unit,
                             const float primary[4],
                             const float previous[4],
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             float out[4]);

/* Per-triangle tex context (hoist). Lifts tex_env scans + sg_texture_get
 * out of the per-pixel inner loop. */
typedef struct {
    int            active_slot;       /* SG_TEX_TARGET_*, -1 if inactive */
    sg_texture    *tex;
    GLenum         filter_min;
    GLenum         filter_mag;
    GLenum         wrap_s, wrap_t, wrap_r;
    int            tw, th, td;
    const uint8_t *data0;              /* level-0; NULL for cube */
    /* POT masks: dim-1 when POT, else 0. Enable bitmask wrap. */
    int            tw_mask_pot;
    int            th_mask_pot;
    int            tw_log2;            /* valid only when tw_mask_pot != 0 */
    int            constant_color_valid;
    float          constant_color[4]; /* prepared one-texel 2D sampler result */
} sg_tex_unit_tri;

typedef struct {
    sg_tex_unit_tri unit[SG_MAX_TEX_UNITS];
    int             any_active;
    int             fastpath_kind;     /* 0=generic 1=mod 2=replace 3=none */
    int             combine_kind;      /* 0=generic; complete DOT3 chain 1/2/3 */
    unsigned        sample_mask;       /* texture values consumed by active stages */
} sg_tex_tri_ctx;

void sg_tex_tri_prepare(softgl_ctx *c, sg_tex_tri_ctx *t);
typedef struct {
    int count, x[4], y[4];
    unsigned coverage[4];
    int64_t edge0[4], edge1[4];
    float depths[4][4];
} sg_pixel_packet;
void sg_scene_visibility_msaa_packet(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, const sg_pixel_packet *packet,
    float inverse_area, uint32_t *record);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
void sg_scene_msaa_hz_count(unsigned index);
#endif
void sg_scene_visibility_destroy(void *storage);
int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int ix0, int ix1);
/* Classification: 1 intrinsically empty, 0 covered, -1 unsupported/early HZ.
 * Explicit depth-capture jobs can also return 2: proven strictly depth-occluded.
 * Only intrinsic emptiness may permanently compact the geometry cache. */
int sg_raster_triangle_tile_prepared(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    int ix0, int ix1, const sg_tex_tri_ctx *tctx);
void sg_tex_tri_sample_units(const sg_tex_tri_ctx *t,
                             const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                             float w0, float w1, float w2, float one_over_wsum,
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             int   unit_active[SG_MAX_TEX_UNITS]);

void sg_process_triangle_pub(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2);
int sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out);

void sg_process_line (softgl_ctx *c, const sg_vert *v0, const sg_vert *v1);
void sg_process_point(softgl_ctx *c, const sg_vert *v);
/* Immediate-mode vertex: applies MV/projection/lighting like the array path. */
void sg_build_vertex_imm(softgl_ctx *c, float px, float py, float pz, float pw, sg_vert *out);

#endif
