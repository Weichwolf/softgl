"""Verify retained captures and summarize geometric stream counts, never speed."""
from pathlib import Path
import hashlib
import importlib.util
import json
import sys

sys.dont_write_bytecode = True
root = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(root / 'validation.json')
spec = importlib.util.spec_from_file_location('stream_check', root / 'check-row.py')
checker = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)
index = load(root / 'runs/runs.json')
assert index['notAcceptanceTimings'] and index['wasmSha256'] == v['diagnosticWasmSha256']
assert [(r['audit'], r['samples']) for r in index['records']] == [(1,0),(1,2),(1,4),(2,4),(2,2),(2,0)]
assert load(root / 'process-completion.json') == dict(gateStatus='terminal', gateExitCode=0,
    observationStatus='terminal', observationExitCode=0)

def distribution(values):
    return dict(mean=sum(values) / len(values), minimum=min(values), maximum=max(values))

summaries, guards, frames, inputs = [], [], {}, None
for record in index['records']:
    path = root / 'runs' / record['file']
    assert sha(path) == record['sha256']
    d = load(path)
    assert d['wasmSha256'] == v['diagnosticWasmSha256'] and d['notAcceptanceTimings']
    assert d['driverSha256'] == sha(root / 'wasm_perf_stream.cjs')
    assert d['gitCommit'] == v.get('observationGitCommit', v['researchBaselineCommit'])
    assert d['metadata']['width'] == 640 and d['metadata']['height'] == 360
    assert d['metadata']['crossOriginIsolated'] and d['metadata']['hardwareConcurrency'] == 4
    assert d['options']['rounds'] == 1 and d['options']['warmup'] == 80 and d['options']['frames'] == 100
    assert d['benchmarks']['workerCounts'] == {'candidate':3}
    assert d['benchmarks']['samples'] == record['samples'] and d['benchmarks']['resolvePerFrame']
    if inputs is None: inputs = d['modelAssets']
    assert d['modelAssets'] == inputs
    accepted = []
    for monitor in sorted(path.parent.glob(path.stem + '.attempt-*.monitor.json')):
        q = load(monitor)
        assert q['guardSha256'] == sha(root / 'wasm_quiet_audit.py')
        assert q['foreignCPUThresholdCores'] == .10 and q['settlePolls'] == 6 and q['pollSeconds'] == .5
        assert monitor.with_name(monitor.name.replace('.monitor.json', '.log')).is_file()
        guards.append(dict(file=monitor.name, sha256=sha(monitor), exitCode=q['exitCode'],
            unexpectedActivity=q['unexpectedActivity']))
        if q['exitCode'] == 0 and not q['unexpectedActivity']: accepted.append(monitor.name)
    assert len(accepted) == 1
    expected = load(root / f"frame-equivalence-{record['samples']}.json")['models']
    observations = d['fragmentStreamObservations']
    assert [o['name'] for o in observations] == (['bmw','tank'] if record['audit'] == 1 else ['tank','bmw'])
    for o in observations:
        assert o['workers'] == 3 and o['samples'] == record['samples'] and o['round'] == 0
        assert o['variant'] == 'candidate' and o['warmup'] == 80 and o['frames'] == len(o['rows']) == 100
        checks = []
        for i, row in enumerate(o['rows']):
            assert row['frame'] == i and row['angle'] == i * 360 / 100
            checks.append(checker.check_row(row, record['samples'], expected[o['name']]['rows'][i]['hash'], root / 'runs'))
        counts = {name: {field: distribution([row['counts'][group][i] for row in o['rows']])
            for i, field in enumerate(v['counters'])} for group, name in enumerate(['store', 'replay'])}
        matching = {field: distribution([row['match'][field] for row in o['rows']]) for field in o['rows'][0]['match']}
        summaries.append(dict(scene=o['name'], samples=record['samples'], audit=record['audit'],
            frames=100, counts=counts, matching=matching,
            traceFrames=[row['frame'] for row in o['rows'] if 'trace' in row],
            rawReferenceCapacity=131072, maximumRawReferences=max(row['meta'][1] for row in o['rows']),
            storeWireOver4MiBFrames=sum(row['counts'][0][10] > 4194304 for row in o['rows']),
            replayWireOver4MiBFrames=sum(row['counts'][1][10] > 4194304 for row in o['rows'])))
        frames[o['name'], record['samples'], record['audit']] = o['rows']
repeats = []
for scene in ['bmw', 'tank']:
    for samples in [0, 2, 4]:
        a, b = [frames[scene, samples, audit] for audit in [1, 2]]
        repeats.append(dict(scene=scene, samples=samples,
            equalFrameHashes=sum(x['hash'] == y['hash'] for x, y in zip(a, b)),
            equalCodecCounterFrames=sum(x['counts'] == y['counts'] for x, y in zip(a, b)),
            equalDrawMetadataFrames=sum(x['draws'] == y['draws'] for x, y in zip(a, b)),
            equalRawRecordHashFrames=sum(x['recordsHash'] == y['recordsHash'] for x, y in zip(a, b)),
            equalMatchFrames=sum(x['match'] == y['match'] for x, y in zip(a, b))))
result = dict(status='diagnostic', rendererAdopted=False, notAcceptanceTimings=True,
    candidateWasmSha256=v['diagnosticWasmSha256'], referenceWasmSha256=v['referenceWasmSha256'],
    modelAssets=inputs, framesChecked=1200, guardedCaptures=6,
    totalRawTraceSnapshots=sum(len(s['traceFrames']) for s in summaries), guards=guards,
    summaries=summaries, repeatedAuditChecks=repeats,
    limitations=[
        'Cache-store/replay references only, not all draws or actual post-HZ raster visits.',
        'Replay input references have existing conservative depth classification filtering; codec masks remain geometric.',
        'Row payload is encoded and decoded; 48-byte reference header and 4-byte offsets are estimates, not a persistent renderer stream.',
        'Byte sums per frame exclude cache metadata, allocator padding/alignment and lifetimes; they are not measured peak live memory.',
        'sortStateChanges reports sg_pool_sort_safe eligibility changes, not observations that bins were sorted.',
        'Frame clocks include active collection and overall loops include expensive post-readback diagnostics; none are acceptance timings.',
        'Counts give no saved CPU time or achievable frame-rate bound.'
    ])
text = json.dumps(result, indent=2) + '\n'
if '--check' in sys.argv:
    assert (root / 'analysis.json').read_text() == text
else:
    (root / 'analysis.json').write_text(text)
for s in summaries:
    print(s['scene'], s['samples'], s['audit'], 'store/replay wire bytes per frame:',
        s['counts']['store']['proposed_row_wire_bytes'], s['counts']['replay']['proposed_row_wire_bytes'])
print('PASS: 1200 exact frame/codec/cache checks; 48 retained raw trace snapshots; no speed claim')
