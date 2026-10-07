"""Independently verify retained captures and summarize logical texel groups."""
from pathlib import Path
import hashlib
import importlib.util
import json
import sys

sys.dont_write_bytecode = True
r = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r/'validation.json')
spec = importlib.util.spec_from_file_location('footprint_check', r/'check-row.py')
checker = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)
index = load(r/'runs/runs.json')
assert index['notAcceptanceTimings'] and index['wasmSha256'] == v['diagnosticWasmSha256']
assert [(x['audit'], x['samples']) for x in index['records']] == [(1,0),(1,2),(1,4),(2,4),(2,2),(2,0)]

def merge(rows):
    table = {}
    for row in rows:
        for values in row['entries']:
            identity = checker.key(values)
            if identity not in table: table[identity] = values[:8]+[0]*56
            for cell in range(8,64):
                table[identity][cell] += values[cell]
                if cell == 29: table[identity][cell] %= 2**32
    return [table[k] for k in sorted(table)]

def population(entries):
    total = [sum(values[cell] for values in entries) for cell in range(64)]
    linear = total[11]
    fraction = lambda value: value/linear if linear else None
    return dict(sampleRequests=total[9],linearRequests=linear,nearestRequests=total[10],
        actual2DFootprints=total[26],texelTaps=total[27],uniqueTexelOffsetSum=total[28],
        actualHorizontalPairSamples=total[12],actualHorizontalPairFraction=fraction(total[12]),
        rowGroupsPerLinearSample=fraction(total[17]),tile4GroupsPerLinearSample=fraction(total[19]),
        y8GroupsPerLinearSample=fraction(total[22]),rowSingleGroupFraction=fraction(total[18]),
        tile4SingleGroupFraction=fraction(total[20]),y8SingleGroupFraction=fraction(total[23]),
        tile4HorizontalAdjacentFraction=fraction(total[21]),
        tile4FullPacketPairFraction=fraction(total[25]),y8VerticalAdjacentFraction=fraction(total[24]),
        collapsedXFraction=fraction(total[14]),collapsedYFraction=fraction(total[15]))

summaries, repeats, guards, frames = [], [], [], {}
assets = None
for record in index['records']:
    path = r/'runs'/record['file']
    assert sha(path) == record['sha256']
    data = load(path)
    assert data['notAcceptanceTimings'] and data['wasmSha256'] == v['diagnosticWasmSha256']
    assert data['driverSha256'] == sha(r/'wasm_perf_footprints.cjs')
    assert data['gitCommit'] == v.get('observationGitCommit',v['researchBaselineCommit'])
    assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360
    assert data['metadata']['crossOriginIsolated'] and data['metadata']['hardwareConcurrency'] == 4
    assert data['options']['rounds'] == 1 and data['options']['warmup'] == 80 and data['options']['frames'] == 100
    assert data['benchmarks']['workerCounts'] == {'candidate':3}
    assert data['benchmarks']['samples'] == record['samples'] and data['benchmarks']['resolvePerFrame']
    if assets is None: assets = data['modelAssets']
    assert data['modelAssets'] == assets
    accepted = []
    for monitor in sorted(path.parent.glob(path.stem+'.attempt-*.monitor.json')):
        q = load(monitor)
        assert q['guardSha256'] == sha(r/'wasm_quiet_audit.py')
        assert q['foreignCPUThresholdCores'] == .10 and q['settlePolls'] == 6 and q['pollSeconds'] == .5
        assert monitor.with_name(monitor.name.replace('.monitor.json','.log')).is_file()
        guards.append(dict(file=monitor.name,sha256=sha(monitor),exitCode=q['exitCode'],unexpectedActivity=q['unexpectedActivity']))
        if q['exitCode'] == 0 and not q['unexpectedActivity']: accepted.append(monitor.name)
    assert len(accepted) == 1
    expected = load(r/f"frame-equivalence-{record['samples']}.json")['models']
    observations = data['footprintObservations']
    assert [ob['name'] for ob in observations] == (['bmw','tank'] if record['audit']==1 else ['tank','bmw'])
    for ob in observations:
        assert ob['workers']==3 and ob['samples']==record['samples'] and ob['round']==0
        assert ob['variant']=='candidate' and ob['warmup']==80 and ob['frames']==len(ob['rows'])==100
        parsed = []
        for i,row in enumerate(ob['rows']):
            assert row['frame']==i and row['angle']==i*360/100
            parsed.append(checker.check_row(row,record['samples'],expected[ob['name']]['rows'][i]['hash']))
        entries = merge(ob['rows'])
        for values in entries: checker.check_entry(values)
        kinds = []
        for k,name in enumerate(v['schema']['paths']):
            group = [values for values in entries if values[1]==k]
            if group: kinds.append(dict(path=name,**population(group)))
        dimensions = [dict(path=v['schema']['paths'][e[1]],width=e[2],height=e[3],depth=e[4],
            filter=e[5],wrapS=e[6],wrapT=e[7],**population([e])) for e in entries]
        direct = [e for e in entries if e[1] in [0,1,3,4,5,6]]
        cube = [e for e in entries if e[1] in [2,7]]
        summaries.append(dict(scene=ob['name'],samples=record['samples'],audit=record['audit'],frames=100,
            **population(entries),direct2D=population(direct),cubeFaces=population(cube),byPath=kinds,byDimension=dimensions,
            activeProducerFrameHistogram={str(n):sum(p['activeProducers']==n for p in parsed) for n in range(5)},
            maxLifetimeSlots=max(row['meta'][0] for row in ob['rows']),aggregateEntries=entries))
        frames[ob['name'],record['samples'],record['audit']] = ob['rows']
for scene in ['bmw','tank']:
    for samples in [0,2,4]:
        a,b = [frames[scene,samples,audit] for audit in [1,2]]
        equal = sum(x['entries']==y['entries'] for x,y in zip(a,b))
        assert equal == 100 and all(x['hash']==y['hash'] for x,y in zip(a,b))
        repeats.append(dict(scene=scene,samples=samples,equalAggregateKeyTableFrames=equal,equalFrameHashes=100,
            threadPartitionsRequiredEqual=False,note='TLS ownership may vary; aggregated counters and coordinate fingerprints are identical.'))
result = dict(diagnosticWasmSha256=v['diagnosticWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],
    notAcceptanceTimings=True,checkedFrames=1200,modelAssets=assets,summary=summaries,repeatability=repeats,guards=guards,
    interpretation='Logical level-relative 16-texel groups, origin zero. Not physical cache lines, misses, bandwidth or saved time. Valid 1D/3D calls and constant elisions have no 2D footprints. Early missing/white returns perform no texel fetch and are outside counter coverage.')
if '--check' in sys.argv: assert load(r/'analysis.json') == result
else: (r/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for row in summaries:
    print(row['scene'],row['samples'],row['audit'],'requests/frame',row['sampleRequests']/100,
        'row/tile4/Y8',row['rowGroupsPerLinearSample'],row['tile4GroupsPerLinearSample'],row['y8GroupsPerLinearSample'],
        'pair/tile4-pair',row['actualHorizontalPairFraction'],row['tile4FullPacketPairFraction'])
print('PASS: 1200 exact model hashes and per-thread key tables; 600 repeated-angle aggregate tables identical; no timing claim')
