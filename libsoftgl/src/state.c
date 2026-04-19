#include "types.h"
#include "dlist.h"
#include <stdlib.h>
#include <string.h>

void *sg_aligned_alloc(size_t size, size_t align) {
    if (align < sizeof(void*)) align = sizeof(void*);
    size_t pad = align + sizeof(void*);
    uint8_t *raw = (uint8_t*)malloc(size + pad);
    if (!raw) return NULL;
    uintptr_t aligned = ((uintptr_t)raw + pad) & ~(uintptr_t)(align - 1);
    ((void**)aligned)[-1] = raw;
    return (void*)aligned;
}

void sg_aligned_free(void *p) {
    if (!p) return;
    free(((void**)p)[-1]);
}

static softgl_ctx *g_current = NULL;

softgl_ctx *sg_current(void) { return g_current; }

static void sg_mat4_identity(sg_mat4 *m) {
    memset(m->m, 0, sizeof(m->m));
    m->m[0] = m->m[5] = m->m[10] = m->m[15] = 1.0f;
}

static void sg_reset_state(softgl_ctx *c) {
    c->clear_color[0] = c->clear_color[1] = c->clear_color[2] = 0.f;
    c->clear_color[3] = 0.f;
    c->clear_depth = 1.0f;

    c->viewport[0] = 0;
    c->viewport[1] = 0;
    c->viewport[2] = c->fb.w;
    c->viewport[3] = c->fb.h;
    c->scissor[0] = 0;
    c->scissor[1] = 0;
    c->scissor[2] = c->fb.w;
    c->scissor[3] = c->fb.h;
    c->scissor_enabled = 0;

    c->cull_enabled = 0;
    c->cull_face  = GL_BACK;
    c->front_face = GL_CCW;
    c->depth_test = 0;
    c->depth_func = GL_LESS;
    c->depth_mask = 1;
    c->blend = 0;
    c->blend_src = GL_ONE;
    c->blend_dst = GL_ZERO;
    c->alpha_test = 0;
    c->alpha_func = GL_ALWAYS;
    c->alpha_ref = 0.f;

    c->stencil_test = 0;
    c->stencil_func = GL_ALWAYS;
    c->stencil_ref  = 0;
    c->stencil_value_mask = 0xFFu;
    c->stencil_write_mask = 0xFFu;
    c->stencil_sfail  = GL_KEEP;
    c->stencil_dpfail = GL_KEEP;
    c->stencil_dppass = GL_KEEP;
    c->clear_stencil  = 0;

    c->line_width = 1.0f;
    c->point_size = 1.0f;
    c->polygon_mode_front = GL_FILL;
    c->polygon_mode_back  = GL_FILL;
    c->polygon_offset_factor = 0.f;
    c->polygon_offset_units  = 0.f;
    c->polygon_offset_fill  = 0;
    c->polygon_offset_line  = 0;
    c->polygon_offset_point = 0;

    c->fog_enabled = 0;
    c->fog_mode = GL_EXP;
    c->fog_density = 1.0f;
    c->fog_start = 0.f;
    c->fog_end = 1.f;
    c->fog_color[0] = c->fog_color[1] = c->fog_color[2] = 0.f;
    c->fog_color[3] = 0.f;

    c->lighting = 0;
    c->normalize = 0;
    memset(c->lights, 0, sizeof(c->lights));
    c->lights[0].diffuse[0]  = c->lights[0].diffuse[1]  = c->lights[0].diffuse[2]  = c->lights[0].diffuse[3]  = 1.f;
    c->lights[0].specular[0] = c->lights[0].specular[1] = c->lights[0].specular[2] = c->lights[0].specular[3] = 1.f;
    for (int i = 0; i < SG_MAX_LIGHTS; i++) {
        c->lights[i].position[0] = 0.f;
        c->lights[i].position[1] = 0.f;
        c->lights[i].position[2] = 1.f;
        c->lights[i].position[3] = 0.f;
        c->lights[i].ambient[3] = 1.f;
        c->lights[i].att_const = 1.f;
        c->lights[i].att_linear = 0.f;
        c->lights[i].att_quad = 0.f;
    }

    c->material_front.ambient[0]  = c->material_front.ambient[1]  = c->material_front.ambient[2]  = 0.2f;
    c->material_front.ambient[3]  = 1.f;
    c->material_front.diffuse[0]  = c->material_front.diffuse[1]  = c->material_front.diffuse[2]  = 0.8f;
    c->material_front.diffuse[3]  = 1.f;
    c->material_front.specular[0] = c->material_front.specular[1] = c->material_front.specular[2] = 0.f;
    c->material_front.specular[3] = 1.f;
    c->material_front.emission[0] = c->material_front.emission[1] = c->material_front.emission[2] = 0.f;
    c->material_front.emission[3] = 1.f;
    c->material_front.shininess = 0.f;
    c->material_back = c->material_front;   /* identical default */
    c->shade_model = 0x1D01;
    c->light_model_ambient[0] = 0.2f;
    c->light_model_ambient[1] = 0.2f;
    c->light_model_ambient[2] = 0.2f;
    c->light_model_ambient[3] = 1.0f;
    c->light_model_local_viewer = 0;
    c->light_model_two_side     = 0;
    c->color_material_enabled   = 0;
    c->color_material_face      = GL_FRONT_AND_BACK;
    c->color_material_mode      = GL_AMBIENT_AND_DIFFUSE;

    /* Clip planes: all zero, all disabled. */
    memset(c->clip_plane_eq, 0, sizeof(c->clip_plane_eq));
    for (int i = 0; i < 6; i++) c->clip_plane_enabled[i] = 0;

    /* Color mask: all channels written by default. */
    c->color_mask[0] = c->color_mask[1] = c->color_mask[2] = c->color_mask[3] = 1;
    c->color_logic_op_enabled = 0;
    c->logic_op = GL_COPY;
    c->index_writemask = 0xFFFFFFFFu;

    /* Hints default to GL_DONT_CARE. */
    c->hint_perspective_correction = GL_DONT_CARE;
    c->hint_point_smooth           = GL_DONT_CARE;
    c->hint_line_smooth            = GL_DONT_CARE;
    c->hint_polygon_smooth         = GL_DONT_CARE;
    c->hint_fog                    = GL_DONT_CARE;
    c->hint_generate_mipmap        = GL_DONT_CARE;

    c->matrix_mode = GL_MODELVIEW;
    sg_mat4_identity(&c->mv_stack[0]);
    sg_mat4_identity(&c->pr_stack[0]);
    c->mv_top = 0;
    c->pr_top = 0;
    for (int i = 0; i < SG_MAX_TEX_UNITS; i++) {
        sg_mat4_identity(&c->tex_stack[i][0]);
        c->tex_top[i] = 0;
    }

    c->active_tex_unit = 0;
    c->client_tex_unit = 0;
    for (int i = 0; i < SG_MAX_TEX_UNITS; i++) {
        c->tex_env[i].env_mode = GL_MODULATE;
        c->tex_env[i].combine_rgb = GL_MODULATE;
        c->tex_env[i].combine_a   = GL_MODULATE;
        c->tex_env[i].src_rgb[0] = GL_PREVIOUS;
        c->tex_env[i].src_rgb[1] = GL_TEXTURE0 + i;
        c->tex_env[i].src_rgb[2] = GL_CONSTANT;
        c->tex_env[i].src_a[0]   = GL_PREVIOUS;
        c->tex_env[i].src_a[1]   = GL_TEXTURE0 + i;
        c->tex_env[i].src_a[2]   = GL_CONSTANT;
        c->tex_env[i].op_rgb[0] = GL_SRC_COLOR;
        c->tex_env[i].op_rgb[1] = GL_SRC_COLOR;
        c->tex_env[i].op_rgb[2] = GL_SRC_ALPHA;
        c->tex_env[i].op_a[0]   = GL_SRC_ALPHA;
        c->tex_env[i].op_a[1]   = GL_SRC_ALPHA;
        c->tex_env[i].op_a[2]   = GL_SRC_ALPHA;
        c->tex_env[i].env_color[0] = c->tex_env[i].env_color[1] = c->tex_env[i].env_color[2] = 0.f;
        c->tex_env[i].env_color[3] = 0.f;
        for (int k = 0; k < SG_TEX_TARGET_COUNT; k++) {
            c->tex_env[i].enabled_target[k]   = 0;
            c->tex_env[i].bound_tex_target[k] = 0;
        }
    }

    c->buffers = NULL;
    c->buffers_cap = 0;
    c->textures = NULL;
    c->textures_cap = 0;
    c->array_buffer_binding = 0;
    c->element_buffer_binding = 0;

    memset(&c->attr_pos, 0, sizeof(c->attr_pos));
    memset(&c->attr_normal, 0, sizeof(c->attr_normal));
    memset(&c->attr_color, 0, sizeof(c->attr_color));
    memset(c->attr_tex, 0, sizeof(c->attr_tex));
    c->current_color[0] = c->current_color[1] = c->current_color[2] = c->current_color[3] = 1.f;
    c->current_normal[0] = 0.f;
    c->current_normal[1] = 0.f;
    c->current_normal[2] = 1.f;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        c->current_texcoord[u][0] = 0.f;
        c->current_texcoord[u][1] = 0.f;
        c->current_texcoord[u][2] = 0.f;
        c->current_texcoord[u][3] = 1.f;
    }
    c->current_edge_flag = 1;

    c->imm_active = 0;
    c->imm_mode   = 0;
    c->imm_buf    = NULL;
    c->imm_count  = 0;
    c->imm_cap    = 0;

    sg_dlist_init(c);

    c->last_error = GL_NO_ERROR;
}

