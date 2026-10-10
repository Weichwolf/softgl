#!/usr/bin/env python3
"""Link independent contracts to the measured SIMD128 candidate library."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root,out = args.root.resolve(),args.output.resolve()
out.mkdir(parents=True,exist_ok=False)
recipe = out/'recipe'; recipe.mkdir()
for name in ('scene_positions.c','scene_msaa.c','scene_coverage.c'):
    shutil.copyfile(repo/'tests'/name,recipe/name)
for name in ('native_gates.py','numeric_contract.c'):
    shutil.copyfile(experiment/name,recipe/name)
source = root/'source/libsoftgl'
epsilon = re.search(r'#define SCENE_DEPTH_GUARD_EPSILON (\S+)',
    (source/'src/scene_visibility.c').read_text()).group(1)
flags = ['-std=c11','-O3','-g','-fno-strict-aliasing','-ffast-math','-fno-associative-math',
         '-fsigned-zeros','-fno-finite-math-only','-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f']
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False,simdBits=128,sourceManifestSha256=digest(root/'source.json'),
    librarySha256=digest(root/'native/library/libsoftgl.a'),runs=[])
for kind in ('scene_positions','scene_msaa','scene_coverage','numeric_contract'):
    binary = out/kind
    command = [str(Path.home()/'.local/bin/clang-22'),*flags,'-I'+str(source/'src'),
               '-I'+str(source/'include'),'-DGUARD_EPSILON='+epsilon,str(recipe/(kind+'.c')),
               str(root/'native/library/libsoftgl.a'),'-lm','-pthread','-o',str(binary)]
    build = subprocess.run(command,capture_output=True,text=True)
    (out/(kind+'-build.log')).write_text(build.stdout+build.stderr)
    assert build.returncode == 0,build.stderr
    result = subprocess.run([str(binary)],capture_output=True,text=True,timeout=240)
    (out/(kind+'-run.log')).write_text(result.stdout+result.stderr)
    receipt['runs'].append(dict(kind=kind,command=command,exitCode=result.returncode,
        stdout=result.stdout,stderr=result.stderr,binarySha256=digest(binary),
        fixtureSha256=digest(recipe/(kind+'.c'))))
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(kind,result.returncode,result.stdout.strip(),result.stderr.strip(),flush=True)
    assert result.returncode == 0,(kind,result.stdout,result.stderr)
receipt['passed'] = True
receipt['recipeSha256'] = {p.name:digest(p) for p in sorted(recipe.iterdir())}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
