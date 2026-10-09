#!/usr/bin/env python3
"""Build a SIMD128-only native projected-area census, with synthetic controls."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--baseline-root', type=Path,
                    default=repo/'build/scene-codec-luma-chroma/v4-specialized')
args = parser.parse_args()
out = args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
root = args.baseline_root.resolve()
source = root/'baseline-source/libsoftgl'
library = root/'native/baseline-library/libbaseline_softgl.a'


def digest(path):
    result = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024*1024), b''):
            result.update(block)
    return result.hexdigest()


compiler = os.environ.get('CC', str(Path.home()/'.local/bin/clang-22'))
command = [compiler, '-std=c11', '-O3', '-msse4.1', '-mno-avx', '-mno-avx2',
           '-mno-avx512f', '-Wall', '-Wextra', '-Werror',
           '-I'+str(source/'include'), '-I'+str(source/'src'),
           str(experiment/'census.c'), str(library), '-lm', '-pthread',
           '-o', str(out/'census')]
build = subprocess.run(command, capture_output=True, text=True)
(out/'build.txt').write_text(build.stdout+build.stderr)
build.check_returncode()
receipt = dict(metadataOnly=True, rendererImplemented=False, speedupMeasured=False,
               width=640, height=360, frames=30,
               groups='Consecutive input triangles within a part, not spatially reordered',
               area='Continuous projected geometry; no depth, culling, alpha or MSAA sample visibility',
               compilerVersion=subprocess.check_output([compiler, '--version'], text=True),
               buildCommand=command, librarySha256=digest(library),
               binarySha256=digest(out/'census'),
               driverSha256=digest(experiment/'census.c'),
               runnerSha256=digest(Path(__file__)),
               baselineSourcesSha256={str(p.relative_to(source)): digest(p)
                                      for p in sorted(source.rglob('*')) if p.is_file()},
               controls=[], assets=[])


def run(path, camera, tag, expected_success=True):
    cmd = [str(out/'census'), str(path), *map(str, camera)]
    result = subprocess.run(cmd, capture_output=True, text=True)
    (out/(tag+'-stdout.txt')).write_text(result.stdout)
    (out/(tag+'-stderr.txt')).write_text(result.stderr)
    if expected_success:
        result.check_returncode()
        rows = [json.loads(line) for line in result.stdout.splitlines()]
        assert len(rows) == 30 and [r['angle'] for r in rows] == list(range(0, 360, 12))
    else:
        assert result.returncode != 0
        rows = []
    return dict(command=cmd, inputSha256=digest(path), returnCode=result.returncode,
                records=rows)


def fixture(tag, positions, indices):
    path = out/(tag+'.pack')
    with path.open('wb') as stream:
        stream.write(struct.pack('<4s6I', b'SGLM', 2, len(positions), len(indices), 0, 0, 1))
        for p in positions:
            stream.write(struct.pack('<12f', *p, 0, 0, 1, 0, 0, 0, 0, 0, 0))
        stream.write(struct.pack('<'+str(len(indices))+'I', *indices))
        stream.write(struct.pack('<4I3f', 0, 0, 0, len(indices), 0, 0, 0))
    return path


corners = [(-.0001, -.0001, 0), (.0001, -.0001, 0),
           (.0001, .0001, 0), (-.0001, .0001, 0), (0, 0, 0)]
fan = [0, 1, 4, 1, 2, 4, 2, 3, 4, 3, 0, 4]
connected = run(fixture('connected', corners, fan), [], 'connected')
assert all(r['fullyInsideTriangles'] == 4 and r['triangleBoxAtMost3'] == 4 and
           r['groups'][0]['edgeConnected'] == 1 and
           r['groups'][0]['containedTriangles'] == 4 for r in connected['records'])
receipt['controls'].append(dict(name='connected-small-fan', **connected))
disconnected = run(fixture('disconnected', [corners[i] for i in fan], list(range(12))), [], 'disconnected')
assert all(r['groups'][0]['boxAtMost3'] == 1 and
           r['groups'][0]['edgeConnected'] == 0 for r in disconnected['records'])
receipt['controls'].append(dict(name='coincident-disconnected-indices', **disconnected))
invalid = run(fixture('invalid-index', corners, fan[:-1]+[5]), [], 'invalid-index', False)
receipt['controls'].append(dict(name='out-of-range-index-rejected', **invalid))

models = json.loads((repo/'assets/models.json').read_text())
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    result = run(repo/'build/assets'/f'{asset}.pack', models[asset].get('camera', []), asset)
    receipt['assets'].append(dict(asset=asset, **result))
    rows = result['records']
    summary = dict(asset=asset, submittedTrianglesPerFrame=rows[0]['triangles'],
                   meanFullyInside=sum(r['fullyInsideTriangles'] for r in rows)/30,
                   meanTriangleAreaAtMost3=sum(r['triangleAreaAtMost3'] for r in rows)/30,
                   meanTriangleBoxAtMost3=sum(r['triangleBoxAtMost3'] for r in rows)/30,
                   groups=[dict(size=size,
                                meanConnectedSmallGroups=sum(r['groups'][i]['edgeConnected'] for r in rows)/30,
                                meanContainedTriangles=sum(r['groups'][i]['containedTriangles'] for r in rows)/30)
                           for i, size in enumerate((4, 8, 16, 64))])
    receipt['assets'][-1]['summary'] = summary
    print(json.dumps(summary), flush=True)
    (out/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('Three controls and four 30-pose native metadata censuses passed.', flush=True)
