#include "types.h"
#include "dlist.h"
#include "workers.h"
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
    c->multisample = 1;
    c->sample_alpha_to_coverage = 0;
    c->sample_alpha_to_one = 0;
    c->sample_coverage = 0;
    c->sample_coverage_value = 1.f;
    c->sample_coverage_invert = 0;

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
    c->material_back = c->material_front;
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

    memset(c->clip_plane_eq, 0, sizeof(c->clip_plane_eq));
    for (int i = 0; i < 6; i++) c->clip_plane_enabled[i] = 0;

    c->color_mask[0] = c->color_mask[1] = c->color_mask[2] = c->color_mask[3] = 1;
    c->color_logic_op_enabled = 0;
    c->logic_op = GL_COPY;
    c->index_writemask = 0xFFFFFFFFu;

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
        c->tex_env[i].src_rgb[0] = GL_TEXTURE;
        c->tex_env[i].src_rgb[1] = GL_PREVIOUS;
        c->tex_env[i].src_rgb[2] = GL_CONSTANT;
        c->tex_env[i].src_a[0]   = GL_TEXTURE;
        c->tex_env[i].src_a[1]   = GL_PREVIOUS;
        c->tex_env[i].src_a[2]   = GL_CONSTANT;
        c->tex_env[i].op_rgb[0] = GL_SRC_COLOR;
        c->tex_env[i].op_rgb[1] = GL_SRC_COLOR;
        c->tex_env[i].op_rgb[2] = GL_SRC_ALPHA;
        c->tex_env[i].op_a[0]   = GL_SRC_ALPHA;
        c->tex_env[i].op_a[1]   = GL_SRC_ALPHA;
        c->tex_env[i].op_a[2]   = GL_SRC_ALPHA;
        c->tex_env[i].env_color[0] = c->tex_env[i].env_color[1] = c->tex_env[i].env_color[2] = 0.f;
        c->tex_env[i].env_color[3] = 0.f;
        c->tex_env[i].rgb_scale = 1.f;
        c->tex_env[i].alpha_scale = 1.f;
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

    c->queries = NULL;
    c->queries_cap = 0;
    for (int i = 0; i < SG_QUERY_TARGET_COUNT; i++) c->current_query[i] = 0;

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

    c->pack.alignment = 4;
    c->pack.row_length = 0;
    c->pack.skip_rows = 0;
    c->pack.skip_pixels = 0;
    c->pack.lsb_first = 0;
    c->pack.swap_bytes = 0;
    c->unpack = c->pack;
    c->pixel_zoom_x = 1.f;
    c->pixel_zoom_y = 1.f;
    c->raster_pos[0] = 0.f;
    c->raster_pos[1] = 0.f;
    c->raster_pos[2] = 0.f;
    c->raster_pos[3] = 1.f;
    c->raster_color[0] = c->raster_color[1] = c->raster_color[2] = c->raster_color[3] = 1.f;
    c->raster_texcoord[0] = c->raster_texcoord[1] = c->raster_texcoord[2] = 0.f;
    c->raster_texcoord[3] = 1.f;
    c->raster_pos_valid = 1;

    memset(c->map1, 0, sizeof(c->map1));
    memset(c->map2, 0, sizeof(c->map2));
    c->map1_grid_n = 1; c->map1_grid_u0 = 0.f; c->map1_grid_u1 = 1.f;
    c->map2_grid_nu = 1; c->map2_grid_u0 = 0.f; c->map2_grid_u1 = 1.f;
    c->map2_grid_nv = 1; c->map2_grid_v0 = 0.f; c->map2_grid_v1 = 1.f;
    c->auto_normal = 0;
    c->accum = NULL;
    c->clear_accum[0] = c->clear_accum[1] = c->clear_accum[2] = c->clear_accum[3] = 0.f;
    c->render_mode = GL_RENDER;
    c->sel_buffer = NULL; c->sel_buffer_size = 0; c->sel_buffer_used = 0;
    c->sel_overflow = 0;
    c->name_stack_top = -1;
    c->sel_hit_count = 0;
    c->sel_hit_record_open = 0;
    c->sel_hit_zmin = c->sel_hit_zmax = 0.f;
    c->fb_buffer = NULL; c->fb_buffer_size = 0; c->fb_buffer_used = 0;
    c->fb_type = GL_2D; c->fb_overflow = 0;
    c->line_stipple_enable = 0;
    c->line_stipple_factor = 1;
    c->line_stipple_pattern = 0xFFFFu;
    c->line_stipple_counter = 0;
    c->polygon_stipple_enable = 0;
    memset(c->polygon_stipple, 0xFF, sizeof(c->polygon_stipple));

    c->last_error = GL_NO_ERROR;
}