softgl_ctx *softgl_create(GLsizei w, GLsizei h) {
    softgl_ctx *c = (softgl_ctx*)calloc(1, sizeof(*c));
    if (!c) return NULL;
    c->fb.w = w;
    c->fb.h = h;
    c->fb.color   = (uint8_t*)sg_aligned_alloc((size_t)w * h * 4, 16);
    c->fb.depth   = (float*)  sg_aligned_alloc((size_t)w * h * sizeof(float), 16);
    c->fb.stencil = (uint8_t*)sg_aligned_alloc((size_t)w * h, 16);
    if (!c->fb.color || !c->fb.depth || !c->fb.stencil) {
        softgl_destroy(c);
        return NULL;
    }
    memset(c->fb.color, 0, (size_t)w * h * 4);
    memset(c->fb.stencil, 0, (size_t)w * h);
    for (int i = 0; i < w * h; i++) c->fb.depth[i] = 1.0f;
    sg_reset_state(c);
    return c;
}

void softgl_destroy(softgl_ctx *c) {
    if (!c) return;
    if (c->fb.color)   sg_aligned_free(c->fb.color);
    if (c->fb.depth)   sg_aligned_free(c->fb.depth);
    if (c->fb.stencil) sg_aligned_free(c->fb.stencil);
    if (c->buffers) {
        for (size_t i = 0; i < c->buffers_cap; i++) {
            if (c->buffers[i].data) free(c->buffers[i].data);
        }
        free(c->buffers);
    }
    if (c->textures) {
        for (size_t i = 0; i < c->textures_cap; i++) {
            for (int l = 0; l < SG_MAX_MIPMAP_LEVELS; l++) {
                if (c->textures[i].data[l]) sg_aligned_free(c->textures[i].data[l]);
            }
        }
        free(c->textures);
    }
    if (c->imm_buf) sg_aligned_free(c->imm_buf);
    sg_dlist_shutdown(c);
    if (g_current == c) g_current = NULL;
    free(c);
}

