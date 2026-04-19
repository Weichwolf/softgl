#ifndef SOFTGL_TYPES_H
#define SOFTGL_TYPES_H

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <GL/softgl.h>

#if defined(_MSC_VER)
  #define SG_ALIGN16 __declspec(align(16))
  #define SG_INLINE  __forceinline
  #define SG_RESTRICT __restrict
#else
  #define SG_ALIGN16 __attribute__((aligned(16)))
  #define SG_INLINE  static inline __attribute__((always_inline))
  #define SG_RESTRICT __restrict__
#endif

#define SG_MAX_LIGHTS        8
#define SG_MAX_TEX_UNITS     4
#define SG_MAX_MATRIX_STACK  32
#define SG_MAX_MIPMAP_LEVELS 16
#define SG_MAX_CLIP_VERTS    12   /* triangle clipped against 6 planes -> up to 9, +spares */
#define SG_TILE_SIZE         16

/* Everything uses RGBA8888 in framebuffer; internal math float. */

/* vec4: always 16B aligned, SIMD-ready. Access members directly; SIMD loads will use whole struct. */
typedef struct SG_ALIGN16 {
    float x, y, z, w;
} sg_vec4;

typedef struct SG_ALIGN16 {
    float m[16];   /* column-major, OpenGL convention */
} sg_mat4;

/* Interleaved AoS processed vertex. 16B-aligned AoS. */
typedef struct SG_ALIGN16 {
    sg_vec4 clip;      /* post-projection clip space */
    sg_vec4 ndc;       /* after perspective divide, screen space in xy, depth in z, 1/w in w */
    sg_vec4 color;     /* rgba 0..1 — FRONT-lit (or raw color if lighting off) */
    sg_vec4 color_back;/* BACK-lit (only valid when lighting + two_side) */
    sg_vec4 normal;    /* world/eye normal */
    sg_vec4 uv[SG_MAX_TEX_UNITS];  /* per-unit u,v,_,_ */
    sg_vec4 eye;       /* eye-space position, for lighting / fog */
} sg_vert;

/* Framebuffer: RGBA8 color + float depth + u8 stencil. Separate planes for cache locality. */
typedef struct {
    int w, h;
    uint8_t *color;    /* w*h*4 bytes */
    float   *depth;    /* w*h float, 0..1 */
    uint8_t *stencil;  /* w*h bytes (8-bit stencil) */
} sg_framebuffer;

/* Buffer object. */
typedef struct {
    uint32_t id;
    int      in_use;
    size_t   size;
    void    *data;
    GLenum   usage;
} sg_buffer;

/* Texture target slot indices for per-unit bindings / enables. */
#define SG_TEX_TARGET_1D   0
#define SG_TEX_TARGET_2D   1
#define SG_TEX_TARGET_3D   2
#define SG_TEX_TARGET_CUBE 3
#define SG_TEX_TARGET_COUNT 4

/* Texture object. Stores 1D / 2D / 3D / cube-map data in a uniform layout.
 *   - 1D:  w[level] texels, data[level] is w*4 bytes RGBA8, h=d=1
 *   - 2D:  w[level]*h[level] texels in data[level]
 *   - 3D:  w*h*d[level] texels in data[level] (slices stored back-to-back)
 *   - CUBE: 6 faces, each with w*h texels; face data lives in cube_faces[face][level] */
typedef struct {
    uint32_t id;
    int      in_use;
    GLenum   target;        /* 0 until first-use sets it */
    GLenum   wrap_s, wrap_t, wrap_r;
    GLenum   min_filter, mag_filter;
    int      levels;        /* number of mip levels present (base face for cube) */
    int      w[SG_MAX_MIPMAP_LEVELS];
    int      h[SG_MAX_MIPMAP_LEVELS];
    int      d[SG_MAX_MIPMAP_LEVELS];       /* depth for 3D, 1 otherwise */
    uint8_t *data[SG_MAX_MIPMAP_LEVELS];    /* 1D/2D/3D texel data */
    uint8_t *cube_faces[6][SG_MAX_MIPMAP_LEVELS];  /* only for CUBE_MAP */
    int      cube_w[6][SG_MAX_MIPMAP_LEVELS];
    int      cube_h[6][SG_MAX_MIPMAP_LEVELS];
} sg_texture;

