from pathlib import Path
import hashlib,json,math,sys
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;p=Path(sys.argv[1]);d=json.loads(p.read_text());v=json.loads((r/'validation.json').read_text());h=d['hardwareProfile']
assert d['wasmSha256']==v['referenceWasmSha256'] and d['notAcceptanceTimings']
assert d['metadata']['width']==640 and d['metadata']['height']==360 and d['metadata']['crossOriginIsolated']
assert h['preparation']==dict(warmup=80,frames=240,workers=3)
assert h['scene'] in ['bmw','tank'] and d['options']['samples'] in [0,2,4]
assert len(d['benchmarks']['scenes'])==1 and d['benchmarks']['scenes'][0]['name']==h['scene']
assert d['benchmarks']['workers']==3 and d['benchmarks']['resolvePerFrame']
assert h['collectorSha256']==hashlib.sha256((r/'pmu-collector').read_bytes()).hexdigest()
assert [event['name'] for event in h['events']]==['cycles-user','instructions-user','branch-misses-user','l1d-read-misses-user','cache-misses-user']
assert h['collector']['exit']==dict(code=0,signal=None) and h['collector']['stderr']=='' and h['sameThreadSet']
keys=lambda rows:sorted((x['pid'],x['tid'],x['birthTicks']) for x in rows)
assert keys(h['before'])==keys(h['after'])==keys(h['rows'])
assert len({x['tid'] for x in h['rows']})==len(h['rows'])==len(h['collector']['ready']['threads'])
raw=h['collector']['stopped']['rows'];assert len(raw)==len(h['rows'])
for i,row in enumerate(h['rows']):
 assert all(row[k]==raw[i][k] for k in raw[i])
 assert row['pid']==h['collector']['ready']['threads'][i]['pid'] and row['tid']==h['collector']['ready']['threads'][i]['tid']
 assert len(row['values'])==5 and all(isinstance(x,int) and 0<=x<2**53 for x in row['values'])
 assert 0<=row['timeRunningNs']<=row['timeEnabledNs']
 assert 0<=row['taskClockRunningNs']<=row['taskClockEnabledNs']
 if any(row['values']):assert row['timeRunningNs']>0
 assert isinstance(row['taskClockNs'],int) and 0<=row['taskClockNs']<2**53
 assert len(set(h['collector']['ready']['threads'][i]['ids']))==5
 assert h['collector']['ready']['threads'][i]['taskClockId'] not in h['collector']['ready']['threads'][i]['ids']
assert h['render']['end']>h['render']['start'] and math.isclose(h['render']['elapsedMs'],h['render']['end']-h['render']['start'],abs_tol=1e-8)
assert h['collector']['started']['beginNs']<=h['collector']['started']['endNs']<h['collector']['stopped']['beginNs']<=h['collector']['stopped']['endNs']
assert len([x for x in h['rows'] if x['name']=='DedicatedWorker' and x['values'][1]>0])==3
# Preserve raw multiplexing times; scaling belongs to the analysis, not filtering.
assert sum(x['values'][0] for x in h['rows'])>0 and sum(x['values'][1] for x in h['rows'])>0
print(h['scene'],d['options']['samples'],len(h['rows']),'thread identities/groups/task clocks and scope checks pass')
