#!/usr/bin/env python3
"""Exercise real cache hits and mutation/reset cases under sanitizers or WASM."""
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
parser.add_argument('--cc', default='/usr/bin/clang-19')
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
original = (repo/'tests/scene_positions.c').read_text()
marker = '    int begun = softgl_scene_visibility_begin();'
assert original.count(marker) == 1
fixture = original.replace(marker,
    marker+'\n    if (begun && cache_test_mode >= 0) CHECK(softgl_scene_material_cache(cache_test_mode));')
marker = '        softgl_set_fused_dot3_material(tint,variant&1);'
assert fixture.count(marker) == 1
fixture = fixture.replace(marker, marker+'''
        if (variant == 10) {
            glActiveTexture(GL_TEXTURE2);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,part == 1 ? GL_NEAREST : GL_LINEAR);
        }''')
(output/'cache_positions.inc').write_text(fixture)
(output/'cache_contract.c').write_bytes((experiment/'cache_contract.c').read_bytes())
(output/'contract.py').write_bytes(Path(__file__).read_bytes())
flags = ['-std=gnu11', '-O2', '-pthread', '-fno-strict-aliasing', '-ffast-math',
         '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only',
         '-DSOFTGL_BUILD', '-I'+str(source/'include'), '-I'+str(source/'src')]
sources = [str(p) for p in sorted((source/'src').glob('*.c'))]
env = os.environ.copy()
if args.wasm:
    target = output/'cache_contract.js'
    flags += ['-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1']
    runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
               '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=134217728',
               '-sMAXIMUM_MEMORY=4294967296', '-sSTACK_SIZE=8388608',
               '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-sPTHREAD_POOL_SIZE=8']
    command = ['emcc', *flags, str(output/'cache_contract.c'), *sources, *runtime, '-o', str(target)]
    env['EM_CACHE'] = str(repo/'build/emscripten-cache'); run = ['node', str(target)]
else:
    target = output/'cache_contract'
    command = [args.cc, *flags, '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f',
               '-fsanitize=address,undefined', '-fno-omit-frame-pointer',
               str(output/'cache_contract.c'), *sources, '-lm', '-o', str(target)]
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'; run = [str(target)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(run, env=env, capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout); (output/'stderr.txt').write_text(result.stderr)
result.check_returncode(); checks = json.loads(result.stdout)
assert checks['pairedFrames'] == 360 and checks['cacheHits'] > 0
assert checks['displayListMutationChecks'] == 6 and checks['depthAndStencilExact']
assert checks['disabledAndExactKeyColorsExact'] and checks['defaultResetExact']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


receipt = dict(passed=True, actualSimd128Wasm=args.wasm, sanitizerEnabled=not args.wasm,
    modelOrBrowserValidated=False, command=command, checks=checks,
    fixtureSha256=digest(output/'cache_contract.c'), runnerSha256=digest(Path(__file__)),
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()})
if args.wasm:
    wat = subprocess.check_output(['wasm-dis', str(target.with_suffix('.wasm'))], text=True)
    assert 'v128' in wat; receipt['wasmSha256'] = digest(target.with_suffix('.wasm'))
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(json.dumps(receipt['checks']), flush=True)
