#!/usr/bin/env python3
"""Execute the exact original/transpose numeric comparison in real SIMD128 WASM."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
source = root/'source/libsoftgl'
flags = ['-std=gnu11', '-O2', '-msimd128', '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1',
         '-I'+str(source/'include'), '-I'+str(source/'src'), '-I'+str(root/'fixtures')]
runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
           '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=67108864',
           '-sMAXIMUM_MEMORY=4294967296', '-sSTACK_SIZE=8388608']
target = output/'attribute_contract.js'
command = ['emcc', *flags, str(experiment/'attribute_contract.c'), *runtime, '-o', str(target)]
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')
with (output/'build.txt').open('w') as log:
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(['node', str(target)], capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout)
(output/'stderr.txt').write_text(result.stderr)
assert result.returncode == 0, result.stderr
assert result.stdout == (root/'checks/attribute_contract.txt').read_text()
wasm = target.with_suffix('.wasm')
wat = subprocess.check_output(['wasm-dis', str(wasm)], text=True)
memory_line = next(x.strip() for x in wat.splitlines() if '(memory ' in x)
limits = re.search(r'\(memory\s+\S+\s+(\d+)\s+(\d+)\)', memory_line)
assert limits and int(limits[2]) == 65536 and 'v128' in wat


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


receipt = dict(passed=True, nativeOutputExact=True, actualSimd128Wasm=True,
    command=command, exitCode=result.returncode, memoryDeclaration=memory_line,
    maximumMemoryBytes=4294967296, wasmSha256=digest(wasm), fixtureSha256=digest(experiment/'attribute_contract.c'),
    runnerSha256=digest(Path(__file__)),
    referenceAndCandidateSha256={str(p.relative_to(root)): digest(p) for p in
        [root/'fixtures/original_gather.h', root/'fixtures/triangle_layout.h',
         source/'src/scene_attribute_packet.h']},
    scope='Single-thread numeric shader helper; no linked renderer, model, pthread or browser gate')
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('Actual SIMD128 WASM: 20971520 channel packets exact; native output exact', flush=True)
