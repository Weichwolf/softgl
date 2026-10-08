#!/usr/bin/env python3
"""Freeze accepted sources for bounded guardband scene clipping."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-selective-guardband'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c';s = p.read_text()
def replace(old,new):
    global s
    assert s.count(old)==1,(s.count(old),old[:80])
    s=s.replace(old,new)
replace('    int quantized;', '    int quantized, guardband;')
replace('    f->quantized = 0;', '    f->quantized = 0; f->guardband = 0;')
replace('/* The caller bounds positions', "void softgl_scene_guardband(GLboolean enabled) {\n    softgl_ctx *c = sg_current();\n    if (!c || !c->scene_visibility) return;\n    struct sg_scene_visibility *f = c->scene_visibility;\n    if (enabled && !f->quantized) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }\n    f->guardband = enabled != GL_FALSE;\n}\n\n/* The caller bounds positions")
old = """        v0->ndc.x >= -1.f && v0->ndc.x <= 641.f && v0->ndc.y >= -1.f && v0->ndc.y <= 361.f &&
        v1->ndc.x >= -1.f && v1->ndc.x <= 641.f && v1->ndc.y >= -1.f && v1->ndc.y <= 361.f &&
        v2->ndc.x >= -1.f && v2->ndc.x <= 641.f && v2->ndc.y >= -1.f && v2->ndc.y <= 361.f)"""
expanded = old.replace('-1.f','-257.f').replace('641.f','897.f').replace('361.f','617.f')
replace(old,'(('+old[:-1]+') || (f->guardband && '+expanded+') )')
p.write_text(s)
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
replace('            if (all) continue;\n            scene_primitive p;', "            if (all) continue;\n            if (f->guardband && any && !(any&48)) {\n                int safe = 1;\n                for (int j = 0; j < 3; j++) {\n                    const sg_vec4 *v = &g->positions[positions[j]].ndc;\n                    if (!(v->x >= -256.f && v->x <= 896.f && v->y >= -256.f && v->y <= 616.f)) safe = 0;\n                }\n                if (safe) any = 0;\n            }\n            scene_primitive p;")
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();replace('void softgl_scene_quantized_visibility(GLboolean enabled);','void softgl_scene_quantized_visibility(GLboolean enabled);\nvoid softgl_scene_guardband(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text()
replace('#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;', '#ifdef SOFTGL_MODEL_GUARDBAND\n    if (scene_visibility) softgl_scene_guardband(GL_TRUE);\n#endif\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;')
p.write_text(s)
print(root/'source')
