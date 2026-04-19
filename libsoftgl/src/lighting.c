#include "types.h"
#include "dlist.h"
#include <string.h>

static sg_light *sg_light_slot(softgl_ctx *c, GLenum light) {
    if (light < GL_LIGHT0 || light >= GL_LIGHT0 + SG_MAX_LIGHTS) return NULL;
    return &c->lights[light - GL_LIGHT0];
}

/* ==================  _real implementations  ================== */

void _sg_lightfv_real(GLenum light, GLenum pname, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    sg_light *L = sg_light_slot(c, light); if (!L) return;
    switch (pname) {
        case GL_AMBIENT:   memcpy(L->ambient,  v, sizeof(float)*4); break;
        case GL_DIFFUSE:   memcpy(L->diffuse,  v, sizeof(float)*4); break;
        case GL_SPECULAR:  memcpy(L->specular, v, sizeof(float)*4); break;
        case GL_POSITION: {
            sg_vec4 p = { v[0], v[1], v[2], v[3] };
            sg_vec4 out;
            sg_mat4_mul_vec4(&out, &c->mv_stack[c->mv_top], &p);
            L->position[0] = out.x; L->position[1] = out.y;
            L->position[2] = out.z; L->position[3] = out.w;
        } break;
        case GL_CONSTANT_ATTENUATION:  L->att_const = v[0];  break;
        case GL_LINEAR_ATTENUATION:    L->att_linear = v[0]; break;
        case GL_QUADRATIC_ATTENUATION: L->att_quad = v[0];   break;
        default: break;
    }
}

void _sg_lightf_real(GLenum light, GLenum pname, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_light *L = sg_light_slot(c, light); if (!L) return;
    switch (pname) {
        case GL_CONSTANT_ATTENUATION:  L->att_const = v;  break;
        case GL_LINEAR_ATTENUATION:    L->att_linear = v; break;
        case GL_QUADRATIC_ATTENUATION: L->att_quad = v;   break;
        default: break;
    }
}

static void sg_mat_write(sg_material *m, GLenum pname, const GLfloat *v) {
    switch (pname) {
        case GL_AMBIENT:   memcpy(m->ambient,  v, sizeof(float)*4); break;
        case GL_DIFFUSE:   memcpy(m->diffuse,  v, sizeof(float)*4); break;
        case GL_SPECULAR:  memcpy(m->specular, v, sizeof(float)*4); break;
        case GL_EMISSION:  memcpy(m->emission, v, sizeof(float)*4); break;
        case GL_SHININESS: m->shininess = v[0]; break;
        case GL_AMBIENT_AND_DIFFUSE:
            memcpy(m->ambient, v, sizeof(float)*4);
            memcpy(m->diffuse, v, sizeof(float)*4);
            break;
        default: break;
    }
}

void _sg_materialfv_real(GLenum face, GLenum pname, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    switch (face) {
        case GL_FRONT: sg_mat_write(&c->material_front, pname, v); break;
        case GL_BACK:  sg_mat_write(&c->material_back,  pname, v); break;
        case GL_FRONT_AND_BACK:
        default:
            sg_mat_write(&c->material_front, pname, v);
            sg_mat_write(&c->material_back,  pname, v);
            break;
    }
}

void _sg_materialf_real(GLenum face, GLenum pname, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (pname == GL_SHININESS) {
        switch (face) {
            case GL_FRONT: c->material_front.shininess = v; break;
            case GL_BACK:  c->material_back.shininess  = v; break;
            default:
                c->material_front.shininess = v;
                c->material_back.shininess  = v; break;
        }
    }
}

void _sg_light_modelfv_real(GLenum p, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    switch (p) {
        case GL_LIGHT_MODEL_AMBIENT:
            c->light_model_ambient[0] = v[0];
            c->light_model_ambient[1] = v[1];
            c->light_model_ambient[2] = v[2];
            c->light_model_ambient[3] = v[3];
            return;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            c->light_model_local_viewer = (v[0] != 0.f) ? 1 : 0; return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            c->light_model_two_side = (v[0] != 0.f) ? 1 : 0; return;
        default: return;
    }
}

