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
assert result['status'] in ('retained', 'rejected')
retained = result['status'] == 'retained'
assert result['attempts'] == sum(len(p['attempts']) for p in m['pairs'])
assert result['attempts'] >= 18
assert result['acceptedMonitors'] == sum(len(p['acceptedMonitors']) for p in m['pairs']) == 18
assert m['candidateWasmSha256'] == result['candidateWasmSha256']
assert m['referenceWasmSha256'] == result['referenceWasmSha256']
linked = json.loads((root / 'linked-inputs.json').read_text())
assert linked['candidateWasmSha256'] == result['candidateWasmSha256']
assert linked['referenceWasmSha256'] == result['referenceWasmSha256']
assert len(linked['linkedObjects']) == 259
assert linked['libraryObjectCount'] == 20 and linked['wrapperObjectCount'] == 5 and linked['testObjectCount'] == 234
for name in ('wasm_perf.cjs', 'wasm_quiet_audit.py'):
    assert hashlib.sha256((root / name).read_bytes()).hexdigest() == linked['files']['tools/' + name]
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
    expected = [a for a in pair['attempts'] if a['record']['exitCode'] == 0 and not a['record']['unexpectedActivity']]
    assert pair['acceptedMonitors'] == expected and len(expected) == 1
    attempt_numbers = sorted(a['record']['attempt'] for a in pair['attempts'])
    assert attempt_numbers == list(range(1, len(attempt_numbers) + 1))
    for attempt in pair['attempts']:
        assert attempt['record']['guardSha256'] == linked['files']['tools/wasm_quiet_audit.py']
        log = root / 'timings' / attempt['file'].replace('.monitor.json', '.log')
        assert log.is_file()
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
                    ('asan-full-tests.log', 23)]:
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
if retained:
    for name in ['preview-chromium.json', 'preview-firefox/result.json']:
        ui = json.loads((root / name).read_text())
        assert ui['passed'] and ui['wasmSha256'] == result['candidateWasmSha256']
        assert ui['displayedTests'] == 234 and ui['renderWorkers'] == 3
        assert ui['reportedProcessors'] == 9 and ui['isolated'] and not ui['errors']
        assert ui['cancelledBenchmark'] and ui['multisampleModes'] == [0, 2, 4]
    assert result['canonicalJsWasmByteExact'] and result['bothBrowserUiRepeated']
    for name, count in [('canonical-native-tests.log', 743), ('canonical-native-bench.log', 1)]:
        assert f'100% tests passed, 0 tests failed out of {count}' in (root / name).read_text()
reference = json.loads((root / 'reference-codegen.json').read_text())
candidate = json.loads((root / 'candidate-codegen.json').read_text())
assert reference['wasmSha256'] == result['referenceWasmSha256']
assert candidate['wasmSha256'] == result['candidateWasmSha256']
assert reference['symbolSha256'] == hashlib.sha256((root / 'reference.symbols').read_bytes()).hexdigest()
assert candidate['symbolSha256'] == hashlib.sha256((root / 'candidate.symbols').read_bytes()).hexdigest()
by_name = {x['name']: x for x in candidate['roots']}
identical = [x['name'] for x in reference['roots'] if x['name'] in by_name and x['bodySha256'] == by_name[x['name']]['bodySha256']]
assert identical == result['codegen']['byteIdenticalRootBodies']
for name in ['native-capture-run.log', 'wasm-contracts/depth_replay-run.log']:
    text = (root / name).read_text()
    assert 'off capture: 4608 cases against actual packet/scalar/quad LEQUAL/ALWAYS renders safe' in text
    assert '232 LESS ties' in text and '8192 actual LEQUAL/ALWAYS classification cases exact' in text
    assert '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact') == 6
    assert text.count('18 actual queued state/sample-plane cases exact') == 12
for name in ['native-store-run.log', 'wasm-store-run.log', 'wasm-contracts/msaa_store-run.log']:
    text = (root / name).read_text()
    for mode in (0, 2, 4):
        assert f'{mode}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
    assert '262144 exact RGBA quantizations passed' in text
    for samples in (0, 2, 4):
        for width in (47, 128):
            for workers in (1, 3, 8):
                line = f'bin state: samples={samples} width={width} workers={workers}, 72 queued state-transition draws, 12 complete plane snapshots exact to query oracle'
                assert text.count(line) == 1, (name, line)
    assert text.count('bin state: samples=') == 18, name
assert {'sg_write_fragment', 'sg_write_multisample', 'sg_write_multisample2',
        'sg_store_off_post_depth', 'sg_store_blend_msaa2_post_depth',
        'sg_store_blend_msaa4_post_depth', 'sg_queue_render_packed'} <= set(identical)
assert result['regressions']['postDepthStoresEachModeEachEngine'] == 98304
assert result['regressions']['actualDot3QueryScenesEachModeEachEngine'] == 640
assert result['regressions']['quantizationsEachEngine'] == 262144
assert result['regressions']['binStateConfigsEachEngine'] == 18
assert result['regressions']['queuedBinStateDrawsEachEngine'] == 1296
assert result['regressions']['binStateSnapshotsEachEngine'] == 216
for folder, code in [('focused-array-not-queued', 1), ('focused-vbo-qualifier-warning', 0)]:
    reason = json.loads((root / folder / 'reason.json').read_text())
    assert reason['nativeExitCode'] == reason['wasmExitCode'] == code
    assert (root / folder / 'fixture.c').is_file()
assert result['patchSha256'] == hashlib.sha256((root / 'source.patch').read_bytes()).hexdigest()
failure = json.loads((root / 'timing-system-playwright-failure/reason.json').read_text())
assert failure['exitCode'] == 1 and failure['productionUnchanged'] and failure['measurementToolSourceUnchanged']
assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (root / 'wasm-edge-run.log').read_text()
print(f"Verified {len(result['artifacts'])} artifact hashes, all18paired records, six audits, exact post-depth stores and codegen evidence")
