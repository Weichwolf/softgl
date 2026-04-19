#include "types.h"
#include "dlist.h"
#include <stdlib.h>
#include <string.h>

/* Growing pool of buffer objects. id 0 is reserved ("no buffer bound"). */
static sg_buffer *sg_alloc_slot(softgl_ctx *c, GLuint *out_id) {
    for (size_t i = 0; i < c->buffers_cap; i++) {
        if (!c->buffers[i].in_use) {
            c->buffers[i].in_use = 1;
            c->buffers[i].id = (GLuint)(i + 1);
            *out_id = c->buffers[i].id;
            return &c->buffers[i];
        }
    }
    size_t new_cap = c->buffers_cap ? c->buffers_cap * 2 : 16;
    sg_buffer *nb = (sg_buffer*)realloc(c->buffers, new_cap * sizeof(sg_buffer));
    if (!nb) return NULL;
    memset(nb + c->buffers_cap, 0, (new_cap - c->buffers_cap) * sizeof(sg_buffer));
    c->buffers = nb;
    size_t old = c->buffers_cap;
    c->buffers_cap = new_cap;
    c->buffers[old].in_use = 1;
    c->buffers[old].id = (GLuint)(old + 1);
    *out_id = c->buffers[old].id;
    return &c->buffers[old];
}

sg_buffer *sg_buffer_get(softgl_ctx *c, GLuint id) {
    if (id == 0 || id > c->buffers_cap) return NULL;
    sg_buffer *b = &c->buffers[id - 1];
    if (!b->in_use) return NULL;
    return b;
}

/* Allocations — never recorded (spec §5.4 lists glGenBuffers, glDeleteBuffers
 * as executed immediately). */
void glGenBuffers(GLsizei n, GLuint *out) {
    softgl_ctx *c = sg_current(); if (!c || !out) return;
    for (GLsizei i = 0; i < n; i++) {
        GLuint id = 0;
        sg_alloc_slot(c, &id);
        out[i] = id;
    }
}

void glDeleteBuffers(GLsizei n, const GLuint *ids) {
    softgl_ctx *c = sg_current(); if (!c || !ids) return;
    for (GLsizei i = 0; i < n; i++) {
        GLuint id = ids[i];
        sg_buffer *b = sg_buffer_get(c, id);
        if (!b) continue;
        if (b->data) { free(b->data); b->data = NULL; }
        b->in_use = 0;
        b->size = 0;
        if (c->array_buffer_binding == id)   c->array_buffer_binding = 0;
        if (c->element_buffer_binding == id) c->element_buffer_binding = 0;
    }
}

/* ==================  _real implementations  ================== */

void _sg_bind_buffer_real(GLenum target, GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (id != 0 && id > c->buffers_cap) {
        size_t new_cap = id;
        sg_buffer *nb = (sg_buffer*)realloc(c->buffers, new_cap * sizeof(sg_buffer));
        if (!nb) return;
        memset(nb + c->buffers_cap, 0, (new_cap - c->buffers_cap) * sizeof(sg_buffer));
        c->buffers = nb;
        c->buffers_cap = new_cap;
    }
    if (id != 0) {
        sg_buffer *b = &c->buffers[id - 1];
        if (!b->in_use) { b->in_use = 1; b->id = id; }
    }
    switch (target) {
        case GL_ARRAY_BUFFER:         c->array_buffer_binding = id; break;
        case GL_ELEMENT_ARRAY_BUFFER: c->element_buffer_binding = id; break;
        default: return;
    }
}

void _sg_buffer_data_real(GLenum target, GLsizeiptr size, const void *data, GLenum usage) {
    softgl_ctx *c = sg_current(); if (!c) return;
    GLuint id = (target == GL_ARRAY_BUFFER) ? c->array_buffer_binding : c->element_buffer_binding;
    sg_buffer *b = sg_buffer_get(c, id);
    if (!b) return;
    if (b->data) free(b->data);
    b->data = size > 0 ? malloc((size_t)size) : NULL;
    b->size = (size_t)size;
    b->usage = usage;
    if (data && b->data) memcpy(b->data, data, (size_t)size);
}

void _sg_buffer_subdata_real(GLenum target, GLintptr offset, GLsizeiptr size, const void *data) {
    softgl_ctx *c = sg_current(); if (!c) return;
    GLuint id = (target == GL_ARRAY_BUFFER) ? c->array_buffer_binding : c->element_buffer_binding;
    sg_buffer *b = sg_buffer_get(c, id);
    if (!b || !b->data || !data) return;
    if (offset < 0 || size < 0) return;
    if ((size_t)(offset + size) > b->size) return;
    memcpy((uint8_t*)b->data + offset, data, (size_t)size);
}

/* Client state */
static sg_attrib_ptr *sg_attr_for_state(softgl_ctx *c, GLenum cap) {
    switch (cap) {
        case GL_VERTEX_ARRAY:        return &c->attr_pos;
        case GL_NORMAL_ARRAY:        return &c->attr_normal;
        case GL_COLOR_ARRAY:         return &c->attr_color;
        case GL_TEXTURE_COORD_ARRAY: return &c->attr_tex[c->client_tex_unit];
        default: return NULL;
    }
}

