#!/usr/bin/env python3
"""Record current-frame joined phase timings; no optimization claim."""
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
output = repo/'tmp/scene-current-phase-accounting'; output.mkdir(parents=True,exist_ok=True)
binary = repo/'build/scene-current-phase-accounting/native/phase_scene'
models = json.loads((repo/'assets/models.json').read_text())
phases = ['begin','commandsAndFlush','allocation','positions','triangles','prefix',
          'references','visibility','winningAttributes','materialBuckets','shading']

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def snapshot():
    result = {}
    for p in Path('/proc').iterdir():
        if not p.name.isdecimal(): continue
        try:
            raw = (p/'stat').read_text(); fields = raw[raw.rfind(')')+2:].split()
            result[int(p.name)] = (int(fields[1]),int(fields[11])+int(fields[12]))
        except (FileNotFoundError,ProcessLookupError,PermissionError): pass
    return result

records = []; summary = []
source = repo/'build/scene-current-phase-accounting/source'
receipt = {'diagnosticOnly':True,'width':640,'height':360,'samples':0,'threads':4,
           'warmup':60,'frames':120,'phases':phases,'records':records,
           'binarySha256':digest(binary),'runnerSha256':digest(Path(__file__)),
           'driverSha256':digest(Path(__file__).with_name('phase_scene.c')),
           'sourcesSha256':{str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
           'baseline':(source/'baseline.txt').read_text().strip()}
for asset in ('bmw','t80','sponza','bistro'):
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
    if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    image = output/f'{asset}.ppm'; pack = repo/'build/assets'/f'{asset}.pack'
    command = [str(binary),str(pack),'60','120',str(image)]
    before = snapshot(); start = time.monotonic(); tracked = {os.getpid()}; ticks = 0
    with (output/f'{asset}.jsonl').open('w') as log:
        process = subprocess.Popen(command,env=env,stdout=log,stderr=subprocess.PIPE,text=True)
        tracked.add(process.pid)
        while process.poll() is None:
            time.sleep(.2); now = snapshot()
            for pid,(parent,_) in now.items():
                if parent in tracked: tracked.add(pid)
            for pid,(_,value) in now.items():
                if pid not in tracked and pid in before: ticks += max(0,value-before[pid][1])
            before = now
        _,stderr = process.communicate()
    assert process.returncode == 0,(asset,process.returncode,stderr)
    frames = [json.loads(s) for s in (output/f'{asset}.jsonl').read_text().splitlines()]
    assert len(frames) == 120 and all(len(f['phaseMs'])==11 for f in frames)
    for f in frames:
        f['outsideSceneMs'] = f['totalMs']-sum(f['phaseMs'])
        assert f['outsideSceneMs'] >= -1e-5,f
    reference = repo/'tmp/scene-quantized-row-spans/quality'/f'{asset}-ms0-baseline-angle160.ppm'
    assert image.read_bytes()==reference.read_bytes(),asset
    load = ticks/os.sysconf('SC_CLK_TCK')/(time.monotonic()-start)
    records.append({'asset':asset,'command':command,'camera':models[asset].get('camera'),
                    'packSha256':digest(pack),'foreignCpuCores':load,'stderr':stderr,
                    'finalAngle160RgbByteIdentical':True,'imageSha256':digest(image),
                    'referenceImageSha256':digest(reference),'frames':frames})
    total = statistics.mean(f['totalMs'] for f in frames)
    means = {phase:statistics.mean(f['phaseMs'][i] for f in frames) for i,phase in enumerate(phases)}
    means['outsideScene'] = statistics.mean(f['outsideSceneMs'] for f in frames)
    row = {'asset':asset,'frames':120,'meanCompleteFrameMs':total,'medianCompleteFrameMs':statistics.median(f['totalMs'] for f in frames),
           'meanPhaseMs':means,'meanPhaseFramePercent':{k:v/total*100 for k,v in means.items()},'foreignCpuCores':load}
    summary.append(row)
    (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    (output/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(row),flush=True)
