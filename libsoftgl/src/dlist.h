#ifndef SOFTGL_DLIST_H
#define SOFTGL_DLIST_H

#include "types.h"

/* ==================================================================
 * Display-list recording.
 *
 * Each list is an opaque byte stream.  A command is { uint16_t op; <args> }
 * where <args> is a fixed payload for the given op.  Pointer-referenced
 * data (texture pixels, VBO data, indices, etc.) is deep-copied inline
 * in the stream after the fixed args so replay is self-contained.
 *
 * Recording routes through thin public wrappers (glTranslatef, ...) that
 * either call their _real twin immediately, or emit a record (+execute
 * immediately when GL_COMPILE_AND_EXECUTE was selected).
 * ================================================================== */

enum {
    /* Matrix */
    SG_OP_MATRIX_MODE = 1,
    SG_OP_LOAD_IDENTITY,
    SG_OP_LOAD_MATRIX,      /* float[16]                       */
    SG_OP_MULT_MATRIX,      /* float[16]                       */
    SG_OP_PUSH_MATRIX,
    SG_OP_POP_MATRIX,
    SG_OP_TRANSLATE,        /* float[3]                        */
    SG_OP_ROTATE,           /* float angle, float[3] axis      */
    SG_OP_SCALE,            /* float[3]                        */
    SG_OP_ORTHO,            /* double[6]                       */
    SG_OP_FRUSTUM,          /* double[6]                       */

    /* Clear / framebuffer */
    SG_OP_CLEAR,            /* GLbitfield                      */
    SG_OP_CLEAR_COLOR,      /* float[4]                        */
    SG_OP_CLEAR_DEPTH,      /* float                           */

    /* Raster / viewport / state */
    SG_OP_VIEWPORT,         /* int[4]                          */
    SG_OP_SCISSOR,          /* int[4]                          */
    SG_OP_DEPTH_FUNC,       /* GLenum                          */
    SG_OP_DEPTH_MASK,       /* GLboolean                       */
    SG_OP_CULL_FACE,        /* GLenum                          */
    SG_OP_FRONT_FACE,       /* GLenum                          */
    SG_OP_ENABLE,           /* GLenum                          */
    SG_OP_DISABLE,          /* GLenum                          */
    SG_OP_BLEND_FUNC,       /* GLenum s, GLenum d              */
    SG_OP_ALPHA_FUNC,       /* GLenum, float                   */
    SG_OP_SHADE_MODEL,      /* GLenum                          */

    /* Fog / light */
    SG_OP_FOGI,             /* GLenum, GLint                   */
    SG_OP_FOGF,             /* GLenum, float                   */
    SG_OP_FOGFV,            /* GLenum, float[4]                */
    SG_OP_LIGHTFV,          /* GLenum, GLenum, float[4]        */
    SG_OP_LIGHTF,           /* GLenum, GLenum, float           */
    SG_OP_MATERIALFV,       /* GLenum, GLenum, float[4]        */
    SG_OP_MATERIALF,        /* GLenum, GLenum, float           */
    SG_OP_LIGHT_MODELFV,    /* GLenum, float[4]                */

    /* Texture */
    SG_OP_ACTIVE_TEX,       /* GLenum unit                     */
    SG_OP_BIND_TEXTURE,     /* GLenum target, GLuint id        */
    SG_OP_TEX_IMAGE_2D,     /* large: target,level,ifmt,w,h,border,format,type,size, <pixels> */
    SG_OP_TEX_IMAGE_1D,
    SG_OP_TEX_IMAGE_3D,
    SG_OP_TEX_SUB_IMAGE_1D,
    SG_OP_TEX_SUB_IMAGE_2D,
    SG_OP_TEX_SUB_IMAGE_3D,
    SG_OP_COPY_TEX_IMAGE_1D,
    SG_OP_COPY_TEX_IMAGE_2D,
    SG_OP_COPY_TEX_SUB_IMAGE_1D,
    SG_OP_COPY_TEX_SUB_IMAGE_2D,
    SG_OP_TEX_PARAM_I,      /* GLenum,GLenum,GLint             */
    SG_OP_TEX_PARAM_F,      /* GLenum,GLenum,float             */
    SG_OP_TEX_ENV_I,        /* GLenum,GLenum,GLint             */
    SG_OP_TEX_ENV_F,        /* GLenum,GLenum,float             */
    SG_OP_TEX_ENV_FV,       /* GLenum,GLenum,float[4]          */

