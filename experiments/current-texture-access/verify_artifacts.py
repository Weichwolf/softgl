"""Verify retained evidence and arithmetic; does not rerun graphics or measure PMU accuracy."""
from pathlib import Path
import hashlib
import json
import math
import os
import subprocess
import sys

root = Path(__file__).resolve().parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
load = lambda f: json.loads(f.read_text())
manifest = load(root/'results.json')
actual = {str(f.relative_to(root)) for f in root.rglob('*') if f.is_file()
          and f != root/'results.json' and '__pycache__' not in f.parts}
assert actual == set(manifest['artifacts'])
for filename, digest in manifest['artifacts'].items():
    assert sha(root/filename) == digest, filename
v = load(root/'validation.json')
assert manifest['status'] == 'diagnostic-no-runtime-change'
assert v['status'] == 'all12-quiet-hardware-observations-complete-no-renderer-change'
assert v['productionUnchanged'] and v['observationCount'] == v['guardAttempts'] == 12
assert v['allFirstQuietGuardsPass']
assert manifest['referenceWasmSha256'] == v['referenceWasmSha256']
assert manifest['researchBaselineCommit'] == v['researchBaselineCommit']
assert load(root/'process-completion.json') == dict(exitCode=0, status='terminal')

identities = load(root/'input-identities.json')
def identity(suffix):
    matches = [digest for filename, digest in identities.items() if filename.endswith('/'+suffix)]
    assert len(matches) == 1, suffix
    return matches[0]
for original, local in [('wasm_perf.cjs', 'original-wasm-perf.cjs'),
                        ('wasm_quiet_audit.py', 'wasm_quiet_audit.py'),
                        ('wasm_perf_pmu.cjs', 'wasm_perf_pmu.cjs'),
                        ('pmu-bridge.cjs', 'pmu-bridge.cjs'),
                        ('pmu-collector.c', 'pmu-collector.c'),
                        ('observer-replacements.json', 'observer-replacements.json')]:
    assert identity(original) == sha(root/local)
assert identity('pmu-collector') == v['hardwareCollectorSha256']
assert identity('softgl.wasm') == v['referenceWasmSha256']
observer = (root/'wasm_perf_pmu.cjs').read_text()
changes = load(root/'observer-replacements.json')
assert len(changes) == 2
for replacement in reversed(changes):
    assert observer.count(replacement['new']) == 1
    observer = observer.replace(replacement['new'], replacement['old'])
assert observer == (root/'original-wasm-perf.cjs').read_text()
assert 'FOREIGN_CPU_CORES = .10' in (root/'wasm_quiet_audit.py').read_text()

# Reuse only the exact accepted renderer and its original full gate receipts.
baseline = load(root/'baseline-fidelity.json')
base = load(root/'baseline-receipts/validation.json')
assert sha(root/'baseline-receipts/validation.json') == baseline['baselineValidationSha256']
assert base['candidateWasmSha256'] == baseline['referenceWasmSha256'] == v['referenceWasmSha256']
assert base['productionSources'] == baseline['productionSources']
assert base['finalSourceFiles'] == baseline['finalSourceFiles']
assert base['regressions'] == baseline['regressions']
assert base['fullGateReceipts'] == baseline['fullGateReceipts']
for receipt in baseline['fullGateReceipts']:
    assert sha(root/'baseline-receipts'/receipt['file']) == receipt['sha256']
