#!/usr/bin/env python3
"""Check LOD provenance and held screening results without claiming adoption."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index', 'HEAD'))
args = parser.parse_args()
base = 'experiments/scene-temporal-geometry-proxies/'


def content(name):
    if not args.git_tree: return (repo/name).read_bytes()
    return subprocess.check_output(['git', 'show', (':' if args.git_tree == 'index' else 'HEAD:')+name], cwd=repo)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def read(name):
    return json.loads(content(base+'native-validation/'+name))


manifest = read('artifacts.json')
for name, expected in manifest.items():
    assert digest(content(name)) == expected, name
expected_library = 'b36345fc1129012ee4b821712934e6e2c278b89e5682a2fb4b02e7d0960144b8'
quality_count = screen_count = 0
for version in ('v2-index-lod', 'v3-spatial-lod'):
    provenance = read(version+'/compiled-source-provenance.json')
    assert provenance['rendererImplemented'] and not provenance['productionAdopted']
    assert not provenance['temporalMaterialReuse'] and not provenance['wasmValidated']
    assert provenance['baselineLibrarySha256'] == provenance['candidateLibrarySha256'] == expected_library
    for name, expected in provenance['compiledDriverSha256'].items():
        assert digest(content(base+'native-validation/'+version+'/'+name+'.c')) == expected
    for name, expected in provenance['candidateIncludesSha256'].items():
        assert digest(content(base+'native-validation/'+version+'/source/'+name)) == expected
    wrapper = base+'native-validation/'+version+'/source/model_wrap.c'
    assert digest(content(wrapper)) == provenance['candidateWrapperSha256']
    baseline_wrapper = subprocess.check_output(['git', 'show', provenance['baseline']+':wasm/model_wrap.c'], cwd=repo)
    assert digest(baseline_wrapper) == provenance['baselineWrapperSha256']
    for name, expected in provenance['candidateLibrarySourceSha256'].items():
        data = subprocess.check_output(['git', 'show', provenance['baseline']+':libsoftgl/'+name], cwd=repo)
        assert digest(data) == expected, name
    isa = read(version+'/isa.json')
    assert isa['passed'] and not isa['avxInstructions'] and not isa['wideRegisters']
    assert len(isa['binaries']) == 13 and isa['xmmReferences'] > 0
    lod = read(version+'/lod-receipt.json')
    assert lod['originalPacksUnchanged'] and not lod['temporalMaterialReuse']
    assert {r['asset'] for r in lod['records']} == {'bistro', 'sponza', 'bmw', 't80'}
    for name, expected in lod['vendorSourcesSha256'].items():
        assert digest(content('tools/third_party/meshoptimizer/'+name)) == expected
    if version == 'v3-spatial-lod':
        assert all(r['fineTriangleMultisetAndCornersExact'] for r in lod['records'])
    runs = sorted({n.split('/runs/', 1)[1].split('/', 1)[0] for n in manifest if '/runs/'+version+'-' in n})
    for run in runs:
        receipt = read('runs/'+run+'/receipt.json'); rows = receipt['records']
        assert receipt['width'] == 640 and receipt['height'] == 360
        if '-quality' in run:
            assert len(rows) == 108 and receipt['threads'] == 4
            assert receipt['driverSha256'] == digest(content(base+'native-validation/sources/quality_frames.c'))
            quality_count += len(rows)
            assert len({(r['asset'], r['samples'], r['angle']) for r in rows}) == 108
            assert all(r['stencilAndSampleStencilByteIdentical'] for r in rows)
            if run == 'v2-index-lod-quality-control':
                assert all(r['rgbaByteIdentical'] and r['resolvedDepth']['byteIdentical'] and r.get('sampleDepth', {'byteIdentical':True})['byteIdentical'] for r in rows)
        else:
            assert receipt['screeningOnly'] and receipt['arguments']['pairs'] == 1
            assert receipt['driverSha256'] == digest(content(base+'native-validation/sources/resident_trial.c'))
            selected = [r for r in rows if r.get('selected', True)]
            screen_count += len(selected)
            for r in selected:
                assert r['width'] == 640 and r['height'] == 360 and r['threads'] == 4
                assert r['foreignCpuCores'] <= .1
            assert receipt['candidateWrapperSha256'] == provenance['candidateWrapperSha256']
            for asset, expected in receipt['packsSha256'].items():
                assert expected == next(r['packSha256'] for r in lod['records'] if r['asset'] == asset)
assert quality_count == 432 and screen_count == 80, (quality_count, screen_count)
reconstruction = read('reconstruction/receipt.json')
assert reconstruction['passed'] and reconstruction['originalPacksUnchanged']
assert not reconstruction['rendererRebuilt']
assert len(reconstruction['regeneratedCaches']) == 8 and len(reconstruction['regeneratedSources']) == 9
assert reconstruction['runnerSha256'] == digest(content(base+'reproduce_native.py'))
for row in reconstruction['regeneratedSources']:
    assert row['sha256'] == digest(content(base+'native-validation/'+row['version']+'/'+row['name']))
for row in reconstruction['regeneratedCaches']:
    expected = next(r for r in read(row['version']+'/lod-receipt.json')['records'] if r['asset'] == row['asset'])
    assert row['sha256'] == expected['metadataSha256']
print('432 paired native LOD views, 80 screening records, original pack provenance and SIMD128 verified; held, no adopted gain;', args.git_tree or 'worktree')
