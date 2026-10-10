#!/usr/bin/env python3
"""Archive frozen equal-state controls, timings and the separate adoption gates."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import statistics
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
temporary = repo/'tmp/scene-opaque-alpha-sharing'
root = repo/'build/scene-opaque-alpha-sharing/v2-sharing'
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
def write(path,value):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(value,indent=2)+'\n')

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--archive',action='store_true')
args = parser.parse_args()
if args.archive:
    command = ['python3',str(repo/'tools/scene_trial_archive.py'),'archive',str(experiment)]
    for name in ('control','sharing'):
        command += ['--variant',name+'='+str(root.parent/('v2-'+name))]
    for name in ('screen-v2','product-v2','sharing-v2'):
        command += ['--timing',name+'='+str(temporary/name)]
    subprocess.run(command,check=True)
    checks = validation/'checks'; checks.mkdir()
    for name in ('native-gates-v2','native-gates-v3','native-gates-v4','sanitize-v2',
                 'wasm-contracts-v2','legacy-rounding','mesa-boundary-diagnostic',
                 'browser-control-build-v2','browser-control-build-v3'):
        source,target = temporary/name,checks/name
        target.mkdir()
        if (source/'recipe').exists(): shutil.copytree(source/'recipe',target/'recipe')
        if (source/'receipt.json').exists(): shutil.copyfile(source/'receipt.json',target/'receipt.json')
        write(target/'logs.json',{p.name:p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix in ('.txt','.log')})
    for directory,name in [('quality-v2','native-quality.json'),('browser-control-v3','browser-control.json'),
                           ('browser-v2','browser.json'),('preview-v2','preview.json')]:
        shutil.copyfile(temporary/directory/'receipt.json',checks/name)
    for p in (experiment/'check_quality.py',experiment/'browser_quality.cjs',
              experiment/'build_browser_control.py',Path(__file__),
              repo/'tools/wasm_preview_check.cjs',
              repo/'experiments/scene-msaa-rebased-edges/compare_native_text.py'):
        shutil.copyfile(p,checks/p.name)
    for name in ('isa.json','product-isa.json','product-text-sections.json'):
        shutil.copyfile(root/name,checks/name)
    logs = ['product-native-ctest.log','product-native-new-tests.log','product-native-regression-tests.log']
    passed = {}
    for log in logs:
        for identifier,name in re.findall(r'^\s*\d+/\d+\s+Test\s+#(\d+):\s+(\S+)\s+\.+\s+Passed',
                                         (root/log).read_text(),re.MULTILINE):
            passed[int(identifier)] = name
    assert set(passed) == set(range(1,765))
    write(checks/'native-suite.json',dict(passed=True,tests=764,
        verification='Union of passed results: initial 760 existing tests; new analytic-alpha and final Mesa regression',
        logs={name:digest(root/name) for name in logs},passedNames=passed))
    failed = validation/'failed-generator-v1'; failed.mkdir()
    original = root.parent/'v1-control'
    shutil.copytree(original/'recipe',failed/'recipe')
    parent = read(root/'source.json')['beforeSourceSha256']
    partial = {str(p.relative_to(original/'source')):digest(p)
        for p in sorted((original/'source').rglob('*')) if p.is_file()}
    for name,sha in partial.items():
        if parent.get(name) != sha:
            target = failed/'overrides'/name; target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(original/'source'/name,target)
    write(failed/'receipt.json',dict(compiled=False,measured=False,parentRevision=read(root/'source.json')['parentRevision'],
        failure='Generator searched static void scene_small_msaa_capture instead of the actual inline signature; aborted before compilation',
        partialSourceSha256=partial,recipeSha256={p.name:digest(p) for p in sorted((failed/'recipe').iterdir())}))
    comparison = checks/'comparison'; comparison.mkdir()
    for name in ('receipt.json','summary.json'):
        shutil.copyfile(temporary/'renderer-comparison-v2'/name,comparison/name)
    compiler = root.parent/'comparison-v2'
    shutil.copyfile(compiler/'receipt.json',comparison/'build.json')
    shutil.copytree(compiler/'recipe',comparison/'recipe')
    for name in ('build_comparison.py','compare_renderers.py'):
        shutil.copyfile(repo/'experiments/scene-msaa-rebased-edges'/name,comparison/name)
    write(checks/'adoption.json',dict(adoptedVariant='sharing',simdBits=128,opaqueOutputAlpha=1,
        originalMeshesAndTextures=True,additionalApproximation='More eligible opaque materials share RGB within one pixel in 4x MSAA',
        sourceManifestSha256=digest(root/'source.json'),
        rootSourcesSha256={str(p.relative_to(repo/'libsoftgl')):digest(p)
            for p in sorted((repo/'libsoftgl').rglob('*')) if p.is_file()},
        rootWrapperSha256=digest(repo/'wasm/model_wrap.c'),
        servedBuildSha256={name:digest(repo/'build/wasm'/name)
            for name in ('index.html','main.js','softgl.js','softgl.wasm')},
        runnerSha256=digest(Path(__file__))))
    subprocess.run(['python3',str(repo/'tools/scene_trial_archive.py'),'refresh',str(experiment)],check=True)

subprocess.run(['python3',str(validation/'archive_recipe.py'),'verify',str(experiment)],check=True)
checks = validation/'checks'
scope = read(validation/'variants/sharing/source.json')
control = read(validation/'variants/control/source.json')
core = {n.removeprefix('libsoftgl/'):v for n,v in scope['sourceSha256'].items() if n.startswith('libsoftgl/')}
assert core == {n.removeprefix('libsoftgl/'):v for n,v in control['sourceSha256'].items() if n.startswith('libsoftgl/')}
adoption = read(checks/'adoption.json')
assert adoption['sourceManifestSha256'] == digest(validation/'variants/sharing/source.json')
assert adoption['rootSourcesSha256'] == core and adoption['rootWrapperSha256'] == scope['sourceSha256']['model_wrap.c']
assert adoption['simdBits'] == 128 and adoption['opaqueOutputAlpha'] == 1
assert adoption['runnerSha256'] == digest(checks/'archive_adoption.py')
gates = read(checks/'native-gates-v4/receipt.json')
assert gates['passed'] and len(gates['runs']) == 4 and all(r['exitCode'] == 0 for r in gates['runs'])
assert gates['sources']['control'] == control and gates['sources']['candidate'] == scope
assert gates['recipeSha256'] == {p.name:digest(p) for p in sorted((checks/'native-gates-v4/recipe').iterdir())}
for name in ('sanitize-v2','wasm-contracts-v2'):
    target = checks/name; proof = read(target/'receipt.json')
    assert proof['passed'] and proof['simdBits'] == 128 and proof['sourcesSha256'] == core
    assert proof['sourceManifestSha256'] == adoption['sourceManifestSha256']
    assert len(proof['runs']) == 7 and all(r['exitCode'] == 0 for r in proof['runs'])
    assert proof['recipeSha256'] == {p.name:digest(p) for p in sorted((target/'recipe').iterdir())}
    assert proof['runnerSha256'] == digest(target/'recipe/contracts.py')
quality = read(checks/'native-quality.json')
assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 108
assert quality['sourceManifest'] == scope and quality['baselineSourceManifest'] == control
assert quality['binarySha256'] == dict(baseline=gates['qualityBinarySha256']['control'],
    candidate=gates['qualityBinarySha256']['candidate'])
assert quality['runnerSha256'] == digest(checks/'check_quality.py')
assert quality['gatesReceiptSha256'] == digest(checks/'native-gates-v4/receipt.json')
for row in quality['records']:
    assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical'] and all(row['alphaBuffersByteIdentical'].values())
    assert all(row['reference'][n] == row['candidate'][n] for n in ('depth','stencil','sampleDepth','sampleStencil'))
    assert row['meanAbsoluteChannelError'] < 3 and row['pixelFractionOver8'] < .12
    if row['samples'] != 4: assert row['rgbaByteIdentical']
for name in ('isa.json','product-isa.json'):
    audit = read(checks/name); assert audit['passed'] and not audit['wideRegisters'] and not audit['avxInstructions']
sections = read(checks/'product-text-sections.json')
assert sections['allIdentical'] and len(sections['objects']) == 22
suite = read(checks/'native-suite.json')
assert suite['passed'] and suite['tests'] == len(suite['passedNames']) == 764
logs = read(validation/'variants/sharing/build.json')['logs']
for name,sha in suite['logs'].items(): assert hashlib.sha256(logs[name].encode()).hexdigest() == sha
for name in ('legacy-rounding','mesa-boundary-diagnostic'):
    target = checks/name; proof = read(target/'receipt.json')
    assert proof['exitCode'] == 0 if 'exitCode' in proof else proof['passed']
    assert proof['recipeSha256'] == {p.name:digest(p) for p in sorted((target/'recipe').iterdir())}
reference,browser = read(checks/'browser-control.json'),read(checks/'browser.json')
assert reference['passed'] and reference['captureOnly'] and reference['opaqueOutputAlpha'] == 1
assert browser['passed'] and browser['actualSimd128Wasm'] and browser['pairedViews'] == 108
assert browser['alphaByteIdentical'] and browser['offAnd2xRgbaExact'] and browser['originalMeshesAndTextures']
assert browser['runnerSha256'] == digest(checks/'browser_quality.cjs')
assert browser['referenceReceiptSha256'] == digest(checks/'browser-control.json')
assert browser['httpSha256'] == adoption['servedBuildSha256'] and browser['peakHeapBytes'] < 4294967296
for row in browser['records']:
    assert row['workers'] == 3 and row['removedExports'] and len(row['frames']) == 9
    for frame in row['frames']:
        assert frame['alphaExact'] and frame['meanAbsoluteChannelError'] < 3 and frame['pixelFractionOver8'] < .12
        if row['samples'] != 4: assert frame['maxChannelError'] == 0
preview = read(checks/'preview.json')
assert preview['passed'] and preview['displayedTests'] == 235 and preview['renderWorkers'] == 3
assert preview['wasmSha256'] == browser['httpSha256']['softgl.wasm']
comparison = checks/'comparison'
compiled, measured = read(comparison/'build.json'),read(comparison/'receipt.json')
assert compiled['sourceManifestSha256'] == adoption['sourceManifestSha256']
assert compiled['librarySha256'] == read(validation/'variants/sharing/build.json')['librarySha256']
assert compiled['recipeSha256'] == {p.name:digest(p) for p in sorted((comparison/'recipe').iterdir())}
assert measured['comparisonBuild'] == compiled and measured['softglManifestSha256'] == adoption['sourceManifestSha256']
assert measured['sourceSha256']['libsoftgl'] == core and measured['sourceSha256']['wrapper'] == adoption['rootWrapperSha256']
assert measured['binarySha256']['softgl'] == compiled['binarySha256']['softgl']
assert measured['binarySha256']['mesa'] == compiled['binarySha256']['mesa']
assert measured['sourceSha256']['runner'] == digest(comparison/'compare_renderers.py')
assert not measured['glimpsw4xSupported'] and (measured['width'],measured['height'],measured['threads']) == (640,360,4)
assert measured['pairs'] == 3 and measured['warmup'] == 12 and measured['frames'] == 30
probes = [json.loads(line) for line in compiled['probe'].splitlines()]
assert any(p['samples'] == p['verifiedSamples'] == p['colorSamples'] == p['depthSamples'] == 4 and p['sampleBuffers'] == 1 for p in probes)
summary = read(comparison/'summary.json'); assert len(summary) == 4
for scene in summary:
    accepted = [r for r in measured['records'] if r['asset'] == scene['asset'] and r['accepted']]
    assert len(accepted) == 30 and all(r['foreignCpuCores'] <= .1 and r['threads'] == 4 for r in accepted)
    for row in accepted:
        if row['backend'] == 'mesa': assert row['verifiedSamples'] == row['samples']
    for key,ms in scene['mediansMs'].items():
        backend,samples = key.rsplit('-',1)
        values = [r['ms'] for r in accepted if (r['backend'],r['samples']) == (backend,int(samples))]
        assert len(values) == 6 and statistics.median(values) == ms and values == scene['rawMs'][key]
print('Opaque sharing: reconstructed controls, native source/code/ISA, 764 tests, seven sanitizer/WASM contracts, 108 native/browser quality pairs and live-preview identity verified')
