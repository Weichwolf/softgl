#!/usr/bin/env python3
"""Run the actual coefficient helper with ASAN/UBSAN or WASM SIMD128."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--wasm', action='store_true')
args = parser.parse_args()
root = args.root.resolve(); output = args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
fixture = root/'recipe/planes_contract.c'
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing', '-ffast-math',
    '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only',
    '-DSOFTGL_BUILD', '-I'+str(source/'include'), '-I'+str(source/'src')]
# The fixture includes the actual private TU; do not compile that TU twice.
sources = [str(p) for p in sorted((source/'src').glob('*.c')) if p.name != 'scene_visibility.c']
env = os.environ.copy()
if args.wasm:
    target = output/'planes_contract.js'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1']
    runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
        '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728',
        '-sMAXIMUM_MEMORY=4294967296', '-sSTACK_SIZE=8388608',
        '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    command = ['emcc', *flags, str(fixture), *sources, *runtime, '-o', str(target)]
    env['EM_CACHE'] = str(repo/'build/emscripten-cache')
    run = ['node', str(target)]
else:
    target = output/'planes_contract'
    command = ['/usr/bin/clang-19', *flags, '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
        '-fsanitize=address,undefined', '-fno-omit-frame-pointer',
        str(fixture), *sources, '-lm', '-o', str(target)]
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
    run = [str(target)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(run, env=env, capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout); (output/'stderr.txt').write_text(result.stderr)
result.check_returncode()
checks = json.loads(result.stdout)
assert checks['comparisons'] == 327680 and checks['mixedMasks'] == 16 and checks['invalidFallbacks'] == 5
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=True, actualSimd128Wasm=args.wasm, sanitizerEnabled=not args.wasm,
    wholeSceneOrBrowserValidated=False, command=command, checks=checks,
    fixtureSha256=digest(fixture), runnerSha256=digest(Path(__file__)),
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()})
if args.wasm:
    wat = subprocess.check_output(['wasm-dis', str(target.with_suffix('.wasm'))], text=True)
    assert 'v128' in wat
    receipt['wasmSha256'] = digest(target.with_suffix('.wasm'))
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(json.dumps(checks), flush=True)