/* Per-unit texture env. */
typedef struct {
    GLenum env_mode;     /* GL_MODULATE, GL_REPLACE, GL_DECAL, GL_COMBINE */
    GLenum combine_rgb;  /* GL_REPLACE, GL_MODULATE, GL_DOT3_RGB, ... */
    GLenum combine_a;
    GLenum src_rgb[3];
    GLenum src_a[3];
    GLenum op_rgb[3];
    GLenum op_a[3];
    float  env_color[4];
    /* Per-target enable bits and bindings. Index via SG_TEX_TARGET_*. */
    int    enabled_target[SG_TEX_TARGET_COUNT];
    GLuint bound_tex_target[SG_TEX_TARGET_COUNT];
} sg_tex_env;

/* Light. */
typedef struct {
    int   enabled;
    float ambient[4];
    float diffuse[4];
    float specular[4];
    float position[4];   /* w=0 directional, w=1 positional (in eye space after glLightfv) */
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

/* Vertex attribute pointer as set via glVertexPointer etc. */
typedef struct {
    int     enabled;
    int     size;         /* components per element */
    GLenum  type;
    int     stride;
    const uint8_t *ptr;
    GLuint  buffer;       /* bound VBO when pointer was set; 0 = client array */
} sg_attrib_ptr;

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
    GLenum cull_face;        /* GL_BACK default */
    GLenum front_face;       /* GL_CCW default */
    int    depth_test;
    GLenum depth_func;
    int    depth_mask;       /* write enable */
    int    blend;
    GLenum blend_src, blend_dst;
    int    alpha_test;
    GLenum alpha_func;
    float  alpha_ref;

    /* Stencil state */
    int    stencil_test;         /* GL_STENCIL_TEST on/off */
    GLenum stencil_func;         /* default GL_ALWAYS */
    GLint  stencil_ref;          /* default 0 */
    GLuint stencil_value_mask;   /* default 0xFF */
    GLuint stencil_write_mask;   /* default 0xFF */
    GLenum stencil_sfail;        /* default GL_KEEP */
    GLenum stencil_dpfail;       /* default GL_KEEP */
    GLenum stencil_dppass;       /* default GL_KEEP */
    GLint  clear_stencil;        /* default 0 */

    /* Line / point / polygon-mode state */
    float  line_width;                 /* glLineWidth, default 1.0 */
    float  point_size;                 /* glPointSize, default 1.0 */
    GLenum polygon_mode_front;         /* glPolygonMode front face, default GL_FILL */
    GLenum polygon_mode_back;          /* glPolygonMode back face,  default GL_FILL */
    float  polygon_offset_factor;      /* glPolygonOffset factor */
    float  polygon_offset_units;       /* glPolygonOffset units */
    int    polygon_offset_fill;        /* GL_POLYGON_OFFSET_FILL enable */
    int    polygon_offset_line;        /* GL_POLYGON_OFFSET_LINE enable */
    int    polygon_offset_point;       /* GL_POLYGON_OFFSET_POINT enable */

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
    sg_material material_back;            /* used when light_model_two_side=1 */
    float       light_model_ambient[4];   /* GL_LIGHT_MODEL_AMBIENT, default (0.2,0.2,0.2,1) */
    int         light_model_local_viewer; /* GL_LIGHT_MODEL_LOCAL_VIEWER, default 0 */
    int         light_model_two_side;     /* GL_LIGHT_MODEL_TWO_SIDE, default 0 */
    int         color_material_enabled;   /* GL_COLOR_MATERIAL enable flag */
    GLenum      color_material_face;      /* GL_FRONT / GL_BACK / GL_FRONT_AND_BACK */
    GLenum      color_material_mode;      /* GL_AMBIENT / GL_DIFFUSE / ... */
    GLenum      shade_model;  /* GL_SMOOTH default, GL_FLAT optional */

    /* User clip planes — 6 planes, stored in eye-space after inverse-MV xform. */
    double      clip_plane_eq[6][4];
    int         clip_plane_enabled[6];

    /* Per-channel color write mask, pixel logic op, index mask. */
    int         color_mask[4];            /* r,g,b,a — 1=write, 0=skip */
    int         color_logic_op_enabled;   /* GL_COLOR_LOGIC_OP */
    GLenum      logic_op;                 /* GL_COPY default */
    GLuint      index_writemask;          /* indexed-mode only; state-only. */

    /* Hints — state-only, mapped to a small array. */
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

    /* Texture units */
    GLuint      active_tex_unit;      /* GL_ACTIVE_TEXTURE */
    GLuint      client_tex_unit;      /* GL_CLIENT_ACTIVE_TEXTURE */
    sg_tex_env  tex_env[SG_MAX_TEX_UNITS];

    /* Object pools */
    sg_buffer  *buffers;    size_t buffers_cap;
    sg_texture *textures;   size_t textures_cap;
    GLuint      array_buffer_binding;
    GLuint      element_buffer_binding;

    /* Vertex attribute pointers (client state) */
    sg_attrib_ptr attr_pos;
    sg_attrib_ptr attr_normal;
    sg_attrib_ptr attr_color;
    sg_attrib_ptr attr_tex[SG_MAX_TEX_UNITS];
    float         current_color[4];   /* if color array disabled */
    float         current_normal[3];
    float         current_texcoord[SG_MAX_TEX_UNITS][4];  /* s,t,r,q per unit */
    int           current_edge_flag;

    /* Immediate mode (glBegin/glEnd) */
    int        imm_active;          /* 1 between glBegin and glEnd */
    GLenum     imm_mode;
    sg_vert   *imm_buf;             /* dynamically grown ring of processed vertices */
    size_t     imm_count;           /* vertices emitted in current primitive */
    size_t     imm_cap;             /* capacity of imm_buf */

    /* Display lists */
    struct sg_dlist *lists;
    size_t     lists_cap;
    int        dlist_recording;     /* 1 while inside glNewList..glEndList */
    GLuint     dlist_cur;           /* id currently being recorded */
    int        dlist_exec;          /* GL_COMPILE_AND_EXECUTE mode? */
    GLuint     dlist_base;          /* glListBase */
    int        dlist_depth;         /* nested call counter */

    /* Pixel-transfer state (Phase 7): pack/unpack + zoom. */
    struct {
        GLint alignment;      /* 1,2,4,8 (default 4) */
        GLint row_length;     /* 0 = use width */
        GLint skip_rows;
        GLint skip_pixels;
        GLint lsb_first;
        GLint swap_bytes;
    } pack, unpack;
    float  pixel_zoom_x;
    float  pixel_zoom_y;

    /* Raster position (Phase 7). Post-transform window-space coord + snapshot
     * of current color / texcoord at the moment glRasterPos was called. */
    float  raster_pos[4];
    float  raster_color[4];
    float  raster_texcoord[4];
    int    raster_pos_valid;

    /* Error */
    GLenum last_error;
};

