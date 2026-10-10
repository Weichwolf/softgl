#!/usr/bin/env python3
"""Extract the frozen measured interval calculation and exercise its guard."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root,out = args.root.resolve(),args.output.resolve()
out.mkdir(parents=True,exist_ok=False)
recipe = out/'recipe'; recipe.mkdir()
source = root/'source/libsoftgl'
kernel = (source/'src/scene_visibility.c').read_text()
a = kernel.index('#define SCENE_PACKET_DEPTH_GUARD ')
b = kernel.index('static __attribute__((noinline)) void scene_packet_depth_capture(',a)
prepare = kernel[a:b]
a = kernel.index('    sg_f32x4 center = ',b)
b = kernel.index('    unsigned pass = ',a)
bounds = kernel[a:b]
helper = prepare+'''static void interval_bounds(const scene_packet_depth_state *state,
    float center_edges[2][4], float lower_out[4], float upper_out[4]) {
'''+bounds+'''    sg_f32x4_store(lower_out,lower); sg_f32x4_store(upper_out,upper);
}
'''
(recipe/'interval_helper.inc').write_text(helper)
for name in ('numeric.py','numeric_contract.c'):
    shutil.copyfile(experiment/name,recipe/name)
flags = ['-std=c11','-O3','-fno-strict-aliasing','-ffast-math','-fno-associative-math',
         '-fsigned-zeros','-fno-finite-math-only','-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f']
binary = out/'numeric_contract'
command = [str(Path.home()/'.local/bin/clang-22'),*flags,'-I'+str(source/'src'),
           '-I'+str(source/'include'),str(recipe/'numeric_contract.c'),'-lm','-pthread','-o',str(binary)]
build = subprocess.run(command,capture_output=True,text=True)
(out/'build.log').write_text(build.stdout+build.stderr)
assert build.returncode == 0,build.stderr
run = subprocess.run([str(binary)],capture_output=True,text=True,timeout=120)
(out/'run.log').write_text(run.stdout+run.stderr)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(out/'receipt.json').write_text(json.dumps(dict(passed=run.returncode==0,command=command,
    exitCode=run.returncode,stdout=run.stdout,stderr=run.stderr,
    empirical=True,universalProof=False,simdBits=128,sourceManifestSha256=digest(root/'source.json'),
    kernelSha256=digest(source/'src/scene_visibility.c'),binarySha256=digest(binary),
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(run.stdout.strip(),run.stderr.strip(),flush=True)
assert run.returncode == 0