    /* Buffers / client state */
    SG_OP_BIND_BUFFER,      /* GLenum, GLuint                  */
    SG_OP_BUFFER_DATA,      /* GLenum,size,usage, <data>       */
    SG_OP_BUFFER_SUBDATA,   /* GLenum,offset,size, <data>      */
    SG_OP_ENABLE_CLIENT,    /* GLenum                          */
    SG_OP_DISABLE_CLIENT,   /* GLenum                          */
    SG_OP_VERTEX_POINTER,   /* GLint, GLenum, GLsizei, ptr, buffer */
    SG_OP_NORMAL_POINTER,   /* GLenum, GLsizei, ptr, buffer    */
    SG_OP_COLOR_POINTER,    /* GLint, GLenum, GLsizei, ptr, buffer */
    SG_OP_TEXCOORD_POINTER, /* GLint, GLenum, GLsizei, ptr, buffer, client_unit */
    SG_OP_CLIENT_ACTIVE_TEX,/* GLenum                          */
    SG_OP_DRAW_ARRAYS,      /* GLenum,first,count              */
    SG_OP_DRAW_ELEMENTS,    /* GLenum,count,type,buf_bound,<indices> */

    /* Immediate mode — we record the reduced state-setters and vertex
     * emissions, so the 150+ type variants all funnel here. */
    SG_OP_BEGIN,            /* GLenum                          */
    SG_OP_END,
    SG_OP_CUR_COLOR,        /* float[4]                        */
    SG_OP_CUR_NORMAL,       /* float[3]                        */
    SG_OP_CUR_TEXCOORD,     /* uint32 unit, float[4]           */
    SG_OP_CUR_EDGEFLAG,     /* int                             */
    SG_OP_VERTEX,           /* float[4]                        */
    SG_OP_ARRAY_ELEMENT,    /* int                             */
    SG_OP_RECT,             /* float[4]                        */

    /* Nested display list playback */
    SG_OP_CALL_LIST,        /* GLuint                          */
    SG_OP_CALL_LISTS,       /* GLsizei n, GLenum type, <data>  */
    SG_OP_LIST_BASE,        /* GLuint                          */

    /* Line / point / polygon-mode */
    SG_OP_LINE_WIDTH,       /* float                           */
    SG_OP_POINT_SIZE,       /* float                           */
    SG_OP_POLYGON_MODE,     /* GLenum face, GLenum mode        */
    SG_OP_POLYGON_OFFSET,   /* float factor, float units       */

    /* Stencil */
    SG_OP_STENCIL_FUNC,     /* GLenum func, GLint ref, GLuint mask */
    SG_OP_STENCIL_OP,       /* GLenum[3]                       */
    SG_OP_STENCIL_MASK,     /* GLuint                          */
    SG_OP_CLEAR_STENCIL,    /* GLint                           */

    /* Phase 6: clip planes, color material, light model extras, masks */
    SG_OP_CLIP_PLANE,       /* GLenum plane, double[4]          */
    SG_OP_COLOR_MATERIAL,   /* GLenum face, GLenum mode         */
    SG_OP_COLOR_MASK,       /* GLboolean[4]                     */
    SG_OP_LOGIC_OP,         /* GLenum                           */
    SG_OP_HINT,             /* GLenum target, GLenum mode       */
    SG_OP_INDEX_MASK,       /* GLuint                           */
    SG_OP_LIGHT_MODELF,     /* GLenum, float                    */
    SG_OP_LIGHT_MODELI,     /* GLenum, GLint                    */