void softgl_make_current(softgl_ctx *c) {
    g_current = c;
}

const void *softgl_read_rgba8(softgl_ctx *c) {
    return c ? c->fb.color : NULL;
}

void sg_set_error(GLenum e) {
    softgl_ctx *c = g_current;
    if (c && c->last_error == GL_NO_ERROR) c->last_error = e;
}

GLenum glGetError(void) {
    softgl_ctx *c = g_current;
    if (!c) return GL_NO_ERROR;
    GLenum e = c->last_error;
    c->last_error = GL_NO_ERROR;
    return e;
}

/* ---- Enable/Disable flag resolver (used by _real) ---- */
static int *sg_enable_flag(softgl_ctx *c, GLenum cap, int *light_slot) {
    *light_slot = -1;
    switch (cap) {
        case GL_CULL_FACE:    return &c->cull_enabled;
        case GL_DEPTH_TEST:   return &c->depth_test;
        case GL_BLEND:        return &c->blend;
        case GL_ALPHA_TEST:   return &c->alpha_test;
        case GL_STENCIL_TEST: return &c->stencil_test;
        case GL_SCISSOR_TEST: return &c->scissor_enabled;
        case GL_FOG:          return &c->fog_enabled;
        case GL_LIGHTING:     return &c->lighting;
        case GL_NORMALIZE:    return &c->normalize;
        case GL_TEXTURE_1D:
            return &c->tex_env[c->active_tex_unit].enabled_target[SG_TEX_TARGET_1D];
        case GL_TEXTURE_2D:
            return &c->tex_env[c->active_tex_unit].enabled_target[SG_TEX_TARGET_2D];
        case GL_TEXTURE_3D:
            return &c->tex_env[c->active_tex_unit].enabled_target[SG_TEX_TARGET_3D];
        case GL_TEXTURE_CUBE_MAP:
            return &c->tex_env[c->active_tex_unit].enabled_target[SG_TEX_TARGET_CUBE];
        case GL_POLYGON_OFFSET_FILL:  return &c->polygon_offset_fill;
        case GL_POLYGON_OFFSET_LINE:  return &c->polygon_offset_line;
        case GL_POLYGON_OFFSET_POINT: return &c->polygon_offset_point;
        case GL_COLOR_MATERIAL:       return &c->color_material_enabled;
        case GL_COLOR_LOGIC_OP:       return &c->color_logic_op_enabled;
        case GL_INDEX_LOGIC_OP:       return &c->color_logic_op_enabled; /* alias for state-only */
        default: break;
    }
    if (cap >= GL_LIGHT0 && cap < GL_LIGHT0 + SG_MAX_LIGHTS) {
        *light_slot = (int)(cap - GL_LIGHT0);
        return &c->lights[*light_slot].enabled;
    }
    if (cap >= GL_CLIP_PLANE0 && cap <= GL_CLIP_PLANE5) {
        return &c->clip_plane_enabled[cap - GL_CLIP_PLANE0];
    }
    return NULL;
}

