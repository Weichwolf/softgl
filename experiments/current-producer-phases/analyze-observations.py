"""Recompute phase durations and record counters from every original frame."""
from pathlib import Path
import hashlib
import json
import math
import sys

root = Path(__file__).resolve().parent
validation = json.loads((root/'validation.json').read_text())
runs = json.loads((root/'runs/runs.json').read_text())
assert runs['notAcceptanceTimings'] and runs['wasmSha256'] == validation['diagnosticWasmSha256']
assert len(runs['records']) == 6
phases = validation['phases']
counters = validation['counters']
records = []
def distribution(values):
    ordered = sorted(values)
    return dict(mean=math.fsum(values)/len(values),median=ordered[len(values)//2],
        p95=ordered[math.ceil(.95*len(values))-1],maximum=ordered[-1],minimum=ordered[0])
for run in runs['records']:
    path = root/'runs'/run['file']
    assert hashlib.sha256(path.read_bytes()).hexdigest() == run['sha256']
    data = json.loads(path.read_text())
    assert data['wasmSha256'] == runs['wasmSha256'] and data['notAcceptanceTimings']
    assert data['benchmarks']['workerCounts'] == {'candidate':3}
    assert data['benchmarks']['samples'] == run['samples'] and data['benchmarks']['resolvePerFrame']
    assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360 and data['metadata']['crossOriginIsolated']
    assert len(data['callerProducerObservations']) == 2
    for observation in data['callerProducerObservations']:
        assert observation['samples'] == run['samples'] and observation['workers'] == 3
        assert observation['warmup'] == 80 and observation['frames'] == len(observation['rows']) == 100
        assert observation['variant'] == 'candidate' and observation['round'] == 0
        totals = []
        frame_ms = []
        for index,row in enumerate(observation['rows']):
            assert row['frame'] == index and row['angle'] == index*360/100
            assert len(row['calls']) == len(row['elapsedMs']) == len(phases)
            assert len(row['counts']) == len(counters)
            assert all(isinstance(value,(int,float)) and math.isfinite(value) for value in [
                row['frameStart'],row['frameEnd'],row['frameElapsedMs'],*row['elapsedMs']])
            assert row['frameEnd'] >= row['frameStart']
            assert row['frameElapsedMs'] == row['frameEnd']-row['frameStart']
            assert all(isinstance(value,int) and value >= 0 for value in [*row['calls'],*row['counts']])
            assert all(value >= 0 for value in row['elapsedMs'])
            for calls,elapsed in zip(row['calls'],row['elapsedMs']):
                if not calls: assert elapsed == 0
            phase_ms = dict(zip(phases,row['elapsedMs']))
            total = math.fsum(phase_ms[name] for name in validation['topLevelPhases'])
            nested = math.fsum(phase_ms[name] for name in validation['nestedSubmitPhases'])
            assert nested <= phase_ms['stream_submit']+1e-9,(run,observation['name'],index,nested,phase_ms['stream_submit'])
            assert total <= row['frameElapsedMs']+1e-9,(run,observation['name'],index,total,row['frameElapsedMs'])
            counts = dict(zip(counters,row['counts']))
            calls = dict(zip(phases,row['calls']))
            assert counts['parallel_draws'] == calls['lookup'] == calls['compact_transform']
            assert counts['geometry_hits'] == calls['geometry_replay']
            assert counts['geometry_hits'] <= counts['geometry_entries'] <= counts['parallel_draws']
            assert counts['replay_output_bin_records'] <= counts['replay_input_bin_records']
            assert counts['packed_draws'] == calls['packed_vertex_write'] == counts['packed_ordered_draws']+counts['packed_large_draws']
            assert counts['packed_vertices'] == counts['packed_transformed_vertices']+counts['packed_clipped_vertices']
            assert counts['packed_vertices']*48 <= counts['packed_bytes'] <= counts['packed_vertices']*112
            assert counts['packed_ordered_draws'] <= calls['queue_reserve']
            totals.append(total)
            frame_ms.append(row['frameElapsedMs'])
        details = []
        for index,name in enumerate(phases):
            calls = [row['calls'][index] for row in observation['rows']]
            elapsed = [row['elapsedMs'][index] for row in observation['rows']]
            count = sum(calls)
            details.append(dict(name=name,totalCalls=count,totalElapsedMs=math.fsum(elapsed),
                callsPerFrame=count/100,elapsedMsPerFrame=distribution(elapsed)))
        counts = [dict(name=name,total=sum(row['counts'][index] for row in observation['rows']),
            perFrame=distribution([row['counts'][index] for row in observation['rows']])) for index,name in enumerate(counters)]
        records.append(dict(audit=run['audit'],samples=run['samples'],scene=observation['name'],
            frames=100,file=run['file'],frameElapsedMs=distribution(frame_ms),
            producerElapsedMsPerFrame=distribution(totals),
            aggregateProducerWallFraction=math.fsum(totals)/math.fsum(frame_ms),phases=details,counters=counts))
assert len(records) == 12
assert {(row['audit'],row['samples'],row['scene']) for row in records} == {
    (audit,samples,scene) for audit in (1,2) for samples in (0,2,4) for scene in ('bmw','tank')}
result = dict(wasmSha256=runs['wasmSha256'],notAcceptanceTimings=True,observedFrames=1200,topLevelPhases=validation['topLevelPhases'],nestedSubmitPhases=validation['nestedSubmitPhases'],records=records,
    interpretation=validation['methodology'])
if '--check' in sys.argv:
    assert json.loads((root/'analysis.json').read_text()) == result
else:
    (root/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
print('Independently verified all1200 frames, nine top-level/four disjoint nested submit phases, eighteen counters and structural invariants')
for row in records:
    print(row['audit'],row['samples'],row['scene'],
        [(phase['name'],round(phase['elapsedMsPerFrame']['mean'],6)) for phase in row['phases']],
        [(count['name'],count['perFrame']['mean']) for count in row['counters']])
