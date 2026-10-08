#!/usr/bin/env python3
"""Attach user-only perf after import; profile real 4-thread sample rendering."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import signal
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--assets', default='bmw,t80,sponza,bistro')
parser.add_argument('--variants', default='baseline,candidate')
parser.add_argument('--samples', type=int, default=4)
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
records = []
def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()
for asset in args.assets.split(','):
    for variant in args.variants.split(','):
        binary = (args.root/'native'/f'resident_{variant}').resolve()
        pack = repo/'build/assets'/f'{asset}.pack'
        env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
        if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
        stem = args.output/f'{asset}-{variant}-msaa{args.samples}'
        with Path(str(stem)+'.driver-stderr.txt').open('w') as log:
            driver = subprocess.Popen([str(binary),str(pack)],env=env,text=True,
                stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=log,bufsize=1)
            assert json.loads(driver.stdout.readline())['ready']
            command = ['perf','record','-e','cycles:u','-F','499',
                       '-p',str(driver.pid),'-o',str(stem)+'.perf.data']
            with Path(str(stem)+'.perf-stderr.txt').open('w') as perf_log:
                profiler = subprocess.Popen(command,stdout=perf_log,stderr=perf_log)
                # Allow attachment before requesting fresh workers. These workers
                # inherit the user-only events. No import is sampled.
                time.sleep(.3)
                assert profiler.poll() is None
                request = f'{args.samples} 60 120 160 -\n'
                driver.stdin.write(request); driver.stdin.flush()
                result = json.loads(driver.stdout.readline())
                profiler.send_signal(signal.SIGINT)
                code = profiler.wait()
                # perf can retain SIGINT as its exit status after writing a
                # complete recording. Successful report parsing checks it.
                assert code in (0,-signal.SIGINT), code
            driver.stdin.close()
            assert driver.wait() == 0
        report = subprocess.check_output(['perf','report','--stdio','--no-children',
            '--call-graph','none','--sort','symbol','--percent-limit','0.5','-i',str(stem)+'.perf.data'],text=True)
        Path(str(stem)+'.report.txt').write_text(report)
        records.append(dict(asset=asset,variant=variant,samples=args.samples,
            width=640,height=360,threads=4,warmup=60,frames=120,
            camera=models[asset].get('camera'),packSha256=digest(pack),binarySha256=digest(binary),
            command=command,request=request.strip(),driverResult=result,
            dataSha256=digest(Path(str(stem)+'.perf.data')),
            reportSha256=digest(Path(str(stem)+'.report.txt')),
            measuredWithProfiler=True,performanceAcceptance=False))
        (args.output/'receipt.json').write_text(json.dumps(records,indent=2)+'\n')
        print(json.dumps(dict(asset=asset,variant=variant,samples=args.samples,profile='PASS')),flush=True)