/* ==================  _real implementations  ================== */

void _sg_enable_real(GLenum cap) {
    softgl_ctx *c = g_current; if (!c) return;
    int slot; int *f = sg_enable_flag(c, cap, &slot);
    if (!f) { sg_set_error(GL_INVALID_ENUM); return; }
    *f = 1;
}

void _sg_disable_real(GLenum cap) {
    softgl_ctx *c = g_current; if (!c) return;
    int slot; int *f = sg_enable_flag(c, cap, &slot);
    if (!f) { sg_set_error(GL_INVALID_ENUM); return; }
    *f = 0;
}

void _sg_clear_color_real(GLclampf r, GLclampf g, GLclampf b, GLclampf a) {
    softgl_ctx *c = g_current; if (!c) return;
    c->clear_color[0] = sg_clampf(r, 0.f, 1.f);
    c->clear_color[1] = sg_clampf(g, 0.f, 1.f);
    c->clear_color[2] = sg_clampf(b, 0.f, 1.f);
    c->clear_color[3] = sg_clampf(a, 0.f, 1.f);
}

void _sg_clear_depth_real(GLclampd d) {
    softgl_ctx *c = g_current; if (!c) return;
    c->clear_depth = (float)sg_clampf((float)d, 0.f, 1.f);
}

void _sg_viewport_real(GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = g_current; if (!c) return;
    if (w < 0 || h < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    c->viewport[0] = x;
    c->viewport[1] = y;
    c->viewport[2] = w;
    c->viewport[3] = h;
}

void _sg_scissor_real(GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = g_current; if (!c) return;
    if (w < 0 || h < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    c->scissor[0] = x;
    c->scissor[1] = y;
    c->scissor[2] = w;
    c->scissor[3] = h;
}

void _sg_depth_func_real(GLenum f) {
    softgl_ctx *c = g_current; if (!c) return;
    c->depth_func = f;
}

void _sg_depth_mask_real(GLboolean b) {
    softgl_ctx *c = g_current; if (!c) return;
    c->depth_mask = b ? 1 : 0;
}

void _sg_cull_face_real(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    c->cull_face = m;
}

void _sg_front_face_real(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    c->front_face = m;
}

void _sg_blend_func_real(GLenum s, GLenum d) {
    softgl_ctx *c = g_current; if (!c) return;
    c->blend_src = s;
    c->blend_dst = d;
}

void _sg_alpha_func_real(GLenum f, GLclampf ref) {
    softgl_ctx *c = g_current; if (!c) return;
    c->alpha_func = f;
    c->alpha_ref = sg_clampf(ref, 0.f, 1.f);
}

void _sg_stencil_func_real(GLenum func, GLint ref, GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    switch (func) {
        case GL_NEVER: case GL_LESS: case GL_LEQUAL: case GL_GREATER:
        case GL_GEQUAL: case GL_EQUAL: case GL_NOTEQUAL: case GL_ALWAYS:
            break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
    c->stencil_func       = func;
    c->stencil_ref        = ref;
    c->stencil_value_mask = mask;
}

static int sg_stencil_op_valid(GLenum op) {
    switch (op) {
        case GL_KEEP: case GL_ZERO: case GL_REPLACE:
        case GL_INCR: case GL_INCR_WRAP:
        case GL_DECR: case GL_DECR_WRAP:
        case GL_INVERT: return 1;
        default: return 0;
    }
}

void _sg_stencil_op_real(GLenum sfail, GLenum dpfail, GLenum dppass) {
    softgl_ctx *c = g_current; if (!c) return;
    if (!sg_stencil_op_valid(sfail) || !sg_stencil_op_valid(dpfail) ||
        !sg_stencil_op_valid(dppass)) { sg_set_error(GL_INVALID_ENUM); return; }
    c->stencil_sfail  = sfail;
    c->stencil_dpfail = dpfail;
    c->stencil_dppass = dppass;
}

void _sg_stencil_mask_real(GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    c->stencil_write_mask = mask;
}

void _sg_clear_stencil_real(GLint s) {
    softgl_ctx *c = g_current; if (!c) return;
    c->clear_stencil = s;
}

void _sg_shade_model_real(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    c->shade_model = m;
}

void _sg_line_width_real(GLfloat w) {
    softgl_ctx *c = g_current; if (!c) return;
    if (w <= 0.f) { sg_set_error(GL_INVALID_VALUE); return; }
    c->line_width = w;
}

void _sg_point_size_real(GLfloat s) {
    softgl_ctx *c = g_current; if (!c) return;
    if (s <= 0.f) { sg_set_error(GL_INVALID_VALUE); return; }
    c->point_size = s;
}

void _sg_polygon_mode_real(GLenum face, GLenum mode) {
    softgl_ctx *c = g_current; if (!c) return;
    if (mode != GL_POINT && mode != GL_LINE && mode != GL_FILL) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    switch (face) {
        case GL_FRONT:           c->polygon_mode_front = mode; break;
        case GL_BACK:            c->polygon_mode_back  = mode; break;
        case GL_FRONT_AND_BACK:  c->polygon_mode_front = mode;
                                 c->polygon_mode_back  = mode; break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void _sg_polygon_offset_real(GLfloat factor, GLfloat units) {
    softgl_ctx *c = g_current; if (!c) return;
    c->polygon_offset_factor = factor;
    c->polygon_offset_units  = units;
}

void _sg_color_mask_real(GLboolean r, GLboolean g, GLboolean b, GLboolean a) {
    softgl_ctx *c = g_current; if (!c) return;
    c->color_mask[0] = r ? 1 : 0;
    c->color_mask[1] = g ? 1 : 0;
    c->color_mask[2] = b ? 1 : 0;
    c->color_mask[3] = a ? 1 : 0;
}

void _sg_logic_op_real(GLenum op) {
    softgl_ctx *c = g_current; if (!c) return;
    switch (op) {
        case GL_CLEAR: case GL_AND: case GL_AND_REVERSE: case GL_COPY:
        case GL_AND_INVERTED: case GL_NOOP: case GL_XOR: case GL_OR:
        case GL_NOR: case GL_EQUIV: case GL_INVERT: case GL_OR_REVERSE:
        case GL_COPY_INVERTED: case GL_OR_INVERTED: case GL_NAND: case GL_SET:
            c->logic_op = op; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void _sg_hint_real(GLenum target, GLenum mode) {
    softgl_ctx *c = g_current; if (!c) return;
    if (mode != GL_DONT_CARE && mode != GL_FASTEST && mode != GL_NICEST) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    switch (target) {
        case GL_PERSPECTIVE_CORRECTION_HINT: c->hint_perspective_correction = mode; return;
        case GL_POINT_SMOOTH_HINT:           c->hint_point_smooth = mode; return;
        case GL_LINE_SMOOTH_HINT:            c->hint_line_smooth = mode; return;
        case GL_POLYGON_SMOOTH_HINT:         c->hint_polygon_smooth = mode; return;
        case GL_FOG_HINT:                    c->hint_fog = mode; return;
        case GL_GENERATE_MIPMAP_HINT:        c->hint_generate_mipmap = mode; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void _sg_index_mask_real(GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    c->index_writemask = mask;
}

/* ==================  Public wrappers (dlist-aware)  ================== */

void glEnable(GLenum cap) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_ENABLE, &cap, sizeof(cap));
        if (c->dlist_exec) _sg_enable_real(cap);
    } else _sg_enable_real(cap);
}

void glDisable(GLenum cap) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_DISABLE, &cap, sizeof(cap));
        if (c->dlist_exec) _sg_disable_real(cap);
    } else _sg_disable_real(cap);
}

/* glIsEnabled is a query → always executes immediately (spec §5.4). */
GLboolean glIsEnabled(GLenum cap) {
    softgl_ctx *c = g_current; if (!c) return GL_FALSE;
    int slot; int *f = sg_enable_flag(c, cap, &slot);
    if (!f) { sg_set_error(GL_INVALID_ENUM); return GL_FALSE; }
    return *f ? GL_TRUE : GL_FALSE;
}

void glClearColor(GLclampf r, GLclampf g, GLclampf b, GLclampf a) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        float v[4] = {r, g, b, a};
        sg_dlist_emit(c, SG_OP_CLEAR_COLOR, v, sizeof(v));
        if (c->dlist_exec) _sg_clear_color_real(r, g, b, a);
    } else _sg_clear_color_real(r, g, b, a);
}

void glClearDepth(GLclampd d) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        float v = (float)d;
        sg_dlist_emit(c, SG_OP_CLEAR_DEPTH, &v, sizeof(v));
        if (c->dlist_exec) _sg_clear_depth_real(d);
    } else _sg_clear_depth_real(d);
}

