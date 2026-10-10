#!/usr/bin/env python3
"""Run the unchanged hierarchy invariant fixture against a frozen library."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, out = args.root.resolve(), args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
recipe = out / 'recipe'
recipe.mkdir()
shutil.copyfile(repo / 'tests/hierarchical_depth.c', recipe / 'hierarchical_depth.c')
shutil.copyfile(Path(__file__), recipe / 'hierarchy_gate.py')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = root / 'source/libsoftgl'
binary = out / 'hierarchical_depth'
# Match tests/CMakeLists.txt: the independent numerical oracle deliberately
# uses strict arithmetic, while the linked frozen renderer keeps its real flags.
flags = ['-std=c11', '-O2', '-g', '-fno-fast-math', '-ffp-contract=off',
         '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
command = [str(Path.home() / '.local/bin/clang-22'), *flags,
           '-I' + str(source / 'src'), '-I' + str(source / 'include'),
           str(recipe / 'hierarchical_depth.c'),
           str(root / 'native/library/libsoftgl.a'), '-lm', '-pthread', '-o', str(binary)]
build = subprocess.run(command, capture_output=True, text=True)
(out / 'build.log').write_text(build.stdout + build.stderr)
assert build.returncode == 0, build.stderr
result = subprocess.run([str(binary)], capture_output=True, text=True, timeout=240)
(out / 'run.log').write_text(result.stdout + result.stderr)
receipt = dict(passed=result.returncode == 0, simdBits=128, command=command,
    sourceManifestSha256=digest(root / 'source.json'),
    librarySha256=digest(root / 'native/library/libsoftgl.a'),
    fixtureSha256=digest(recipe / 'hierarchical_depth.c'),
    binarySha256=digest(binary), exitCode=result.returncode,
    stdout=result.stdout, stderr=result.stderr,
    recipeSha256={p.name: digest(p) for p in sorted(recipe.iterdir())})
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print('hierarchical_depth', result.returncode, result.stdout.strip(), result.stderr.strip(), flush=True)
assert receipt['passed']
