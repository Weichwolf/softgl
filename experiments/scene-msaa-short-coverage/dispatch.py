#!/usr/bin/env python3
"""Count real fast/fallback calls in independent captured-scene fixtures."""
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
for name in ('scene_msaa.c', 'scene_positions.c'):
    shutil.copyfile(repo / 'tests' / name, recipe / name)
shutil.copyfile(Path(__file__), recipe / 'dispatch.py')
original = (recipe / 'scene_msaa.c').read_text()
assert original.count('int main(void) {') == 1
# The fixture renames a nested entrypoint itself. Change only its outer name
# instead of defining a competing macro around that nested include.
(recipe / 'counted_scene_msaa.c').write_text(original.replace(
    'int main(void) {', 'int original_fixture_main(void) {', 1))
(recipe / 'dispatch.c').write_text('''#include "counted_scene_msaa.c"
extern unsigned long long softgl_scene_short_audit(unsigned index);
int main(void) {
    int result = original_fixture_main();
    if (result) return result;
    unsigned long long values[5];
    for (unsigned i = 0; i < 5; i++) values[i] = softgl_scene_short_audit(i);
    if (!values[1] || !values[2] || !values[3] || !values[4]) {
        fprintf(stderr,"Missing actual fast, range fallback or sample execution\\n"); return 1;
    }
    printf("Actual short dispatch: %llu attempts, %llu range admissions, %llu range fallbacks, %llu real pixels, %llu depth-passing samples PASS\\n",
        values[0],values[1],values[2],values[3],values[4]);
    return 0;
}
''')
audit = out / 'native-audit'
commands = [
    ['cmake', '-S', str(root / 'recipe'), '-B', str(audit), '-DCMAKE_BUILD_TYPE=Release',
     '-DCMAKE_C_COMPILER=' + str(Path.home() / '.local/bin/clang-22'),
     '-DSCENE_TRIAL_ROOT=' + str(root), '-DCMAKE_C_FLAGS=-DSOFTGL_MSAA_SHORT_AUDIT'],
    ['cmake', '--build', str(audit), '--target', 'softgl', '--parallel', '4']]
for i, command in enumerate(commands):
    with (out / ('build-' + str(i) + '.log')).open('w') as log:
        result = subprocess.run(command, stdout=log, stderr=subprocess.STDOUT)
    assert result.returncode == 0, (out / ('build-' + str(i) + '.log')).read_text()
source = root / 'source/libsoftgl'
binary = out / 'dispatch_contract'
flags = ['-std=c11', '-O3', '-g', '-fno-strict-aliasing', '-ffast-math', '-fno-associative-math',
         '-fsigned-zeros', '-fno-finite-math-only', '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
command = [str(Path.home() / '.local/bin/clang-22'), *flags,
           '-I' + str(source / 'src'), '-I' + str(source / 'include'),
           str(recipe / 'dispatch.c'), str(audit / 'library/libsoftgl.a'), '-lm', '-pthread', '-o', str(binary)]
build = subprocess.run(command, capture_output=True, text=True)
(out / 'fixture-build.log').write_text(build.stdout + build.stderr)
assert build.returncode == 0, build.stderr
result = subprocess.run([str(binary)], capture_output=True, text=True, timeout=240)
(out / 'fixture-run.log').write_text(result.stdout + result.stderr)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=result.returncode == 0, diagnosticOnly=True, performanceAcceptance=False,
    commands=commands + [command], exitCode=result.returncode, stdout=result.stdout, stderr=result.stderr,
    sourceManifestSha256=digest(root / 'source.json'), simdBits=128,
    measuredLibrarySha256=digest(root / 'native/library/libsoftgl.a'),
    auditLibrarySha256=digest(audit / 'library/libsoftgl.a'), binarySha256=digest(binary),
    recipeSha256={p.name: digest(p) for p in sorted(recipe.iterdir())})
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print(result.stdout.strip(), result.stderr.strip(), flush=True)
assert receipt['passed']
