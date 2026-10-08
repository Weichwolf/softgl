#!/usr/bin/env python3
"""Measure real frame phases and verify output against the accepted renderer."""
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess

repo=Path(__file__).resolve().parents[2]
output=repo/'tmp/scene-phase-profile';output.mkdir(parents=True,exist_ok=True)
models=json.loads((repo/'assets/models.json').read_text())
env=os.environ.copy();env.pop('SOFTGL_CAMERA',None)
env['SOFTGL_CAMERA']=','.join(map(str,models['bistro']['camera']))
pack=repo/'build/assets/bistro.pack'
def digest(path): return hashlib.sha256(path.read_bytes()).hexdigest()
results=[]
for variant,binary in [('baseline',repo/'build/scene-depth-order/native/resident_baseline'),
    ('instrumented',repo/'build/scene-phase-profile/native/resident')]:
    logpath=output/f'{variant}.log'
    with logpath.open('w') as log:
        process=subprocess.Popen([str(binary),str(pack)],env=env,stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,stderr=log,text=True,bufsize=1)
        assert json.loads(process.stdout.readline())['ready']
        request='4 60 30 160 -\n'
        process.stdin.write(request);process.stdin.flush()
        row=json.loads(process.stdout.readline())
        process.stdin.close();assert process.wait()==0
    results.append(dict(variant=variant,binarySha256=digest(binary),driverResult=row,
        request=request.strip(),logSha256=digest(logpath)))
keys=('rgba','depth','stencil','sampleDepth','sampleStencil')
assert all(results[0]['driverResult'][k]==results[1]['driverResult'][k] for k in keys)
frames=[];current=None
for line in (output/'instrumented.log').read_text().splitlines():
    if line.startswith('PHFRAME '):
        assert current is None
        current=json.loads(line[len('PHFRAME '):]);current['phases']={}
    elif line.startswith('PHASE ') and current is not None:
        event=json.loads(line[len('PHASE '):]);assert event['name'] not in current['phases']
        current['phases'][event['name']]=event['ms']
    elif line.startswith('PHEND '):
        assert current is not None
        current.update(json.loads(line[len('PHEND '):]));frames.append(current);current=None
assert len(frames)==90 and sum(f['frame']>=0 for f in frames)==30 and current is None
names=('model_setup','begin','commands','positions','triangles','references','raster',
    'visibility_mark','grouping','attributes','shade_list','shading','transparent_submit')
for frame in frames:
    assert set(frame['phases'])==set(names)
    frame['otherMs']=frame['frameMs']-frame['readbackMs']-sum(frame['phases'].values())
measured=[f for f in frames if f['frame']>=0]
summary={name:statistics.mean(f['phases'][name] for f in measured) for name in names}
for name in ('readbackMs','otherMs','frameMs'):
    summary[name]=statistics.mean(f[name] for f in measured)
receipt=dict(baseline='da48afd',asset='bistro',samples=4,width=640,height=360,threads=4,
    camera=models['bistro']['camera'],packSha256=digest(pack),
    measuredWithInstrumentation=True,performanceAcceptance=False,
    runnerSha256=digest(Path(__file__)),renderedFinalPlanesByteIdentical=True,
    runs=results,frames=frames,meanMeasuredMs=summary)
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(json.dumps(summary,indent=2))
print('90 diagnostic frames; 30 measured frames; final full-frame/sample planes identical PASS')
