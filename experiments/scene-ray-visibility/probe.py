#!/usr/bin/env python3
"""Build/run the pinned upstream one-ray example; never a renderer benchmark."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--source', type=Path, default=Path.home()/'Git/tinybvh')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
source = args.source.resolve()
revision = subprocess.check_output(['git', '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip()
assert revision == '4b8509fd26b29801c8f79386cf8a1ce5713070fb', revision
output = repo/'build/scene-ray-visibility'
output.mkdir(parents=True, exist_ok=True)
def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
files = [source/'README.md', source/'LICENSE', source/'examples/tiny_bvh_minimal.cpp', *sorted(source.glob('*.h'))]
receipt = {'diagnosticOnly': True, 'completeFrameBenchmark': False,
           'revision': revision, 'sourcesSha256': {str(p.relative_to(source)): digest(p) for p in files},
           'runnerSha256': digest(Path(__file__)), 'runs': []}
common = ['-std=c++17', '-O3', '-DNO_THREADED_BUILDS', '-I'+str(source), str(source/'examples/tiny_bvh_minimal.cpp')]
commands = [
    ['clang++-22', *common, '-mavx2', '-mfma', '-msse4.2', '-o', str(output/'upstream-native')],
    [str(output/'upstream-native')],
    ['em++', *common, '-msimd128', '-DTINYBVH_NO_SIMD', '-sENVIRONMENT=node',
     '-sALLOW_MEMORY_GROWTH=1', '-o', str(output/'upstream-wasm.js')],
    ['node', str(output/'upstream-wasm.js')],
]
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')
for command in commands:
    result = subprocess.run(command, env=env, text=True, capture_output=True)
    receipt['runs'].append({'command': command, 'returncode': result.returncode,
                            'stdout': result.stdout, 'stderr': result.stderr})
    (output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    result.check_returncode()
for name in ('upstream-native', 'upstream-wasm.js', 'upstream-wasm.wasm'):
    receipt.setdefault('binarySha256', {})[name] = digest(output/name)
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('Native AVX2 and scalar-algorithm WASM module smoke PASS; no scene timing or image comparison')
