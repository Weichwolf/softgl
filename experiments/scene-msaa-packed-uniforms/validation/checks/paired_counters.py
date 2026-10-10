#!/usr/bin/env python3
"""Diagnostic hardware counters with both original-model drivers resident."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import select
import signal
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--control',type=Path,required=True)
parser.add_argument('--candidate',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--asset',default='sponza',choices=('bmw','t80','sponza','bistro'))
args = parser.parse_args()
roots = dict(baseline=args.control.resolve(),candidate=args.candidate.resolve())
output = args.output.resolve(); output.mkdir(parents=True,exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
models = json.loads((repo/'assets/models.json').read_text())
pack = repo/'build/assets'/(args.asset+'.pack')
events = 'cycles:u,instructions:u,cache-misses:u,task-clock,context-switches,cpu-migrations,page-faults'
env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None); env['LC_ALL'] = 'C'
if 'camera' in models[args.asset]:
    env['SOFTGL_CAMERA'] = ','.join(map(str,models[args.asset]['camera']))
receipt = dict(passed=False,diagnosticOnly=True,performanceAcceptance=False,
    asset=args.asset,width=640,height=360,threads=4,samples=4,events=events,
    camera=models[args.asset].get('camera'),packSha256=digest(pack),
    runnerSha256=digest(Path(__file__)),
    binarySha256={v:digest(p/'native/resident_candidate') for v,p in roots.items()},
    sourceManifestSha256={v:digest(p/'source.json') for v,p in roots.items()},
    programs={},warmups=[],records=[],counters={},
    scope='Both real drivers imported before any profiled request. One disabled-counter '
          'warmup per driver first. Four balanced AB/BA requests then include 60 warm '
          'and 30 rotating frames, worker restart, angle160 and final hashes. '
          'Counters aggregate two requests per variant; never an FPS acceptance gate.')

def save():
    (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')

def line(stream):
    assert select.select([stream],[],[],120)[0], 'Real driver response timeout'
    result = stream.readline()
    assert result, 'Real driver ended before response'
    return result

def acknowledge(stream):
    data = b''
    while len(data) < 5:
        assert select.select([stream],[],[],10)[0], 'Perf control acknowledgement timeout'
        chunk = stream.read(5-len(data))
        assert chunk, 'Perf control pipe ended'
        data += chunk
    assert data == b'ack\n\x00',repr(data)

programs = {}
try:
    for variant,root in roots.items():
        control_read,control_write = os.pipe(); ack_read,ack_write = os.pipe()
        report = output/(variant+'-counters.csv')
        command = ['perf','stat','-x',';','-e',events,'-o',str(report),
                   '--delay=-1','--control',f'fd:{control_read},{ack_write}',
                   '--',str(root/'native/resident_candidate'),str(pack)]
        stderr = (output/(variant+'-stderr.txt')).open('w')
        process = subprocess.Popen(command,env=env,text=True,bufsize=1,
            stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=stderr,
            pass_fds=(control_read,ack_write),start_new_session=True)
        os.close(control_read); os.close(ack_write)
        control = os.fdopen(control_write,'w',buffering=1)
        ack = os.fdopen(ack_read,'rb',buffering=0)
        programs[variant] = (process,control,ack,stderr)
        ready = json.loads(line(process.stdout))
        assert ready['ready'] and ready['width'] == 640 and ready['height'] == 360
        receipt['programs'][variant] = dict(command=command,pid=process.pid,ready=ready)
        save()
    request = '4 60 30 160 -\n'
    for variant,(process,control,ack,stderr) in programs.items():
        process.stdin.write(request); process.stdin.flush()
        result = json.loads(line(process.stdout))
        assert result['threads'] == 4 and result['samples'] == 4
        receipt['warmups'].append(dict(variant=variant,request=request.strip(),result=result))
        save()
    for variant in ('baseline','candidate','candidate','baseline'):
        process,control,ack,stderr = programs[variant]
        control.write('enable\n'); acknowledge(ack)
        process.stdin.write(request); process.stdin.flush()
        result = json.loads(line(process.stdout))
        control.write('disable\n'); acknowledge(ack)
        assert result['threads'] == 4 and result['samples'] == 4
        assert result['width'] == 640 and result['height'] == 360
        receipt['records'].append(dict(variant=variant,request=request.strip(),result=result))
        save()
        print(variant,'actual profiled request',result['ms'],'ms/frame',flush=True)
    for variant,(process,control,ack,stderr) in programs.items():
        process.stdin.close(); assert process.wait(timeout=30) == 0
        control.close(); ack.close(); stderr.close()
        report = output/(variant+'-counters.csv')
        parsed = []
        for raw in report.read_text().splitlines():
            if not raw or raw.startswith('#'): continue
            fields = raw.split(';')
            if len(fields) < 5: continue
            parsed.append(dict(value=fields[0],unit=fields[1],event=fields[2],
                runningTime=fields[3],runningPercent=fields[4],raw=raw))
        receipt['counters'][variant] = dict(rows=parsed,reportSha256=digest(report),
            stderrSha256=digest(output/(variant+'-stderr.txt')))
        for event in ('cycles:u','instructions:u','cache-misses:u'):
            row = next(r for r in parsed if r['event'] == event)
            assert float(row['value']) > 0 and float(row['runningPercent']) > 0
        save()
    for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
        assert len({r['result'][field] for r in receipt['records']}) == 1,field
    receipt['passed'] = True; save()
    print('Paired resident hardware diagnostics completed; all endpoint planes exact',flush=True)
finally:
    for process,control,ack,stderr in programs.values():
        if process.poll() is None:
            os.killpg(process.pid,signal.SIGKILL); process.wait()
        for stream in (control,ack,stderr):
            if not stream.closed: stream.close()
