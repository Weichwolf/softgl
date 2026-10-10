#!/usr/bin/env python3
"""Run independent mask and exact full-plane sequence fixtures on actual library."""
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
for name in ('partial_gates.py','mask_contract.c','sequence_contract.c'):
    shutil.copyfile(experiment / name,recipe / name)
shutil.copyfile(repo / 'tests/scene_positions.c',recipe / 'scene_positions.c')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = root / 'source/libsoftgl'
receipt = dict(passed=False,simdBits=128,sourceManifestSha256=digest(root / 'source.json'),
    measuredLibrarySha256=digest(root / 'native/library/libsoftgl.a'),runs=[])
flags = ['-std=c11','-O2','-g','-fno-strict-aliasing','-fno-fast-math','-ffp-contract=off',
         '-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f']
for kind in ('mask','sequence'):
    binary = out / (kind+'_contract')
    command = [str(Path.home() / '.local/bin/clang-22'),*flags,
        '-I'+str(source / 'src'),'-I'+str(source / 'include'),str(recipe / (kind+'_contract.c')),
        str(root / 'native/library/libsoftgl.a'),'-lm','-pthread','-o',str(binary)]
    build = subprocess.run(command,capture_output=True,text=True)
    (out / (kind+'-build.log')).write_text(build.stdout+build.stderr)
    assert build.returncode == 0,build.stderr
    result = subprocess.run([str(binary)],capture_output=True,text=True,timeout=240)
    row = dict(kind=kind,command=command,exitCode=result.returncode,
        binarySha256=digest(binary),fixtureSha256=digest(recipe / (kind+'_contract.c')),
        stdout=result.stdout,stderr=result.stderr)
    receipt['runs'].append(row)
    (out / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(kind,result.returncode,result.stdout.strip(),result.stderr.strip(),flush=True)
    assert result.returncode == 0
receipt['passed'] = True
receipt['recipeSha256'] = {p.name:digest(p) for p in recipe.iterdir()}
(out / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
