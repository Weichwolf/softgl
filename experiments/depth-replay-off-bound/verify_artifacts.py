"""Verify the published evidence and recompute its paired audit summaries.

No browser, compiled renderer or original absolute build paths are required.
This checks archived data consistency; it does not rerun rendering or prove
that the Windows host was idle.
"""
from pathlib import Path
import hashlib
import json
import math
import re
import statistics
import sys

root = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else Path(__file__).resolve().parent
result = json.loads((root / 'results.json').read_text())
assert set(result['artifacts']) == {str(p.relative_to(root)) for p in root.rglob('*')
                                  if p.is_file() and p != root / 'results.json'}
for name, digest in result['artifacts'].items():
    assert hashlib.sha256((root / name).read_bytes()).hexdigest() == digest, name
m = result['measurement']
assert len(m['pairs']) == 18 and len(m['audits']) == 6
assert result['status'] == 'retained'
assert result['attempts'] == sum(len(p['attempts']) for p in m['pairs']) == 19
assert result['acceptedMonitors'] == sum(len(p['acceptedMonitors']) for p in m['pairs']) == 18
assert m['candidateWasmSha256'] == result['candidateWasmSha256']
assert m['referenceWasmSha256'] == result['referenceWasmSha256']
groups = {}
for pair in m['pairs']:
    data = json.loads((root / 'timings' / pair['file']).read_text())
    assert data == pair['measurement']
    bench = data['benchmarks']
    assert bench['protocol'] == 'page crossover AB/BA, two-round geometric pairs'
    assert bench['samples'] in (0, 2, 4) and bench['resolvePerFrame']
    assert bench['workerCounts'] == {'candidate': 3, 'reference': 3}
    assert data['wasmSha256'] == result['candidateWasmSha256']
    assert data['referenceWasmSha256'] == result['referenceWasmSha256']
    assert data['options']['rounds'] == 2
    assert data['options']['warmup'] == 80 and data['options']['frames'] == 100
    assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360
    assert data['modelAssets']['candidatePackSha256'] == data['modelAssets']['referencePackSha256'] == 'fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
    assert data['metadata']['crossOriginIsolated']
    audit = int(re.search(r'-audit-(\d+)-pair-', pair['file']).group(1))
    key = (bench['samples'], audit)
    groups.setdefault(key, []).append(bench['scenes'])
    assert pair['acceptedMonitors']
    for attempt in pair['attempts']:
        assert json.loads((root / 'timings' / attempt['file']).read_text()) == attempt['record']
    for accepted in pair['acceptedMonitors']:
        record = accepted['record']
        assert record['exitCode'] == 0 and not record['unexpectedActivity']
        assert record['foreignCPUThresholdCores'] == .10
    for scene in bench['scenes']:
        a, b = scene['samples'], scene['reference']['samples']
        assert len(a) == len(b) == 2 and all(math.isfinite(t) and t > 0 for t in a + b)
        ratio = math.sqrt((a[0] / b[0]) * (a[1] / b[1]))
        assert math.isclose(scene['medianRatio'], ratio, rel_tol=1e-12)
assert set(groups) == {(mode, audit) for mode in (0, 2, 4) for audit in (1, 2)}
for audit in m['audits']:
    pairs = groups[audit['samples'], audit['audit']]
    assert len(pairs) == 3
    for reported in audit['scenes']:
        scenes = [next(s for s in p if s['name'] == reported['name']) for p in pairs]
        ratios = [s['medianRatio'] for s in scenes]
        assert ratios == reported['pairRatios']
        change = (statistics.median(ratios) - 1) * 100
        assert math.isclose(change, reported['changePercent'], rel_tol=1e-12, abs_tol=1e-12)
        median = statistics.median(t for s in scenes for t in s['samples'])
        assert median == reported['medianMs']
        assert math.isclose(1000 / median, reported['fps'], rel_tol=1e-12)
        print(f"samples={audit['samples']} audit={audit['audit']} {reported['name']}: {change:+.6f}%")
for name, count in [('native-full-tests.log', 743), ('native-full-bench.log', 1),
                    ('asan-full-tests.log', 23), ('canonical-native-tests.log', 743),
                    ('canonical-native-bench.log', 1)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (root / name).read_text()
contracts = json.loads((root / 'wasm-contracts/results.json').read_text())
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 22
for contract in contracts['results']:
    assert contract['passed']
    assert hashlib.sha256((root / contract['log']).read_bytes()).hexdigest() == contract['logSha256']
mesa = json.loads((root / 'mesa-images.json').read_text())
assert mesa['wasmSha256'] == result['candidateWasmSha256']
assert len(mesa['images']) == 240 and all(i['passed'] for i in mesa['images'])
for mode, name in [(0, 'all-tests-ms0-results.json'), (2, 'all-tests-msaa-results.json'),
                   (4, 'all-tests-msaa4-results.json')]:
    images = json.loads((root / name).read_text())
    assert images['passed'] and images['samples'] == mode and images['exactImages'] == len(images['images']) == 234
    frames = json.loads((root / f'frame-equivalence-{mode}.json').read_text())
    assert frames['wasmSha256'] == result['candidateWasmSha256']
    assert frames['baselineSha256'] == result['referenceWasmSha256']
    assert len(frames['models']) == 2
    for model in frames['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == 100
        assert model['representativeFramesByteEqual'] == 4
for name in ['preview-chromium.json', 'preview-firefox/result.json']:
    ui = json.loads((root / name).read_text())
    assert ui['passed'] and ui['wasmSha256'] == result['candidateWasmSha256']
    assert ui['displayedTests'] == 234 and ui['renderWorkers'] == 3
    assert ui['reportedProcessors'] == 9 and ui['isolated'] and not ui['errors']
    assert ui['cancelledBenchmark'] and ui['multisampleModes'] == [0, 2, 4]
assert result['canonicalJsWasmByteExact'] and result['bothBrowserUiRepeated']
for mode in (0, 2, 4):
    counts = json.loads((root / 'consumption' / f'consumption-{mode}.json').read_text())
    assert counts['baselineSha256'] == result['candidateWasmSha256']
    assert counts['wasmSha256'] == result['diagnosticWasmSha256']
    assert counts['samples'] == mode
    for model in counts['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == 100
        assert model['representativeFramesByteEqual'] == 4 and len(model['rows']) == 100
        for row in model['rows']:
            assert len(row['counts']) == 5
            assert all(isinstance(n, int) and n >= 0 for n in row['counts'])
            assert row['counts'][1] <= row['counts'][0]
        for field, name in enumerate(counts['names']):
            values = [row['counts'][field] for row in model['rows']]
            assert model['summary'][name] == {'mean': sum(values) / 100,
                                            'min': min(values), 'max': max(values)}
print(f"Verified {len(result['artifacts'])} artifact hashes, all 18 paired records, six audits and all consumption counters")
