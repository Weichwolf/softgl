#!/usr/bin/env python3
"""Collect actual atlas coverage/relighting evidence; never claim kernel FPS."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--assets', default='bistro,sponza,bmw,t80')
parser.add_argument('--samples', default='0,2,4')
parser.add_argument('--configs', default='single,wide,triple')
parser.add_argument('--motions', default='slow,rapid')
parser.add_argument('--compact',action='store_true')
args = parser.parse_args()
root = args.root.resolve()
output = args.output.resolve(); output.mkdir(parents=True,exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
models = json.loads((repo/'assets/models.json').read_text())
configs = {'single':(1.,1), 'wide':(.4,1), 'triple':(1.,3), 'triple_guard':(.97,3)}
motions = {'slow':(.5,16),'rapid':(12.,30)}
receipt = dict(kind='quality-and-coverage-census', endToEndBenchmark=False,
    baseline=subprocess.check_output(['git','rev-parse','HEAD'],cwd=repo,text=True).strip(),
    width=640,height=360,threads=4,sourceManifest=json.loads((root/'source.json').read_text()),
    binarySha256=digest(root/'native/key_probe'),cmakeCacheSha256=digest(root/'native/CMakeCache.txt'),
    runnerSha256=digest(Path(__file__)),assetsModelsSha256=digest(repo/'assets/models.json'),
    packsSha256={asset:digest(repo/'build/assets'/f'{asset}.pack') for asset in args.assets.split(',')},
    trials=[])

for asset in args.assets.split(','):
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
    env.pop('SOFTGL_KEY_PACK',None)
    if args.compact: env['SOFTGL_KEY_PACK'] = '1'
    if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    for samples in map(int,args.samples.split(',')):
        command = [str(root/'native/key_probe'),str(repo/'build/assets'/f'{asset}.pack'),str(samples)]
        log = (output/f'{asset}-ms{samples}-stderr.txt').open('w')
        process = subprocess.Popen(command,env=env,text=True,stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,stderr=log,bufsize=1)
        ready = json.loads(process.stdout.readline()); assert ready['ready'] and ready['threads'] == 4
        for config in args.configs.split(','):
            for motion in args.motions.split(','):
                scale,count = configs[config]; step,frames = motions[motion]
                prefix = output/f'{asset}-ms{samples}-{config}-{motion}'
                request = f'{scale} {count} {step} {frames} {prefix}\n'
                trial = dict(asset=asset,samples=samples,config=config,motion=motion,
                    command=command,request=request.strip(),camera=models[asset].get('camera'),
                    ready=ready,records=[])
                receipt['trials'].append(trial)
                start = time.monotonic()
                process.stdin.write(request); process.stdin.flush()
                while True:
                    line = process.stdout.readline()
                    if not line: raise RuntimeError((asset,samples,config,motion,process.poll()))
                    record = json.loads(line)
                    trial['records'].append(record)
                    if record.get('done'): break
                trial['elapsedSeconds'] = time.monotonic()-start
                (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
                directional = [r for r in trial['records'] if r.get('kind') == 'frame' and not r['oracle']]
                summary = dict(asset=asset,samples=samples,config=config,motion=motion,
                    directionalFrames=len(directional),
                    key=next(r for r in trial['records'] if r.get('kind') == 'keys'))
                for block in (1,2):
                    rows = [r for r in directional if r['block'] == block]
                    if rows:
                        summary[f'block{block}'] = dict(kernelMedianMs=statistics.median(r['kernelMs'] for r in rows),
                            freshMedianMs=statistics.median(r['freshMs'] for r in rows),
                            meanMae255=statistics.mean(r['mae255'] for r in rows),
                            maximumMae255=max(r['mae255'] for r in rows),
                            maximumMissingPercent=max(r['missingGeometryPercent'] for r in rows),
                            maximumOutsidePercent=max(r['outsidePixels']*100/(640*360) for r in rows),
                            maximumMaterialMismatchPercent=max(r['materialMismatchPercent'] for r in rows))
                print(json.dumps(summary),flush=True)
        process.stdin.close(); process.wait(timeout=60); assert process.returncode == 0
        log.close()
receipt['filesSha256'] = {p.name:digest(p) for p in sorted(output.glob('*.rgba'))}
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
