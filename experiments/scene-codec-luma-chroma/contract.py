#!/usr/bin/env python3
"""Run enabled coarse-shading fixtures with ASan/UBSan or SIMD128 WASM."""
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
parser.add_argument('--cc', default=str(Path.home()/'.local/bin/clang-22'))
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
original = (repo/'tests/scene_positions.c').read_text()
marker = '    int begun = softgl_scene_visibility_begin();'
assert original.count(marker) == 1
fixture = original.replace(marker, marker+'\n    if (begun) CHECK(softgl_scene_codec_shading(codec_test_mode));')
(output/'codec_positions.inc').write_text(fixture)
(output/'codec_contract.c').write_bytes((experiment/'codec_contract.c').read_bytes())
(output/'contract.py').write_bytes(Path(__file__).read_bytes())
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing',
         '-ffast-math', '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only',
         '-DSOFTGL_BUILD', '-I'+str(source/'include'), '-I'+str(source/'src')]
sources = [str(p) for p in sorted((source/'src').glob('*.c'))]
env = os.environ.copy()
if args.wasm:
    target = output/'codec_contract.js'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1']
    runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
               '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728',
               '-sMAXIMUM_MEMORY=4294967296', '-sSTACK_SIZE=8388608',
               '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    command = ['emcc', *flags, str(output/'codec_contract.c'), *sources, *runtime, '-o', str(target)]
    env['EM_CACHE'] = str(repo/'build/emscripten-cache')
    run = ['node', str(target)]
else:
    target = output/'codec_contract'
    flags += ['-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
              '-fsanitize=address,undefined', '-fno-omit-frame-pointer']
    command = [args.cc, *flags,
               str(output/'codec_contract.c'), *sources, '-lm', '-o', str(target)]
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
    run = [str(target)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(run, env=env, capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout)
(output/'stderr.txt').write_text(result.stderr)
result.check_returncode()
checks = json.loads(result.stdout)
assert checks['pairedFrames'] == 540 and checks['depthAndStencilExact'] and checks['disabledColorExact']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


receipt = dict(passed=True, actualSimd128Wasm=args.wasm, sanitizerEnabled=not args.wasm,
               modelOrBrowserValidated=False, temporalQualityTested=False,
               width=640, height=360, helperCounts=[1, 3], samples=[0, 2, 4], modes=list(range(5)),
               command=command, checks=checks, binarySha256=digest(target),
               fixtureSha256=digest(output/'codec_contract.c'),
               generatedPositionFixtureSha256=digest(output/'codec_positions.inc'),
               originalPositionFixtureSha256=digest(repo/'tests/scene_positions.c'),
               runnerSha256=digest(Path(__file__)),
               sourcesSha256={str(p.relative_to(source)): digest(p)
                              for p in sorted(source.rglob('*')) if p.is_file()})
if args.wasm:
    wasm = target.with_suffix('.wasm')
    wat = subprocess.check_output(['wasm-dis', str(wasm)], text=True)
    assert 'v128' in wat
    receipt['wasmSha256'] = digest(wasm)
    receipt['memoryDeclarations'] = [line.strip() for line in wat.splitlines() if '(memory ' in line][:2]
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('540 enabled paired frames: depth/stencil exact, disabled color exact;',
      'actual SIMD128 WASM' if args.wasm else 'ASan/UBSan', flush=True)
