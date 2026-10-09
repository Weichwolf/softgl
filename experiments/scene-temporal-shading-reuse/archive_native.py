#!/usr/bin/env python3
"""Retain measured material-cache variants and actual enabled WASM checks."""
import difflib
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
out = experiment/'native-validation'; out.mkdir(exist_ok=True)
parser = argparse.ArgumentParser()
parser.add_argument('--versions', default='v2-uv-material-cache,v4-uv-material-cache,v5-sampler-state-guard')
args = parser.parse_args()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for version in args.versions.split(','):
    root = repo/'build/scene-temporal-shading-reuse'/version
    source = root/'source'; target = out/version; target.mkdir(exist_ok=False)
    revision = (source/'baseline.txt').read_text().strip(); patch = []
    for p in [*[p for p in sorted((source/'libsoftgl').rglob('*')) if p.is_file()], source/'wasm/model_wrap.c']:
        name = str(p.relative_to(source))
        original = subprocess.run(['git','show',revision+':'+name],cwd=repo,text=True,capture_output=True)
        assert not original.returncode or p.name.startswith('scene_cache_'), name
        patch += difflib.unified_diff(original.stdout.splitlines(True), p.read_text().splitlines(True),
            fromfile='a/'+name if not original.returncode else '/dev/null', tofile='b/'+name)
    (target/'candidate.patch').write_text(''.join(patch))
    shutil.copytree(root/'recipe',target/'recipe')
    shutil.copyfile(root/'texture-mutators.txt',target/'texture-mutators.txt')
    native_built = (root/'native/CMakeCache.txt').exists()
    if native_built: shutil.copyfile(root/'native/CMakeCache.txt',target/'native-CMakeCache.txt')
    flags = target/'flags'; flags.mkdir()
    for p in root.glob('native/**/flags.make'):
        shutil.copyfile(p,flags/(p.parent.name.removesuffix('.dir')+'.txt'))
    manifest = dict(baseline=revision, productionAdopted=False, nativeBenchmarkBuilt=native_built,
        sourcesSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
        archiveSha256={str(p.relative_to(root)):digest(p) for p in sorted((root/'native').rglob('*.a'))})
    (target/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    isa = dict(passed=True,wideRegisters=[],avxInstructions=[],xmmReferences=0,binaries={})
    for p in [*sorted((root/'native').rglob('*.a')),*sorted((root/'native').glob('resident_*')),*sorted((root/'native').glob('quality_*'))]:
        text = subprocess.check_output(['objdump','-d','--no-show-raw-insn',str(p)],text=True)
        instructions = re.findall(r'^\s*[0-9a-f]+:\s+([a-z][a-z0-9]*)\s*([^\n]*)',text,re.M)
        avx = [m for m,_ in instructions if m.startswith('v') and m not in ('verr','verw')]
        wide = sorted(set(re.findall(r'\b(?:ymm|zmm)\d+\b',text))); xmm = len(re.findall(r'\bxmm\d+\b',text))
        isa['avxInstructions'] += avx; isa['wideRegisters'] += wide; isa['xmmReferences'] += xmm
        isa['binaries'][str(p.relative_to(root))] = dict(sha256=digest(p),avxInstructions=avx,wideRegisters=wide,xmmReferences=xmm)
    if native_built:
        assert not isa['avxInstructions'] and not isa['wideRegisters'] and isa['xmmReferences'] > 0
        (target/'isa.json').write_text(json.dumps(isa,indent=2)+'\n')
for run in sorted((repo/'tmp/scene-temporal-shading-reuse').glob('v[245]-*')):
    target = out/'runs'/run.name
    if target.exists(): continue
    target.mkdir(parents=True,exist_ok=False)
    for p in run.iterdir():
        if p.is_file() and p.suffix in ('.json','.txt','.c','.inc','.py'): shutil.copyfile(p,target/p.name)
for p in Path('/tmp').glob('softgl-material-history-v[1-5]-*.txt'): shutil.copyfile(p,out/p.name)
sources = out/'sources'; sources.mkdir(exist_ok=True)
for name in ('scene-depth-order-cached-keys/check_quality.py', 'scene-depth-order-cached-keys/resident_diagnostic.py',
             'scene-depth-order-cached-keys/quality_frames.c', 'scene-material-visibility/resident_trial.c'):
    p = repo/'experiments'/name; shutil.copyfile(p,sources/p.name)
print('Measured sources, original receipts, SIMD128 scans and enabled fixture checks retained.')
