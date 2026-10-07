#!/usr/bin/env python3
"""Frozen-source forward material fusion; never modifies the production tree."""
from pathlib import Path
import argparse
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', required=True)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
destination = repo/'build/fused-material-pass/source'
for name in subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines():
    target = destination/name
    target.parent.mkdir(parents=True,exist_ok=True)
    target.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
(destination/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
(destination/'baseline.txt').write_text(base+'\n')

def replace(name, old, new):
    p = destination/name
    s = p.read_text()
    assert s.count(old)==1, (name,old[:100],s.count(old))
    p.write_text(s.replace(old,new))

replace('libsoftgl/include/GL/softgl.h',
    'void softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit);',
    '''void softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit);
/* Private experiment: same lifetime/purity contract, all four raw coordinates. */
typedef void (*softgl_vertex_attributes_full_fn)(void *user, GLuint index,
    GLfloat color[4], GLfloat texcoord[4][4]);
void softgl_set_vertex_attributes_full(softgl_vertex_attributes_full_fn program, void *user);
/* NULL restores GL fragment combiners; constants are copied into draw state. */
void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);''')
replace('libsoftgl/src/types.h','    softgl_vertex_attributes_fn vertex_attributes;',
    '''    softgl_vertex_attributes_fn vertex_attributes;
    softgl_vertex_attributes_full_fn vertex_attributes_full;
    int fused_dot3_enabled, fused_dot3_quartic;
    float fused_dot3_tint[4];''')
replace('libsoftgl/src/api.c','    c->vertex_attributes = program;',
    '    c->vertex_attributes = program;\n    c->vertex_attributes_full = NULL;')
p = destination/'libsoftgl/src/api.c'
p.write_text(p.read_text()+'''
void softgl_set_vertex_attributes_full(softgl_vertex_attributes_full_fn program, void *user) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->vertex_attributes = NULL;
    c->vertex_attributes_full = program;
    c->vertex_attribute_data = user;
}

void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->fused_dot3_enabled = tint != NULL;
    c->fused_dot3_quartic = quartic != 0;
    if (tint) for (int j = 0; j < 4; j++) c->fused_dot3_tint[j] = tint[j];
}
''')
replace('libsoftgl/src/pipeline.c',
    '''    if (c->vertex_attributes) {
        float texcoord[4];''',
    '''    if (c->vertex_attributes_full) {
        float texcoord[SG_MAX_TEX_UNITS][4];
        memcpy(texcoord, out->uv, sizeof(texcoord));
        c->vertex_attributes_full(c->vertex_attribute_data, (GLuint)index, color, texcoord);
        memcpy(out->uv, texcoord, sizeof(texcoord));
    }
    if (c->vertex_attributes) {
        float texcoord[4];''')
replace('libsoftgl/src/fragment.c',
    '    if (n_active == 4) t->combine_kind = sg_dot3_chain_kind(c, t);',
    '''    if (n_active == 4) t->combine_kind = sg_dot3_chain_kind(c, t);
    if (t->combine_kind == 1 && c->fused_dot3_enabled) {
        t->combine_kind = c->fused_dot3_quartic ? 5 : 4;
        /* Unit 1 carries the half vector, including in packed raster vertices. */
        t->sample_mask |= 1u << 1;
    }''')
replace('libsoftgl/src/workers_queue_raw.inc',
    '''                !texture_context.unit[u].constant_color_valid)''',
    '''                (!texture_context.unit[u].constant_color_valid ||
                 (u == 1 && texture_context.combine_kind >= 4)))''')
replace('libsoftgl/src/rasterizer.c',
    '            sg_dot3_chain_shade(tctx->combine_kind, c->tex_env, primary, unit_tex, col);',
    '''            if (tctx->combine_kind >= 4) {
                float half_vector[4];
                sg_lerp_pc(half_vector, &v0->uv[1], &v1->uv[1], &v2->uv[1],
                           w0, w1, w2, one_over_wsum);
                sg_dot3_chain_shade(1, c->tex_env, primary, unit_tex, col);
                float d = 4.f * ((unit_tex[0][0] - .5f) * (half_vector[0] - .5f)
                              + (unit_tex[0][1] - .5f) * (half_vector[1] - .5f)
                              + (unit_tex[0][2] - .5f) * (half_vector[2] - .5f));
                d = sg_clampf(d, 0.f, 1.f); d *= d;
                if (tctx->combine_kind == 5) d *= d;
                for (int k = 0; k < 3; k++) {
                    float specular = sg_clampf(d * c->fused_dot3_tint[k], 0.f, 1.f);
                    col[k] = sg_clampf(col[k] + specular * sg_clampf(c->fused_dot3_tint[3], 0.f, 1.f), 0.f, 1.f);
                }
            } else sg_dot3_chain_shade(tctx->combine_kind, c->tex_env, primary, unit_tex, col);''')
replace('libsoftgl/src/frag_packet.h',
    '''        color[3] = t->combine_kind == 1 ? sg_chain_clamp(sg_f32x4_mul(color[3], tex[2][3]))
            : sg_f32x4_splat(sg_clampf(c->tex_env[3].env_color[3], 0.f, 1.f));''',
    '''        color[3] = t->combine_kind == 1 ? sg_chain_clamp(sg_f32x4_mul(color[3], tex[2][3]))
            : sg_f32x4_splat(sg_clampf(c->tex_env[3].env_color[3], 0.f, 1.f));
        if (t->combine_kind >= 4) {
            sg_f32x4 h[3];
            for (int k = 0; k < 3; k++) {
                const float *a = &v0->uv[1].x, *b = &v1->uv[1].x, *e = &v2->uv[1].x;
                sg_f32x4 encoded = sg_packet_lerp(a[k], b[k], e[k], w0, w1, w2, inverse);
                h[k] = sg_f32x4_mul(sg_f32x4_sub(tex[0][k], half), sg_f32x4_sub(encoded, half));
            }
            sg_f32x4 specular = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
                sg_f32x4_add(sg_f32x4_add(h[0], h[1]), h[2])));
            specular = sg_f32x4_mul(specular, specular);
            if (t->combine_kind == 5) specular = sg_f32x4_mul(specular, specular);
            for (int k = 0; k < 3; k++) {
                sg_f32x4 diffuse = sg_chain_clamp(sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])));
                diffuse = sg_chain_clamp(sg_f32x4_mul(diffuse, tex[2][k]));
                diffuse = sg_chain_clamp(sg_f32x4_add(diffuse, tex[3][k]));
                sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular, sg_f32x4_splat(c->fused_dot3_tint[k])));
                color[k] = sg_chain_clamp(sg_f32x4_add(diffuse, sg_f32x4_mul(tinted,
                    sg_f32x4_splat(sg_clampf(c->fused_dot3_tint[3], 0.f, 1.f)))));
            }
            color[3] = sg_chain_clamp(sg_f32x4_mul(
                sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
        }''')
# Avoid executing the old specular chain before the fused packet branch.
replace('libsoftgl/src/frag_packet.h',
    '''        for (int k = 0; k < 3; k++) {
            sg_f32x4 s = t->combine_kind == 1''',
    '''        for (int k = 0; k < 3 && t->combine_kind < 4; k++) {
            sg_f32x4 s = t->combine_kind == 1''')

replace('model_wrap.c',
    'static void prepare_attribute_program(const float matrix[16]) {',
    '''static void generate_fused_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    const model_attribute_program *program = user;
    const float *v = program->vertices+(size_t)index*STATIC_STRIDE;
    const float *n = v+3, *t = v+8, *matrix = program->matrix;
    const float *light = program->object_light;
    float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
    float eye[3], eye_normal[3], half[3];
    for (int j = 0; j < 3; j++) {
        eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
        eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
    }
    float inv_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
    for (int j = 0; j < 3; j++)
        half[j] = light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inv_eye;
    float inv_half = 1.f/sqrtf(fmaxf(half[0]*half[0]+half[1]*half[1]+half[2]*half[2], 1e-20f));
    const float *basis[] = {t, b, n};
    for (int j = 0; j < 3; j++) {
        color[j] = .5f+.5f*(basis[j][0]*light[0]+basis[j][1]*light[1]+basis[j][2]*light[2]);
        uv[1][j] = .5f+.5f*(basis[j][0]*half[0]+basis[j][1]*half[1]+basis[j][2]*half[2])*inv_half;
    }
    float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
    for (int j = 0; j < 3; j++) uv[3][j] = eye[j]-2.f*dot*eye_normal[j];
    color[3] = uv[1][3] = uv[3][3] = 1.f;
}

static void prepare_attribute_program(const float matrix[16]) {''')
replace('model_wrap.c',
    '    softgl_set_vertex_attributes(generate_attributes, &attribute_program, 3);',
    '''    if (!specular && m->alpha_mode != 2)
        softgl_set_vertex_attributes_full(generate_fused_attributes, &attribute_program);
    else softgl_set_vertex_attributes(generate_attributes, &attribute_program, 3);''')
replace('model_wrap.c',
    '    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);\n    glDrawElements(',
    '''#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    float fused_tint[4];
    for (int j = 0; j < 3; j++) fused_tint[j] = .25f*((1.f-m->metallic)*.04f+m->metallic*m->base[j]+.04f*m->coat);
    fused_tint[3] = m->alpha_mode == 0 ? 1.f : m->base[3];
    softgl_set_fused_dot3_material(!specular && m->alpha_mode != 2 ? fused_tint : NULL, m->roughness < .6f);
#endif
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glDrawElements(''')
replace('model_wrap.c',
    '    softgl_set_vertex_attributes(NULL, NULL, 0);',
    '''    softgl_set_vertex_attributes(NULL, NULL, 0);
    softgl_set_fused_dot3_material(NULL, GL_FALSE);''')
replace('model_wrap.c',
    '    for (unsigned i = 0; i < G.parts; i++) if (G.material[G.part[i].material].alpha_mode != 2) draw_part(&G.part[i], 1);',
    '''#ifndef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    for (unsigned i = 0; i < G.parts; i++) if (G.material[G.part[i].material].alpha_mode != 2) draw_part(&G.part[i], 1);
#endif
    /* SoftGL worker attributes evaluate nontransparent specular in the first pass. */''')
print(destination)
