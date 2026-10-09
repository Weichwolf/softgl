#!/usr/bin/env python3
"""Run the minimal public coarse opt-in with real workers, sanitizers or WASM."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--wasm', action='store_true')
args = parser.parse_args()
root = args.root.resolve(); output = args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
original = (repo/'tests/scene_positions.c').read_text()
marker = '    int begun = softgl_scene_visibility_begin();'
assert original.count(marker) == 1
fixture = original.replace(marker,
    marker+'\n    if (begun) CHECK(softgl_scene_coarse_shading(coarse_test_enabled));')
marker = 'CHECK(softgl_scene_visibility_begin());'
assert fixture.count(marker) == 2
fixture = fixture.replace(marker, marker+' CHECK(softgl_scene_coarse_shading(GL_TRUE));')
(output/'coarse_positions.inc').write_text(fixture)
for name in ('clean_contract.c', 'contract_clean.py'):
    (output/name).write_bytes((experiment/name).read_bytes())
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing', '-ffast-math',
    '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only', '-DSOFTGL_BUILD',
    '-I'+str(source/'include'), '-I'+str(source/'src')]
sources = [str(p) for p in sorted((source/'src').glob('*.c'))]
env = os.environ.copy()
if args.wasm:
    target = output/'coarse_contract.js'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1']
    runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
        '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728', '-sMAXIMUM_MEMORY=4294967296',
        '-sSTACK_SIZE=8388608', '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    command = ['emcc', *flags, str(output/'clean_contract.c'), *sources, *runtime, '-o', str(target)]
    env['EM_CACHE'] = str(repo/'build/emscripten-cache'); run = ['node', str(target)]
else:
    target = output/'coarse_contract'
    command = ['/usr/bin/clang-19', *flags, '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
        '-fsanitize=address,undefined', '-fno-omit-frame-pointer', str(output/'clean_contract.c'),
        *sources, '-lm', '-o', str(target)]
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'; run = [str(target)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(run, env=env, capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout); (output/'stderr.txt').write_text(result.stderr)
result.check_returncode()
checks = json.loads(result.stdout)
assert checks['pairedFrames'] == 216 and checks['disabledColorExact'] and checks['depthAndStencilExact']
assert checks['capFallbackChecks'] == 6 and checks['rollbackEvents'] == 12
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=True, actualSimd128Wasm=args.wasm, sanitizerEnabled=not args.wasm,
    modelOrBrowserValidated=False, command=command, checks=checks,
    fixtureSha256={name:digest(output/name) for name in
        ('clean_contract.c', 'coarse_positions.inc', 'contract_clean.py')},
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()})
if args.wasm:
    wat = subprocess.check_output(['wasm-dis', str(target.with_suffix('.wasm'))], text=True)
    assert 'v128' in wat; receipt['wasmSha256'] = digest(target.with_suffix('.wasm'))
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(json.dumps(checks), flush=True)
