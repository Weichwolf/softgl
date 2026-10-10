#!/usr/bin/env python3
"""Apply explicit opaque alpha to frozen engine/wrapper sources."""
from pathlib import Path
import sys

root = Path(sys.argv[1])
sharing = len(sys.argv) > 2 and sys.argv[2] == 'sharing'

def change(name, old, new):
    path = root / name
    text = path.read_text()
    assert text.count(old) == 1, (name, old[:80], text.count(old))
    path.write_text(text.replace(old, new))

change('libsoftgl/src/types.h',
    '    unsigned        sample_mask;       /* texture values consumed by active stages */',
    '''    unsigned        sample_mask;       /* texture values consumed by active stages */
    int             constant_alpha_valid;
    float           constant_alpha;    /* final GL_REPLACE / GL_CONSTANT alpha */''')
change('libsoftgl/src/fragment.c', '    t->combine_kind = 0;',
    '    t->combine_kind = 0;\n    t->constant_alpha_valid = 0;\n    t->constant_alpha = 0.f;')
change('libsoftgl/src/fragment.c', '    if (t->combine_kind == 1 && c->fused_dot3_enabled) {',
    '''    if (t->combine_kind == 1 && c->tex_env[3].src_a[0] == GL_CONSTANT) {
        t->constant_alpha_valid = 1;
        t->constant_alpha = sg_clampf(c->tex_env[3].env_color[3],0.f,1.f);
    }
    if (t->combine_kind == 1 && c->fused_dot3_enabled) {''')
change('libsoftgl/src/frag_combine_hot.h',
    '        e[3].src_a[0] == GL_PREVIOUS) return 1;',
    '        (e[3].src_a[0] == GL_PREVIOUS || e[3].src_a[0] == GL_CONSTANT)) return 1;')
change('libsoftgl/src/frag_combine_hot.h', '    out[3] = alpha;',
    '''    out[3] = kind == 1 && env[3].src_a[0] == GL_CONSTANT
        ? sg_clampf(env[3].env_color[3],0.f,1.f) : alpha;''')
change('libsoftgl/src/frag_packet.h',
    '''        sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
    for (int k = 0; k < 3; k++) {''',
    '''        sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));
    if (t->constant_alpha_valid) alpha = sg_f32x4_splat(t->constant_alpha);
    for (int k = 0; k < 3; k++) {''')
change('libsoftgl/src/frag_packet.h',
    '''        }
    }
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);''',
    '''        }
        if (t->constant_alpha_valid) color[3] = sg_f32x4_splat(t->constant_alpha);
    }
    _MM_TRANSPOSE4_PS(color[0], color[1], color[2], color[3]);''')
change('libsoftgl/src/scene_visibility.c',
    '    color[3] = sg_chain_clamp(sg_f32x4_mul(primary[3],tex[2][3]));',
    '''    color[3] = m->texture.constant_alpha_valid ? sg_f32x4_splat(m->texture.constant_alpha)
        : sg_chain_clamp(sg_f32x4_mul(primary[3],tex[2][3]));''')

# Every captured alpha test must respect the prepared final-alpha operation.
path = root / 'libsoftgl/src/scene_visibility.c'
text = path.read_text()
assert text.count('if (m->alpha_test) {') == 5
text = text.replace('if (m->alpha_test) {', 'if (m->alpha_test && !m->texture.constant_alpha_valid) {')
marker = '} scene_material;'
assert text.count(marker) == 1
text = text.replace(marker, marker + '''

static inline int scene_constant_alpha_rejected(const scene_material *m) {
    return m->alpha_test && m->texture.constant_alpha_valid &&
        !(m->texture.constant_alpha > m->cutoff);
}
''')
for function, end, result in [
    ('void sg_scene_visibility_msaa_packet(', '\nvoid softgl_scene_quantized_visibility(', ''),
    ('void scene_small_msaa_capture(', '\n#ifndef SOFTGL_SMALL_MSAA_EXTENT', ''),
    ('int sg_scene_visibility_triangle(', '\nstatic scene_triangle *scene_triangle_at(', ' 0'),
    ('static int scene_packet_triangle(', '\n#ifdef SOFTGL_TRIANGLE_PACKET_AUDIT', ' 0')]:
    a = text.index(function); b = text.index(end,a)
    section = text[a:b]
    line = '    const scene_material *m = &f->materials[c->scene_material];'
    assert section.count(line) == 1, function
    section = section.replace(line, line+'\n    if (scene_constant_alpha_rejected(m)) return'+result+';')
    text = text[:a]+section+text[b:]
path.write_text(text)

change('model_wrap.c', '''    }
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    float fused_tint[4];''', '''    }
    if (!specular && m->alpha_mode == 0) {
        /* glTF OPAQUE ignores stored texture alpha in every renderer. */
        const float opaque[4] = {0.f,0.f,0.f,1.f};
        glTexEnvfv(GL_TEXTURE_ENV,GL_TEXTURE_ENV_COLOR,opaque);
        glTexEnvi(GL_TEXTURE_ENV,GL_SOURCE0_ALPHA,GL_CONSTANT);
    }
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    float fused_tint[4];''')
if sharing:
    change('model_wrap.c',
        '    softgl_scene_msaa_material_merge(m->albedo_alpha_constant ? GL_TRUE : GL_FALSE);',
        '    softgl_scene_msaa_material_merge(m->alpha_mode == 0 || m->albedo_alpha_constant ? GL_TRUE : GL_FALSE);')