for filename, count in [('native-full-tests.log', 744), ('native-full-bench.log', 1), ('asan-full-tests.log', 24)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (root/'baseline-receipts'/filename).read_text()
reference = load(root/'baseline-archive-reference.json')
prior = root.parent/'simd-index-range'
assert sha(prior/'results.json') == reference['manifestSha256']
assert sha(prior/'validation.json') == baseline['baselineValidationSha256']
# The older verifier checks all 23 contracts, their fixture/log bindings,
# the independent edge oracle, all-mode images, model frames and full suites.
env = dict(os.environ)
repo = root.parents[1]
tmp = repo/'build/tmp'
tmp.mkdir(parents=True, exist_ok=True)
env['TMPDIR'] = str(tmp)
subprocess.run([sys.executable, str(prior/'verify_artifacts.py')], env=env, cwd=repo, check=True)
for filename in ['softgl.js', 'softgl.wasm', 'bmw.pack', 'tank.pack']:
    assert identity(filename) == baseline['liveAssets'][filename]['sha256']
assets = load(root/'model-assets.json')
assert assets['bmwPackSha256'] == identity('bmw.pack')
assert len([key for key in assets if key.endswith('/tests/bench/tank_data/tank.pack')]) == 1
assert next(value for key, value in assets.items() if key.endswith('/tests/bench/tank_data/tank.pack')) == identity('tank.pack')

events = [dict(name='cycles-user', type=0, config=0),
          dict(name='instructions-user', type=0, config=1),
          dict(name='branch-misses-user', type=0, config=5),
          dict(name='l1d-read-misses-user', type=3, config=65536),
          dict(name='cache-misses-user', type=0, config=3)]
selfcheck = load(root/'collector-selfcheck.json')
assert selfcheck['status'] == 'group-attach-reset-enable-read-and-id-mapping-passed'
assert [x['type'] for x in selfcheck['records']] == ['ready', 'started', 'stopped']
assert selfcheck['records'][0]['events'] == events
row = selfcheck['records'][2]['rows'][0]
assert all(row['values'][i] > 0 for i in [0, 1, 3, 4])
assert row['taskClockNs'] > 0 and 0 < row['timeRunningNs'] <= row['timeEnabledNs']
assert 0 < row['taskClockRunningNs'] <= row['taskClockEnabledNs']
assert (root/'collector-selfcheck-stderr.log').read_text() == ''

recipe = load(root/'recipe-check/receipt.json')
assert recipe['exitCode'] == 0 and not recipe['freshBrowserObservationsExecuted']
assert recipe['freshCollectorSha256'] == recipe['originalCollectorSha256'] == v['hardwareCollectorSha256']
prepared = load(root/'recipe-check/validation.json')
assert prepared['status'] == 'fresh-observer-prepared' and not prepared['observationRecipeExecuted']
assert prepared['hardwareCollectorSha256'] == v['hardwareCollectorSha256']
assert prepared['referenceWasmSha256'] == v['referenceWasmSha256']
assert (root/'recipe-check/collector-build.log').read_text() == ''
assert (root/'recipe-check/collector-selfcheck-stderr.log').read_text() == ''
for filename in ['pmu-collector.c', 'pmu-bridge.cjs', 'wasm_perf_pmu.cjs', 'wasm_quiet_audit.py']:
    matches = [digest for name, digest in load(root/'recipe-check/input-identities.json').items() if name.endswith('/'+filename)]
    assert matches == [sha(root/filename)]
assert load(root/'recipe-check/collector-selfcheck.json')['status'] == selfcheck['status']

records = load(root/'observations.json')
assert records['planned'] == records['completed'] == len(records['records']) == 12
expected_order = [(audit, scene, mode) for audit in [1, 2]
                  for mode in ([0, 2, 4] if audit == 1 else [4, 2, 0])
                  for scene in (['bmw', 'tank'] if audit == 1 else ['tank', 'bmw'])]
assert [(e['audit'], e['scene'], e['samples']) for e in records['records']] == expected_order
assert len(list((root/'runs').glob('*.monitor.json'))) == 12
assert len(list((root/'runs').glob('*.log'))) == 12
keys = lambda rows: sorted((r['pid'], r['tid'], r['birthTicks']) for r in rows)
for entry in records['records']:
    path = root/entry['file']
    assert sha(path) == entry['sha256']
    d = load(path)
    h = d['hardwareProfile']
    assert d['gitCommit'] == v['researchBaselineCommit']
    assert d['sourceDiffSha256'] == hashlib.sha256(b'').hexdigest()
    assert d['driverSha256'] == sha(root/'wasm_perf_pmu.cjs')
    assert d['wasmSha256'] == v['referenceWasmSha256'] and d['notAcceptanceTimings']
    assert d['modelAssets']['candidatePackSha256'] == identity('bmw.pack')
    assert d['metadata']['width'] == 640 and d['metadata']['height'] == 360
    assert d['metadata']['crossOriginIsolated'] and d['metadata']['hardwareConcurrency'] == 4
    assert h['scene'] == entry['scene'] and d['options']['samples'] == entry['samples']
    assert d['options']['rounds'] == 1 and d['options']['frames'] == 240 and d['options']['warmup'] == 80
    assert h['preparation'] == dict(warmup=80, frames=240, workers=3)
    assert d['benchmarks']['workers'] == 3 and d['benchmarks']['resolvePerFrame']
    assert len(d['benchmarks']['scenes']) == 1 and d['benchmarks']['scenes'][0]['name'] == h['scene']
    assert h['events'] == h['collector']['ready']['events'] == events
    assert h['collectorSha256'] == v['hardwareCollectorSha256']
    assert h['collector']['exit'] == dict(code=0, signal=None) and h['collector']['stderr'] == ''
    assert h['sameThreadSet'] and keys(h['before']) == keys(h['after']) == keys(h['rows'])
    assert {x['pid'] for x in h['processes']} == {x['pid'] for x in h['rows']}
    assert len({x['tid'] for x in h['rows']}) == len(h['rows']) == len(h['collector']['ready']['threads'])
    assert len(h['rows']) == len(h['collector']['stopped']['rows'])
    event_ids = []
    for i, row in enumerate(h['rows']):
        raw = h['collector']['stopped']['rows'][i]
        ready = h['collector']['ready']['threads'][i]
        assert all(row[key] == raw[key] for key in raw)
        assert row['pid'] == ready['pid'] and row['tid'] == ready['tid']
        assert len(ready['ids']) == 5
        event_ids.extend(ready['ids']+[ready['taskClockId']])
        assert len(row['values']) == 5
        for number in row['values']+[row[key] for key in ['timeEnabledNs', 'timeRunningNs', 'taskClockNs', 'taskClockEnabledNs', 'taskClockRunningNs']]:
            assert isinstance(number, int) and 0 <= number < 2**53
        assert row['timeRunningNs'] <= row['timeEnabledNs']
        assert row['taskClockRunningNs'] <= row['taskClockEnabledNs']
        if any(row['values']):
            assert row['timeRunningNs'] > 0
    assert len(event_ids) == len(set(event_ids))
    assert sum(x['name'] == 'DedicatedWorker' and x['values'][1] > 0 for x in h['rows']) == 3
    started, stopped = h['collector']['started'], h['collector']['stopped']
    assert started['beginNs'] <= started['endNs'] < stopped['beginNs'] <= stopped['endNs']
    assert h['render']['end'] > h['render']['start']
    assert math.isclose(h['render']['elapsedMs'], h['render']['end']-h['render']['start'], abs_tol=1e-8)
    monitor = load(path.with_suffix('.attempt-1.monitor.json'))
    assert monitor['attempt'] == 1 and monitor['exitCode'] == 0 and monitor['unexpectedActivity'] == []
    assert monitor['guardSha256'] == sha(root/'wasm_quiet_audit.py')
    assert monitor['foreignCPUThresholdCores'] == .10 and monitor['settlePolls'] == 6 and monitor['pollSeconds'] == .5
    assert path.with_suffix('.attempt-1.log').is_file()
subprocess.run([sys.executable, str(root/'analyze.py'), '--check'], check=True)
print(f'PASS: {len(actual)} artifact hashes, observer reversibility, unchanged D4 full receipts, twelve raw scopes/guards and normalization arithmetic')
