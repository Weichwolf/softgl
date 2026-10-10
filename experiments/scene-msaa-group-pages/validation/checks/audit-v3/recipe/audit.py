#!/usr/bin/env python3
"""Check real page/packet order against the original list and forced rollback."""
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
parser.add_argument('--byte-budget', type=int)
args = parser.parse_args()
root, out = args.root.resolve(), args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
recipe = out / 'recipe'
recipe.mkdir()
shutil.copyfile(Path(__file__), recipe / 'audit.py')
shutil.copyfile(experiment / 'page_failure.c', recipe / 'page_failure.c')
for name in ('scene_positions.c', 'scene_msaa.c'):
    shutil.copyfile(repo / 'tests' / name, recipe / name)
shutil.copyfile(repo / 'experiments/scene-msaa-small-triangles/small_contract.c', recipe / 'small_contract.c')
audit = out / 'native-audit'
defines = '-DSOFTGL_GROUP_PAGES_AUDIT'
if args.byte_budget is not None:
    defines += ' -DSOFTGL_GROUP_PAGE_BYTES=' + str(args.byte_budget)
commands = [
    ['cmake', '-S', str(root / 'recipe'), '-B', str(audit), '-DCMAKE_BUILD_TYPE=Release',
     '-DCMAKE_C_COMPILER=' + str(Path.home() / '.local/bin/clang-22'),
     '-DSCENE_TRIAL_ROOT=' + str(root), '-DCMAKE_C_FLAGS=' + defines],
    ['cmake', '--build', str(audit), '--target', 'softgl', '--parallel', '4']]
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False, diagnosticOnly=True, performanceAcceptance=False,
    sourceManifestSha256=digest(root / 'source.json'), simdBits=128,
    measuredLibrarySha256=digest(root / 'native/library/libsoftgl.a'),
    forcedByteBudget=args.byte_budget, commands=commands, runs=[])
for i, command in enumerate(commands):
    with (out / ('build-' + str(i) + '.log')).open('w') as log:
        result = subprocess.run(command, stdout=log, stderr=subprocess.STDOUT)
    assert result.returncode == 0, (out / ('build-' + str(i) + '.log')).read_text()
library = audit / 'library/libsoftgl.a'
receipt['auditLibrarySha256'] = digest(library)
source = root / 'source/libsoftgl'
flags = ['-std=c11', '-O3', '-g', '-fno-strict-aliasing', '-ffast-math', '-fno-associative-math',
         '-fsigned-zeros', '-fno-finite-math-only', '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
fixtures = ('page_failure',) if args.byte_budget is not None else ('scene_msaa', 'small_contract')
for name in fixtures:
    fixture = recipe / (name + '.c')
    if args.byte_budget is None:
        text = fixture.read_text()
        assert text.count('int main(void) {') == 1
        (recipe / ('counted_' + name + '.c')).write_text(text.replace(
            'int main(void) {', 'int original_fixture_main(void) {', 1))
        fixture = recipe / ('dispatch_' + name + '.c')
        fixture.write_text('''#include "counted_''' + name + '''.c"
extern unsigned long long softgl_scene_group_pages_audit(unsigned index);
int main(void) {
    int result = original_fixture_main();
    if (result) return result;
    unsigned long long values[5];
    for (unsigned i = 0; i < 5; i++) values[i] = softgl_scene_group_pages_audit(i);
    if (!values[0] || values[1] < 128 || !values[2] || !values[3] || values[4]) return 1;
    printf("Actual page queues: %llu pages, %llu references, %llu exact packets, %llu boundary/tail packets PASS\\n",
        values[0],values[1],values[2],values[3]);
    return 0;
}
''')
    binary = out / name
    command = [str(Path.home() / '.local/bin/clang-22'), *flags,
               '-I' + str(source / 'src'), '-I' + str(source / 'include'),
               str(fixture), str(library), '-lm', '-pthread', '-o', str(binary)]
    build = subprocess.run(command, capture_output=True, text=True)
    (out / (name + '-build.log')).write_text(build.stdout + build.stderr)
    assert build.returncode == 0, build.stderr
    result = subprocess.run([str(binary)], capture_output=True, text=True, timeout=240)
    (out / (name + '-run.log')).write_text(result.stdout + result.stderr)
    receipt['runs'].append(dict(name=name, command=command, exitCode=result.returncode,
        stdout=result.stdout, stderr=result.stderr, binarySha256=digest(binary),fixtureSha256=digest(fixture)))
    (out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
    print(name, result.returncode, result.stdout.splitlines()[-1:] if result.stdout else [], result.stderr, flush=True)
    assert result.returncode == 0, (name, result.stdout[-1500:], result.stderr)
receipt['passed'] = True
receipt['recipeSha256'] = {p.name: digest(p) for p in sorted(recipe.iterdir())}
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