    SG_OP_END_OF_LIST       /* sentinel */
};

typedef struct sg_dlist {
    GLuint  id;
    int     in_use;
    uint8_t *cmds;
    size_t   cmds_size;
    size_t   cmds_cap;
} sg_dlist;

/* Core services. */
void sg_dlist_init(softgl_ctx *c);
void sg_dlist_shutdown(softgl_ctx *c);

sg_dlist *sg_dlist_get(softgl_ctx *c, GLuint id);
int       sg_dlist_append(softgl_ctx *c, const void *data, size_t size);
void      sg_dlist_replay(softgl_ctx *c, GLuint id);

/* Helper used by public wrappers to write op + fixed payload. Returns 0 on OOM. */
int sg_dlist_emit(softgl_ctx *c, uint16_t op, const void *payload, size_t size);

/* ---- _real implementations (the actual work, bypassing the recording check).
 * These are what the public wrappers call when NOT recording, and what
 * sg_dlist_replay() invokes for each recorded op. ---- */

/* Matrix */
void _sg_matrix_mode_real(GLenum m);
void _sg_load_identity_real(void);
void _sg_load_matrix_real(const GLfloat *m);
void _sg_mult_matrix_real(const GLfloat *m);
void _sg_push_matrix_real(void);
void _sg_pop_matrix_real(void);
void _sg_translate_real(GLfloat x, GLfloat y, GLfloat z);
void _sg_rotate_real(GLfloat a, GLfloat x, GLfloat y, GLfloat z);
void _sg_scale_real(GLfloat x, GLfloat y, GLfloat z);
void _sg_ortho_real(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);
void _sg_frustum_real(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);

/* Framebuffer */
void _sg_clear_real(GLbitfield mask);
void _sg_clear_color_real(GLclampf r, GLclampf g, GLclampf b, GLclampf a);
void _sg_clear_depth_real(GLclampd d);

/* State */
void _sg_viewport_real(GLint x, GLint y, GLsizei w, GLsizei h);
void _sg_scissor_real(GLint x, GLint y, GLsizei w, GLsizei h);
void _sg_depth_func_real(GLenum f);
void _sg_depth_mask_real(GLboolean b);
void _sg_cull_face_real(GLenum m);
void _sg_front_face_real(GLenum m);
void _sg_enable_real(GLenum cap);
void _sg_disable_real(GLenum cap);
void _sg_blend_func_real(GLenum s, GLenum d);
void _sg_alpha_func_real(GLenum f, GLclampf ref);
void _sg_shade_model_real(GLenum m);
void _sg_stencil_func_real(GLenum func, GLint ref, GLuint mask);
void _sg_stencil_op_real(GLenum sfail, GLenum dpfail, GLenum dppass);
void _sg_stencil_mask_real(GLuint mask);
void _sg_clear_stencil_real(GLint s);

/* Lighting / fog */
void _sg_fogi_real(GLenum p, GLint v);
void _sg_fogf_real(GLenum p, GLfloat v);
void _sg_fogfv_real(GLenum p, const GLfloat *v);
void _sg_lightfv_real(GLenum light, GLenum pname, const GLfloat *v);
void _sg_lightf_real(GLenum light, GLenum pname, GLfloat v);
void _sg_materialfv_real(GLenum face, GLenum pname, const GLfloat *v);
void _sg_materialf_real(GLenum face, GLenum pname, GLfloat v);
void _sg_light_modelfv_real(GLenum p, const GLfloat *v);

/* Texture */
void _sg_active_texture_real(GLenum unit);
void _sg_bind_texture_real(GLenum target, GLuint id);
void _sg_tex_image_2d_real(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                           GLint border, GLenum format, GLenum type, const void *pixels);
void _sg_tex_image_1d_real(GLenum target, GLint level, GLint ifmt, GLsizei w,
                           GLint border, GLenum format, GLenum type, const void *pixels);
void _sg_tex_image_3d_real(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                           GLsizei d, GLint border, GLenum format, GLenum type,
                           const void *pixels);
