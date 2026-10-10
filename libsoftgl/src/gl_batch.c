/* Defer eligible VBO draws behind ordinary GL synchronization boundaries.
 * The application supplies standard attributes and texture combiners. A batch
 * owns copied GL state; storage mutations join it before changing any inputs. */
#include "types.h"
#include "workers.h"
#include "dlist.h"
#include "frag_combine_hot.h"

#define SG_GL_BATCH_BYTES (64u * 1024u * 1024u)

typedef struct {
    softgl_ctx state;
    sg_vertex_inputs inputs;
    const uint32_t *indices;
    const void *offset;
    GLsizei count;
    GLuint vertices;
    int kind, partner, transparent;
} sg_gl_command;

struct sg_gl_batch {
    sg_gl_command *commands;
    unsigned count, capacity;
    uint64_t triangles;
    int specular_phase;
    int complex_frame;
};

/* Rendering consumes the active matrix at each stack top. Copying every
 * unused stack entry for each draw adds traffic without capturing more state.
 * Caller stacks are saved once around a flush and restored in full afterwards. */
static void batch_copy_state(softgl_ctx *destination, const softgl_ctx *source) {
    memcpy(destination,source,offsetof(softgl_ctx,mv_stack));
    memcpy(&destination->mv_top,&source->mv_top,
        sizeof(*source)-offsetof(softgl_ctx,mv_top));
    destination->mv_stack[source->mv_top] = source->mv_stack[source->mv_top];
    destination->pr_stack[source->pr_top] = source->pr_stack[source->pr_top];
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++)
        destination->tex_stack[u][source->tex_top[u]] = source->tex_stack[u][source->tex_top[u]];
}

static int batch_identity(const sg_mat4 *matrix) {
    for (int i = 0; i < 16; i++)
        if (matrix->m[i] != (i%5 == 0 ? 1.f : 0.f)) return 0;
    return 1;
}

static int batch_state_supported(const softgl_ctx *c) {
    if (c->render_mode != GL_RENDER || c->imm_active || c->lighting ||
        c->shade_model != 0x1D01 /* GL_SMOOTH */ || c->stencil_test || c->fog_enabled ||
        c->scissor_enabled || c->polygon_offset_fill || c->color_logic_op_enabled ||
        c->polygon_stipple_enable || c->polygon_mode_front != GL_FILL ||
        c->polygon_mode_back != GL_FILL || !c->depth_test ||
        c->viewport[0] || c->viewport[1] || c->viewport[2] != c->fb.w ||
        c->viewport[3] != c->fb.h ||
        c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] ||
        c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] ||
        (c->fb.samples && (!c->multisample || c->sample_alpha_to_coverage ||
            c->sample_alpha_to_one || c->sample_coverage))) return 0;
    for (int k = 0; k < 4; k++) if (!c->color_mask[k]) return 0;
    for (int k = 0; k < 6; k++) if (c->clip_plane_enabled[k]) return 0;
    for (int u = 0; u < 4; u++) {
        if (!batch_identity(&c->tex_stack[u][c->tex_top[u]])) return 0;
    }
    return 1;
}

static GLuint batch_array_vertices(softgl_ctx *c, const sg_attrib_ptr *a) {
    if (!a->enabled || a->type != GL_FLOAT || a->size < 1 || a->size > 4 || !a->buffer) return 0;
    const sg_buffer *b = sg_buffer_get(c, a->buffer);
    size_t offset = (uintptr_t)a->ptr, bytes = (size_t)a->size*sizeof(float);
    size_t stride = a->stride ? (size_t)a->stride : bytes;
    if (!b || b->mapped || !b->data || offset > b->size || bytes > b->size-offset ||
        stride < bytes || stride%sizeof(float) || offset%sizeof(float)) return 0;
    size_t count = (b->size-offset-bytes)/stride+1;
    return count > UINT32_MAX ? UINT32_MAX : (GLuint)count;
}

