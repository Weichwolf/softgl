#!/usr/bin/env python3
"""Freeze accepted sources for exact bounded SIMD visibility barycentrics."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='3495913')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-vector-barycentrics'
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
    assert s.count(old)==1, (s.count(old),old[:80])
    s=s.replace(old,new)
replace('    sg_i32x4 coverage_delta[3];', '    /* For the complete bounding rectangle including three inactive X lanes,\n     * this bound covers both products in every unbiased edge. Conversion from\n     * signed int32 and int64 then yields the same rounded float value. */\n    int barycentric32 = coverage32 &&\n        (int64_t)(maxx-minx+1024)*(maxy-miny+256)*2 <= INT32_MAX;\n    sg_i32x4 barycentric_delta[2];\n    if (barycentric32) for (int k = 0; k < 2; k++) {\n        int32_t delta = (int32_t)edge[k][1];\n        barycentric_delta[k] = sg_i32x4_set(0,delta,delta*2,delta*3);\n    }\n    sg_i32x4 coverage_delta[3];')
old = '            int64_t a[4], d[4];\n            for (int l = 0; l < 4; l++) {\n                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;\n            }\n            sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(inverse_area));\n            sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_set((float)d[0],(float)d[1],(float)d[2],(float)d[3]),sg_f32x4_splat(inverse_area));'
new = '            sg_f32x4 b0, b1;\n            if (barycentric32) {\n                sg_i32x4 a = sg_i32x4_add(sg_i32x4_splat((int32_t)e0),barycentric_delta[0]);\n                sg_i32x4 d = sg_i32x4_add(sg_i32x4_splat((int32_t)e1),barycentric_delta[1]);\n                b0 = sg_f32x4_mul(_mm_cvtepi32_ps(a),sg_f32x4_splat(inverse_area));\n                b1 = sg_f32x4_mul(_mm_cvtepi32_ps(d),sg_f32x4_splat(inverse_area));\n            } else {\n                int64_t a[4], d[4];\n                for (int l = 0; l < 4; l++) {\n                    a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;\n                }\n                b0 = sg_f32x4_mul(sg_f32x4_set((float)a[0],(float)a[1],(float)a[2],(float)a[3]),sg_f32x4_splat(inverse_area));\n                b1 = sg_f32x4_mul(sg_f32x4_set((float)d[0],(float)d[1],(float)d[2],(float)d[3]),sg_f32x4_splat(inverse_area));\n            }'
replace(old,new)
p.write_text(s)
print(root/'source')