void _sg_tex_sub_image_1d_real(GLenum target, GLint level, GLint xoff, GLsizei w,
                               GLenum format, GLenum type, const void *pixels);
void _sg_tex_sub_image_2d_real(GLenum target, GLint level, GLint xoff, GLint yoff,
                               GLsizei w, GLsizei h, GLenum format, GLenum type,
                               const void *pixels);
void _sg_tex_sub_image_3d_real(GLenum target, GLint level, GLint xoff, GLint yoff, GLint zoff,
                               GLsizei w, GLsizei h, GLsizei d,
                               GLenum format, GLenum type, const void *pixels);
void _sg_copy_tex_image_1d_real(GLenum target, GLint level, GLenum ifmt,
                                GLint x, GLint y, GLsizei w, GLint border);
void _sg_copy_tex_image_2d_real(GLenum target, GLint level, GLenum ifmt,
                                GLint x, GLint y, GLsizei w, GLsizei h, GLint border);
void _sg_copy_tex_sub_image_1d_real(GLenum target, GLint level, GLint xoff,
                                    GLint x, GLint y, GLsizei w);
void _sg_copy_tex_sub_image_2d_real(GLenum target, GLint level, GLint xoff, GLint yoff,
                                    GLint x, GLint y, GLsizei w, GLsizei h);
void _sg_tex_parameter_i_real(GLenum target, GLenum pname, GLint param);
void _sg_tex_parameter_f_real(GLenum target, GLenum pname, GLfloat param);
void _sg_tex_env_i_real(GLenum target, GLenum pname, GLint param);
void _sg_tex_env_f_real(GLenum target, GLenum pname, GLfloat param);
void _sg_tex_env_fv_real(GLenum target, GLenum pname, const GLfloat *params);

/* Buffers / vertex arrays */
void _sg_bind_buffer_real(GLenum target, GLuint id);
void _sg_buffer_data_real(GLenum target, GLsizeiptr size, const void *data, GLenum usage);
void _sg_buffer_subdata_real(GLenum target, GLintptr offset, GLsizeiptr size, const void *data);
void _sg_enable_client_state_real(GLenum cap);
void _sg_disable_client_state_real(GLenum cap);
void _sg_vertex_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr);
void _sg_normal_pointer_real(GLenum type, GLsizei stride, const void *ptr);
void _sg_color_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr);
void _sg_texcoord_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr);
void _sg_client_active_tex_real(GLenum unit);
void _sg_draw_arrays_real(GLenum mode, GLint first, GLsizei count);
void _sg_draw_elements_real(GLenum mode, GLsizei count, GLenum type, const void *indices);

/* Line / point / polygon-mode */
void _sg_line_width_real(GLfloat w);
void _sg_point_size_real(GLfloat s);
void _sg_polygon_mode_real(GLenum face, GLenum mode);
void _sg_polygon_offset_real(GLfloat factor, GLfloat units);

/* Phase 6 */
void _sg_clip_plane_real(GLenum plane, const GLdouble *equation);
void _sg_color_material_real(GLenum face, GLenum mode);
void _sg_color_mask_real(GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void _sg_logic_op_real(GLenum op);
void _sg_hint_real(GLenum target, GLenum mode);
void _sg_index_mask_real(GLuint mask);
void _sg_light_modelf_real(GLenum p, GLfloat v);
void _sg_light_modeli_real(GLenum p, GLint v);

/* Immediate mode — normalized primitives */
void _sg_begin_real(GLenum mode);
void _sg_end_real(void);
void _sg_cur_color_real(float r, float g, float b, float a);
void _sg_cur_normal_real(float x, float y, float z);
void _sg_cur_texcoord_real(unsigned unit, float s, float t, float r, float q);
void _sg_cur_edgeflag_real(int f);
void _sg_vertex_real(float x, float y, float z, float w);
void _sg_array_element_real(GLint i);
void _sg_rect_real(float x1, float y1, float x2, float y2);

#endif
