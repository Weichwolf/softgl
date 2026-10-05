"""Independently recompute interval counts and wall durations from every raw frame."""
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
categories = validation['categories']
assert len(categories) == 8
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
    assert len(data['callerWaitObservations']) == 2
    for observation in data['callerWaitObservations']:
        assert observation['samples'] == run['samples'] and observation['workers'] == 3
        assert observation['warmup'] == 80 and observation['frames'] == len(observation['rows']) == 100
        assert observation['variant'] == 'candidate' and observation['round'] == 0
        totals = []
        frame_ms = []
        for index, row in enumerate(observation['rows']):
            assert row['frame'] == index and row['angle'] == index*360/100
            assert len(row['calls']) == len(row['elapsedMs']) == 8
            assert all(isinstance(value,(int,float)) and math.isfinite(value) for value in [
                row['frameStart'],row['frameEnd'],row['frameElapsedMs'],*row['elapsedMs']])
            assert row['frameEnd'] >= row['frameStart']
            assert row['frameElapsedMs'] == row['frameEnd']-row['frameStart']
            assert all(isinstance(value,int) and value>=0 for value in row['calls'])
            assert all(value>=0 for value in row['elapsedMs'])
            for calls, elapsed in zip(row['calls'],row['elapsedMs']):
                if not calls: assert elapsed == 0
            total = math.fsum(row['elapsedMs'])
            # Only accumulated subtraction rounding: no arbitrary wall-clock tolerance.
            assert total <= row['frameElapsedMs']+1e-9,(run,observation['name'],index,total,row['frameElapsedMs'])
            totals.append(total)
            frame_ms.append(row['frameElapsedMs'])
        details = []
        for index,name in enumerate(categories):
            calls = [row['calls'][index] for row in observation['rows']]
            elapsed = [row['elapsedMs'][index] for row in observation['rows']]
            count = sum(calls)
            total = math.fsum(elapsed)
            details.append(dict(name=name,totalCalls=count,totalElapsedMs=total,
                callsPerFrame=count/100,elapsedMsPerFrame=distribution(elapsed),
                averageIntervalMs=total/count if count else None,framesWithIntervals=sum(value>0 for value in calls)))
        records.append(dict(audit=run['audit'],samples=run['samples'],scene=observation['name'],
            frames=100,file=run['file'],totalCalls=sum(d['totalCalls'] for d in details),
            totalWaitElapsedMs=math.fsum(totals),frameElapsedMs=distribution(frame_ms),
            waitElapsedMsPerFrame=distribution(totals),
            aggregateWaitWallFraction=math.fsum(totals)/math.fsum(frame_ms),categories=details))
assert len(records) == 12
assert {(row['audit'],row['samples'],row['scene']) for row in records} == {
    (audit,samples,scene) for audit in (1,2) for samples in (0,2,4) for scene in ('bmw','tank')}
result = dict(wasmSha256=runs['wasmSha256'],notAcceptanceTimings=True,observedFrames=1200,records=records,
    interpretation='Caller-local wall intervals of explicit SoftGL polling, including preemption. Timer calls bracket waits and can alter scheduling. Outer frame clocks bracket draw and resolve; counts are read afterward. Warmup/loading/cleanup excluded from rows. These times are not scheduled CPU time, saved cycles, an uninstrumented performance limit or an FPS prediction.')
if '--check' in sys.argv:
    assert json.loads((root/'analysis.json').read_text()) == result
else:
    (root/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
print('Independently verified all1200 frames and eight categories; no overlapping interval total exceeds its outer frame')
for row in records:
    active = [(entry['name'],round(entry['elapsedMsPerFrame']['mean'],4),entry['totalCalls'])
        for entry in row['categories'] if entry['totalCalls']]
    print(row['audit'],row['samples'],row['scene'],
        f"wait={row['waitElapsedMsPerFrame']['mean']:.6f}ms/frame fraction={row['aggregateWaitWallFraction']:.6f}",active)