void glViewport(GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLint v[4] = {x, y, w, h};
        sg_dlist_emit(c, SG_OP_VIEWPORT, v, sizeof(v));
        if (c->dlist_exec) _sg_viewport_real(x, y, w, h);
    } else _sg_viewport_real(x, y, w, h);
}

void glScissor(GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLint v[4] = {x, y, w, h};
        sg_dlist_emit(c, SG_OP_SCISSOR, v, sizeof(v));
        if (c->dlist_exec) _sg_scissor_real(x, y, w, h);
    } else _sg_scissor_real(x, y, w, h);
}

void glDepthFunc(GLenum f) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_DEPTH_FUNC, &f, sizeof(f));
        if (c->dlist_exec) _sg_depth_func_real(f);
    } else _sg_depth_func_real(f);
}

void glCullFace(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_CULL_FACE, &m, sizeof(m));
        if (c->dlist_exec) _sg_cull_face_real(m);
    } else _sg_cull_face_real(m);
}

void glFrontFace(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_FRONT_FACE, &m, sizeof(m));
        if (c->dlist_exec) _sg_front_face_real(m);
    } else _sg_front_face_real(m);
}

void glBlendFunc(GLenum s, GLenum d) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLenum v[2] = {s, d};
        sg_dlist_emit(c, SG_OP_BLEND_FUNC, v, sizeof(v));
        if (c->dlist_exec) _sg_blend_func_real(s, d);
    } else _sg_blend_func_real(s, d);
}

