"""Six fixed guarded captures, with independent per-frame/key/thread checks."""
from pathlib import Path
import hashlib
import importlib.util
import json
import os
import subprocess

repo=Path.cwd().resolve()
root=Path(__file__).resolve().parent
validation=json.loads((root/'validation.json').read_text())
assert validation['status']=='full-fidelity-gates-passed-ready-for-observations'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for name,digest in json.loads((root/'observer-input-identities.json').read_text()).items():
    assert sha(repo/name)==digest,name
spec=importlib.util.spec_from_file_location('footprint_check',root/'check-row.py')
checker=importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)
out=root/'runs';out.mkdir(exist_ok=True)
env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),
         XDG_CACHE_HOME=str(repo/'build/browser-cache'))
records=[]
for audit in [1,2]:
    for samples in ([0,2,4] if audit==1 else [4,2,0]):
        output=out/f'footprints-ms{samples}-audit-{audit}.json'
        scenes=['bmw','tank'] if audit==1 else ['tank','bmw']
        if not output.exists():
            subprocess.run(['python3','tools/wasm_quiet_audit.py',str(output),
                'node',str(root/'wasm_perf_footprints.cjs'),'--bench-only',
                '--wasm-build','build/controls/sampler-footprints-candidate',
                '--native-build',str(root/'native-full'),'--scenes',','.join(scenes),
                '--samples',str(samples),'--rounds','1','--warmup','80','--frames','100',
                '--output',str(output)],env=env,check=True)
        data=json.loads(output.read_text())
        assert data['wasmSha256']==validation['diagnosticWasmSha256'] and data['notAcceptanceTimings']
        assert data['driverSha256']==sha(root/'wasm_perf_footprints.cjs')
        assert data['benchmarks']['workerCounts']=={'candidate':3}
        assert data['benchmarks']['samples']==samples and data['benchmarks']['resolvePerFrame']
        accepted=[]
        for path in out.glob(output.stem+'.attempt-*.monitor.json'):
            monitor=json.loads(path.read_text())
            assert monitor['guardSha256']==sha(repo/'tools/wasm_quiet_audit.py')
            assert monitor['foreignCPUThresholdCores']==.10
            if not monitor['unexpectedActivity'] and monitor['exitCode']==0:accepted.append(path.name)
        assert len(accepted)==1
        observations=data['footprintObservations']
        assert [o['name'] for o in observations]==scenes
        expected=json.loads((root/f'frame-equivalence-{samples}.json').read_text())['models']
        for observation in observations:
            name=observation['name']
            assert observation['workers']==3 and observation['samples']==samples
            assert observation['round']==0 and observation['variant']=='candidate'
            assert observation['warmup']==80 and observation['frames']==len(observation['rows'])==100
            checked=[]
            for i,row in enumerate(observation['rows']):
                assert row['frame']==i and row['angle']==i*360/100
                checked.append(checker.check_row(row,samples,expected[name]['rows'][i]['hash']))
            count=sum(row['samples'] for row in checked)
            footprints=sum(row['footprints'] for row in checked)
            assert count>0 and footprints>0,(name,samples)
            print('audit',audit,'samples',samples,name,'sample requests/frame',count/100,
                  '2D footprints/frame',footprints/100,flush=True)
        records.append(dict(audit=audit,samples=samples,file=output.name,sha256=sha(output)))
        (out/'runs.json').write_text(json.dumps(dict(wasmSha256=validation['diagnosticWasmSha256'],
            notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All six guarded footprint captures and 1200 exact model/frame/key/thread checks complete',flush=True)