static int batch_inputs(softgl_ctx *c, GLsizei count, const void *offset,
    sg_gl_command *command) {
    const sg_buffer *ebo = sg_buffer_get(c, c->element_buffer_binding);
    size_t start = (uintptr_t)offset;
    if (!ebo || ebo->mapped || !ebo->data || start%sizeof(uint32_t) ||
        start > ebo->size || (size_t)count > (ebo->size-start)/sizeof(uint32_t) ||
        c->attr_pos.size != 3) return 0;
    GLuint vertices = batch_array_vertices(c, &c->attr_pos);
    if (!vertices) return 0;
    if (c->attr_color.enabled) {
        GLuint available = batch_array_vertices(c, &c->attr_color);
        if (!available || c->attr_color.size < 3) return 0;
        if (available < vertices) vertices = available;
    }
    for (int u = 0; u < 4; u++) if (c->attr_tex[u].enabled) {
        GLuint available = batch_array_vertices(c, &c->attr_tex[u]);
        if (!available) return 0;
        if (available < vertices) vertices = available;
    }
    sg_prepare_vertex_inputs(c, &command->inputs);
    command->vertices = vertices;
    command->indices = (const uint32_t *)((const uint8_t *)ebo->data+start);
    command->offset = offset; command->count = count;
    return 1;
}

static int batch_geometry_equal(const sg_gl_command *a, const sg_gl_command *b,
    const softgl_ctx *y) {
    const softgl_ctx *x = &a->state;
    const sg_resolved_attrib *xp = &a->inputs.position, *yp = &b->inputs.position;
    const sg_resolved_attrib *xt = &a->inputs.uv[0], *yt = &b->inputs.uv[0];
    return a->indices == b->indices && a->count == b->count &&
        xp->base == yp->base && xp->stride == yp->stride &&
        xt->base == yt->base && xt->stride == yt->stride && xt->size == yt->size &&
        x->cull_enabled == y->cull_enabled && x->cull_face == y->cull_face && x->front_face == y->front_face &&
        !memcmp(&x->mv_stack[x->mv_top], &y->mv_stack[y->mv_top], sizeof(sg_mat4)) &&
        !memcmp(&x->pr_stack[x->pr_top], &y->pr_stack[y->pr_top], sizeof(sg_mat4)) &&
        !memcmp(x->tex_env[0].bound_tex_target, y->tex_env[0].bound_tex_target,
            sizeof(x->tex_env[0].bound_tex_target));
}

static int batch_append(softgl_ctx *c, const sg_gl_command *command) {
    struct sg_gl_batch *b = c->gl_batch;
    if (!b) {
        b = calloc(1, sizeof(*b)); if (!b) return 0;
        c->gl_batch = b;
    }
    if (b->count == b->capacity) {
        unsigned capacity = b->capacity ? b->capacity*2 : 16;
        if (capacity > SG_GL_BATCH_BYTES/sizeof(*b->commands)) return 0;
        sg_gl_command *next = realloc(b->commands, (size_t)capacity*sizeof(*next));
        if (!next) return 0;
        b->commands = next; b->capacity = capacity;
    }
    sg_gl_command *destination = &b->commands[b->count];
    memcpy(&destination->inputs,&command->inputs,
        sizeof(*command)-offsetof(sg_gl_command,inputs));
    batch_copy_state(&destination->state,c);
    b->count++;
    if (command->kind == 1 && !command->transparent) b->triangles += (unsigned)command->count/3u;
    return 1;
}

