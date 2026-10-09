#!/usr/bin/env python3
"""Exercise actual coarse/linked stores and footprint masks with sanitizers/WASM."""
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
for name in ('combined_contract.c', 'contract.py'):
    (output/name).write_bytes((experiment/name).read_bytes())
phase = (root/'recipe/scatter_contract.c').read_text()
assert phase.count('int main(void)') == 1
(output/'scatter_contract.c').write_text(phase.replace('int main(void)', 'int phase_fixture_main(void)'))
(output/'scatter_positions.inc').write_bytes((root/'fixtures/scatter_positions.inc').read_bytes())
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing', '-ffast-math',
    '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only', '-DSOFTGL_BUILD',
    '-I'+str(source/'include'), '-I'+str(source/'src')]
footprint = 'uint16_t *mask;' in (source/'src/scene_codec_types.h').read_text()
if footprint: flags.append('-DSCENE_CODEC_FOOTPRINT=1')
sources = [str(p) for p in sorted((source/'src').glob('*.c')) if p.name != 'scene_visibility.c']
env = os.environ.copy()
if args.wasm:
    target = output/'scatter_contract.js'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1']
    runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
        '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728', '-sMAXIMUM_MEMORY=4294967296',
        '-sSTACK_SIZE=8388608', '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    command = ['emcc', *flags, str(output/'combined_contract.c'), *sources, *runtime, '-o', str(target)]
    env['EM_CACHE'] = str(repo/'build/emscripten-cache'); run = ['node', str(target)]
else:
    target = output/'scatter_contract'
    command = ['/usr/bin/clang-19', *flags, '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
        '-fsanitize=address,undefined', '-fno-omit-frame-pointer', str(output/'combined_contract.c'),
        *sources, '-lm', '-o', str(target)]
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'; run = [str(target)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(run, env=env, capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout); (output/'stderr.txt').write_text(result.stderr)
result.check_returncode()
checks = [json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
assert checks[0]['pairedFrames'] == 216 and checks[0]['legacyCoarseAllPlanesExact']
assert checks[1]['physicalSamplePatterns'] == (65808 if footprint else 0)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=True, actualSimd128Wasm=args.wasm, sanitizerEnabled=not args.wasm,
    modelOrBrowserValidated=False, command=command, checks=checks,
    fixtureSha256={name:digest(output/name) for name in
        ('combined_contract.c', 'scatter_contract.c', 'scatter_positions.inc', 'contract.py')},
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()})
if args.wasm:
    wat = subprocess.check_output(['wasm-dis', str(target.with_suffix('.wasm'))], text=True)
    assert 'v128' in wat
    receipt['wasmSha256'] = digest(target.with_suffix('.wasm'))
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(json.dumps(checks), flush=True)
