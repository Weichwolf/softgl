#!/usr/bin/env python3
"""Archive actual compiled sources and receipts, excluding binaries and frames."""
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
for version in ('v1', 'v2-fused', 'v3-fixed-mask'):
    root = repo/'build/scene-coarse-representative-stream'/version
    source = root/'source'; target = out/version; target.mkdir()
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    for p in sorted((source/'libsoftgl').rglob('*')):
        if not p.is_file(): continue
        name = str(p.relative_to(source))
        old = subprocess.run(['git', 'show', revision+':'+name], cwd=repo,
            text=True, capture_output=True)
        assert not old.returncode or p.suffix in ('.h', '.inc')
        patch.extend(difflib.unified_diff(old.stdout.splitlines(True), p.read_text().splitlines(True),
            fromfile='a/'+name if not old.returncode else '/dev/null', tofile='b/'+name))
    (target/'candidate.patch').write_text(''.join(patch))
    for directory in ('recipe', 'fixtures'):
        if (root/directory).exists(): shutil.copytree(root/directory, target/directory)
    includes = target/'source'; includes.mkdir()
    for p in sorted(source.rglob('*')):
        if p.is_file() and not str(p.relative_to(source)).startswith('libsoftgl/'):
            destination = includes/p.relative_to(source)
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(p, destination)
    for name in ('variant.json', 'upstream-original.json'):
        if (root/name).exists(): shutil.copyfile(root/name, target/name)
    if (root/'upstream-recipe').exists(): shutil.copytree(root/'upstream-recipe', target/'upstream-recipe')
    shutil.copyfile(root/'native/CMakeCache.txt', target/'native-CMakeCache.txt')
    flags = target/'flags'; flags.mkdir()
    for p in sorted(root.glob('native/**/flags.make')):
        shutil.copyfile(p, flags/(p.parent.name.removesuffix('.dir')+'.txt'))
    isa = dict(passed=True, binaries={})
    binaries = [*sorted((root/'native').rglob('*.a')),
        *sorted((root/'native').glob('resident_*')), *sorted((root/'native').glob('quality_*'))]
    if (root/'native/coarse_contract').exists(): binaries.append(root/'native/coarse_contract')
    for p in binaries:
        assembly = subprocess.check_output(['objdump', '-d', '--no-show-raw-insn', str(p)], text=True)
        instructions = re.findall(r'^\s*[0-9a-f]+:\s+([a-z][a-z0-9]*)\s*([^\n]*)', assembly, re.M)
        avx = [m for m, _ in instructions if m.startswith('v') and m not in ('verr', 'verw')]
        wide = sorted(set(re.findall(r'\b(?:ymm|zmm)\d+\b', assembly)))
        xmm = len(re.findall(r'\bxmm\d+\b', assembly))
        assert not avx and not wide and xmm
        isa['binaries'][str(p.relative_to(root))] = dict(sha256=digest(p),
            avxInstructions=avx, wideRegisters=wide, xmmReferences=xmm)
    (target/'isa.json').write_text(json.dumps(isa, indent=2)+'\n')
    if (root/'native/coarse_contract').exists():
        result = subprocess.run([str(root/'native/coarse_contract')], capture_output=True, text=True, check=True)
        (target/'contract.json').write_text(result.stdout)
        (target/'contract-stderr.txt').write_text(result.stderr)
    manifest = dict(baseline=revision, sourceSha256={str(p.relative_to(source)):digest(p)
        for p in sorted(source.rglob('*')) if p.is_file()}, baselineSourceSha256={
        str(p.relative_to(root/'baseline-source')):digest(p)
        for p in sorted((root/'baseline-source').rglob('*')) if p.is_file()})
    (target/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
for run in sorted((repo/'tmp/scene-coarse-representative-stream').iterdir()):
    if not run.is_dir(): continue
    target = out/'runs'/run.name; target.mkdir(parents=True)
    for p in sorted(run.iterdir()):
        if p.is_file() and p.suffix in ('.json', '.txt', '.c', '.py', '.inc', '.png'):
            shutil.copyfile(p, target/p.name)
for p in sorted(Path('/tmp').glob('softgl-coarse-stream-*.txt')):
    if p.name != 'softgl-coarse-stream-archive.txt': shutil.copyfile(p, out/p.name)
production = out/'runs/v3-production'
for name in ('main.js', 'index.html', 'CMakeLists.txt'):
    shutil.copyfile(repo/'wasm'/name, production/('viewer-'+name))
drivers = out/'drivers'; drivers.mkdir()
for name in ('scene-coarse-direct-scatter/browser_gate.cjs',
    'scene-coarse-direct-scatter/browser_quality.py', 'scene-coarse-direct-scatter/live_smoke.cjs',
    'scene-depth-order-cached-keys/check_quality.py',
    'scene-depth-order-cached-keys/resident_diagnostic.py',
    'scene-depth-order-cached-keys/quality_frames.c', 'scene-material-visibility/resident_trial.c'):
    shutil.copyfile(repo/'experiments'/name, drivers/Path(name).name)
index = {str(p.relative_to(out)):digest(p) for p in sorted(out.rglob('*')) if p.is_file()}
(out/'artifacts.json').write_text(json.dumps(index, indent=2)+'\n')
print('Actual frozen source patches, recipes, measurements and SIMD128 scans retained.')
