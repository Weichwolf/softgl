#!/usr/bin/env python3
"""Verify resident context/MSAA reuse against the independent fresh-context oracle."""
import hashlib,json,os,subprocess
from pathlib import Path
repo=Path(__file__).resolve().parents[2]
reference=json.loads((repo/'experiments/fused-transparent-pass/validation/quality.json').read_text())
models=json.loads((repo/'assets/models.json').read_text())
output=repo/'tmp/fused-transparent-pass/resident-quality';output.mkdir(parents=True,exist_ok=True)
receipt={'width':640,'height':360,'threads':4,'records':[],'binarySha256':{},'runnerSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'oracleReceiptSha256':hashlib.sha256((repo/'experiments/fused-transparent-pass/validation/quality.json').read_bytes()).hexdigest()}
for asset in ['bmw','t80','sponza','bistro']:
    env=os.environ.copy();env.pop('SOFTGL_CAMERA',None)
    if 'camera' in models[asset]:env['SOFTGL_CAMERA']=','.join(map(str,models[asset]['camera']))
    for variant in ['baseline','candidate']:
        binary=repo/'build/fused-transparent-pass/native'/f'resident_{variant}'
        receipt['binarySha256'][variant]=hashlib.sha256(binary.read_bytes()).hexdigest()
        logfile=(output/f'{asset}-{variant}.log').open('w')
        p=subprocess.Popen([str(binary),str(repo/'build/assets'/f'{asset}.pack')],env=env,text=True,stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=logfile,bufsize=1)
        assert json.loads(p.stdout.readline())['ready']
        for samples in [0,2,4,0]:
            for angle in [0,45,90,135,160,180,225,270,315]:
                p.stdin.write(f'{samples} 0 1 {angle} -\n');p.stdin.flush()
                row=json.loads(p.stdout.readline())
                oracle=next(run for run in reference['runs'] if run['asset']==asset and run['samples']==samples and run['variant']==variant)
                frame=next(r for r in oracle['frames'] if r['angle']==angle)
                assert all(row[k]==frame[k] for k in ['rgba','depth','stencil','sampleDepth','sampleStencil']),(asset,variant,samples,angle,row,frame)
                receipt['records'].append({'asset':asset,'variant':variant,'samples':samples,'angle':angle,'fullFramePlaneHashesMatch':True})
        p.stdin.close();p.wait(timeout=60);logfile.close();assert p.returncode==0
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
        print(json.dumps({'asset':asset,'variant':variant,'36ResidentFrames':'PASS'}),flush=True)
print('288 resident/fresh-context full-frame plane comparisons PASS',flush=True)