softgl_ctx *softgl_create(GLsizei w, GLsizei h) {
    return softgl_create_multisample(w, h, 0);
}

softgl_ctx *softgl_create_multisample(GLsizei w, GLsizei h, GLsizei samples) {
    if (w <= 0 || h <= 0 || (samples != 0 && samples != 2 && samples != 4)) return NULL;
    size_t pixels = (size_t)w * (size_t)h;
    if (pixels > INT32_MAX / 4u || pixels > SIZE_MAX / (samples ? 16u : 4u)) return NULL;
    /* Include the four-sample prefix and aligned-allocation overhead before
     * any allocation, including on a 32-bit WASM address space. */
    if (samples == 4 && pixels >
        (SIZE_MAX - sizeof(sg_hz_state) - 64u - sizeof(void *)) / 16u) return NULL;
    softgl_ctx *c = (softgl_ctx*)calloc(1, sizeof(*c));
    if (!c) return NULL;
    c->fb.w = w;
    c->fb.h = h;
    c->fb.samples = samples;
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
    if (samples) {
        size_t values = pixels * (size_t)samples;
        if (samples == 4) {
            sg_hz_state *state = sg_aligned_alloc(sizeof(sg_hz_state) + values * 4, 64);
            if (state) {
                memset(state, 0, sizeof(sg_hz_state));
                c->fb.sample_color = (uint8_t *)(state + 1);
            }
        } else c->fb.sample_color = sg_aligned_alloc(values * 4, 16);
        c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), 16);
        c->fb.sample_stencil = sg_aligned_alloc(values, 16);
        if (!c->fb.sample_color || !c->fb.sample_depth || !c->fb.sample_stencil) {
            softgl_destroy(c);
            return NULL;
        }
        memset(c->fb.sample_color, 0, values * 4);
        memset(c->fb.sample_stencil, 0, values);
        for (size_t i = 0; i < values; i++) c->fb.sample_depth[i] = 1.f;
    }
    /* The optional table lives outside hot context state. Width and bin
     * alignment guarantee exclusive complete cells; failure falls back. */
    if (samples == 4 && w % 128 == 0) {
        sg_hz_state *state = ((sg_hz_state *)c->fb.sample_color) - 1;
        int rows = (((h + 3) / 4) + 3) & ~3;
        size_t count = (size_t)(w / 4) * (size_t)rows;
        if (count <= (262144u - sizeof(sg_hz_state)) / sizeof(sg_hz_tile)) {
            state->tiles = sg_aligned_alloc(count * sizeof(sg_hz_tile), 64);
            if (state->tiles) {
                memset(state->tiles, 0, count * sizeof(sg_hz_tile));
                state->rows = rows;
                state->active = 1;
            }
        }
    }
    sg_reset_state(c);
    /* One worker per logical core, up to SG_MAX_TILES. On WASM w/o pthreads
     * this is a no-op and sg_workers_bin_tri falls through to direct raster. */
    sg_workers_init(c, 0);
    return c;
}

