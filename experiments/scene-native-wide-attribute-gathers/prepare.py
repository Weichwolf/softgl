#!/usr/bin/env python3
"""Freeze accepted sources for optional native SIMD512 material resolve."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-native-wide-attribute-gathers'
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
replace('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int native_wide;')
replace('    f->quantized = 0;', '    f->quantized = 0; f->native_wide = 0;')
replace('static void scene_resolve(', (Path(__file__).parent/'wide.inc').read_text()+'\nstatic void scene_resolve(')
replace('        for (uint32_t first = t->first; first < t->first+t->count; first += 4) {', (Path(__file__).parent/'dispatch.inc').read_text()+'        for (uint32_t first = t->first; first < t->first+t->count; first += 4) {')
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();replace('void softgl_scene_quantized_visibility(GLboolean enabled);','void softgl_scene_quantized_visibility(GLboolean enabled);\nint softgl_scene_native_wide(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text()
replace('#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;', '#ifdef SOFTGL_MODEL_NATIVE_WIDE\n    if (scene_visibility) softgl_scene_native_wide(GL_TRUE);\n#endif\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;')
p.write_text(s)
print(root/'source')
