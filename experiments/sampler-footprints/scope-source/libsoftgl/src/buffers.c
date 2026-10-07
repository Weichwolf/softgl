#include "workers.h"
#include "types.h"
#include "dlist.h"
#include <stdlib.h>
#include <string.h>

/* Growing pool of buffer objects. id 0 is reserved ("no buffer bound"). */
static sg_buffer *sg_alloc_slot(softgl_ctx *c, GLuint *out_id) {
    for (size_t i = 0; i < c->buffers_cap; i++) {
        if (!c->buffers[i].in_use) {
            c->buffers[i].in_use = 1;
            c->buffers[i].revision++;
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
    c->buffers[old].revision++;
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
        if (!b->in_use) { b->in_use = 1; b->id = id; b->revision++; }
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
    b->revision++;
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
    b->revision++;
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

/* ================================================================
 * Buffer mapping (Phase 9). glMapBuffer/glUnmapBuffer are executed
 * immediately per spec — they return pointers, so they cannot be
 * deferred. Tests using them inside a display list would be nonsense.
 * ================================================================ */

static sg_buffer *sg_bound_buffer(softgl_ctx *c, GLenum target) {
    GLuint id;
    switch (target) {
        case GL_ARRAY_BUFFER:         id = c->array_buffer_binding; break;
        case GL_ELEMENT_ARRAY_BUFFER: id = c->element_buffer_binding; break;
        default: sg_set_error(GL_INVALID_ENUM); return NULL;
    }
    sg_buffer *b = sg_buffer_get(c, id);
    if (!b) { sg_set_error(GL_INVALID_OPERATION); return NULL; }
    return b;
}

void *glMapBuffer(GLenum target, GLenum access) {
    softgl_ctx *c = sg_current(); if (!c) return NULL;
    if (access != GL_READ_ONLY && access != GL_WRITE_ONLY && access != GL_READ_WRITE) {
        sg_set_error(GL_INVALID_ENUM); return NULL;
    }
    sg_buffer *b = sg_bound_buffer(c, target);
    if (!b) return NULL;
    if (b->mapped) { sg_set_error(GL_INVALID_OPERATION); return NULL; }
    if (!b->data || b->size == 0) {
        sg_set_error(GL_OUT_OF_MEMORY); return NULL;
    }
    if (access != GL_READ_ONLY) b->revision++;
    b->mapped = 1;
    b->access = access;
    return b->data;
}

GLboolean glUnmapBuffer(GLenum target) {
    softgl_ctx *c = sg_current(); if (!c) return GL_FALSE;
    sg_buffer *b = sg_bound_buffer(c, target);
    if (!b) return GL_FALSE;
    if (!b->mapped) { sg_set_error(GL_INVALID_OPERATION); return GL_FALSE; }
    if (b->access != GL_READ_ONLY) b->revision++;
    b->mapped = 0;
    b->access = 0;
    /* In a pure-software implementation the mapped pointer IS the storage,
     * so there is never a transfer step that could invalidate it. Always
     * return GL_TRUE. */
    return GL_TRUE;
}

void glGetBufferParameteriv(GLenum target, GLenum pname, GLint *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    sg_buffer *b = sg_bound_buffer(c, target);
    if (!b) return;
    switch (pname) {
        case GL_BUFFER_SIZE:   *params = (GLint)b->size; return;
        case GL_BUFFER_USAGE:  *params = (GLint)b->usage; return;
        case GL_BUFFER_ACCESS: *params = (GLint)(b->access ? b->access : GL_READ_WRITE); return;
        case GL_BUFFER_MAPPED: *params = b->mapped ? GL_TRUE : GL_FALSE; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void glGetBufferPointerv(GLenum target, GLenum pname, void **params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    sg_buffer *b = sg_bound_buffer(c, target);
    if (!b) return;
    if (pname != GL_BUFFER_MAP_POINTER) { sg_set_error(GL_INVALID_ENUM); return; }
    *params = b->mapped ? b->data : NULL;
}

/* ================================================================
 * Occlusion queries (Phase 9, ARB_occlusion_query).
 *
 * Query ids are a pool parallel to buffers/textures. Queries are
 * always executed immediately — they represent async GPU state in
 * real GL, but in softgl everything is synchronous.
 * ================================================================ */

static sg_query *sg_query_alloc_slot(softgl_ctx *c, GLuint *out_id) {
    for (size_t i = 0; i < c->queries_cap; i++) {
        if (!c->queries[i].in_use) {
            memset(&c->queries[i], 0, sizeof(sg_query));
            c->queries[i].in_use = 1;
            c->queries[i].id = (GLuint)(i + 1);
            *out_id = c->queries[i].id;
            return &c->queries[i];
        }
    }
    size_t new_cap = c->queries_cap ? c->queries_cap * 2 : 16;
    sg_query *nq = (sg_query*)realloc(c->queries, new_cap * sizeof(sg_query));
    if (!nq) return NULL;
    memset(nq + c->queries_cap, 0, (new_cap - c->queries_cap) * sizeof(sg_query));
    c->queries = nq;
    size_t old = c->queries_cap;
    c->queries_cap = new_cap;
    c->queries[old].in_use = 1;
    c->queries[old].id = (GLuint)(old + 1);
    *out_id = c->queries[old].id;
    return &c->queries[old];
}

sg_query *sg_query_get(softgl_ctx *c, GLuint id) {
    if (id == 0 || id > c->queries_cap) return NULL;
    sg_query *q = &c->queries[id - 1];
    if (!q->in_use) return NULL;
    return q;
}

static int sg_query_target_slot(GLenum target) {
    switch (target) {
        case GL_SAMPLES_PASSED:     return SG_QUERY_TARGET_SAMPLES_PASSED;
        case GL_ANY_SAMPLES_PASSED: return SG_QUERY_TARGET_ANY_SAMPLES_PASSED;
        default: return -1;
    }
}

void glGenQueries(GLsizei n, GLuint *ids) {
    softgl_ctx *c = sg_current(); if (!c || !ids) return;
    if (n < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    for (GLsizei i = 0; i < n; i++) {
        GLuint id = 0;
        sg_query_alloc_slot(c, &id);
        ids[i] = id;
    }
}

void glDeleteQueries(GLsizei n, const GLuint *ids) {
    softgl_ctx *c = sg_current(); if (!c || !ids) return;
    if (n < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    for (GLsizei i = 0; i < n; i++) {
        GLuint id = ids[i];
        sg_query *q = sg_query_get(c, id);
        if (!q) continue;
        /* If currently active on any target, end it silently. */
        for (int s = 0; s < SG_QUERY_TARGET_COUNT; s++) {
            if (c->current_query[s] == id) c->current_query[s] = 0;
        }
        q->in_use = 0;
        q->active = 0;
    }
}

GLboolean glIsQuery(GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return GL_FALSE;
    return sg_query_get(c, id) ? GL_TRUE : GL_FALSE;
}

void glBeginQuery(GLenum target, GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    int slot = sg_query_target_slot(target);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (id == 0) { sg_set_error(GL_INVALID_OPERATION); return; }
    if (c->current_query[slot] != 0) { sg_set_error(GL_INVALID_OPERATION); return; }

    /* Auto-create the query object if glBeginQuery is called with an id
     * that was never handed out by glGenQueries — matches ARB spec text
     * allowing lazy allocation. */
    sg_query *q = sg_query_get(c, id);
    if (!q) {
        /* Grow pool and claim the requested id. */
        if (id > c->queries_cap) {
            size_t new_cap = id;
            sg_query *nq = (sg_query*)realloc(c->queries, new_cap * sizeof(sg_query));
            if (!nq) return;
            memset(nq + c->queries_cap, 0, (new_cap - c->queries_cap) * sizeof(sg_query));
            c->queries = nq;
            c->queries_cap = new_cap;
        }
        q = &c->queries[id - 1];
        memset(q, 0, sizeof(*q));
        q->in_use = 1;
        q->id = id;
    }

    /* A given query object can't have been used with a different target before. */
    if (q->target != 0 && q->target != target) {
        sg_set_error(GL_INVALID_OPERATION); return;
    }

    q->target = target;
    q->active = 1;
    q->result = 0;
    q->result_available = 0;
    c->current_query[slot] = id;
}

void glEndQuery(GLenum target) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int slot = sg_query_target_slot(target);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    GLuint id = c->current_query[slot];
    if (id == 0) { sg_set_error(GL_INVALID_OPERATION); return; }
    sg_query *q = sg_query_get(c, id);
    if (q) {
        q->active = 0;
        q->result_available = 1;
    }
    c->current_query[slot] = 0;
}

void glGetQueryiv(GLenum target, GLenum pname, GLint *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    int slot = sg_query_target_slot(target);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    switch (pname) {
        case GL_CURRENT_QUERY:       *params = (GLint)c->current_query[slot]; return;
        case GL_QUERY_COUNTER_BITS:  *params = 32; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void glGetQueryObjectiv(GLuint id, GLenum pname, GLint *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    sg_query *q = sg_query_get(c, id);
    if (!q) { sg_set_error(GL_INVALID_OPERATION); return; }
    if (q->active) { sg_set_error(GL_INVALID_OPERATION); return; }
    switch (pname) {
        case GL_QUERY_RESULT:           *params = (GLint)q->result; return;
        case GL_QUERY_RESULT_AVAILABLE: *params = q->result_available ? GL_TRUE : GL_FALSE; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    sg_query *q = sg_query_get(c, id);
    if (!q) { sg_set_error(GL_INVALID_OPERATION); return; }
    if (q->active) { sg_set_error(GL_INVALID_OPERATION); return; }
    switch (pname) {
        case GL_QUERY_RESULT:           *params = (GLuint)q->result; return;
        case GL_QUERY_RESULT_AVAILABLE: *params = q->result_available ? GL_TRUE : GL_FALSE; return;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
}