void softgl_destroy(softgl_ctx *c) {
    if (!c) return;
    /* Drain + join workers before any state they may still be reading
     * gets torn down (fb.color/depth, textures, vbos). */
    sg_workers_flush(c);
    sg_workers_shutdown(c);
    if (c->fb.color)   sg_aligned_free(c->fb.color);
    if (c->fb.depth)   sg_aligned_free(c->fb.depth);
    if (c->fb.stencil) sg_aligned_free(c->fb.stencil);
    if (c->fb.samples == 4 && c->fb.sample_color) {
        sg_hz_state *state = ((sg_hz_state *)c->fb.sample_color) - 1;
        sg_aligned_free(state->tiles);
        sg_aligned_free(state);
    } else sg_aligned_free(c->fb.sample_color);
    sg_aligned_free(c->fb.sample_depth);
    sg_aligned_free(c->fb.sample_stencil);
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
                for (int face = 0; face < 6; face++)
                    if (c->textures[i].cube_faces[face][l])
                        sg_aligned_free(c->textures[i].cube_faces[face][l]);
            }
        }
        free(c->textures);
    }
    if (c->imm_buf) sg_aligned_free(c->imm_buf);
    if (c->queries) free(c->queries);
    for (int i = 0; i < SG_EV1_COUNT; i++) {
        if (c->map1[i].points) free(c->map1[i].points);
    }
    for (int i = 0; i < SG_EV2_COUNT; i++) {
        if (c->map2[i].points) free(c->map2[i].points);
    }
    if (c->accum) free(c->accum);
    sg_dlist_shutdown(c);
    if (g_current == c) g_current = NULL;
    free(c);
}

void softgl_make_current(softgl_ctx *c) {
    g_current = c;
}

