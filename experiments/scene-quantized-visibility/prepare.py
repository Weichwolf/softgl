#!/usr/bin/env python3
"""Freeze accepted sources for opt-in 16.4 SIMD32 visibility."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='3495913')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-quantized-visibility'
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
s=s.replace('    int deferred_meshes;', '    int quantized;\n    int deferred_meshes;')
s=s.replace('    f->context = c; f->material_count', '    f->quantized = 0;\n    f->context = c; f->material_count')
needle='int sg_scene_visibility_triangle('
assert s.count(needle)==1
s=s.replace(needle,(Path(__file__).parent/'quantized.inc').read_text()+'\n'+needle)
needle='    int32_t x0 = sg_fp_screen_from_float(v0->ndc.x), y0 = sg_fp_screen_from_float(v0->ndc.y);'
assert s.count(needle)==1
s=s.replace(needle,'    if (f->quantized && f->current_primitive[bin] &&\n        v0->ndc.x >= -1.f && v0->ndc.x <= 641.f && v0->ndc.y >= -1.f && v0->ndc.y <= 361.f &&\n        v1->ndc.x >= -1.f && v1->ndc.x <= 641.f && v1->ndc.y >= -1.f && v1->ndc.y <= 361.f &&\n        v2->ndc.x >= -1.f && v2->ndc.x <= 641.f && v2->ndc.y >= -1.f && v2->ndc.y <= 361.f)\n        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);\n' +needle)
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();s=s.replace('int softgl_scene_visibility_begin(void);','int softgl_scene_visibility_begin(void);\nvoid softgl_scene_quantized_visibility(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text();s=s.replace('    int scene_visibility = softgl_scene_visibility_begin();', '    int scene_visibility = softgl_scene_visibility_begin();\n#ifdef SOFTGL_MODEL_QUANTIZED_VISIBILITY\n    if (scene_visibility) softgl_scene_quantized_visibility(GL_TRUE);\n#endif');p.write_text(s)
print(root/'source')
