#!/usr/bin/env python3
"""Retain the measured prototypes and bind adoption to completed product gates."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
parser = argparse.ArgumentParser()
parser.add_argument('--archive',action='store_true')
args = parser.parse_args()
validation = experiment/'validation'
root = repo/'build/scene-msaa-material-pixel-merge/v6-alpha-eligible'
temporary = repo/'tmp/scene-msaa-material-pixel-merge'

if args.archive:
    command = ['python3',str(repo/'tools/scene_trial_archive.py'),'archive',str(experiment),
        '--variant','v4='+str(root.parent/'v4-canonical-low-density'),
        '--variant','v5='+str(root.parent/'v5-opaque'),
        '--variant','v6='+str(root),
        '--timing','v4='+str(temporary/'formal-v4'),
        '--timing','v6='+str(temporary/'formal-v6'),
        '--quality','v4='+str(temporary/'quality-v4-verified'),
        '--quality','v5='+str(temporary/'quality-v5'),
        '--quality','v6='+str(temporary/'quality-v6')]
    subprocess.run(command,check=True)
    checks = validation/'checks'; checks.mkdir()
    for name in ('sanitize-v6','wasm-contract-v6'):
        source = temporary/name; target = checks/name
        target.mkdir(); shutil.copytree(source/'recipe',target/'recipe')
        shutil.copyfile(source/'receipt.json',target/'receipt.json')
        logs = {p.name:p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix in ('.log','.txt')}
        (target/'logs.json').write_text(json.dumps(logs,indent=2)+'\n')
    for source, name in [(temporary/'browser-v6/receipt.json','browser.json'),
                         (temporary/'preview-v6/receipt.json','preview.json')]:
        shutil.copyfile(source,checks/name)
    for source, name in [(experiment/'browser_quality.cjs','browser_quality.cjs'),
                         (repo/'tools/wasm_preview_check.cjs','wasm_preview_check.cjs'),
                         (experiment/'compare_native_text.py','compare_native_text.py'),
                         (Path(__file__),'archive_adoption.py')]:
        shutil.copyfile(source,checks/name)
    for name in ('isa.json','product-isa.json','product-text-sections.json'):
        shutil.copyfile(root/name,checks/name)
    for name in ('tests/CMakeLists.txt','tests/scene_material_merge.c'):
        target = checks/'product'/name; target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(repo/name,target)
    evidence = dict(adoptedVariant='v6',originalMeshesAndTextures=True,simdBits=128,
        sourceManifestSha256=digest(root/'source.json'),
        rootSourcesSha256={str(p.relative_to(repo/'libsoftgl')):digest(p)
            for p in sorted((repo/'libsoftgl').rglob('*')) if p.is_file()},
        rootWrapperSha256=digest(repo/'wasm/model_wrap.c'),
        recipeSha256={p.name:digest(p) for p in sorted((checks/'sanitize-v6/recipe').iterdir())},
        productTestSha256={name:digest(repo/name) for name in ('tests/CMakeLists.txt','tests/scene_material_merge.c')},
        servedBuildSha256={name:digest(repo/'build/wasm'/name)
            for name in ('index.html','main.js','softgl.js','softgl.wasm')},
        runnerSha256=digest(Path(__file__)))
    (checks/'adoption.json').write_text(json.dumps(evidence,indent=2)+'\n')
    subprocess.run(['python3',str(repo/'tools/scene_trial_archive.py'),'refresh',str(experiment)],check=True)

subprocess.run(['python3',str(validation/'archive_recipe.py'),'verify',str(experiment)],check=True)
checks = validation/'checks'
adoption = read(checks/'adoption.json')
scope = read(validation/'variants/v6/source.json')
assert adoption['sourceManifestSha256'] == digest(validation/'variants/v6/source.json')
assert adoption['simdBits'] == 128 and adoption['originalMeshesAndTextures']
assert adoption['rootSourcesSha256'] == {n.removeprefix('libsoftgl/'):v
    for n,v in scope['sourceSha256'].items() if n.startswith('libsoftgl/')}
assert adoption['rootWrapperSha256'] == scope['sourceSha256']['model_wrap.c']
assert adoption['runnerSha256'] == digest(checks/'archive_adoption.py')
for name, expected in adoption['productTestSha256'].items():
    assert expected == digest(checks/'product'/name)
assert (checks/'product/tests/scene_material_merge.c').read_bytes() == (experiment/'merge_contract.c').read_bytes()
assert adoption['recipeSha256'] == {p.name:digest(p) for p in sorted((checks/'sanitize-v6/recipe').iterdir())}
for name in ('sanitize-v6','wasm-contract-v6'):
    target = checks/name; receipt = read(target/'receipt.json')
    assert receipt['passed'] and receipt['simdBits'] == 128
    assert receipt['sourceManifestSha256'] == adoption['sourceManifestSha256']
    assert receipt['sourcesSha256'] == adoption['rootSourcesSha256']
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in sorted((target/'recipe').iterdir())}
    assert receipt['runnerSha256'] == digest(target/'recipe/contracts.py')
    assert len(receipt['runs']) == 4 and all(r['exitCode'] == 0 for r in receipt['runs'])
    assert '90 paired frames, 6 deliberate seam approximations' in receipt['runs'][0]['stdout']
    for run in receipt['runs']:
        assert run['fixtureSha256'] == digest(target/'recipe'/(run['kind']+'.c'))
for name in ('isa.json','product-isa.json'):
    audit = read(checks/name)
    assert audit['passed'] and not audit['avxInstructions'] and not audit['wideRegisters']
sections = read(checks/'product-text-sections.json')
assert sections['allIdentical'] and len(sections['objects']) == 22
assert all(r['identical'] and len(set(r['textSha256'])) == 1 for r in sections['objects'])
assert sections['runnerSha256'] == digest(checks/'compare_native_text.py')
assert sections['measuredLibrarySha256'] == read(checks/'isa.json')['librarySha256']
assert sections['productLibrarySha256'] == read(checks/'product-isa.json')['librarySha256']
build = read(validation/'variants/v6/build.json')
assert '100% tests passed, 0 tests failed out of 760' in build['logs']['product-native-ctest.log']
browser = read(checks/'browser.json')
assert browser['passed'] and browser['actualSimd128Wasm'] and browser['pairedViews'] == 108
assert browser['offAnd2xRgbaExact'] and browser['originalMeshesAndTextures']
assert browser['selectorsAndExportsRemoved'] and browser['httpSha256'] == adoption['servedBuildSha256']
assert browser['runnerSha256'] == digest(checks/'browser_quality.cjs')
assert browser['peakHeapBytes'] < 4294967296 and len(browser['records']) == 12
for row in browser['records']:
    assert row['workers'] == 3 and row['isolated'] and row['removedExports'] and len(row['frames']) == 9
    # V6 also satisfies zero alpha error; rejected V4/V5 cannot pass adoption.
    assert all(f['alphaExact'] and f['maxAlphaError'] == 0 for f in row['frames'])
    assert all(f['meanAbsoluteChannelError'] < 3 and f['pixelFractionOver8'] < .12 for f in row['frames'])
    if row['samples'] != 4:
        assert all(f['maxChannelError'] == 0 for f in row['frames'])
preview = read(checks/'preview.json')
assert preview['passed'] and preview['displayedTests'] == 234 and preview['renderWorkers'] == 3
assert preview['wasmSha256'] == browser['httpSha256']['softgl.wasm'] and not preview['errors']
print('V6 adoption: native timings, 760 tests, 128-bit ISA, sanitizers, WASM, original browser assets and zero observed alpha error verified')
