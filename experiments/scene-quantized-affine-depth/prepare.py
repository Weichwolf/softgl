#!/usr/bin/env python3
"""Two weighted depth differences in the quantized visibility kernel."""
import argparse
from pathlib import Path
import shutil
import subprocess
parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='05195fe')
args=parser.parse_args()
repo=Path(__file__).resolve().parents[2];root=repo/'build/scene-quantized-affine-depth'
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists():shutil.rmtree(root/variant)
    for name in names:
        p=root/variant/name;p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p=root/'source/libsoftgl/src/scene_visibility.c';code=p.read_text()
start=code.index('static int scene_quantized_triangle(')
end=code.index('\nint sg_scene_visibility_triangle(',start)
body=code[start:end]
old='            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);\n            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z)),\n                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z))),sg_f32x4_mul(b2,sg_f32x4_splat(v2->ndc.z)));'
new='            /* Same integer barycentrics; two weighted vertex differences.\n             * This changes depth rounding, not coverage or final interpolation. */\n            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,sg_f32x4_splat(v0->ndc.z-v2->ndc.z)),\n                sg_f32x4_mul(b1,sg_f32x4_splat(v1->ndc.z-v2->ndc.z))),sg_f32x4_splat(v2->ndc.z));'
assert body.count(old)==1
body=body.replace(old,new)
needle='            if (m->alpha_test) {\n'
assert body.count(needle)==1
body=body.replace(needle,needle+'                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);\n')
code=code[:start]+body+code[end:];p.write_text(code)
print(root/'source')