void glAlphaFunc(GLenum f, GLclampf ref) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum f; float r; } a = {f, (float)ref};
        sg_dlist_emit(c, SG_OP_ALPHA_FUNC, &a, sizeof(a));
        if (c->dlist_exec) _sg_alpha_func_real(f, ref);
    } else _sg_alpha_func_real(f, ref);
}

void glStencilFunc(GLenum func, GLint ref, GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum f; GLint r; GLuint m; } a = { func, ref, mask };
        sg_dlist_emit(c, SG_OP_STENCIL_FUNC, &a, sizeof(a));
        if (c->dlist_exec) _sg_stencil_func_real(func, ref, mask);
    } else _sg_stencil_func_real(func, ref, mask);
}

void glStencilOp(GLenum sfail, GLenum dpfail, GLenum dppass) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLenum v[3] = { sfail, dpfail, dppass };
        sg_dlist_emit(c, SG_OP_STENCIL_OP, v, sizeof(v));
        if (c->dlist_exec) _sg_stencil_op_real(sfail, dpfail, dppass);
    } else _sg_stencil_op_real(sfail, dpfail, dppass);
}

void glStencilMask(GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_STENCIL_MASK, &mask, sizeof(mask));
        if (c->dlist_exec) _sg_stencil_mask_real(mask);
    } else _sg_stencil_mask_real(mask);
}