int sg_gl_batch_draw(softgl_ctx *c, GLenum mode, GLsizei count, GLenum type, const void *indices) {
    if (c->gl_batch_busy || c->gl_batch_disabled || c->scene_visibility) return 0;
    if (mode != GL_TRIANGLES || count <= 0 || count%3 || type != GL_UNSIGNED_INT ||
        !c->workers || !sg_thread_count(c) || !batch_state_supported(c) ||
        c->fused_dot3_enabled) {
        sg_gl_batch_flush(c); return 0;
    }
    sg_tex_tri_ctx texture;
    sg_tex_tri_prepare(c, &texture);
    int kind = texture.combine_kind;
    if (kind == 1 && c->alpha_test)
        sg_texture_prepare_alpha(c,texture.unit[2].tex);
    sg_gl_command command;
    command.kind = kind; command.partner = -1; command.transparent = 0;
    if (!batch_inputs(c, count, indices, &command)) { sg_gl_batch_flush(c); return 0; }
    if (kind == 1 && (command.inputs.uv[0].size != 2 || command.inputs.uv[0].type != GL_FLOAT ||
        command.inputs.uv[2].base != command.inputs.uv[0].base ||
        command.inputs.uv[2].type != SG_INPUT_UV_COPY || command.inputs.uv[2].stride != 0)) {
        sg_gl_batch_flush(c); return 0;
    }
    if (kind == 1 && !c->blend && c->depth_mask && c->depth_func == GL_LESS) {
        struct sg_gl_batch *b = c->gl_batch;
        if (b && b->specular_phase) sg_gl_batch_flush(c);
    } else if (kind == 1 && c->blend && !c->depth_mask && c->depth_func == GL_LEQUAL &&
        c->blend_src == GL_SRC_ALPHA && c->blend_dst == GL_ONE_MINUS_SRC_ALPHA &&
        c->tex_env[3].src_a[0] == GL_PREVIOUS &&
        (!c->alpha_test || (c->alpha_func == GL_GREATER && c->alpha_ref == 0.f))) {
        /* Finish opaque visibility once, then preserve a continuous ordered
         * transparent queue. Joining each material pair would prevent idle
         * raster workers from preparing the next draw's vertices. */
        if (c->gl_batch && c->gl_batch->count &&
            !c->gl_batch->commands[0].transparent) sg_gl_batch_flush(c);
        if (!c->gl_batch || !c->gl_batch->complex_frame) return 0;
        command.transparent = 1;
    } else if ((kind == 2 || kind == 3) && c->blend && !c->depth_mask &&
        (c->depth_func == GL_EQUAL || c->depth_func == GL_LEQUAL) &&
        c->blend_src == GL_SRC_ALPHA && c->blend_dst == GL_ONE) {
        struct sg_gl_batch *b = c->gl_batch;
        if (!b || !b->count) return 0;
        float specular_alpha = sg_clampf(c->tex_env[3].env_color[3],0.f,1.f);
        if (c->alpha_test && (c->alpha_func != GL_GREATER || !(specular_alpha > c->alpha_ref))) {
            sg_gl_batch_flush(c); return 0;
        }
        for (unsigned i = 0; i < b->count; i++) {
            sg_gl_command *diffuse = &b->commands[i];
            if (diffuse->kind != 1 || diffuse->partner >= 0 ||
                !batch_geometry_equal(diffuse, &command, c)) continue;
            if (diffuse->transparent && (i+1 != b->count || c->depth_func != GL_LEQUAL)) continue;
            /* Fusion needs the additive pass's primary-color array, neutral
             * unit-2 modulation and equal depth for opaque cutout pairs. */
            if ((diffuse->state.alpha_test && !diffuse->transparent && c->depth_func != GL_EQUAL) || !c->attr_color.enabled ||
                (kind == 2 && (!texture.unit[2].constant_color_valid ||
                    texture.unit[2].constant_color[0] != 1.f || texture.unit[2].constant_color[1] != 1.f ||
                    texture.unit[2].constant_color[2] != 1.f))) continue;
            command.partner = (int)i; break;
        }
        b->specular_phase = 1;
        unsigned position = b->count;
        if (batch_append(c, &command)) {
            if (command.partner >= 0) b->commands[command.partner].partner = (int)position;
            return 1;
        }
        sg_gl_batch_flush(c); return 0;
    } else { sg_gl_batch_flush(c); return 0; }
    if (batch_append(c, &command)) return 1;
    sg_gl_batch_flush(c);
    return 0;
}

static void batch_load(softgl_ctx *c, const softgl_ctx *state, struct sg_gl_batch *batch,
    struct sg_scene_visibility *storage, struct sg_scene_visibility *scene) {
    batch_copy_state(c,state);
    c->gl_batch = batch; c->gl_batch_busy = 1;
    c->scene_storage = storage; c->scene_visibility = scene;
}

