#!/usr/bin/env python3
"""Freeze unchanged accepted source for single-pass premultiplied transparent lighting."""
from pathlib import Path
import argparse
import shutil
import subprocess

parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='29ebccb')
parser.add_argument('--shader',choices=('inline','outlined'),default='outlined')
args=parser.parse_args()
repo=Path(__file__).resolve().parents[2]
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root=repo/'build/fused-transparent-pass'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p=root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src=root/'source/libsoftgl'
p=src/'include/GL/softgl.h';s=p.read_text();s=s.replace('void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);','void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);\nvoid softgl_set_fused_dot3_transparent(const GLfloat tint[4], GLboolean quartic);');p.write_text(s)
p=src/'src/api.c';s=p.read_text();s+='\nvoid softgl_set_fused_dot3_transparent(const GLfloat tint[4], GLboolean quartic) {\n    softgl_ctx *c = sg_current();\n    if (!c) return;\n    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }\n    c->fused_dot3_enabled = tint ? 2 : 0;\n    c->fused_dot3_quartic = quartic != 0;\n    if (tint) for (int j = 0; j < 4; j++) c->fused_dot3_tint[j] = tint[j];\n}\n';p.write_text(s)
p=src/'src/fragment.c';s=p.read_text();s=s.replace('        t->combine_kind = c->fused_dot3_quartic ? 5 : 4;', '        t->combine_kind = (c->fused_dot3_quartic ? 5 : 4)+\n            (c->fused_dot3_enabled == 2 && c->blend && c->blend_src == GL_ONE &&\n             c->blend_dst == GL_ONE_MINUS_SRC_ALPHA ? 2 : 0);');p.write_text(s)
p=src/'src/rasterizer.c';s=p.read_text().replace('if (tctx->combine_kind == 5) d *= d;','if (tctx->combine_kind == 5 || tctx->combine_kind == 7) d *= d;');s=s.replace('                    col[k] = sg_clampf(col[k] + specular', '                    if (tctx->combine_kind >= 6) col[k] *= col[3];\n                    col[k] = sg_clampf(col[k] + specular');p.write_text(s)
p=src/'src/frag_packet.h';s=p.read_text().replace('if (t->combine_kind == 5) specular', 'if (t->combine_kind == 5 || t->combine_kind == 7) specular')
s=s.replace('            for (int k = 0; k < 3; k++) {\n                sg_f32x4 diffuse', '            sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(\n                sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));\n            for (int k = 0; k < 3; k++) {\n                sg_f32x4 diffuse')
s=s.replace('                sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular,', '                if (t->combine_kind >= 6) diffuse = sg_f32x4_mul(diffuse,alpha);\n                sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(specular,')
s=s.replace('            color[3] = sg_chain_clamp(sg_f32x4_mul(\n                sg_packet_lerp(v0->color.w, v1->color.w, v2->color.w, w0, w1, w2, inverse), tex[2][3]));', '            color[3] = alpha;');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text();s=s.replace('if (!specular && m->alpha_mode != 2)\n        softgl_set_vertex_attributes_full', 'if (!specular)\n        softgl_set_vertex_attributes_full')
s=s.replace('    softgl_set_fused_dot3_material(!specular && m->alpha_mode != 2 ? fused_tint : NULL, m->roughness < .6f);', '    if (!specular && m->alpha_mode == 2) {\n        softgl_set_fused_dot3_transparent(fused_tint,m->roughness < .6f);\n        /* Specular survives an albedo-alpha hole in the old additive pass. */\n        glDisable(GL_ALPHA_TEST);\n    } else softgl_set_fused_dot3_material(!specular ? fused_tint : NULL, m->roughness < .6f);')
s=s.replace('        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); draw_part(&G.part[G.order[i]], 0);\n        glBlendFunc(GL_SRC_ALPHA, GL_ONE); draw_part(&G.part[G.order[i]], 1);', '#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES\n        glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA); draw_part(&G.part[G.order[i]], 0);\n#else\n        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); draw_part(&G.part[G.order[i]], 0);\n        glBlendFunc(GL_SRC_ALPHA, GL_ONE); draw_part(&G.part[G.order[i]], 1);\n#endif')
p.write_text(s)
if args.shader == 'outlined':
    p=src/'src/frag_packet.h'
    s=subprocess.check_output(['git','show',f'{base}:libsoftgl/src/frag_packet.h'],cwd=repo,text=True)
    old='                                    float inv_area, unsigned live, float result[4][4]) {'
    assert s.count(old)==1
    s=s.replace(old,old+'\n    if (t->combine_kind >= 6) return sg_shade_transparent_packet(c,t,v0,v1,v2,edge0,edge1,inv_area,live,result);')
    s=s.replace('SG_INLINE unsigned sg_shade_packet(', (Path(__file__).parent/'transparent_packet.inc').read_text()+'\nSG_INLINE unsigned sg_shade_packet(')
    p.write_text(s)
(root/'source/shader.txt').write_text(args.shader+'\n')
print(root/'source')
