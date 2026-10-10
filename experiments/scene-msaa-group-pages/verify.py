#!/usr/bin/env python3
"""Bind exact page/packet ordering, actual libraries and bounded-failure checks."""
import hashlib
import json
from pathlib import Path
import re
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
isa = read(control / 'isa.json')
assert isa['passed'] and isa['objects']['driver']['sha256'] == binding['residentBinarySha256']
assert isa['librarySha256'] == binding['librarySha256']
builds = {}
for version, name in [(2,'separate'),(3,'unified')]:
    variant = validation / 'variants' / name
    build = builds[version] = read(variant / 'build.json')
    scope = read(variant / 'source.json')
    assert scope['pagedGroups'] and scope['exactGrouping'] and scope['preservedPacketOrder']
    assert scope.get('unifiedResolve',False) == (version == 3)
    assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
    assert scope['pagePixels'] == 128 and scope['pageByteBudget'] == 64*1024*1024
    assert read(control / 'source.json')['sourceSha256'] == scope['beforeSourceSha256']
    code = (variant / 'overrides/libsoftgl/src/scene_visibility.c').read_text()
    assert 'static void scene_msaa_list_bins(' not in code
    assert 'static void scene_msaa_list(' not in code
    assert '/* Independent original second-pass list oracle, absent from timed builds. */' in code
    assert 'scene_group_page_audit_queues(f);' in code
    assert 'scene_group_page_audit_packet(f,(unsigned)task,first,pixels,live);' in code
    for kind in ('contracts','audit'):
        path = validation / 'checks' / (kind + '-v' + str(version))
        receipt = read(path / 'receipt.json')
        assert receipt['passed'] and receipt['simdBits'] == 128
        assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
        assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
        if kind == 'contracts':
            assert receipt['librarySha256'] == build['librarySha256']
            assert [r['kind'] for r in receipt['runs']] == [
                'scene_material_merge','scene_positions','scene_msaa','scene_coverage']
            for row in receipt['runs']:
                assert row['exitCode'] == 0
                assert row['fixtureSha256'] == digest(path / 'recipe' / (row['kind'] + '.c'))
        else:
            assert receipt['measuredLibrarySha256'] == build['librarySha256']
            assert receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
            assert receipt['forcedByteBudget'] is None
            assert [r['name'] for r in receipt['runs']] == ['scene_msaa','small_contract']
            for row in receipt['runs']:
                assert row['exitCode'] == 0
                assert row['fixtureSha256'] == digest(path / 'recipe' / ('dispatch_' + row['name'] + '.c'))
                original = (path / 'recipe' / (row['name'] + '.c')).read_text()
                assert (path / 'recipe' / ('counted_' + row['name'] + '.c')).read_text() == original.replace(
                    'int main(void) {','int original_fixture_main(void) {',1)
                counts = re.search(r'Actual page queues: (\d+) pages, (\d+) references, (\d+) exact packets, (\d+) boundary/tail packets PASS',row['stdout'])
                assert counts and all(int(v) > 100 for v in counts.groups())
for name, budget in [('failure-zero-v2',0),('failure-partial-v2',16384)]:
    path = validation / 'checks' / name
    receipt = read(path / 'receipt.json')
    assert receipt['passed'] and receipt['simdBits'] == 128
    assert receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
    assert receipt['forcedByteBudget'] == budget
    assert receipt['sourceManifestSha256'] == builds[2]['sourceManifestSha256']
    assert receipt['measuredLibrarySha256'] == builds[2]['librarySha256']
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
    assert len(receipt['runs']) == 1
    row = receipt['runs'][0]
    assert row['name'] == 'page_failure' and row['exitCode'] == 0
    assert row['fixtureSha256'] == digest(path / 'recipe/page_failure.c')
    counts = re.search(r'Page rollback: 12 full-plane/replay/reset pairs, (\d+) allocated pages, (\d+) appended groups, (\d+) actual allocation failures PASS',row['stdout'])
    assert counts and int(counts[3]) >= 12
    assert (int(counts[1]) > 0 and int(counts[2]) > 0) == (budget > 0)
path = validation / 'checks/profile-v2-bmw'
receipt = read(path / 'receipt.json')
assert receipt['measuredWithProfiler'] and not receipt['performanceAcceptance']
assert receipt['runnerSha256'] == digest(validation / 'checks/profile.py')
assert receipt['asset'] == 'bmw' and receipt['threads'] == 4 and receipt['samples'] == 4
assert len(receipt['records']) == 1
row = receipt['records'][0]
assert row['binarySha256'] == builds[2]['binarySha256']['resident_candidate']
logs = read(path / 'logs.json')
assert hashlib.sha256(logs['candidate-report.txt'].encode()).hexdigest() == row['reportSha256']
assert 'Total Lost Samples: 0' in logs['candidate-report.txt']
for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
    assert row['driverResult'][field] == row['warmResult'][field]
layout = read(validation / 'checks/code-layout.json')
for name, identity in [('baseline',binding),('separate',builds[2]),('unified',builds[3])]:
    assert layout[name]['librarySha256'] == identity['librarySha256']
    assert layout[name]['sourceManifestSha256'] == identity['sourceManifestSha256']
assert 'scene_shade_packet' in layout['separate']['nm']
assert 'scene_shade_packet' not in layout['baseline']['nm'] and 'scene_shade_packet' not in layout['unified']['nm']
assert all('scene_group_page_append' not in row['nm'] for row in layout.values())
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    accepted = [r for r in receipt['records'] if r.get('accepted')]
    for asset, samples in {(r['asset'],r['samples']) for r in accepted}:
        for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
            assert len({r[field] for r in accepted if (r['asset'],r['samples']) == (asset,samples)}) == 1
print('Two measured exact queue variants, original packet order, full-plane views and forced-page rollback verified')
