#!/usr/bin/env python3
"""Verify retained native, WASM, geometry and adoption evidence."""
import argparse
import hashlib
import json
from pathlib import Path
import statistics
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index','HEAD'))
args = parser.parse_args()
base = 'experiments/scene-screen-error-lod/'
production_revision = '622bfe1'


def content(name):
    if not args.git_tree:
        return (repo/name).read_bytes()
    return subprocess.check_output(['git','show',(':' if args.git_tree == 'index' else 'HEAD:')+name],cwd=repo)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def production_content(name):
    # Adoption evidence describes the original published module. Subsequent
    # renderer/UI improvements must not rewrite its captured source hashes.
    return subprocess.check_output(['git', 'show', production_revision+':'+name], cwd=repo)


def read(name):
    return json.loads(content(base+'native-validation/'+name))


manifest = read('artifacts.json')
for name, expected in manifest.items():
    assert digest(content(name)) == expected, name
library = 'b36345fc1129012ee4b821712934e6e2c278b89e5682a2fb4b02e7d0960144b8'
for version in ('v2-nonempty','v4-support-positions','v5-cost-packing'):
    provenance = read(version+'/compiled-source-provenance.json')
    assert provenance['baselineLibrarySha256'] == provenance['candidateLibrarySha256'] == library
    for name, expected in provenance['compiledDriverSha256'].items():
        assert digest(content(base+'native-validation/'+version+'/'+name+'.c')) == expected
    for name, expected in provenance['candidateIncludesSha256'].items():
        assert digest(content(base+'native-validation/'+version+'/source/'+name)) == expected
    for name, expected in provenance['candidateLibrarySourceSha256'].items():
        data = subprocess.check_output(['git','show',provenance['baseline']+':libsoftgl/'+name],cwd=repo)
        assert digest(data) == expected, name
    isa = read(version+'/isa.json')
    assert isa['passed'] and not isa['avxInstructions'] and not isa['wideRegisters']
    for record in isa['binaries'].values():
        assert not record['avxInstructions'] and not record['wideRegisters']
full = read('runs/v5-full-coarse/receipt.json')
selected = [r for r in full['records'] if r.get('accepted')]
assert not full['screeningOnly'] and len(selected) == 144
summary = read('runs/v5-full-coarse/summary.json')
assert len(summary) == 12
for row in summary:
    records = [r for r in selected if (r['asset'],r['samples']) == (row['asset'],row['samples'])]
    assert len(records) == 12 and all(r['threads'] == 4 and r['foreignCpuCores'] <= .1 for r in records)
    for variant in ('baseline','candidate'):
        values = [r['ms'] for r in records if r['variant'] == variant]
        assert values == row['rawMs'][variant]
        assert statistics.median(values) == row['mediansMs'][variant]
    b,c = (row['mediansMs'][v] for v in ('baseline','candidate'))
    assert abs((c/b-1)*100-row['frameTimeChangePercent']) < 1e-10
quality = read('runs/v5-quality-coarse/receipt.json')
assert len(quality['records']) == 108 and quality['width'] == 640 and quality['height'] == 360
packing = read('packing-check.json')
assert packing['passed'] and len(packing['records']) == 4
assert all(r['orderedTierCornersExact'] and r['selectionRecordsExact'] for r in packing['records'])
frames = read('packing-frame-check.json')
assert frames['passed'] and frames['pairedViews'] == 108 and not frames['changed']
for name in ('sanitizer-v1','wasm-contract-v1'):
    gate = read('gates/'+name+'/receipt.json')
    assert gate['passed'] and len(gate['records']) == 2
    loader = next(r for r in gate['records'] if r['name'] == 'loader_contract')
    assert loader['checks']['contexts'] == 6 and loader['checks']['rejectedMetadataCases'] == 18
    assert loader['checks']['fineColorAndDepthExact'] and loader['checks']['coarseDraws'] == 6
    if name == 'wasm-contract-v1':
        assert gate['actualWasm'] and loader['containsV128']
    else:
        assert gate['sanitizerEnabled'] and gate['clang19ForSanitizersOnly']
for name in ('browser-v1','production-browser'):
    gate = read('gates/'+name+'/receipt.json')
    assert gate['passed'] and len(gate['records']) == 24 and not gate['errors']
    assert gate['ordinaryTestsUnaffectedBySelector'] and gate['actualSimd128Wasm']
    assert gate['peakHeapBytes'] < 4294967296
    pairs = read('gates/'+name+'/quality.json')
    assert pairs['pairedViews'] == 108 and pairs['gateReceiptSha256'] == digest(content(base+'native-validation/gates/'+name+'/receipt.json'))
    assert pairs['runnerSha256'] == digest(content(base+'browser_quality.py'))
    for record in gate['records']:
        assert record['workers'] == 3 and record['isolated'] and len(record['frames']) == 9
        assert all(0 < f['selectedTriangles'] <= record['originalTriangles'] for f in record['frames'])
production = read('production-adoption.json')
assert production['optionalOnly'] and production['defaultOriginal'] and production['budgetPixels'] == 4
assert production['productionWasmSha256'] == read('gates/production-browser/receipt.json')['wasmSha256']
for name, expected in production['sourcesSha256'].items():
    assert digest(production_content(name)) == expected, name
prototype = content(base+'native-validation/v5-cost-packing/source/model_wrap.c')
assert production_content('wasm/model_wrap.c').startswith(prototype)
guard = b'#ifndef SOFTGL_MODEL_LOD_BUDGET\n#define SOFTGL_MODEL_LOD_BUDGET 0.f\n#endif\n'
assert production_content('wasm/lod.inc').replace(guard,b'',1) == content(base+'native-validation/v5-cost-packing/source/lod.inc')
assert production_content('wasm/cluster_load.inc') == content(base+'native-validation/v5-cost-packing/source/cluster_load.inc')
expected = {r['asset']:r['metadataSha256'] for r in read('v5-cost-packing/lod-receipt.json')['records']}
assert {r['asset']:r['cacheSha256'] for r in read('production-assets.json')['records']} == expected
print('144 selected native trials, 108 native pairs, exact packing, sanitizer/WASM contracts and 48 browser configurations verified; historical adoption',production_revision,';',args.git_tree or 'worktree')
