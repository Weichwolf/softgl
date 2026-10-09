#!/usr/bin/env python3
"""Retain actual compiled LOD sources and measurements, excluding binary assets."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--versions', default='v2-nonempty,v4-support-positions,v5-cost-packing')
args = parser.parse_args()
out = experiment/'native-validation'
out.mkdir(exist_ok=True)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def save(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2)+'\n')


for version in args.versions.split(','):
    root = repo/'build/scene-screen-error-lod'/version
    target = out/version
    target.mkdir(exist_ok=False)
    for name in ('recipe',):
        shutil.copytree(root/name, target/name)
    for name in ('resident.c', 'quality.c', 'lod-receipt.json', 'lod-build.txt'):
        shutil.copyfile(root/name, target/name)
    source = target/'source'; source.mkdir()
    for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
        if (root/'source'/name).exists():
            shutil.copyfile(root/'source'/name, source/name)
    for name in ('bistro', 'sponza', 'bmw', 't80'):
        for suffix in ('lod-stdout.txt', 'lod-stderr.txt'):
            shutil.copyfile(root/(name+'-'+suffix), target/(name+'-'+suffix))
    flags = target/'flags'; flags.mkdir()
    for path in root.glob('native/**/flags.make'):
        name = path.parent.name.removesuffix('.dir')
        shutil.copyfile(path, flags/(name+'.txt'))
    shutil.copyfile(root/'native/CMakeCache.txt', target/'native-CMakeCache.txt')
    libraries = dict(baseline=root/'native/baseline-library/libbaseline_softgl.a',
                     candidate=root/'native/candidate-library/libsoftgl.a')
    binaries = dict(builder=root/'build_lod', **libraries)
    for variant in ('baseline', 'candidate', 'coarse', 'fine', 'control'):
        for kind in ('resident', 'quality'):
            binaries[kind+'_'+variant] = root/'native'/(kind+'_'+variant)
    isa = dict(passed=True, avxInstructions=[], wideRegisters=[], xmmReferences=0, binaries={})
    for name, path in binaries.items():
        disassembly = subprocess.check_output(['objdump', '-d', '--no-show-raw-insn', str(path)], text=True)
        instructions = re.findall(r'^\s*[0-9a-f]+:\s+([a-z][a-z0-9]*)\s*([^\n]*)', disassembly, re.M)
        avx = [mnemonic for mnemonic, _ in instructions if mnemonic.startswith('v') and mnemonic not in ('verr', 'verw')]
        wide = sorted(set(re.findall(r'\b(?:ymm|zmm)\d+\b', disassembly)))
        xmm = len(re.findall(r'\bxmm\d+\b', disassembly))
        isa['avxInstructions'] += avx; isa['wideRegisters'] += wide; isa['xmmReferences'] += xmm
        isa['binaries'][name] = dict(sha256=digest(path), avxInstructions=avx, wideRegisters=wide, xmmReferences=xmm)
    isa['passed'] = not isa['avxInstructions'] and not isa['wideRegisters'] and isa['xmmReferences'] > 0
    assert isa['passed'], isa
    save(target/'isa.json', isa)
    build = json.loads((root/'lod-receipt.json').read_text())
    provenance = dict(baseline=build['baseline'],
        note='Original runner driverSha256 hashes its shared template. The actual compiled drivers have the cold LOD cache loader below; original receipts are preserved unchanged.',
        compiledDriverSha256={name:digest(root/(name+'.c')) for name in ('resident', 'quality')},
        candidateIncludesSha256={p.name:digest(p) for p in (root/'source').glob('*.inc')},
        candidateWrapperSha256=digest(root/'source/model_wrap.c'),
        baselineWrapperSha256=digest(root/'baseline-source/model_wrap.c'),
        candidateLibrarySourceSha256={str(p.relative_to(root/'source/libsoftgl')):digest(p) for p in sorted((root/'source/libsoftgl').rglob('*')) if p.is_file()},
        baselineLibrarySha256=digest(libraries['baseline']), candidateLibrarySha256=digest(libraries['candidate']),
        rendererImplemented=True, temporalMaterialReuse=False, productionAdopted=False, wasmValidated=False)
    assert provenance['baselineLibrarySha256'] == provenance['candidateLibrarySha256']
    save(target/'compiled-source-provenance.json', provenance)
    for run in sorted((repo/'tmp/scene-screen-error-lod').glob(version.split('-')[0]+'-*')):
        if not run.is_dir(): continue
        destination = out/'runs'/run.name; destination.mkdir(parents=True, exist_ok=False)
        for path in run.iterdir():
            if path.is_file() and path.suffix in ('.json', '.txt'):
                shutil.copyfile(path, destination/path.name)
    for log in Path('/tmp').glob('softgl-screen-lod-'+version.split('-')[0]+'-*.txt'):
        shutil.copyfile(log, out/log.name)
sources = out/'sources'; sources.mkdir(exist_ok=True)
for name in ('scene-depth-order-cached-keys/check_quality.py',
             'scene-depth-order-cached-keys/resident_diagnostic.py',
             'scene-depth-order-cached-keys/quality_frames.c',
             'scene-material-visibility/resident_trial.c'):
    path = repo/'experiments'/name; shutil.copyfile(path, sources/path.name)
print('Archived frozen recipes, actual compiled drivers, SIMD128 scans and unchanged receipts.')

for version in ('v1-permissive', 'v3-supports'):
    root = repo/'build/scene-screen-error-lod'/version
    target = out/'build-only'/version
    target.mkdir(parents=True, exist_ok=False)
    shutil.copytree(root/'recipe', target/'recipe')
    if (root/'lod-receipt.json').exists(): shutil.copyfile(root/'lod-receipt.json',target/'lod-receipt.json')
    for log in root.glob('*-lod-stderr.txt'): shutil.copyfile(log,target/log.name)
    save(target/'status.json',dict(nativeLibraryBuilt=True, timed=False, modelImagesRendered=False,
        preparationSucceeded=version == 'v3-supports', baseline=(root/'source/baseline.txt').read_text().strip()))
    prefix = 'softgl-screen-lod-v3-' if version == 'v3-supports' else 'softgl-screen-lod-'
    for name in ('prepare', 'configure', 'build'):
        log = Path('/tmp')/(prefix+name+'.txt')
        if log.exists(): shutil.copyfile(log,target/log.name)
for name in ('cache-check.json','v4-cache-check.json','packing-check.json','packing-frame-check.json'):
    shutil.copyfile(repo/'tmp/scene-screen-error-lod'/name,out/name)
shutil.copyfile(repo/'build/scene-screen-error-lod/v2-nonempty/check-cache-v2.py',out/'check-cache-v2.py')
for version in ('sanitizer-v1','wasm-contract-v1','browser-v1'):
    root = repo/'tmp/scene-screen-error-lod'/version
    target = out/'gates'/version; target.mkdir(parents=True,exist_ok=False)
    for file in root.iterdir():
        if file.suffix in ('.json','.txt','.c'): shutil.copyfile(file,target/file.name)
for name in ('production-assets','browser-prepare','browser-configure','browser-build','browser-gate',
             'sanitizer','wasm-contract','production-configure','production-build'):
    log = Path('/tmp')/('softgl-screen-lod-'+name+'.txt')
    if log.exists(): shutil.copyfile(log,out/log.name)
shutil.copyfile(repo/'build/tools/model-lod/receipt.json',out/'production-assets.json')
shutil.copyfile(repo/'build/scene-screen-error-lod/browser-v1/prepare-receipt.json',out/'browser-prepare.json')