const void *softgl_read_rgba8(softgl_ctx *c) {
    if (!c) return NULL;
    /* JS/WASM reads the FB directly — workers must be drained first. */
    sg_workers_flush(c);
    sg_msaa_resolve(c);
    return c->fb.color;
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

static int *sg_enable_flag(softgl_ctx *c, GLenum cap, int *light_slot) {
    *light_slot = -1;
    switch (cap) {
        case GL_CULL_FACE:    return &c->cull_enabled;
        case GL_DEPTH_TEST:   return &c->depth_test;
        case GL_BLEND:        return &c->blend;
        case GL_ALPHA_TEST:   return &c->alpha_test;
        case GL_MULTISAMPLE: return &c->multisample;
        case GL_SAMPLE_ALPHA_TO_COVERAGE: return &c->sample_alpha_to_coverage;
        case GL_SAMPLE_ALPHA_TO_ONE: return &c->sample_alpha_to_one;
        case GL_SAMPLE_COVERAGE: return &c->sample_coverage;
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
        case GL_INDEX_LOGIC_OP:       return &c->color_logic_op_enabled;
        case GL_VERTEX_ARRAY:         return &c->attr_pos.enabled;
        case GL_NORMAL_ARRAY:         return &c->attr_normal.enabled;
        case GL_COLOR_ARRAY:          return &c->attr_color.enabled;
        case GL_TEXTURE_COORD_ARRAY:  return &c->attr_tex[c->client_tex_unit].enabled;
        default: break;
    }
    if (cap >= GL_LIGHT0 && cap < GL_LIGHT0 + SG_MAX_LIGHTS) {
        *light_slot = (int)(cap - GL_LIGHT0);
        return &c->lights[*light_slot].enabled;
    }
    if (cap >= GL_CLIP_PLANE0 && cap <= GL_CLIP_PLANE5) {
        return &c->clip_plane_enabled[cap - GL_CLIP_PLANE0];
    }
    switch (cap) {
        case GL_MAP1_VERTEX_3:        return &c->map1[SG_EV1_VERTEX_3].enabled;
        case GL_MAP1_VERTEX_4:        return &c->map1[SG_EV1_VERTEX_4].enabled;
        case GL_MAP1_COLOR_4:         return &c->map1[SG_EV1_COLOR_4].enabled;
        case GL_MAP1_NORMAL:          return &c->map1[SG_EV1_NORMAL].enabled;
        case GL_MAP1_TEXTURE_COORD_1: return &c->map1[SG_EV1_TEX_1].enabled;
        case GL_MAP1_TEXTURE_COORD_2: return &c->map1[SG_EV1_TEX_2].enabled;
        case GL_MAP1_TEXTURE_COORD_3: return &c->map1[SG_EV1_TEX_3].enabled;
        case GL_MAP1_TEXTURE_COORD_4: return &c->map1[SG_EV1_TEX_4].enabled;
        case GL_MAP2_VERTEX_3:        return &c->map2[SG_EV2_VERTEX_3].enabled;
        case GL_MAP2_VERTEX_4:        return &c->map2[SG_EV2_VERTEX_4].enabled;
        case GL_MAP2_COLOR_4:         return &c->map2[SG_EV2_COLOR_4].enabled;
        case GL_MAP2_NORMAL:          return &c->map2[SG_EV2_NORMAL].enabled;
        case GL_MAP2_TEXTURE_COORD_1: return &c->map2[SG_EV2_TEX_1].enabled;
        case GL_MAP2_TEXTURE_COORD_2: return &c->map2[SG_EV2_TEX_2].enabled;
        case GL_MAP2_TEXTURE_COORD_3: return &c->map2[SG_EV2_TEX_3].enabled;
        case GL_MAP2_TEXTURE_COORD_4: return &c->map2[SG_EV2_TEX_4].enabled;
        case GL_AUTO_NORMAL:          return &c->auto_normal;
        case GL_LINE_STIPPLE:         return &c->line_stipple_enable;
        case GL_POLYGON_STIPPLE:      return &c->polygon_stipple_enable;
        default: break;
    }
    return NULL;
}

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

/* glIsEnabled: always immediate (query). */
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

/* Unified state query: writes up to 16 doubles, returns count.
 * All glGet* variants funnel through here. */
static int sg_query_state(softgl_ctx *c, GLenum p, double out[16]) {
    switch (p) {
        case GL_SAMPLE_BUFFERS: out[0] = c->fb.samples != 0; return 1;
        case GL_SAMPLES: out[0] = c->fb.samples; return 1;
        case GL_SAMPLE_COVERAGE_VALUE: out[0] = c->sample_coverage_value; return 1;
        case GL_SAMPLE_COVERAGE_INVERT: out[0] = c->sample_coverage_invert; return 1;
        case GL_VIEWPORT:
            out[0] = c->viewport[0]; out[1] = c->viewport[1];
            out[2] = c->viewport[2]; out[3] = c->viewport[3];
            return 4;
        case GL_SCISSOR_BOX:
            out[0] = c->scissor[0]; out[1] = c->scissor[1];
            out[2] = c->scissor[2]; out[3] = c->scissor[3];
            return 4;
        case GL_MAX_VIEWPORT_DIMS:
            out[0] = 16384; out[1] = 16384; return 2;

        case GL_MAX_LIGHTS:                   out[0] = SG_MAX_LIGHTS; return 1;
        case GL_MAX_TEXTURE_UNITS:            out[0] = SG_MAX_TEX_UNITS; return 1;
        case GL_MAX_TEXTURE_SIZE:             out[0] = 4096; return 1;
        case GL_MAX_3D_TEXTURE_SIZE:          out[0] = 256; return 1;
        case GL_MAX_CUBE_MAP_TEXTURE_SIZE:    out[0] = 4096; return 1;
        case GL_MAX_CLIP_PLANES:              out[0] = 6; return 1;
        case GL_MAX_MODELVIEW_STACK_DEPTH:    out[0] = SG_MAX_MATRIX_STACK; return 1;
        case GL_MAX_TEXTURE_STACK_DEPTH:      out[0] = SG_MAX_MATRIX_STACK; return 1;
        case GL_MAX_MATRIX_STACK_DEPTH:       out[0] = SG_MAX_MATRIX_STACK; return 1;
        case GL_SUBPIXEL_BITS:                out[0] = 4; return 1;
        case GL_LIST_BASE:                    out[0] = (double)c->dlist_base; return 1;
        case GL_MAX_LIST_NESTING:             out[0] = 64; return 1;

        case GL_MODELVIEW_MATRIX:
            for (int i = 0; i < 16; i++) out[i] = c->mv_stack[c->mv_top].m[i];
            return 16;
        case GL_PROJECTION_MATRIX:
            for (int i = 0; i < 16; i++) out[i] = c->pr_stack[c->pr_top].m[i];
            return 16;
        case GL_TEXTURE_MATRIX:
            for (int i = 0; i < 16; i++)
                out[i] = c->tex_stack[c->active_tex_unit][c->tex_top[c->active_tex_unit]].m[i];
            return 16;
        case GL_MATRIX_MODE:                  out[0] = (double)c->matrix_mode; return 1;

        case GL_CURRENT_COLOR:
            out[0] = c->current_color[0]; out[1] = c->current_color[1];
            out[2] = c->current_color[2]; out[3] = c->current_color[3];
            return 4;
        case GL_CURRENT_NORMAL:
            out[0] = c->current_normal[0]; out[1] = c->current_normal[1];
            out[2] = c->current_normal[2]; return 3;
        case GL_CURRENT_TEXTURE_COORDS:
            out[0] = c->current_texcoord[c->active_tex_unit][0];
            out[1] = c->current_texcoord[c->active_tex_unit][1];
            out[2] = c->current_texcoord[c->active_tex_unit][2];
            out[3] = c->current_texcoord[c->active_tex_unit][3];
            return 4;

        case GL_COLOR_CLEAR_VALUE:
            out[0] = c->clear_color[0]; out[1] = c->clear_color[1];
            out[2] = c->clear_color[2]; out[3] = c->clear_color[3];
            return 4;
        case GL_DEPTH_CLEAR_VALUE:           out[0] = c->clear_depth; return 1;
        case GL_STENCIL_CLEAR_VALUE:         out[0] = c->clear_stencil; return 1;

        case GL_COLOR_WRITEMASK:
            out[0] = c->color_mask[0]; out[1] = c->color_mask[1];
            out[2] = c->color_mask[2]; out[3] = c->color_mask[3];
            return 4;
        case GL_DEPTH_WRITEMASK:             out[0] = c->depth_mask; return 1;
        case GL_STENCIL_WRITEMASK:           out[0] = (double)c->stencil_write_mask; return 1;
        case GL_INDEX_WRITEMASK:             out[0] = (double)c->index_writemask; return 1;

        case GL_CULL_FACE_MODE:              out[0] = (double)c->cull_face; return 1;
        case GL_FRONT_FACE:                  out[0] = (double)c->front_face; return 1;

        case GL_DEPTH_FUNC:                  out[0] = (double)c->depth_func; return 1;
        case GL_DEPTH_RANGE:                 out[0] = 0.0; out[1] = 1.0; return 2;

        case GL_STENCIL_FUNC:                out[0] = (double)c->stencil_func; return 1;
        case GL_STENCIL_REF:                 out[0] = (double)c->stencil_ref; return 1;
        case GL_STENCIL_VALUE_MASK:          out[0] = (double)c->stencil_value_mask; return 1;
        case GL_STENCIL_FAIL:                out[0] = (double)c->stencil_sfail; return 1;
        case GL_STENCIL_PASS_DEPTH_FAIL:     out[0] = (double)c->stencil_dpfail; return 1;
        case GL_STENCIL_PASS_DEPTH_PASS:     out[0] = (double)c->stencil_dppass; return 1;
        case GL_STENCIL_BITS:                out[0] = 8; return 1;

        case GL_BLEND_SRC:                   out[0] = (double)c->blend_src; return 1;
        case GL_BLEND_DST:                   out[0] = (double)c->blend_dst; return 1;
        case GL_ALPHA_TEST_FUNC:             out[0] = (double)c->alpha_func; return 1;
        case GL_ALPHA_TEST_REF:              out[0] = c->alpha_ref; return 1;

        case GL_FOG_MODE:                    out[0] = (double)c->fog_mode; return 1;
        case GL_FOG_DENSITY:                 out[0] = c->fog_density; return 1;
        case GL_FOG_START:                   out[0] = c->fog_start; return 1;
        case GL_FOG_END:                     out[0] = c->fog_end; return 1;
        case GL_FOG_COLOR:
            out[0] = c->fog_color[0]; out[1] = c->fog_color[1];
            out[2] = c->fog_color[2]; out[3] = c->fog_color[3];
            return 4;

        case GL_LIGHT_MODEL_AMBIENT:
            out[0] = c->light_model_ambient[0]; out[1] = c->light_model_ambient[1];
            out[2] = c->light_model_ambient[2]; out[3] = c->light_model_ambient[3];
            return 4;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:    out[0] = c->light_model_local_viewer; return 1;
        case GL_LIGHT_MODEL_TWO_SIDE:        out[0] = c->light_model_two_side; return 1;
        case GL_COLOR_MATERIAL_FACE:         out[0] = (double)c->color_material_face; return 1;
        case GL_COLOR_MATERIAL_PARAMETER:    out[0] = (double)c->color_material_mode; return 1;
        case GL_SHADE_MODEL:                 out[0] = (double)c->shade_model; return 1;

        case GL_LINE_WIDTH:                  out[0] = c->line_width; return 1;
        case GL_POINT_SIZE:                  out[0] = c->point_size; return 1;
        case GL_POLYGON_MODE:
            out[0] = (double)c->polygon_mode_front;
            out[1] = (double)c->polygon_mode_back;
            return 2;
        case GL_POLYGON_OFFSET_FACTOR:       out[0] = c->polygon_offset_factor; return 1;
        case GL_POLYGON_OFFSET_UNITS:        out[0] = c->polygon_offset_units;  return 1;

        case GL_LOGIC_OP_MODE:               out[0] = (double)c->logic_op; return 1;

        case GL_PERSPECTIVE_CORRECTION_HINT: out[0] = (double)c->hint_perspective_correction; return 1;
        case GL_POINT_SMOOTH_HINT:           out[0] = (double)c->hint_point_smooth; return 1;
        case GL_LINE_SMOOTH_HINT:            out[0] = (double)c->hint_line_smooth; return 1;
        case GL_POLYGON_SMOOTH_HINT:         out[0] = (double)c->hint_polygon_smooth; return 1;
        case GL_FOG_HINT:                    out[0] = (double)c->hint_fog; return 1;
        case GL_GENERATE_MIPMAP_HINT:        out[0] = (double)c->hint_generate_mipmap; return 1;

        case GL_PACK_ALIGNMENT:              out[0] = c->pack.alignment; return 1;
        case GL_PACK_ROW_LENGTH:             out[0] = c->pack.row_length; return 1;
        case GL_PACK_SKIP_ROWS:              out[0] = c->pack.skip_rows; return 1;
        case GL_PACK_SKIP_PIXELS:            out[0] = c->pack.skip_pixels; return 1;
        case GL_PACK_LSB_FIRST:              out[0] = c->pack.lsb_first; return 1;
        case GL_PACK_SWAP_BYTES:             out[0] = c->pack.swap_bytes; return 1;
        case GL_UNPACK_ALIGNMENT:            out[0] = c->unpack.alignment; return 1;
        case GL_UNPACK_ROW_LENGTH:           out[0] = c->unpack.row_length; return 1;
        case GL_UNPACK_SKIP_ROWS:            out[0] = c->unpack.skip_rows; return 1;
        case GL_UNPACK_SKIP_PIXELS:          out[0] = c->unpack.skip_pixels; return 1;
        case GL_UNPACK_LSB_FIRST:            out[0] = c->unpack.lsb_first; return 1;
        case GL_UNPACK_SWAP_BYTES:           out[0] = c->unpack.swap_bytes; return 1;
        case GL_ZOOM_X:                      out[0] = c->pixel_zoom_x; return 1;
        case GL_ZOOM_Y:                      out[0] = c->pixel_zoom_y; return 1;
        case GL_CURRENT_RASTER_POSITION_VALID: out[0] = c->raster_pos_valid; return 1;
        case GL_CURRENT_RASTER_POSITION:
            out[0] = c->raster_pos[0]; out[1] = c->raster_pos[1];
            out[2] = c->raster_pos[2]; out[3] = c->raster_pos[3];
            return 4;
        case GL_CURRENT_RASTER_COLOR:
            out[0] = c->raster_color[0]; out[1] = c->raster_color[1];
            out[2] = c->raster_color[2]; out[3] = c->raster_color[3];
            return 4;

        case GL_ACTIVE_TEXTURE:              out[0] = GL_TEXTURE0 + c->active_tex_unit; return 1;
        case GL_CLIENT_ACTIVE_TEXTURE:       out[0] = GL_TEXTURE0 + c->client_tex_unit; return 1;
        case GL_ARRAY_BUFFER_BINDING:        out[0] = (double)c->array_buffer_binding; return 1;
        case GL_ELEMENT_ARRAY_BUFFER_BINDING: out[0] = (double)c->element_buffer_binding; return 1;
        case GL_TEXTURE_BINDING_1D:
            out[0] = (double)c->tex_env[c->active_tex_unit].bound_tex_target[SG_TEX_TARGET_1D];
            return 1;
        case GL_TEXTURE_BINDING_2D:
            out[0] = (double)c->tex_env[c->active_tex_unit].bound_tex_target[SG_TEX_TARGET_2D];
            return 1;
        case GL_TEXTURE_BINDING_3D:
            out[0] = (double)c->tex_env[c->active_tex_unit].bound_tex_target[SG_TEX_TARGET_3D];
            return 1;
        case GL_TEXTURE_BINDING_CUBE_MAP:
            out[0] = (double)c->tex_env[c->active_tex_unit].bound_tex_target[SG_TEX_TARGET_CUBE];
            return 1;

        case GL_VERTEX_ARRAY_SIZE:           out[0] = c->attr_pos.size; return 1;
        case GL_VERTEX_ARRAY_TYPE:           out[0] = (double)c->attr_pos.type; return 1;
        case GL_VERTEX_ARRAY_STRIDE:         out[0] = c->attr_pos.stride; return 1;
        case GL_NORMAL_ARRAY_TYPE:           out[0] = (double)c->attr_normal.type; return 1;
        case GL_NORMAL_ARRAY_STRIDE:         out[0] = c->attr_normal.stride; return 1;
        case GL_COLOR_ARRAY_SIZE:            out[0] = c->attr_color.size; return 1;
        case GL_COLOR_ARRAY_TYPE:            out[0] = (double)c->attr_color.type; return 1;
        case GL_COLOR_ARRAY_STRIDE:          out[0] = c->attr_color.stride; return 1;
        case GL_TEXTURE_COORD_ARRAY_SIZE:    out[0] = c->attr_tex[c->client_tex_unit].size; return 1;
        case GL_TEXTURE_COORD_ARRAY_TYPE:    out[0] = (double)c->attr_tex[c->client_tex_unit].type; return 1;
        case GL_TEXTURE_COORD_ARRAY_STRIDE:  out[0] = c->attr_tex[c->client_tex_unit].stride; return 1;

        case GL_RED_BITS:                    out[0] = 8; return 1;
        case GL_GREEN_BITS:                  out[0] = 8; return 1;
        case GL_BLUE_BITS:                   out[0] = 8; return 1;
        case GL_ALPHA_BITS:                  out[0] = 8; return 1;
        case GL_DEPTH_BITS:                  out[0] = 32; return 1;
        case GL_DOUBLEBUFFER:                out[0] = 0; return 1;
        case GL_STEREO:                      out[0] = 0; return 1;

        /* Smoothing caps: state-only, never honoured by raster. */
        case GL_LINE_SMOOTH:
        case GL_POINT_SMOOTH:
        case GL_POLYGON_SMOOTH:              out[0] = 0; return 1;

        case GL_ACCUM_RED_BITS: case GL_ACCUM_GREEN_BITS:
        case GL_ACCUM_BLUE_BITS: case GL_ACCUM_ALPHA_BITS: out[0] = 16; return 1;
        case GL_ACCUM_CLEAR_VALUE:
            out[0] = c->clear_accum[0]; out[1] = c->clear_accum[1];
            out[2] = c->clear_accum[2]; out[3] = c->clear_accum[3];
            return 4;
        case GL_RENDER_MODE:                 out[0] = (double)c->render_mode; return 1;
        case GL_SELECTION_BUFFER_SIZE:       out[0] = (double)c->sel_buffer_size; return 1;
        case GL_FEEDBACK_BUFFER_SIZE:        out[0] = (double)c->fb_buffer_size; return 1;
        case GL_FEEDBACK_BUFFER_TYPE:        out[0] = (double)c->fb_type; return 1;
        case GL_NAME_STACK_DEPTH:            out[0] = (double)(c->name_stack_top + 1); return 1;
        case GL_MAX_NAME_STACK_DEPTH:        out[0] = SG_MAX_NAME_STACK; return 1;
        case GL_LINE_STIPPLE_PATTERN:        out[0] = (double)c->line_stipple_pattern; return 1;
        case GL_LINE_STIPPLE_REPEAT:         out[0] = (double)c->line_stipple_factor; return 1;
        case GL_MAP1_GRID_SEGMENTS:          out[0] = (double)c->map1_grid_n; return 1;
        case GL_MAP1_GRID_DOMAIN:
            out[0] = c->map1_grid_u0; out[1] = c->map1_grid_u1; return 2;
        case GL_MAP2_GRID_SEGMENTS:
            out[0] = (double)c->map2_grid_nu; out[1] = (double)c->map2_grid_nv; return 2;
        case GL_MAP2_GRID_DOMAIN:
            out[0] = c->map2_grid_u0; out[1] = c->map2_grid_u1;
            out[2] = c->map2_grid_v0; out[3] = c->map2_grid_v1;
            return 4;

        default: break;
    }

    /* Boolean caps: fall through to enable-flag resolver. */
    int slot; int *f = sg_enable_flag(c, p, &slot);
    if (f) { out[0] = *f ? 1.0 : 0.0; return 1; }

    sg_set_error(GL_INVALID_ENUM);
    return 0;
}

void glGetIntegerv(GLenum p, GLint *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    double buf[16];
    int n = sg_query_state(c, p, buf);
    /* Float state rounds to nearest when read as integer. */
    for (int i = 0; i < n; i++) {
        double d = buf[i];
        v[i] = (GLint)(d < 0 ? d - 0.5 : d + 0.5);
    }
}

void glGetFloatv(GLenum p, GLfloat *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    double buf[16];
    int n = sg_query_state(c, p, buf);
    for (int i = 0; i < n; i++) v[i] = (GLfloat)buf[i];
}

void glGetDoublev(GLenum p, GLdouble *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    double buf[16];
    int n = sg_query_state(c, p, buf);
    for (int i = 0; i < n; i++) v[i] = buf[i];
}

void glGetBooleanv(GLenum p, GLboolean *v) {
    softgl_ctx *c = g_current; if (!c || !v) return;
    double buf[16];
    int n = sg_query_state(c, p, buf);
    for (int i = 0; i < n; i++) v[i] = (buf[i] != 0.0) ? GL_TRUE : GL_FALSE;
}

const GLubyte *glGetString(GLenum name) {
    switch (name) {
        case GL_VENDOR:     return (const GLubyte*)"softgl";
        case GL_RENDERER:   return (const GLubyte*)"softgl software renderer";
        case GL_VERSION:    return (const GLubyte*)"1.5.0 (softgl)";
        case GL_EXTENSIONS:
            return (const GLubyte*)
                "GL_ARB_vertex_buffer_object "
                "GL_ARB_texture_env_combine "
                "GL_ARB_texture_env_dot3 "
                "GL_ARB_multitexture "
                "GL_ARB_texture_cube_map "
                "GL_EXT_texture3D "
                "GL_ARB_occlusion_query";
        default: sg_set_error(GL_INVALID_ENUM); return NULL;
    }
}