void _sg_light_modelf_real(GLenum p, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (p) {
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            c->light_model_local_viewer = (v != 0.f) ? 1 : 0; return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            c->light_model_two_side = (v != 0.f) ? 1 : 0; return;
        default: return;
    }
}

void _sg_light_modeli_real(GLenum p, GLint v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (p) {
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            c->light_model_local_viewer = (v != 0) ? 1 : 0; return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            c->light_model_two_side = (v != 0) ? 1 : 0; return;
        case GL_LIGHT_MODEL_AMBIENT:
            /* integer vec would go through fv path; scalar form is unusual */
            return;
        default: return;
    }
}

void _sg_color_material_real(GLenum face, GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (face) {
        case GL_FRONT: case GL_BACK: case GL_FRONT_AND_BACK: break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
    switch (mode) {
        case GL_EMISSION: case GL_AMBIENT: case GL_DIFFUSE:
        case GL_SPECULAR: case GL_AMBIENT_AND_DIFFUSE: break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
    c->color_material_face = face;
    c->color_material_mode = mode;
}

void _sg_fogi_real(GLenum p, GLint v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (p == GL_FOG_MODE) c->fog_mode = (GLenum)v;
}

void _sg_fogf_real(GLenum p, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (p) {
        case GL_FOG_DENSITY: c->fog_density = v; break;
        case GL_FOG_START:   c->fog_start = v; break;
        case GL_FOG_END:     c->fog_end = v; break;
        default: break;
    }
}

void _sg_fogfv_real(GLenum p, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    if (p == GL_FOG_COLOR) {
        memcpy(c->fog_color, v, sizeof(float) * 4);
    } else {
        _sg_fogf_real(p, v[0]);
    }
}

/* ==================  Public wrappers (dlist-aware)  ================== */

void glLightfv(GLenum light, GLenum pname, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LIGHTFV, NULL, 0);
        sg_dlist_append(c, &light, sizeof(light));
        sg_dlist_append(c, &pname, sizeof(pname));
        sg_dlist_append(c, v, 4 * sizeof(float));
        if (c->dlist_exec) _sg_lightfv_real(light, pname, v);
    } else _sg_lightfv_real(light, pname, v);
}

void glLightf(GLenum light, GLenum pname, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LIGHTF, NULL, 0);
        sg_dlist_append(c, &light, sizeof(light));
        sg_dlist_append(c, &pname, sizeof(pname));
        sg_dlist_append(c, &v, sizeof(v));
        if (c->dlist_exec) _sg_lightf_real(light, pname, v);
    } else _sg_lightf_real(light, pname, v);
}

void glMaterialfv(GLenum face, GLenum pname, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_MATERIALFV, NULL, 0);
        sg_dlist_append(c, &face, sizeof(face));
        sg_dlist_append(c, &pname, sizeof(pname));
        sg_dlist_append(c, v, 4 * sizeof(float));
        if (c->dlist_exec) _sg_materialfv_real(face, pname, v);
    } else _sg_materialfv_real(face, pname, v);
}

void glMaterialf(GLenum face, GLenum pname, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_MATERIALF, NULL, 0);
        sg_dlist_append(c, &face, sizeof(face));
        sg_dlist_append(c, &pname, sizeof(pname));
        sg_dlist_append(c, &v, sizeof(v));
        if (c->dlist_exec) _sg_materialf_real(face, pname, v);
    } else _sg_materialf_real(face, pname, v);
}

void glLightModelfv(GLenum p, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LIGHT_MODELFV, NULL, 0);
        sg_dlist_append(c, &p, sizeof(p));
        sg_dlist_append(c, v, 4 * sizeof(float));
        if (c->dlist_exec) _sg_light_modelfv_real(p, v);
    } else _sg_light_modelfv_real(p, v);
}

