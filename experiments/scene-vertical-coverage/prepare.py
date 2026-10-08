#!/usr/bin/env python3
"""Vertical SIMD128 coverage for narrow bounded triangles."""
import argparse
from pathlib import Path
import shutil
import subprocess
parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='05195fe')
parser.add_argument('--maximum-width',type=int,default=3)
parser.add_argument('--outline',action='store_true')
parser.add_argument('--minimum-height',type=int,default=4)
args=parser.parse_args()
assert 1<=args.maximum_width<=640 and args.minimum_height>=4
repo=Path(__file__).resolve().parents[2];root=repo/'build/scene-vertical-coverage'
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
helper=(Path(__file__).parent/'vertical.inc').read_text()
if args.outline:
    helper=helper.replace('static int scene_quantized_vertical(', 'static __attribute__((noinline)) int scene_quantized_vertical(')
start=code.index('static int scene_quantized_triangle(')
end=code.index('\nint sg_scene_visibility_triangle(',start)
original=code[start:end]
needle='    float inverse_area = 1.f/(float)area;'
assert original.count(needle)==1
original=original.replace(needle,needle+f'\n    if (SCENE_VERTICAL_ENABLED(f) && ix1-ix0 <= {args.maximum_width} && iy1-iy0 >= {args.minimum_height})\n        return scene_quantized_vertical(c,v0,v1,v2,bin,ix0,ix1,iy0,iy1,edge,area,inverse_area,bias);')
code=code[:start]+helper+'\n'+original+code[end:]
code=code.replace('    int native_wide;', '    int native_wide;\n#ifdef SOFTGL_SCENE_VERTICAL_AUDIT\n    int vertical_reference;\n#endif')
code=code.replace('    f->quantized = 0; f->native_wide = 0;', '    f->quantized = 0; f->native_wide = 0;\n#ifdef SOFTGL_SCENE_VERTICAL_AUDIT\n    f->vertical_reference = 0;\n#endif')
p.write_text(code)
print(root/'source')