void glClearStencil(GLint s) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_CLEAR_STENCIL, &s, sizeof(s));
        if (c->dlist_exec) _sg_clear_stencil_real(s);
    } else _sg_clear_stencil_real(s);
}

void glShadeModel(GLenum m) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_SHADE_MODEL, &m, sizeof(m));
        if (c->dlist_exec) _sg_shade_model_real(m);
    } else _sg_shade_model_real(m);
}

void glLineWidth(GLfloat w) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LINE_WIDTH, &w, sizeof(w));
        if (c->dlist_exec) _sg_line_width_real(w);
    } else _sg_line_width_real(w);
}

void glPointSize(GLfloat s) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_POINT_SIZE, &s, sizeof(s));
        if (c->dlist_exec) _sg_point_size_real(s);
    } else _sg_point_size_real(s);
}

void glPolygonMode(GLenum face, GLenum mode) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLenum v[2] = { face, mode };
        sg_dlist_emit(c, SG_OP_POLYGON_MODE, v, sizeof(v));
        if (c->dlist_exec) _sg_polygon_mode_real(face, mode);
    } else _sg_polygon_mode_real(face, mode);
}

void glPolygonOffset(GLfloat factor, GLfloat units) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        float v[2] = { factor, units };
        sg_dlist_emit(c, SG_OP_POLYGON_OFFSET, v, sizeof(v));
        if (c->dlist_exec) _sg_polygon_offset_real(factor, units);
    } else _sg_polygon_offset_real(factor, units);
}

void glColorMask(GLboolean r, GLboolean g, GLboolean b, GLboolean a) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        uint8_t v[4] = { (uint8_t)(r?1:0), (uint8_t)(g?1:0), (uint8_t)(b?1:0), (uint8_t)(a?1:0) };
        sg_dlist_emit(c, SG_OP_COLOR_MASK, v, sizeof(v));
        if (c->dlist_exec) _sg_color_mask_real(r, g, b, a);
    } else _sg_color_mask_real(r, g, b, a);
}

void glLogicOp(GLenum op) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LOGIC_OP, &op, sizeof(op));
        if (c->dlist_exec) _sg_logic_op_real(op);
    } else _sg_logic_op_real(op);
}

void glHint(GLenum target, GLenum mode) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        GLenum v[2] = { target, mode };
        sg_dlist_emit(c, SG_OP_HINT, v, sizeof(v));
        if (c->dlist_exec) _sg_hint_real(target, mode);
    } else _sg_hint_real(target, mode);
}

void glIndexMask(GLuint mask) {
    softgl_ctx *c = g_current; if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_INDEX_MASK, &mask, sizeof(mask));
        if (c->dlist_exec) _sg_index_mask_real(mask);
    } else _sg_index_mask_real(mask);
}

