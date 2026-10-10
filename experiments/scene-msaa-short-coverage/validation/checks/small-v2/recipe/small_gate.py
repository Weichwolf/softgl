#!/usr/bin/env python3
"""Compare original small/boundary/alpha fixture planes and count real execution."""
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
parser.add_argument('--control', type=Path, required=True)
parser.add_argument('--audit-library', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, control, out = args.root.resolve(), args.control.resolve(), args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
recipe = out / 'recipe'
recipe.mkdir()
shutil.copyfile(repo / 'tests/scene_positions.c', recipe / 'scene_positions.c')
shutil.copyfile(repo / 'experiments/scene-msaa-small-triangles/small_contract.c', recipe / 'small_contract.c')
shutil.copyfile(Path(__file__), recipe / 'small_gate.py')
original = (recipe / 'small_contract.c').read_text()
assert original.count('int main(void) {') == 1
(recipe / 'counted_small.c').write_text(original.replace('int main(void) {', 'int original_small_main(void) {', 1))
(recipe / 'dispatch.c').write_text('''#include "counted_small.c"
extern unsigned long long softgl_scene_short_audit(unsigned index);
int main(void) {
    int result = original_small_main();
    if (result) return result;
    unsigned long long values[5];
    for (unsigned i = 0; i < 5; i++) values[i] = softgl_scene_short_audit(i);
    if (values[1] < 100 || !values[2] || values[3] < 100 || values[4] < 100) {
        fprintf(stderr,"Missing broad actual short/fallback execution\\n"); return 1;
    }
    printf("Actual small dispatch: %llu attempts, %llu range admissions, %llu range fallbacks, %llu real pixels, %llu depth-passing samples PASS\\n",
        values[0],values[1],values[2],values[3],values[4]);
    return 0;
}
''')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False, simdBits=128, pairedFrames=576, diagnosticOnly=True,
    performanceAcceptance=False, sourceManifestSha256=digest(root / 'source.json'),
    controlSourceManifestSha256=digest(control / 'source.json'),
    librarySha256=digest(root / 'native/library/libsoftgl.a'),
    controlLibrarySha256=digest(control / 'native/library/libsoftgl.a'),
    auditLibrarySha256=digest(args.audit_library), runs=[])
flags = ['-std=c11', '-O3', '-g', '-fno-strict-aliasing', '-ffast-math', '-fno-associative-math',
         '-fsigned-zeros', '-fno-finite-math-only', '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
rows = {}
for name, frozen, library, fixture in [
    ('control', control, control / 'native/library/libsoftgl.a', 'small_contract.c'),
    ('candidate', root, root / 'native/library/libsoftgl.a', 'small_contract.c'),
    ('counted', root, args.audit_library.resolve(), 'dispatch.c')]:
    source = frozen / 'source/libsoftgl'
    binary = out / name
    command = [str(Path.home() / '.local/bin/clang-22'), *flags,
               '-I' + str(source / 'src'), '-I' + str(source / 'include'),
               str(recipe / fixture), str(library), '-lm', '-pthread', '-o', str(binary)]
    build = subprocess.run(command, capture_output=True, text=True)
    (out / (name + '-build.log')).write_text(build.stdout + build.stderr)
    assert build.returncode == 0, build.stderr
    run = subprocess.run([str(binary)], capture_output=True, text=True, timeout=240)
    (out / (name + '-run.log')).write_text(run.stdout + run.stderr)
    receipt['runs'].append(dict(name=name, command=command, exitCode=run.returncode,
        stdout=run.stdout, stderr=run.stderr, binarySha256=digest(binary), fixtureSha256=digest(recipe / fixture)))
    (out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
    assert run.returncode == 0, (name, run.stdout[-2000:], run.stderr)
    rows[name] = [json.loads(line) for line in run.stdout.splitlines() if line.startswith('{')]
    assert len(rows[name]) == 576
    print(name, '576 actual fixture frames complete', flush=True)
assert rows['control'] == rows['candidate'] == rows['counted']
receipt['allPlanesExact'] = True
receipt['passed'] = True
receipt['recipeSha256'] = {p.name: digest(p) for p in sorted(recipe.iterdir())}
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print(receipt['runs'][-1]['stdout'].splitlines()[-1], flush=True)
print('576 original full-plane pairs and broad counted fast/fallback execution PASS', flush=True)
