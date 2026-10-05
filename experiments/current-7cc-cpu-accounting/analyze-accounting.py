"""Recompute task CPU accounting from raw before/after snapshots."""
from pathlib import Path
import hashlib
import json
import math
import re
import sys

r = Path(__file__).resolve().parent
runs = json.loads((r/'runs/runs.json').read_text())
assert runs['notAcceptanceTimings'] and len(runs['records']) == 6
records = []
def close(a,b):
    assert math.isclose(a,b,rel_tol=1e-12,abs_tol=1e-10),(a,b)
def key(t):
    return (t['pid'],t['processBirth'],t['tid'],t['birth'])
for run in runs['records']:
    p = r/'runs'/run['file']
    assert hashlib.sha256(p.read_bytes()).hexdigest() == run['sha256']
    d = json.loads(p.read_text())
    assert d['wasmSha256'] == runs['wasmSha256']
    assert d['benchmarks']['workerCounts'] == {'candidate':3}
    assert d['metadata']['width'] == 640 and d['metadata']['height'] == 360
    assert d['metadata']['crossOriginIsolated']
    assert len(d['cpuAccounting']) == 2
    for row in d['cpuAccounting']:
        before,after = row['before'],row['after']
        assert not before['errors'] and not after['errors']
        for snap in (before,after):
            assert snap['endMs'] >= snap['startMs']
            assert snap['renderers'] and snap['tasks']
            by_pid = {p['pid']:p for p in snap['renderers']}
            for process in by_pid.values():
                assert re.search(r'(?:^|\s)--type=renderer(?:\s|$)',' '.join(process['command']))
            for task in snap['tasks']:
                assert task['processBirth'] == by_pid[task['pid']]['birth']
                assert snap['startMs'] <= task['stampMs'] <= snap['endMs']
        old = {key(t):t for t in before['tasks']}
        new = {key(t):t for t in after['tasks']}
        assert len(old) == len(before['tasks']) and len(new) == len(after['tasks'])
        assert old.keys() == new.keys(), 'Account for thread births/exits explicitly'
        assert not row['unmatchedBefore'] and not row['unmatchedAfter']
        elapsed = (after['startMs']+after['endMs']-before['startMs']-before['endMs'])/2
        close(elapsed,row['elapsedMs'])
        assert elapsed > 0 and row['ticksPerSecond'] == 100
        calculated = []
        groups = {}
        for k,task in new.items():
            ticks = task['userTicks']+task['systemTicks']-old[k]['userTicks']-old[k]['systemTicks']
            assert isinstance(ticks,int) and ticks >= 0
            groups[task['comm']] = groups.get(task['comm'],0)+ticks
            cores = ticks / row['ticksPerSecond'] / (elapsed/1000)
            observed = next(t for t in row['rows'] if t['pid']==task['pid'] and t['tid']==task['tid'] and t['birth']==task['birth'])
            assert observed['ticks'] == ticks and observed['comm']==task['comm']
            close(observed['averageCores'],cores)
            close(observed['seconds'],ticks/row['ticksPerSecond'])
            calculated.append(dict(pid=task['pid'],tid=task['tid'],comm=task['comm'],ticks=ticks,cores=cores))
        total = sum(t['ticks'] for t in calculated)
        assert row['groups'] == groups and row['totalStableThreadTicks'] == total
        close(row['stableThreadCpuSeconds'],total/row['ticksPerSecond'])
        cores = total/row['ticksPerSecond']/(elapsed/1000)
        close(row['stableThreadAverageCores'],cores)
        bound = before['endMs']-before['startMs']+after['endMs']-after['startMs']
        close(bound,row['snapshotBoundMs'])
        leaders = sorted([t for t in calculated if t['pid']==t['tid']],key=lambda t:t['ticks'],reverse=True)
        workers = sorted([t for t in calculated if t['comm']=='DedicatedWorker'],key=lambda t:t['ticks'],reverse=True)
        assert len(workers)==8 and len(leaders)>=1
        assert row['samples']==run['samples'] and row['frames']==240 and row['warmup']==80
        assert row['round']==0 and row['variant']=='candidate' and row['renderWorkers']==3
        assert len(row['rows'])==len(calculated)
        records.append(dict(audit=run['audit'],samples=run['samples'],scene=row['name'],
            totalScheduledCores=cores,activeRendererLeaderCores=leaders[0]['cores'],
            dedicatedWorkerCores=[t['cores'] for t in workers],
            otherRendererCores=cores-leaders[0]['cores']-sum(t['cores'] for t in workers),
            elapsedMs=elapsed,snapshotBoundMs=bound,snapshotBoundFraction=bound/elapsed,
            matchedTaskCount=len(calculated),unmatchedTaskCount=0,file=run['file']))
assert len(records)==12
assert {(r['audit'],r['samples'],r['scene']) for r in records} == {(a,s,n) for a in (1,2) for s in (0,2,4) for n in ('bmw','tank')}
result = dict(wasmSha256=runs['wasmSha256'],notAcceptanceTimings=True,records=records,
    interpretation='CPU ticks count scheduled time including stalls and polling. The dominant renderer leader is nearly continuously scheduled; three active DedicatedWorker threads have closely matched CPU costs and lower occupancy. This does not distinguish useful rendering from waiting, prove a serial bottleneck, measure cache events or establish a hardware ceiling.',
    nextHypothesis='Inspect caller polling/joins and test useful helping versus blocking only when no work is claimable. A worker-hosted caller can legally block, but the current SoftGL loops also poll explicitly, so moving the same module alone would not remove those loops. Any change needs full correctness and all-mode repeated comparisons.')
if '--check' in sys.argv:
    assert json.loads((r/'analysis.json').read_text()) == result
else:
    (r/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
print('Independently recomputed all12 CPU windows from raw task births/ticks/clocks; no unmatched tasks')
for row in records:
    print(row['audit'],row['samples'],row['scene'],f"total={row['totalScheduledCores']:.3f}",f"leader={row['activeRendererLeaderCores']:.3f}",f"workers={[round(t,3) for t in row['dedicatedWorkerCores'][:3]]}")
