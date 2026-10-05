"""Two guarded diagnostic audits per mode; no performance acceptance claim."""
from pathlib import Path
import hashlib
import json
import os
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
validation = json.loads((root/'validation.json').read_text())
assert validation['status'] == 'full-fidelity-gates-passed-ready-for-observations'
out = root/'runs'
out.mkdir(exist_ok=False)
env = dict(os.environ, NODE_PATH=str(repo/'build/node/node_modules'),
           TMPDIR=str(repo/'build/tmp'), XDG_CACHE_HOME=str(repo/'build/browser-cache'))
wasm = 'build/controls/caller-wait-intervals-diagnostic'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(repo/wasm/'softgl.wasm') == validation['diagnosticWasmSha256']
records = []
for audit in (1,2):
    for samples in ((0,2,4) if audit == 1 else (4,2,0)):
        output = out/f'wait-ms{samples}-audit-{audit}.json'
        subprocess.run(['python3','tools/wasm_quiet_audit.py',str(output),
            'node',str(root/'wasm_perf_wait.cjs'),'--bench-only','--wasm-build',wasm,
            '--native-build',str(root/'native-full'),'--scenes','bmw,tank',
            '--samples',str(samples),'--rounds','1','--warmup','80','--frames','100',
            '--output',str(output)],env=env,check=True)
        data = json.loads(output.read_text())
        assert data['wasmSha256'] == validation['diagnosticWasmSha256']
        assert data['notAcceptanceTimings']
        assert data['benchmarks']['workerCounts'] == {'candidate':3}
        assert data['benchmarks']['resolvePerFrame'] and data['benchmarks']['samples'] == samples
        observations = data['callerWaitObservations']
        assert len(observations) == 2 and {row['name'] for row in observations} == {'bmw','tank'}
        for observation in observations:
            assert observation['workers'] == 3 and observation['samples'] == samples
            assert observation['warmup'] == 80 and observation['frames'] == len(observation['rows']) == 100
            assert observation['round'] == 0 and observation['variant'] == 'candidate'
            total = sum(sum(row['elapsedMs']) for row in observation['rows'])
            calls = sum(sum(row['calls']) for row in observation['rows'])
            print(f"audit={audit} samples={samples} {observation['name']}: {total/100:.6f} ms polling intervals/frame; {calls} intervals/100frames",flush=True)
        records.append(dict(audit=audit,samples=samples,file=output.name,sha256=sha(output)))
        (out/'runs.json').write_text(json.dumps(dict(wasmSha256=validation['diagnosticWasmSha256'],
            notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All six guarded diagnostic audits complete; twelve scene observations',flush=True)