void glLightModelf(GLenum p, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum p; float v; } a = {p, v};
        sg_dlist_emit(c, SG_OP_LIGHT_MODELF, &a, sizeof(a));
        if (c->dlist_exec) _sg_light_modelf_real(p, v);
    } else _sg_light_modelf_real(p, v);
}

void glLightModeli(GLenum p, GLint v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum p; GLint v; } a = {p, v};
        sg_dlist_emit(c, SG_OP_LIGHT_MODELI, &a, sizeof(a));
        if (c->dlist_exec) _sg_light_modeli_real(p, v);
    } else _sg_light_modeli_real(p, v);
}

void glLightModeliv(GLenum p, const GLint *v) {
    if (!v) return;
    if (p == GL_LIGHT_MODEL_AMBIENT) {
        float fv[4] = { v[0] / 2147483647.0f, v[1] / 2147483647.0f,
                        v[2] / 2147483647.0f, v[3] / 2147483647.0f };
        glLightModelfv(p, fv);
    } else {
        glLightModeli(p, v[0]);
    }
}

void glColorMaterial(GLenum face, GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        GLenum a[2] = { face, mode };
        sg_dlist_emit(c, SG_OP_COLOR_MATERIAL, a, sizeof(a));
        if (c->dlist_exec) _sg_color_material_real(face, mode);
    } else _sg_color_material_real(face, mode);
}

void glMaterialiv(GLenum face, GLenum pname, const GLint *v) {
    if (!v) return;
    /* Map integers to [-1,1] like the core spec. For shininess it's the raw scalar. */
    if (pname == GL_SHININESS) {
        glMaterialf(face, pname, (GLfloat)v[0]);
        return;
    }
    float fv[4] = { v[0] / 2147483647.0f, v[1] / 2147483647.0f,
                    v[2] / 2147483647.0f, v[3] / 2147483647.0f };
    glMaterialfv(face, pname, fv);
}

void glMateriali(GLenum face, GLenum pname, GLint v) {
    glMaterialf(face, pname, (GLfloat)v);
}

void glLightiv(GLenum light, GLenum pname, const GLint *v) {
    if (!v) return;
    if (pname == GL_SPOT_EXPONENT || pname == GL_SPOT_CUTOFF ||
        pname == GL_CONSTANT_ATTENUATION || pname == GL_LINEAR_ATTENUATION ||
        pname == GL_QUADRATIC_ATTENUATION) {
        glLightf(light, pname, (GLfloat)v[0]); return;
    }
    float fv[4] = { v[0] / 2147483647.0f, v[1] / 2147483647.0f,
                    v[2] / 2147483647.0f, v[3] / 2147483647.0f };
    glLightfv(light, pname, fv);
}

void glLighti(GLenum light, GLenum pname, GLint v) {
    glLightf(light, pname, (GLfloat)v);
}

void glFogi(GLenum p, GLint v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum p; GLint v; } a = {p, v};
        sg_dlist_emit(c, SG_OP_FOGI, &a, sizeof(a));
        if (c->dlist_exec) _sg_fogi_real(p, v);
    } else _sg_fogi_real(p, v);
}

void glFogf(GLenum p, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum p; float v; } a = {p, v};
        sg_dlist_emit(c, SG_OP_FOGF, &a, sizeof(a));
        if (c->dlist_exec) _sg_fogf_real(p, v);
    } else _sg_fogf_real(p, v);
}

void glFogfv(GLenum p, const GLfloat *v) {
    softgl_ctx *c = sg_current(); if (!c || !v) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_FOGFV, NULL, 0);
        sg_dlist_append(c, &p, sizeof(p));
        sg_dlist_append(c, v, 4 * sizeof(float));
        if (c->dlist_exec) _sg_fogfv_real(p, v);
    } else _sg_fogfv_real(p, v);
}
