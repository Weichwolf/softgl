#!/usr/bin/env python3
"""Verify frozen candidate reconstruction and retained native evidence."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile
import tempfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index', 'HEAD'))
args = parser.parse_args()
base = 'experiments/scene-codec-luma-chroma/native-validation/'


def content(name):
    if not args.git_tree: return (repo/name).read_bytes()
    return subprocess.check_output(['git', 'show', (':' if args.git_tree == 'index' else 'HEAD:')+name], cwd=repo)


manifest = json.loads(content(base+'artifacts.json'))
for name, expected in manifest.items():
    assert hashlib.sha256(content(name)).hexdigest() == expected, name
for version in ('v1-lighting', 'v2-lighting-identity', 'v3-full-shading', 'v4-specialized'):
    sources = json.loads(content(base+version+'/manifest.json'))
    archive = subprocess.check_output(['git', 'archive', sources['baseline'], 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
    with tempfile.TemporaryDirectory(prefix='softgl-codec-verify-') as directory:
        root = Path(directory)
        with tarfile.open(fileobj=io.BytesIO(archive)) as files:
            files.extractall(root, filter='data')
        # Preserve the tested bytes, including frozen EOF/context whitespace.
        subprocess.run(['git', 'apply', '--whitespace=nowarn', '-'], cwd=root,
                       input=content(base+version+'/candidate.patch'), check=True)
        (root/'model_wrap.c').write_bytes((root/'wasm/model_wrap.c').read_bytes())
        (root/'baseline.txt').write_text(sources['baseline']+'\n')
        for name, expected in sources['sourcesSha256'].items():
            assert hashlib.sha256((root/name).read_bytes()).hexdigest() == expected, (version, name)
runs = base+'runs/'
for name, count in [('v4-specialized-quality-coarse', 108), ('v4-specialized-quality-control', 108),
                    ('v4-specialized-quality-surface', 54), ('v1-lighting-quality-strict', 108),
                    ('v2-lighting-quality-surface', 108), ('v2-lighting-quality-control', 108),
                    ('v2-lighting-quality-identity', 108), ('v3-full-shading-quality', 108)]:
    receipt = json.loads(content(runs+name+'/receipt.json'))
    assert len(receipt['records']) == count
    for record in receipt['records']:
        assert record['resolvedDepth']['byteIdentical'] and record['stencilAndSampleStencilByteIdentical']
        if record['samples']: assert record['sampleDepth']['byteIdentical']
        if 'control' in name: assert record['rgbaByteIdentical']
    if 'identity' in name: assert sum(r['rgbaByteIdentical'] for r in receipt['records']) == 72
timing = json.loads(content(runs+'v4-specialized-repeat-coarse/receipt.json'))
accepted = [r for r in timing['records'] if r.get('accepted')]
assert len(accepted) == 144 and all(r['threads'] == 4 and r['foreignCpuCores'] <= .1 for r in accepted)
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    for samples in (0, 2, 4):
        for pair in range(3):
            block = [r for r in accepted if (r['asset'], r['samples'], r['pair']) == (asset, samples, pair)]
            assert len(block) == 4 and len({r['attempt'] for r in block}) == 1
            assert sorted(r['variant'] for r in block) == ['baseline', 'baseline', 'candidate', 'candidate']
for suffix in ('sanitize', 'wasm'):
    name = 'v4-specialized-sanitize-clang19' if suffix == 'sanitize' else 'v4-specialized-wasm'
    receipt = json.loads(content(runs+name+'/receipt.json'))
    assert receipt['passed'] and receipt['checks']['pairedFrames'] == 540
    assert receipt['actualSimd128Wasm'] == (suffix == 'wasm')
    assert receipt['runnerSha256'] == hashlib.sha256(content(runs+name+'/contract.py')).hexdigest()
    assert receipt['fixtureSha256'] == hashlib.sha256(content(runs+name+'/codec_contract.c')).hexdigest()
    assert receipt['generatedPositionFixtureSha256'] == hashlib.sha256(content(runs+name+'/codec_positions.inc')).hexdigest()
for version in ('v1-lighting', 'v2-lighting-identity', 'v3-full-shading', 'v4-specialized'):
    isa = json.loads(content(base+version+'/isa.json'))
    assert isa['passed'] and not isa['wideRegisters'] and not isa['avxInstructions'] and isa['xmmReferences'] > 0
print('Four frozen candidates reconstruct exactly; 810 model pairs, 144 selected AB/BA runs, ASan/UBSan and SIMD128 WASM verified;', args.git_tree or 'worktree')