void sg_gl_batch_flush(softgl_ctx *c) {
    struct sg_gl_batch *b = c->gl_batch;
    if (c->gl_batch_busy || !b || !b->count) return;
    softgl_ctx saved = *c;
    softgl_ctx *previous = sg_current(); sg_set_current(c);
    c->gl_batch_busy = 1;
    unsigned count = b->count;
    int resolved = 0;
    struct sg_scene_visibility *storage = c->scene_storage;
    const uint64_t threshold = (uint64_t)c->fb.w*c->fb.h/(c->fb.samples == 4 ? 8u : 1u);
    if (b->triangles >= threshold) b->complex_frame = 1;
    if (b->triangles >= threshold && b->commands[0].kind == 1) {
        batch_load(c, &b->commands[0].state, b, storage, NULL);
        if (sg_scene_begin(c)) {
            storage = c->scene_storage;
            struct sg_scene_visibility *scene = c->scene_visibility;
            sg_scene_order(c, 2);
            int captured = 1;
            for (unsigned i = 0; i < count; i++) {
                const sg_gl_command *draw = &b->commands[i];
                if (draw->kind != 1) continue;
                batch_load(c, &draw->state, b, storage, scene);
                c->fused_dot3_enabled = 0;
                if (draw->partner >= 0) {
                    const sg_gl_command *specular = &b->commands[draw->partner];
                    c->attr_tex[1] = specular->state.attr_color;
                    c->fused_dot3_enabled = 3; c->fused_dot3_quartic = specular->kind == 3;
                    memcpy(c->fused_dot3_tint, specular->state.tex_env[3].env_color, sizeof(c->fused_dot3_tint));
                }
                sg_scene_merge(c, GL_TRUE);
                sg_scene_material(c);
                const sg_resolved_attrib *p = &draw->inputs.position, *uv = &draw->inputs.uv[0];
                if (!uv->base || uv->size != 2 || uv->type != GL_FLOAT ||
                    !sg_scene_positions(c, (const float *)p->base, (const float *)uv->base,
                        p->stride, draw->vertices, draw->indices, draw->count)) {
                    captured = 0; break;
                }
            }
            /* End runs with a supported opaque state even if the final GL
             * command was an additive pass. Application state is restored. */
            batch_load(c, &b->commands[0].state, b, storage, scene);
            if (!captured) sg_scene_abort(c);
            resolved = sg_scene_end(c);
        }
    }
    for (unsigned i = 0; i < count; i++) {
        const sg_gl_command *draw = &b->commands[i];
        if (resolved && (draw->kind == 1 || draw->partner >= 0)) continue;
        if (draw->kind != 1 && draw->partner >= 0 && b->commands[draw->partner].transparent) continue;
        batch_load(c, &draw->state, b, storage, NULL);
        if (draw->transparent && draw->partner >= 0) {
            const sg_gl_command *specular = &b->commands[draw->partner];
            c->attr_tex[1] = specular->state.attr_color;
            c->fused_dot3_enabled = 4; c->fused_dot3_quartic = specular->kind == 3;
            memcpy(c->fused_dot3_tint,specular->state.tex_env[3].env_color,sizeof(c->fused_dot3_tint));
            c->blend_src = GL_ONE; c->alpha_test = 0;
        }
        _sg_draw_elements_real(GL_TRIANGLES, draw->count, GL_UNSIGNED_INT, draw->offset);
    }
    sg_workers_flush(c);
    b->count = 0; b->triangles = 0; b->specular_phase = 0;
    *c = saved;
    c->scene_storage = storage; c->gl_batch = b;
    sg_set_current(previous);
}

void sg_gl_batch_reset(softgl_ctx *c) {
    if (c->gl_batch) c->gl_batch->complex_frame = 0;
}

void sg_gl_batch_destroy(softgl_ctx *c) {
    if (!c->gl_batch) return;
    free(c->gl_batch->commands);
    free(c->gl_batch); c->gl_batch = NULL;
}
