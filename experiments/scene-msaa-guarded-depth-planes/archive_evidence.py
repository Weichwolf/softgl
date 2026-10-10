#!/usr/bin/env python3
"""Retain and verify supplementary native evidence, including failed prototypes."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
validation = experiment/'validation'
checks = validation/'checks'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2)+'\n')


def save_directory(source, target):
    target.mkdir(parents=True, exist_ok=False)
    shutil.copyfile(source/'receipt.json', target/'receipt.json')
    if (source/'recipe').exists():
        shutil.copytree(source/'recipe', target/'recipe')
    write(target/'logs.json', {p.name:dict(text=p.read_text(), sha256=digest(p))
        for p in sorted(source.iterdir()) if p.suffix in ('.log', '.txt')})


parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--archive', action='store_true')
args = parser.parse_args()
if args.archive:
    checks.mkdir(exist_ok=False)
    temporary = repo/'tmp/scene-msaa-guarded-depth-planes'
    for name in ('contracts-v2', 'contracts-v3', 'contracts-v4', 'edge-numeric-v4',
                 'profile-v3-control', 'profile-v3-guarded', 'profile-sponza-control',
                 'profile-sponza-direct', 'census-sponza', 'quality-v5-direct',
                 'quality-v6-direct'):
        save_directory(temporary/name, checks/name)
    shutil.copyfile(experiment/'check_direct.py', checks/'check_direct.py')
    shutil.copyfile(repo/'experiments/scene-msaa-rgb-alpha-split/profile.py', checks/'profile.py')
    failed = repo/'build/scene-msaa-guarded-depth-planes/v1-guarded'
    target = checks/'compile-failure-v1'
    target.mkdir()
    scope = read(failed/'source.json')
    shutil.copyfile(failed/'source.json', target/'source.json')
    shutil.copytree(failed/'recipe', target/'recipe')
    for name, expected in scope['sourceSha256'].items():
        assert digest(failed/'source'/name) == expected
        if scope['beforeSourceSha256'].get(name) != expected:
            output = target/'overrides'/name
            output.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(failed/'source'/name, output)
    write(target/'build.json', dict(compileSucceeded=False,
        sourceManifestSha256=digest(failed/'source.json'),
        logs={p.name:p.read_text() for p in sorted(failed.glob('*.log'))}))
    subprocess.run(['python3', str(validation/'archive_recipe.py'), 'refresh',
                    str(experiment)], check=True)

subprocess.run(['python3', str(validation/'archive_recipe.py'), 'verify',
                str(experiment)], check=True)
variants = validation/'variants'
builds = {p.name:read(p/'build.json') for p in variants.iterdir()}
control = read(variants/'control/source.json')
assert control['sourceSha256'] == control['beforeSourceSha256']
for name, variant, passed in (('contracts-v2', 'failed_v2', False),
                             ('contracts-v3', 'guarded', True),
                             ('contracts-v4', 'edge_plane', True)):
    path = checks/name
    receipt = read(path/'receipt.json')
    build = builds[variant]
    assert receipt['simdBits'] == 128 and receipt['passed'] == passed
    assert receipt['librarySha256'] == build['librarySha256']
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    expected = ['scene_positions', 'scene_msaa', 'scene_coverage', 'numeric_contract']
    assert [r['kind'] for r in receipt['runs']] == (expected if passed else expected[:1])
    for run in receipt['runs']:
        assert run['exitCode'] == (0 if passed else -11)
        assert run['fixtureSha256'] == digest(path/'recipe'/(run['kind']+'.c'))
        assert str(repo/'build/scene-msaa-guarded-depth-planes') in run['command'][-5]
    if passed:
        assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
    else:
        assert 'scene_visibility' in read(path/'logs.json')['gdb.txt']['text']

numeric = read(checks/'edge-numeric-v4/receipt.json')
assert numeric['passed'] and numeric['exitCode'] == 0 and numeric['simdBits'] == 128
assert numeric['candidateSourceManifestSha256'] == builds['edge_plane']['sourceManifestSha256']
assert numeric['sourceSha256'] == {p.name:digest(p)
    for p in (checks/'edge-numeric-v4/recipe').iterdir()}
for name, variant in (('profile-v3-control', 'control'), ('profile-v3-guarded', 'guarded'),
                      ('profile-sponza-control', 'control'),
                      ('profile-sponza-direct', 'direct_rebased')):
    receipt = read(checks/name/'receipt.json')
    assert (receipt['width'], receipt['height'], receipt['threads'], receipt['samples']) == (640, 360, 4, 4)
    assert receipt['measuredWithProfiler'] and not receipt['performanceAcceptance']
    assert receipt['runnerSha256'] == digest(checks/'profile.py')
    logs = read(checks/name/'logs.json')
    for row in receipt['records']:
        assert row['binarySha256'] == builds[variant]['binarySha256']['resident_candidate']
        assert row['warmRequest'] == '4 60 30 160 -'
        assert row['profileRequest'] == '4 0 120 160 -'
        assert row['reportSha256'] == logs[row['variant']+'-report.txt']['sha256']
        assert hashlib.sha256(logs[row['variant']+'-report.txt']['text'].encode()).hexdigest() == row['reportSha256']
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert row['warmResult'][field] == row['driverResult'][field]

census = read(checks/'census-sponza/receipt.json')
assert census['diagnosticOnly'] and census['threads'] == census['samples'] == 4
for row, variant in zip(census['records'], ('control', 'direct', 'direct_rebased')):
    assert row['binarySha256'] == builds[variant]['binarySha256']['resident_candidate']
    assert row['request'] == '4 0 1 160 -' and len(row['scene']) == 2
for name, variant in (('quality-v5-direct', 'direct'), ('quality-v6-direct', 'direct_rebased')):
    receipt = read(checks/name/'receipt.json')
    assert receipt['passed'] and receipt['assessmentOnly'] and not receipt['adopted']
    assert receipt['pairedViews'] == len(receipt['records']) == 36
    assert receipt['binarySha256']['candidate'] == builds[variant]['binarySha256']['quality_candidate']
    assert receipt['binarySha256']['baseline'] == builds['control']['binarySha256']['quality_candidate']
    assert receipt['sourceManifestSha256'] == builds[variant]['sourceManifestSha256']
    assert receipt['referenceReceiptSha256'] == digest(validation/'exact_v4-quality.json')
    assert receipt['runnerSha256'] == digest(checks/'check_direct.py')
    assert not receipt['alphaMeasured'] and not receipt['allWithinExploratoryBudget']
    assert {r['asset'] for r in receipt['records']} == {'bmw', 't80', 'sponza', 'bistro'}
    for row in receipt['records']:
        assert row['samples'] == 4 and row['stencilExact']
        for plane in row['depthPlanes'].values():
            assert plane['finiteInRange']
            assert plane['missingCoveredValues'] == plane['extraCoveredValues'] == 0

failed = checks/'compile-failure-v1'
scope = read(failed/'source.json')
assert scope['beforeSourceSha256'] == control['beforeSourceSha256']
assert scope['recipeSha256'] == {p.name:digest(p) for p in (failed/'recipe').iterdir()}
build = read(failed/'build.json')
assert not build['compileSucceeded'] and build['sourceManifestSha256'] == digest(failed/'source.json')
assert any('error:' in log for log in build['logs'].values())
with tempfile.TemporaryDirectory() as directory:
    source = Path(directory)
    data = subprocess.check_output(['git', 'archive', scope['parentRevision'],
        'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
    with tarfile.open(fileobj=io.BytesIO(data)) as files:
        files.extractall(source, filter='data')
    shutil.move(source/'wasm/model_wrap.c', source/'model_wrap.c')
    (source/'wasm').rmdir()
    shutil.copytree(failed/'overrides', source, dirs_exist_ok=True)
    assert scope['sourceSha256'] == {str(p.relative_to(source)):digest(p)
        for p in source.rglob('*') if p.is_file()}
print('Guarded-depth native failures, numeric fixtures, profiles and approximate assessments verified')
