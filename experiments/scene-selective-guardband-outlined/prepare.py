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
root = repo/'build/scene-selective-guardband-outlined'
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
replace('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int guardband;')
replace('    f->quantized = 0;', '    f->quantized = 0; f->guardband = 0;')
replace('/* The caller bounds positions', "void softgl_scene_guardband(GLboolean enabled) {\n    softgl_ctx *c = sg_current();\n    if (!c || !c->scene_visibility) return;\n    struct sg_scene_visibility *f = c->scene_visibility;\n    if (enabled && !f->quantized) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }\n    f->guardband = enabled != GL_FALSE;\n}\n\n/* The caller bounds positions")
old = """    if (f->quantized && f->current_primitive[bin] &&
        v0->ndc.x >= -1.f && v0->ndc.x <= 641.f && v0->ndc.y >= -1.f && v0->ndc.y <= 361.f &&
        v1->ndc.x >= -1.f && v1->ndc.x <= 641.f && v1->ndc.y >= -1.f && v1->ndc.y <= 361.f &&
        v2->ndc.x >= -1.f && v2->ndc.x <= 641.f && v2->ndc.y >= -1.f && v2->ndc.y <= 361.f)
        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);"""
replace(old,old+"\n    if (f->quantized && f->current_primitive[bin] && f->guardband &&\n        scene_guardband_positions(v0,v1,v2))\n        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);")
replace('int sg_scene_visibility_triangle(',"static __attribute__((noinline)) int scene_guardband_positions(const sg_vert *v0, const sg_vert *v1, const sg_vert *v2) {\n    const sg_vert *v[3] = {v0,v1,v2};\n    for (int i = 0; i < 3; i++) if (!(v[i]->ndc.x >= -257.f && v[i]->ndc.x <= 897.f && v[i]->ndc.y >= -257.f && v[i]->ndc.y <= 617.f)) return 0;\n    return 1;\n}\n\nint sg_scene_visibility_triangle(")
p.write_text(s)
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
replace('            scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS];', "            if (f->guardband && !(any&48)) {\n                int safe = 1; sg_vec4 ndc[3];\n                for (int j = 0; j < 3; j++) {\n                    ndc[j] = g->positions[positions[j]].ndc;\n                    if (!(ndc[j].x >= -256.f && ndc[j].x <= 896.f && ndc[j].y >= -256.f && ndc[j].y <= 616.f)) safe = 0;\n                }\n                if (safe) { scene_geometry_append(f,task,&p,ndc,NULL); continue; }\n            }\n            scene_clip_vertex a[SG_MAX_CLIP_VERTS], b[SG_MAX_CLIP_VERTS];")
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();replace('void softgl_scene_quantized_visibility(GLboolean enabled);','void softgl_scene_quantized_visibility(GLboolean enabled);\nvoid softgl_scene_guardband(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text()
replace('#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;', '#ifdef SOFTGL_MODEL_GUARDBAND\n    if (scene_visibility) softgl_scene_guardband(GL_TRUE);\n#endif\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;')
p.write_text(s)
print(root/'source')