void _sg_enable_client_state_real(GLenum cap) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_attrib_ptr *a = sg_attr_for_state(c, cap);
    if (a) a->enabled = 1;
}

void _sg_disable_client_state_real(GLenum cap) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_attrib_ptr *a = sg_attr_for_state(c, cap);
    if (a) a->enabled = 0;
}

void _sg_client_active_tex_real(GLenum unit) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int u = (int)(unit - GL_TEXTURE0);
    if (u < 0 || u >= SG_MAX_TEX_UNITS) return;
    c->client_tex_unit = (GLuint)u;
}

static void sg_set_ptr(sg_attrib_ptr *a, int size, GLenum type, GLsizei stride, const void *ptr, GLuint buffer) {
    a->size = size;
    a->type = type;
    a->stride = stride;
    a->ptr = (const uint8_t*)ptr;
    a->buffer = buffer;
}

void _sg_vertex_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_set_ptr(&c->attr_pos, size, type, stride, ptr, c->array_buffer_binding);
}

void _sg_normal_pointer_real(GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_set_ptr(&c->attr_normal, 3, type, stride, ptr, c->array_buffer_binding);
}

void _sg_color_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_set_ptr(&c->attr_color, size, type, stride, ptr, c->array_buffer_binding);
}

void _sg_texcoord_pointer_real(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_set_ptr(&c->attr_tex[c->client_tex_unit], size, type, stride, ptr, c->array_buffer_binding);
}

/* ==================  Public wrappers (dlist-aware)  ================== */

void glBindBuffer(GLenum target, GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t; GLuint id; } a = {target, id};
        sg_dlist_emit(c, SG_OP_BIND_BUFFER, &a, sizeof(a));
        if (c->dlist_exec) _sg_bind_buffer_real(target, id);
    } else _sg_bind_buffer_real(target, id);
}

void glBufferData(GLenum target, GLsizeiptr size, const void *data, GLenum usage) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLsizeiptr size; GLenum usage; } a =
            { target, size, usage };
        sg_dlist_emit(c, SG_OP_BUFFER_DATA, &a, sizeof(a));
        if (data && size > 0) sg_dlist_append(c, data, (size_t)size);
        if (c->dlist_exec) _sg_buffer_data_real(target, size, data, usage);
    } else _sg_buffer_data_real(target, size, data, usage);
}

void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const void *data) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLintptr offset; GLsizeiptr size; } a =
            { target, offset, size };
        sg_dlist_emit(c, SG_OP_BUFFER_SUBDATA, &a, sizeof(a));
        if (data && size > 0) sg_dlist_append(c, data, (size_t)size);
        if (c->dlist_exec) _sg_buffer_subdata_real(target, offset, size, data);
    } else _sg_buffer_subdata_real(target, offset, size, data);
}

void glEnableClientState(GLenum cap) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_ENABLE_CLIENT, &cap, sizeof(cap));
        if (c->dlist_exec) _sg_enable_client_state_real(cap);
    } else _sg_enable_client_state_real(cap);
}

void glDisableClientState(GLenum cap) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_DISABLE_CLIENT, &cap, sizeof(cap));
        if (c->dlist_exec) _sg_disable_client_state_real(cap);
    } else _sg_disable_client_state_real(cap);
}

void glClientActiveTexture(GLenum unit) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_CLIENT_ACTIVE_TEX, &unit, sizeof(unit));
        if (c->dlist_exec) _sg_client_active_tex_real(unit);
    } else _sg_client_active_tex_real(unit);
}

/* For the *Pointer commands: at replay time the buffer-binding/client-tex-unit
 * is whatever the preceding replayed commands established, so we don't record
 * those — the preceding glBindBuffer/glClientActiveTexture in the list will
 * fire first and set the same context state. */

void glVertexPointer(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a =
            { size, type, stride, (uintptr_t)ptr };
        sg_dlist_emit(c, SG_OP_VERTEX_POINTER, &a, sizeof(a));
        if (c->dlist_exec) _sg_vertex_pointer_real(size, type, stride, ptr);
    } else _sg_vertex_pointer_real(size, type, stride, ptr);
}

void glNormalPointer(GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum type; GLsizei stride; uintptr_t ptr; } a =
            { type, stride, (uintptr_t)ptr };
        sg_dlist_emit(c, SG_OP_NORMAL_POINTER, &a, sizeof(a));
        if (c->dlist_exec) _sg_normal_pointer_real(type, stride, ptr);
    } else _sg_normal_pointer_real(type, stride, ptr);
}

void glColorPointer(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a =
            { size, type, stride, (uintptr_t)ptr };
        sg_dlist_emit(c, SG_OP_COLOR_POINTER, &a, sizeof(a));
        if (c->dlist_exec) _sg_color_pointer_real(size, type, stride, ptr);
    } else _sg_color_pointer_real(size, type, stride, ptr);
}

void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *ptr) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a =
            { size, type, stride, (uintptr_t)ptr };
        sg_dlist_emit(c, SG_OP_TEXCOORD_POINTER, &a, sizeof(a));
        if (c->dlist_exec) _sg_texcoord_pointer_real(size, type, stride, ptr);
    } else _sg_texcoord_pointer_real(size, type, stride, ptr);
}
