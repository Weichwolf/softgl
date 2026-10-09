#!/usr/bin/env python3
"""Retain actual frozen plane trials without binaries or large frame dumps."""
import difflib
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
out = experiment/'native-validation'
out.mkdir(exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
versions = ('v1', 'v2-packed', 'v3-amortized')
for version in versions:
    root = repo/'build/scene-shading-planes'/version
    source = root/'source'; target = out/version; target.mkdir()
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    for p in sorted((source/'libsoftgl').rglob('*')):
        if not p.is_file(): continue
        name = str(p.relative_to(source))
        before = subprocess.run(['git', 'show', revision+':'+name], cwd=repo, text=True, capture_output=True)
        assert not before.returncode or p.name in ('attribute_planes.h', 'plane_packet.h')
        patch.extend(difflib.unified_diff(before.stdout.splitlines(True), p.read_text().splitlines(True),
            fromfile='a/'+name if not before.returncode else '/dev/null', tofile='b/'+name))
    (target/'candidate.patch').write_text(''.join(patch))
    shutil.copytree(root/'recipe', target/'recipe')
    if (root/'variant.json').exists(): shutil.copyfile(root/'variant.json', target/'variant.json')
    shutil.copyfile(root/'native/CMakeCache.txt', target/'native-CMakeCache.txt')
    flags = target/'flags'; flags.mkdir()
    for p in sorted(root.glob('native/**/flags.make')):
        shutil.copyfile(p, flags/(p.parent.name.removesuffix('.dir')+'.txt'))
    isa = dict(passed=True, binaries={})
    binaries = [*sorted((root/'native').rglob('*.a')),
        *sorted((root/'native').glob('resident_*')), *sorted((root/'native').glob('quality_*')),
        root/'native/planes_contract']
    for p in binaries:
        text = subprocess.check_output(['objdump', '-d', '--no-show-raw-insn', str(p)], text=True)
        instructions = re.findall(r'^\s*[0-9a-f]+:\s+([a-z][a-z0-9]*)\s*([^\n]*)', text, re.M)
        avx = [m for m, _ in instructions if m.startswith('v') and m not in ('verr', 'verw')]
        wide = sorted(set(re.findall(r'\b(?:ymm|zmm)\d+\b', text)))
        xmm = len(re.findall(r'\bxmm\d+\b', text))
        assert not avx and not wide and xmm
        isa['binaries'][str(p.relative_to(root))] = dict(sha256=digest(p),
            avxInstructions=avx, wideRegisters=wide, xmmReferences=xmm)
    (target/'isa.json').write_text(json.dumps(isa, indent=2)+'\n')
    result = subprocess.run([str(root/'native/planes_contract')], capture_output=True, text=True, check=True)
    (target/'contract.json').write_text(result.stdout)
    (target/'contract-stderr.txt').write_text(result.stderr)
    manifest = dict(baseline=revision, productionAdopted=False,
        sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
        baselineSourceSha256={str(p.relative_to(root/'baseline-source')):digest(p)
            for p in sorted((root/'baseline-source').rglob('*')) if p.is_file()})
    (target/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
for run in sorted((repo/'tmp/scene-shading-planes').iterdir()):
    target = out/'runs'/run.name; target.mkdir(parents=True)
    for p in sorted(run.iterdir()):
        if p.is_file() and p.suffix in ('.json', '.txt', '.c', '.py'):
            shutil.copyfile(p, target/p.name)
for p in sorted(Path('/tmp').glob('softgl-planes-*.txt')):
    if p.name != 'softgl-planes-archive.txt':
        shutil.copyfile(p, out/p.name)
drivers = out/'drivers'; drivers.mkdir()
for name in ('scene-depth-order-cached-keys/check_quality.py',
    'scene-depth-order-cached-keys/resident_diagnostic.py',
    'scene-depth-order-cached-keys/quality_frames.c', 'scene-material-visibility/resident_trial.c'):
    p = repo/'experiments'/name
    shutil.copyfile(p, drivers/p.name)
index = {str(p.relative_to(out)):digest(p) for p in sorted(out.rglob('*')) if p.is_file()}
(out/'artifacts.json').write_text(json.dumps(index, indent=2)+'\n')
print('Frozen sources, original measurements, quality receipts, contracts and SIMD128 scans retained.')
