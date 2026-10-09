#!/usr/bin/env python3
"""Run real loader/selection contracts under ASAN/UBSAN or actual SIMD128 WASM."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--wasm', action='store_true')
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing', '-ffast-math',
    '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only',
    '-DSOFTGL_BUILD', '-DSOFTGL_MODEL_LOD_BUDGET=4.f',
    '-I'+str(root/'source'), '-I'+str(source/'include'), '-I'+str(source/'src')]
sources = [str(p) for p in sorted((source/'src').glob('*.c'))]
env = os.environ.copy()
if args.wasm:
    compiler = 'emcc'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1',
        '-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
        '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728', '-sMAXIMUM_MEMORY=4294967296',
        '-sSTACK_SIZE=8388608', '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    env['EM_CACHE'] = str(repo/'build/emscripten-cache')
else:
    compiler = '/usr/bin/clang-19'
    flags += ['-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
              '-fsanitize=address,undefined', '-fno-omit-frame-pointer']
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
records = []
for name in ('selection_contract', 'loader_contract'):
    fixture = output/(name+'.c'); fixture.write_bytes((experiment/(name+'.c')).read_bytes())
    binary = output/(name+('.js' if args.wasm else ''))
    command = [compiler, *flags, str(fixture), *sources]
    if not args.wasm:
        command += ['-lm']
    command += ['-o', str(binary)]
    with (output/(name+'-build.txt')).open('w') as log:
        subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    run = ['node', str(binary)] if args.wasm else [str(binary)]
    result = subprocess.run(run, env=env, capture_output=True, text=True)
    (output/(name+'-stdout.txt')).write_text(result.stdout)
    (output/(name+'-stderr.txt')).write_text(result.stderr)
    result.check_returncode()
    checks = json.loads(result.stdout) if name == 'loader_contract' else dict(passed=result.stdout.startswith('PASS:'))
    assert checks.get('passed', True)
    if name == 'loader_contract':
        assert checks['contexts'] == 6 and checks['rejectedMetadataCases'] == 18 and checks['fineColorAndDepthExact'] and checks['coarseDraws'] == 6
    row = dict(name=name, command=command, run=run, checks=checks,
        fixtureSha256=hashlib.sha256(fixture.read_bytes()).hexdigest(),
        binarySha256=hashlib.sha256(binary.read_bytes()).hexdigest())
    if args.wasm:
        wasm = binary.with_suffix('.wasm')
        row['wasmSha256'] = hashlib.sha256(wasm.read_bytes()).hexdigest()
        row['containsV128'] = 'v128' in subprocess.check_output(['wasm-dis', str(wasm)], text=True)
        if name == 'loader_contract':
            assert row['containsV128']
    records.append(row)
    print(json.dumps(dict(name=name, checks=checks)), flush=True)
receipt = dict(passed=True, actualWasm=args.wasm, sanitizerEnabled=not args.wasm,
    clang19ForSanitizersOnly=not args.wasm, nativeBenchmarksClang22=True,
    records=records, modelAndBrowserValidatedBySeparateGate=True,
    sourceSha256={str(p.relative_to(root/'source')):hashlib.sha256(p.read_bytes()).hexdigest()
        for p in sorted((root/'source').rglob('*')) if p.is_file()},
    runnerSha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
