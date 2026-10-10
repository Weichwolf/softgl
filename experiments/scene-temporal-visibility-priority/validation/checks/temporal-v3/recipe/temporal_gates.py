#!/usr/bin/env python3
"""Check enabled temporal ordering against fresh current-frame capture."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root, out = args.root.resolve(), args.output.resolve()
out.mkdir(parents=True,exist_ok=False)
recipe = out / 'recipe'; recipe.mkdir()
shutil.copyfile(Path(__file__),recipe / 'temporal_gates.py')
shutil.copyfile(experiment / 'temporal_contract.c',recipe / 'temporal_contract.c')
shutil.copyfile(repo / 'tests/scene_positions.c',recipe / 'scene_positions.c')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
flags = ['-std=c11','-O3','-fno-strict-aliasing','-ffast-math','-fno-associative-math',
    '-fsigned-zeros','-fno-finite-math-only',
    '-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f']
source = root / 'source/libsoftgl'
receipt = dict(passed=False,simdBits=128,sourceManifestSha256=digest(root / 'source.json'),
    measuredLibrarySha256=digest(root / 'native/library/libsoftgl.a'),
    runs=[])
for name in ('temporal_contract',):
    binary = out / name
    command = [str(Path.home() / '.local/bin/clang-22'),*flags,
        '-I'+str(source / 'src'),'-I'+str(source / 'include'),str(recipe / (name+'.c')),
        str(root / 'native/library/libsoftgl.a'),'-lm','-pthread','-o',str(binary)]
    result = subprocess.run(command,capture_output=True,text=True)
    (out / (name+'-build.log')).write_text(result.stdout+result.stderr)
    assert result.returncode == 0,result.stderr
    result = subprocess.run([str(binary)],capture_output=True,text=True)
    receipt['runs'].append(dict(name=name,command=command,exitCode=result.returncode,
        binarySha256=digest(binary),fixtureSha256=digest(recipe / (name+'.c')),
        stdout=result.stdout,stderr=result.stderr))
    (out / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(result.stdout.strip(),result.stderr.strip(),flush=True)
    assert result.returncode == 0
receipt['passed'] = True
receipt['recipeSha256'] = {p.name:digest(p) for p in sorted(recipe.iterdir())}
(out / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
