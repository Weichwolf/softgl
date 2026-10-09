#!/usr/bin/env python3
"""Prepare optional mesh sidecars from existing model packs; never replace inputs."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import time

repo = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--assets', default='bmw,t80,sponza,bistro')
parser.add_argument('--cxx', default=str(Path.home()/'.local/bin/clang++-22'))
parser.add_argument('--output-dir', type=Path, default=repo/'build/assets')
args = parser.parse_args()
source = repo/'experiments/scene-screen-error-lod'
vendor = repo/'tools/third_party/meshoptimizer'
build = repo/'build/tools/model-lod'; build.mkdir(parents=True, exist_ok=True)
args.output_dir.mkdir(parents=True, exist_ok=True)
names = ['simplifier.cpp', 'allocator.cpp', 'clusterizer.cpp', 'meshletutils.cpp',
         'spatialorder.cpp', 'partition.cpp', 'indexgenerator.cpp', 'quantization.cpp', 'vcacheoptimizer.cpp']
command = [args.cxx, '-std=c++17', '-O3', '-msse4.1', '-mno-avx', '-mno-avx2',
    '-mno-avx512f', '-Wall', '-Wextra', '-Werror', '-I'+str(vendor),
    str(source/'build_cluster_lod.cpp'), *[str(vendor/name) for name in names], '-o', str(build/'build_lod')]
with (build/'build.txt').open('w') as log:
    subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, check=True)


def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


receipt = dict(command=command, originalPacksReplaced=False,
    sourcesSha256={str(p.relative_to(repo)):digest(p) for p in
        [source/'build_cluster_lod.cpp', source/'build_lod.cpp', vendor/'meshoptimizer.h', *[vendor/name for name in names]]},
    records=[])
for asset in args.assets.split(','):
    if not asset or Path(asset).name != asset:
        parser.error('Asset names must be file basenames')
    pack = repo/'build/assets'/f'{asset}.pack'
    target = args.output_dir/f'{asset}.pack.lod'
    temporary = target.with_suffix('.lod.tmp')
    cmd = [str(build/'build_lod'), str(pack), str(temporary)]
    start = time.monotonic()
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    temporary.replace(target)
    row = dict(asset=asset, command=cmd, seconds=time.monotonic()-start,
        packSha256=digest(pack), cacheSha256=digest(target), **json.loads(result.stdout))
    receipt['records'].append(row)
    print(json.dumps(row), flush=True)
    (build/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