/* glGet* are queries → always execute immediately (spec §5.4). */
void glGetIntegerv(GLenum p, GLint *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    switch (p) {
        case GL_VIEWPORT:
            v[0] = c->viewport[0]; v[1] = c->viewport[1];
            v[2] = c->viewport[2]; v[3] = c->viewport[3];
            return;
        case GL_MAX_LIGHTS:       *v = SG_MAX_LIGHTS; return;
        case GL_MAX_TEXTURE_UNITS: *v = SG_MAX_TEX_UNITS; return;
        case GL_MAX_TEXTURE_SIZE: *v = 4096; return;
        case GL_LIST_BASE:         *v = (GLint)c->dlist_base; return;
        case GL_MAX_LIST_NESTING:  *v = 64; return;
        case GL_LINE_WIDTH:        *v = (GLint)(c->line_width + 0.5f); return;
        case GL_POINT_SIZE:        *v = (GLint)(c->point_size + 0.5f); return;
        case GL_POLYGON_MODE:
            v[0] = (GLint)c->polygon_mode_front;
            v[1] = (GLint)c->polygon_mode_back;
            return;
        case GL_POLYGON_OFFSET_FACTOR:
            *v = (GLint)(c->polygon_offset_factor + 0.5f); return;
        case GL_POLYGON_OFFSET_UNITS:
            *v = (GLint)(c->polygon_offset_units + 0.5f); return;
        case GL_STENCIL_BITS:          *v = 8; return;
        case GL_STENCIL_REF:           *v = c->stencil_ref; return;
        case GL_STENCIL_VALUE_MASK:    *v = (GLint)c->stencil_value_mask; return;
        case GL_STENCIL_WRITEMASK:     *v = (GLint)c->stencil_write_mask; return;
        case GL_STENCIL_FUNC:          *v = (GLint)c->stencil_func; return;
        case GL_STENCIL_FAIL:          *v = (GLint)c->stencil_sfail; return;
        case GL_STENCIL_PASS_DEPTH_FAIL: *v = (GLint)c->stencil_dpfail; return;
        case GL_STENCIL_PASS_DEPTH_PASS: *v = (GLint)c->stencil_dppass; return;
        case GL_STENCIL_CLEAR_VALUE:   *v = c->clear_stencil; return;
        case GL_MAX_CLIP_PLANES:       *v = 6; return;
        case GL_COLOR_WRITEMASK:
            v[0] = c->color_mask[0]; v[1] = c->color_mask[1];
            v[2] = c->color_mask[2]; v[3] = c->color_mask[3];
            return;
        case GL_LOGIC_OP_MODE:         *v = (GLint)c->logic_op; return;
        case GL_INDEX_WRITEMASK:       *v = (GLint)c->index_writemask; return;
        case GL_COLOR_MATERIAL_FACE:   *v = (GLint)c->color_material_face; return;
        case GL_COLOR_MATERIAL_PARAMETER: *v = (GLint)c->color_material_mode; return;
        case GL_LIGHT_MODEL_LOCAL_VIEWER: *v = c->light_model_local_viewer; return;
        case GL_LIGHT_MODEL_TWO_SIDE:     *v = c->light_model_two_side; return;
        case GL_PERSPECTIVE_CORRECTION_HINT: *v = (GLint)c->hint_perspective_correction; return;
        case GL_POINT_SMOOTH_HINT:     *v = (GLint)c->hint_point_smooth; return;
        case GL_LINE_SMOOTH_HINT:      *v = (GLint)c->hint_line_smooth; return;
        case GL_POLYGON_SMOOTH_HINT:   *v = (GLint)c->hint_polygon_smooth; return;
        case GL_FOG_HINT:              *v = (GLint)c->hint_fog; return;
        case GL_GENERATE_MIPMAP_HINT:  *v = (GLint)c->hint_generate_mipmap; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void glGetFloatv(GLenum p, GLfloat *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    switch (p) {
        case GL_MODELVIEW_MATRIX:
            memcpy(v, c->mv_stack[c->mv_top].m, sizeof(float) * 16); return;
        case GL_PROJECTION_MATRIX:
            memcpy(v, c->pr_stack[c->pr_top].m, sizeof(float) * 16); return;
        case GL_LINE_WIDTH:        *v = c->line_width; return;
        case GL_POINT_SIZE:        *v = c->point_size; return;
        case GL_POLYGON_OFFSET_FACTOR: *v = c->polygon_offset_factor; return;
        case GL_POLYGON_OFFSET_UNITS:  *v = c->polygon_offset_units;  return;
        case GL_LIGHT_MODEL_AMBIENT:
            v[0] = c->light_model_ambient[0]; v[1] = c->light_model_ambient[1];
            v[2] = c->light_model_ambient[2]; v[3] = c->light_model_ambient[3];
            return;
        case GL_COLOR_WRITEMASK:
            v[0] = (float)c->color_mask[0]; v[1] = (float)c->color_mask[1];
            v[2] = (float)c->color_mask[2]; v[3] = (float)c->color_mask[3];
            return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}
