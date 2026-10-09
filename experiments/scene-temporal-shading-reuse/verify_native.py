#!/usr/bin/env python3
"""Reconstruct measured cache source trees and verify the rejected screens."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile
import tempfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(); parser.add_argument('--git-tree',choices=('index','HEAD'))
args = parser.parse_args(); base = 'experiments/scene-temporal-shading-reuse/'


def content(name):
    if not args.git_tree: return (repo/name).read_bytes()
    return subprocess.check_output(['git','show',(':' if args.git_tree == 'index' else 'HEAD:')+name],cwd=repo)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def read(name):
    return json.loads(content(base+'native-validation/'+name))


artifacts = read('artifacts.json')
for name,expected in artifacts.items(): assert digest(content(name)) == expected,name
source_manifests = {}
for version in ('v2-uv-material-cache','v4-uv-material-cache','v5-sampler-state-guard'):
    manifest = read(version+'/manifest.json'); source_manifests[version] = manifest['sourcesSha256']
    assert not manifest['productionAdopted']
    with tempfile.TemporaryDirectory(prefix='softgl-material-cache-') as directory:
        target = Path(directory)
        archive = subprocess.check_output(['git','archive',manifest['baseline'],'libsoftgl','wasm/model_wrap.c'],cwd=repo)
        with tarfile.open(fileobj=io.BytesIO(archive)) as files: files.extractall(target,filter='data')
        original = (target/'libsoftgl/src/scene_visibility.c').read_text()
        patch = content(base+'native-validation/'+version+'/candidate.patch')
        subprocess.run(['git','apply','--unsafe-paths','-'],cwd=target,input=patch,check=True,capture_output=True)
        (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
        (target/'baseline.txt').write_text(manifest['baseline']+'\n')
        actual = {str(p.relative_to(target)):digest(p.read_bytes()) for p in sorted(target.rglob('*')) if p.is_file()}
        assert actual == manifest['sourcesSha256']
        changed = (target/'libsoftgl/src/scene_visibility.c').read_text()
        for start,end in [('static void scene_shade_packet(', '\n/* Retained for callers'),
                          ('static void scene_resolve(', '\nstatic void scene_restore')]:
            def body(text):
                a=text.index(start); b=text.index(end,a); s=text[a:b]
                return s.split('\n#include "scene_cache_kernels.inc"')[0].rstrip()
            assert body(original) == body(changed)
    if version != 'v5-sampler-state-guard':
        isa = read(version+'/isa.json')
        assert isa['passed'] and not isa['avxInstructions'] and not isa['wideRegisters'] and isa['xmmReferences'] > 0
        assert len(isa['binaries']) == 14
    else: assert not manifest['nativeBenchmarkBuilt'] and not manifest['archiveSha256']
model_pairs = screen_records = 0
fixture_pairs = 0
for name in sorted(n for n in artifacts if n.endswith('/receipt.json') and '/runs/' in n):
    receipt = json.loads(content(name))
    if 'quality' in name:
        rows = receipt['records']; model_pairs += len(rows); assert len(rows) == 18
        assert receipt['width'] == 640 and receipt['height'] == 360 and receipt['threads'] == 4
        assert receipt['driverSha256'] == digest(content(base+'native-validation/sources/quality_frames.c'))
        assert all(r['resolvedDepth']['byteIdentical'] and r['sampleDepth']['byteIdentical'] and r['stencilAndSampleStencilByteIdentical'] for r in rows)
        if 'control' in name: assert all(r['rgbaByteIdentical'] for r in rows)
    elif 'screen' in name:
        assert receipt['screeningOnly'] and receipt['arguments']['pairs'] == 1
        assert len(receipt['records']) == 8; screen_records += len(receipt['records'])
        assert receipt['driverSha256'] == digest(content(base+'native-validation/sources/resident_trial.c'))
        version = 'v2-uv-material-cache' if '/v2-' in name else 'v4-uv-material-cache'
        expected = {n.removeprefix('libsoftgl/'):sha for n,sha in source_manifests[version].items() if n.startswith('libsoftgl/')}
        assert receipt['candidateSourcesSha256'] == expected
        assert all(r['samples'] == 4 and r['threads'] == 4 and r['foreignCpuCores'] <= .1 for r in receipt['records'])
    else:
        assert receipt['passed'] and receipt['checks']['pairedFrames'] == 360
        assert receipt['checks']['cacheHits'] > 0 and receipt['checks']['displayListMutationChecks'] == 6
        assert receipt['checks']['depthAndStencilExact'] and receipt['checks']['disabledAndExactKeyColorsExact'] and receipt['checks']['defaultResetExact']
        version = 'v5-sampler-state-guard' if '/v5-' in name else 'v4-uv-material-cache'
        expected = {n.removeprefix('libsoftgl/'):sha for n,sha in source_manifests[version].items() if n.startswith('libsoftgl/')}
        assert receipt['sourceSha256'] == expected
        assert receipt['actualSimd128Wasm'] == ('wasm' in name)
        assert receipt['sanitizerEnabled'] == ('sanitize' in name)
        fixture_pairs += receipt['checks']['pairedFrames']
        if version == 'v5-sampler-state-guard':
            fixture = content(name.removesuffix('receipt.json')+'cache_positions.inc').decode()
            assert 'part == 1 ? GL_NEAREST : GL_LINEAR' in fixture
assert model_pairs == 54 and screen_records == 16
assert fixture_pairs == 1440
print('Three exact source reconstructions; 54 model pairs, 16 screening records and 1440 sanitizer/SIMD128 WASM fixture pairs verified; not adopted;',args.git_tree or 'worktree')
