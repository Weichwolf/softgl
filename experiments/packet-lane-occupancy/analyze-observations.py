"""Verify all retained observations and summarize logical packet populations."""
from pathlib import Path
import hashlib
import importlib.util
import json
import statistics
import sys

sys.dont_write_bytecode = True
r = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r / 'validation.json')
spec = importlib.util.spec_from_file_location('row_check', r / 'check-row.py')
checker = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)
index = load(r / 'runs/runs.json')
assert index['notAcceptanceTimings'] and index['wasmSha256'] == v['diagnosticWasmSha256']
assert [(x['audit'], x['samples']) for x in index['records']] == [(1,0),(1,2),(1,4),(2,4),(2,2),(2,0)]
kinds = v['histogram']['kinds']
summaries, repeated, guards, frame_sets = [], [], [], {}
assets = None
for record in index['records']:
    path = r / 'runs' / record['file']
    assert sha(path) == record['sha256']
    data = load(path)
    assert data['notAcceptanceTimings'] and data['wasmSha256'] == v['diagnosticWasmSha256']
    assert data['driverSha256'] == sha(r / 'wasm_perf_lanes.cjs')
    assert data['gitCommit'] == v.get('observationGitCommit', v['researchBaselineCommit'])
    assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360
    assert data['metadata']['crossOriginIsolated'] and data['metadata']['hardwareConcurrency'] == 4
    assert data['options']['rounds'] == 1 and data['options']['warmup'] == 80 and data['options']['frames'] == 100
    assert data['benchmarks']['workerCounts'] == {'candidate':3}
    assert data['benchmarks']['samples'] == record['samples'] and data['benchmarks']['resolvePerFrame']
    if assets is None: assets = data['modelAssets']
    assert assets == data['modelAssets']
    accepted = []
    for monitor in sorted(path.parent.glob(path.stem + '.attempt-*.monitor.json')):
        q = load(monitor)
        assert q['guardSha256'] == sha(r / 'wasm_quiet_audit.py')
        assert q['foreignCPUThresholdCores'] == .10 and q['settlePolls'] == 6 and q['pollSeconds'] == .5
        assert monitor.with_name(monitor.name.replace('.monitor.json','.log')).is_file()
        guards.append(dict(file=monitor.name, sha256=sha(monitor), exitCode=q['exitCode'], unexpectedActivity=q['unexpectedActivity']))
        if q['exitCode'] == 0 and not q['unexpectedActivity']: accepted.append(monitor.name)
    assert len(accepted) == 1
    expected = load(r / f"frame-equivalence-{record['samples']}.json")['models']
    obs = data['laneObservations']
    assert [x['name'] for x in obs] == (['bmw','tank'] if record['audit'] == 1 else ['tank','bmw'])
    for ob in obs:
        assert ob['workers'] == 3 and ob['samples'] == record['samples'] and ob['round'] == 0
        assert ob['variant'] == 'candidate' and ob['warmup'] == 80 and ob['frames'] == len(ob['rows']) == 100
        parsed = []
        for i, row in enumerate(ob['rows']):
            assert row['frame'] == i and row['angle'] == i*360/100
            parsed.append(checker.check_row(row, record['samples'], expected[ob['name']]['rows'][i]['hash']))
        counts = [sum(row['counts'][k] for row in ob['rows']) for k in range(116)]
        packets, pixels = checker.check_counts(counts)
        population = [sum(counts[n::4][:28]) for n in range(4)]
        assert sum(population) == packets and sum((n+1)*population[n] for n in range(4)) == pixels
        by_kind = []
        mode = {0:0,2:1,4:2}[record['samples']]
        for k, name in enumerate(kinds):
            hist = counts[(mode*7+k)*4:(mode*7+k+1)*4]
            total = sum(hist)
            live = sum((n+1)*hist[n] for n in range(4))
            by_kind.append(dict(kind=name,populations=hist,packets=total,livePixels=live,usefulLaneFraction=live/(4*total) if total else None))
        def distribution(values):
            return dict(mean=statistics.mean(values),median=statistics.median(values),min=min(values),max=max(values))
        active = {str(n):sum(row['activeProducers']==n for row in parsed) for n in range(5)}
        summaries.append(dict(scene=ob['name'],samples=record['samples'],audit=record['audit'],frames=100,
            totalPackets=packets,totalLivePixels=pixels,packetsPerFrame=packets/100,livePixelsPerFrame=pixels/100,
            usefulLaneFraction=pixels/(4*packets) if packets else None,populations=population,
            packetPopulationFractions=[n/packets for n in population] if packets else None,
            byKind=by_kind,packetDistribution=distribution([x['packets'] for x in parsed]),
            activeProducerFrameHistogram=active,lifetimeSlots=distribution([x['meta'][0] for x in ob['rows']]),
            frameUsefulLaneRange=distribution([x['usefulLaneFraction'] for x in parsed]) if packets else None))
        frame_sets[ob['name'],record['samples'],record['audit']] = ob['rows']
for scene in ['bmw','tank']:
    for samples in [0,2,4]:
        a, b = [frame_sets[scene,samples,audit] for audit in [1,2]]
        equal = sum(x['counts']==y['counts'] for x,y in zip(a,b))
        assert equal == 100
        assert all(x['hash']==y['hash'] for x,y in zip(a,b))
        repeated.append(dict(scene=scene,samples=samples,equalAggregateHistogramFrames=equal,equalFrameHashes=100,
            threadPartitionsRequiredEqual=False,note='TLS slot ownership/allocation order may change; aggregate populations and frame hashes are identical.'))
result = dict(diagnosticWasmSha256=v['diagnosticWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],
    notAcceptanceTimings=True,checkedFrames=1200,modelAssets=assets,summary=summaries,repeatability=repeated,guards=guards,
    scope=v['scope'],interpretation='Live lanes in sg_shade_packet only. MSAA submits full packets and shades triangle tails through sg_shade_pixel outside this scope. T-80 off uses the legacy quad path, so its counted population is zero and its utilization is null. No CPU utilization or saved-time claim.')
if '--check' in sys.argv: assert load(r / 'analysis.json') == result
else: (r / 'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for row in summaries:
    fraction = f"{100*row['usefulLaneFraction']:.6f}%" if row['usefulLaneFraction'] is not None else 'unobserved'
    print(row['scene'],row['samples'],row['audit'],fraction,'packets/frame',row['packetsPerFrame'],'population',row['populations'])
print('PASS: all 1200 frame hashes and per-thread partitions; all 600 paired-angle aggregate histograms identical; no acceptance FPS claim')
