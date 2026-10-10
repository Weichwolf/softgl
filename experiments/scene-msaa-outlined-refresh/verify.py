#!/usr/bin/env python3
"""Check body-preserving extraction, actual builds and native evidence."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation / 'archive_recipe.py'), 'verify', str(experiment)], check=True)
variant = validation / 'variants/shared'
build = read(variant / 'build.json')
scope = read(variant / 'source.json')
assert scope['outlinedRefresh'] and scope['exactHierarchy']
assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
assert scope['additionalBytesPerPixel'] == 0
original = subprocess.check_output(['git', 'show', scope['parentRevision'] + ':libsoftgl/src/raster_hz.h'], text=True)
bodies = []
for samples in (4, 2):
    start = original.index('SG_INLINE void sg_hz_refresh' + str(samples) + '(')
    opening = original.index('{', start)
    depth, end = 1, opening + 1
    while depth:
        depth += (original[end] == '{') - (original[end] == '}')
        end += 1
    bodies.append(original[start:end].replace('SG_INLINE void', 'void', 1))
implementation = variant / 'overrides/libsoftgl/src/raster_hz.c'
assert implementation.read_text() == '#include "raster_hz.h"\n\n' + '\n\n'.join(bodies) + '\n'
path = validation / 'checks/contracts-v1'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['simdBits'] == 128
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['librarySha256'] == build['librarySha256']
assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
assert [r['kind'] for r in receipt['runs']] == [
    'scene_material_merge', 'scene_positions', 'scene_msaa', 'scene_coverage']
for row in receipt['runs']:
    assert row['exitCode'] == 0
    assert row['fixtureSha256'] == digest(path / 'recipe' / (row['kind'] + '.c'))
path = validation / 'checks/hierarchy-v1'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['simdBits'] == 128 and receipt['exitCode'] == 0
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['librarySha256'] == build['librarySha256']
assert receipt['fixtureSha256'] == digest(path / 'recipe/hierarchical_depth.c')
assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
assert '-fno-fast-math' in receipt['command'] and '-ffp-contract=off' in receipt['command']
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
assert read(control / 'source.json')['sourceSha256'] == scope['beforeSourceSha256']
isa = read(control / 'isa.json')
assert isa['passed'] and isa['objects']['driver']['sha256'] == binding['residentBinarySha256']
assert isa['librarySha256'] == binding['librarySha256']
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    accepted = [r for r in receipt['records'] if r.get('accepted')]
    for asset, samples in {(r['asset'], r['samples']) for r in accepted}:
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert len({r[field] for r in accepted if (r['asset'], r['samples']) == (asset, samples)}) == 1
size = read(validation / 'checks/code-size.json')
for name, identity in [('baseline', binding), ('candidate', build)]:
    assert size[name]['librarySha256'] == identity['librarySha256']
    assert size[name]['sourceManifestSha256'] == identity['sourceManifestSha256']
    actual = sum(int(raw.split()[0]) for raw in size[name]['size'].splitlines()[1:]
                 if raw.split() and raw.split()[0].isdecimal())
    assert actual == size[name]['libraryTextBytes']
    for function, count in size[name]['functionBytes'].items():
        raw = next(r for r in size[name]['nm'].splitlines() if r.split() and r.split()[-1] == function)
        assert int(raw.split()[1], 16) == count
print('Unchanged exact refresh bodies, measured-library contracts, code sizes and endpoint planes verified')
