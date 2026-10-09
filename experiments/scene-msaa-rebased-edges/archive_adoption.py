#!/usr/bin/env python3
"""Retain the exact MSAA experiment and verify the completed adoption gates."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import statistics
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())

def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2) + '\n')

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--archive', action='store_true')
args = parser.parse_args()
validation = experiment / 'validation'
root = repo / 'build/scene-msaa-rebased-edges/v3-opaque-spans'
temporary = repo / 'tmp/scene-msaa-rebased-edges'

if args.archive:
    subprocess.run(['python3', str(repo / 'tools/scene_trial_archive.py'),
        'archive', str(experiment), '--variant', 'v2=' + str(root.parent / 'v2'),
        '--variant', 'v3=' + str(root),
        '--timing', 'screen-v2=' + str(temporary / 'screen-v2'),
        '--timing', 'screen-v3=' + str(temporary / 'screen-v3'),
        '--timing', 'formal-v3=' + str(temporary / 'formal-v3'),
        '--quality', 'v2=' + str(temporary / 'quality-v2'),
        '--quality', 'v3=' + str(temporary / 'quality-v3')], check=True)
    checks = validation / 'checks'
    checks.mkdir()
    for name in ('sanitize-v3', 'wasm-contract-v3'):
        source = temporary / name
        target = checks / name
        target.mkdir()
        shutil.copytree(source / 'recipe', target / 'recipe')
        shutil.copyfile(source / 'receipt.json', target / 'receipt.json')
        write(target / 'logs.json', {p.name:p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix in ('.log', '.txt')})
    for directory, name in [('browser-v3', 'browser.json'), ('preview-v3', 'preview.json')]:
        shutil.copyfile(temporary / directory / 'receipt.json', checks / name)
    for source in (experiment / 'browser_quality.cjs', experiment / 'compare_native_text.py',
                   repo / 'tools/wasm_preview_check.cjs', Path(__file__)):
        shutil.copyfile(source, checks / source.name)
    for name in ('isa.json', 'product-isa.json', 'product-text-sections.json'):
        shutil.copyfile(root / name, checks / name)
    # A failed build has no executable or timing; retain its exact failed recipe separately.
    failed = root.parent / 'v1'
    target = validation / 'failed-v1'
    target.mkdir()
    shutil.copyfile(failed / 'source.json', target / 'source.json')
    shutil.copytree(failed / 'recipe', target / 'recipe')
    scope = read(failed / 'source.json')
    for name, expected in scope['sourceSha256'].items():
        if scope['beforeSourceSha256'].get(name) != expected:
            destination = target / 'overrides' / name
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(failed / 'source' / name, destination)
    write(target / 'logs.json', {p.name:p.read_text() for p in sorted(failed.glob('*.log'))})
    comparison = checks / 'comparison'
    comparison.mkdir()
    for name in ('receipt.json', 'summary.json'):
        shutil.copyfile(temporary / 'renderer-comparison-v3' / name, comparison / name)
    compiler = root.parent / 'comparison-v3'
    shutil.copyfile(compiler / 'receipt.json', comparison / 'build.json')
    shutil.copytree(compiler / 'recipe', comparison / 'recipe')
    for name in ('build_comparison.py', 'compare_renderers.py'):
        shutil.copyfile(experiment / name, comparison / name)
    write(checks / 'adoption.json', dict(adoptedVariant='v3', originalMeshesAndTextures=True,
        simdBits=128, additionalApproximation=False,
        sourceManifestSha256=digest(root / 'source.json'),
        rootSourcesSha256={str(p.relative_to(repo / 'libsoftgl')):digest(p)
            for p in sorted((repo / 'libsoftgl').rglob('*')) if p.is_file()},
        rootWrapperSha256=digest(repo / 'wasm/model_wrap.c'),
        servedBuildSha256={name:digest(repo / 'build/wasm' / name)
            for name in ('index.html', 'main.js', 'softgl.js', 'softgl.wasm')},
        runnerSha256=digest(Path(__file__))))
    subprocess.run(['python3', str(repo / 'tools/scene_trial_archive.py'),
        'refresh', str(experiment)], check=True)

subprocess.run(['python3', str(validation / 'archive_recipe.py'),
    'verify', str(experiment)], check=True)
checks = validation / 'checks'
adoption = read(checks / 'adoption.json')
scope = read(validation / 'variants/v3/source.json')
assert adoption['sourceManifestSha256'] == digest(validation / 'variants/v3/source.json')
assert adoption['simdBits'] == 128 and adoption['originalMeshesAndTextures']
assert not adoption['additionalApproximation']
assert adoption['rootSourcesSha256'] == {n.removeprefix('libsoftgl/'):v
    for n,v in scope['sourceSha256'].items() if n.startswith('libsoftgl/')}
assert adoption['rootWrapperSha256'] == scope['sourceSha256']['model_wrap.c']
assert adoption['runnerSha256'] == digest(checks / 'archive_adoption.py')
failed = validation / 'failed-v1'
failed_scope = read(failed / 'source.json')
assert failed_scope['parentRevision'] == scope['parentRevision']
assert failed_scope['beforeSourceSha256'] == scope['beforeSourceSha256']
reconstructed = dict(failed_scope['beforeSourceSha256'])
reconstructed.update({str(p.relative_to(failed / 'overrides')):digest(p)
    for p in sorted((failed / 'overrides').rglob('*')) if p.is_file()})
assert reconstructed == failed_scope['sourceSha256']
assert failed_scope['recipeSha256'] == {p.name:digest(p) for p in sorted((failed / 'recipe').iterdir())}
assert 'sg_i32x4_load' in '\n'.join(read(failed / 'logs.json').values())
for name in ('sanitize-v3', 'wasm-contract-v3'):
    target = checks / name
    receipt = read(target / 'receipt.json')
    assert receipt['passed'] and receipt['simdBits'] == 128
    assert receipt['sourceManifestSha256'] == adoption['sourceManifestSha256']
    assert receipt['sourcesSha256'] == adoption['rootSourcesSha256']
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in sorted((target / 'recipe').iterdir())}
    assert receipt['runnerSha256'] == digest(target / 'recipe/contracts.py')
    assert receipt['measuredKernelSha256'] == adoption['rootSourcesSha256']['src/scene_visibility.c']
    assert receipt['extractedHelperSha256'] == digest(target / 'recipe/arithmetic_helper.inc')
    assert len(receipt['runs']) == 5 and all(r['exitCode'] == 0 for r in receipt['runs'])
    assert '1127792 exact float conversions, 2097152 independent pixel predicates PASS' in receipt['runs'][4]['stdout']
    for run in receipt['runs']:
        assert run['fixtureSha256'] == digest(target / 'recipe' / (run['kind'] + '.c'))
for name in ('isa.json', 'product-isa.json'):
    audit = read(checks / name)
    assert audit['passed'] and not audit['avxInstructions'] and not audit['wideRegisters']
sections = read(checks / 'product-text-sections.json')
assert sections['allIdentical'] and len(sections['objects']) == 22
assert all(r['identical'] and len(set(r['textSha256'])) == 1 for r in sections['objects'])
assert sections['runnerSha256'] == digest(checks / 'compare_native_text.py')
assert sections['measuredLibrarySha256'] == read(checks / 'isa.json')['librarySha256']
assert sections['productLibrarySha256'] == read(checks / 'product-isa.json')['librarySha256']
build = read(validation / 'variants/v3/build.json')
assert '100% tests passed, 0 tests failed out of 760' in build['logs']['product-native-ctest.log']
browser = read(checks / 'browser.json')
assert browser['passed'] and browser['actualSimd128Wasm'] and browser['pairedViews'] == 108
assert browser['fullRgbaByteIdentical'] and browser['originalMeshesAndTextures']
assert browser['selectorsAndExportsRemoved'] and browser['httpSha256'] == adoption['servedBuildSha256']
assert browser['runnerSha256'] == digest(checks / 'browser_quality.cjs')
assert browser['peakHeapBytes'] < 4294967296 and len(browser['records']) == 12
reference_path = repo / 'experiments/scene-msaa-material-pixel-merge/validation/checks/browser.json'
assert browser['referenceReceiptSha256'] == digest(reference_path)
reference = read(reference_path)
assert browser['referenceWasmSha256'] == reference['httpSha256']['softgl.wasm']
for row in browser['records']:
    assert row['workers'] == 3 and row['isolated'] and row['removedExports'] and len(row['frames']) == 9
    assert all(f['maxChannelError'] == 0 and f['alphaExact'] and f['maxAlphaError'] == 0 for f in row['frames'])
    before = next(r for r in reference['records'] if (r['asset'], r['samples']) == (row['asset'], row['samples']))
    assert [(f['angle'], f['rgbaSha256']) for f in before['frames']] == [(f['angle'], f['rgbaSha256']) for f in row['frames']]
preview = read(checks / 'preview.json')
assert preview['passed'] and preview['displayedTests'] == 234 and preview['renderWorkers'] == 3
assert preview['wasmSha256'] == browser['httpSha256']['softgl.wasm'] and not preview['errors']
comparison = checks / 'comparison'
compiled = read(comparison / 'build.json')
measured = read(comparison / 'receipt.json')
assert compiled['sourceManifestSha256'] == adoption['sourceManifestSha256']
assert compiled['librarySha256'] == build['librarySha256']
assert compiled['recipeSha256'] == {p.name:digest(p) for p in sorted((comparison / 'recipe').iterdir())}
assert compiled['runnerSha256'] == digest(comparison / 'build_comparison.py')
assert measured['comparisonBuild'] == compiled
assert measured['softglManifestSha256'] == adoption['sourceManifestSha256']
assert measured['sourceSha256']['libsoftgl'] == adoption['rootSourcesSha256']
assert measured['sourceSha256']['wrapper'] == adoption['rootWrapperSha256']
assert measured['sourceSha256']['runner'] == digest(comparison / 'compare_renderers.py')
assert not measured['glimpsw4xSupported'] and measured['pairs'] == 3
assert measured['width'] == 640 and measured['height'] == 360 and measured['threads'] == 4
for name in ('softgl', 'mesa'):
    assert measured['binarySha256'][name] == compiled['binarySha256'][name]
probe = [json.loads(line) for line in compiled['probe'].splitlines()]
assert [r['verifiedSamples'] for r in probe] == [0, 4]
for summary in read(comparison / 'summary.json'):
    rows = [r for r in measured['records'] if r['asset'] == summary['asset'] and r['accepted']]
    assert len(rows) == 30 and all(r['foreignCpuCores'] <= .1 for r in rows)
    for backend, samples in measured['profiles']:
        group = [r for r in rows if (r['backend'], r['samples']) == (backend, samples)]
        assert len(group) == 6
        assert statistics.median(r['ms'] for r in group) == summary['mediansMs'][f'{backend}-{samples}']
        if backend == 'mesa':
            assert all(r['verifiedSamples'] == samples for r in group)
print('V3 adoption: exact native/browser frames, 760 tests, SIMD128, sanitizers and WASM arithmetic verified')