/* ---- Small helpers, header-only for speed ---- */

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
void  sg_set_error(GLenum e);

/* From matrix.c */
void sg_mat4_mul(sg_mat4 *out, const sg_mat4 *a, const sg_mat4 *b);
void sg_mat4_mul_vec4(sg_vec4 *out, const sg_mat4 *m, const sg_vec4 *v);
void sg_mat4_normal_matrix(float out9[9], const sg_mat4 *m);

/* From buffers.c / texture.c */
struct sg_buffer_s;
struct sg_texture_s;
sg_buffer  *sg_buffer_get(softgl_ctx *c, GLuint id);
sg_texture *sg_texture_get(softgl_ctx *c, GLuint id);

/* From pipeline.c */
void sg_process_triangle_pub(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2);
void sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out);

/* From lines.c */
void sg_process_line (softgl_ctx *c, const sg_vert *v0, const sg_vert *v1);
void sg_process_point(softgl_ctx *c, const sg_vert *v);
/* Build an sg_vert from an immediate-mode position + current per-vertex state
 * (current_color / current_normal / current_texcoord[unit]).  Applies
 * modelview, projection, and (if enabled) lighting, exactly like the array
 * path. */
void sg_build_vertex_imm(softgl_ctx *c, float px, float py, float pz, float pw, sg_vert *out);

#endif
