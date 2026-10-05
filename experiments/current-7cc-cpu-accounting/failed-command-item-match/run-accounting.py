"""Two guarded CPU-accounting windows per scene/mode, unchanged renderer."""
from pathlib import Path
import hashlib
import json
import os
import subprocess

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
out = r / 'runs'
out.mkdir(exist_ok=False)
env = dict(os.environ, NODE_PATH=str(repo/'build/node/node_modules'),
           TMPDIR=str(repo/'build/tmp'), XDG_CACHE_HOME=str(repo/'build/browser-cache'))
wasm = 'build/controls/post-depth-common-store-candidate'
module_hash = hashlib.sha256((repo/wasm/'softgl.wasm').read_bytes()).hexdigest()
assert module_hash == '7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77'
records = []
for audit in (1,2):
    for samples in ((0,2,4) if audit == 1 else (4,2,0)):
        p = out/f'cpu-ms{samples}-audit-{audit}.json'
        subprocess.run(['python3','tools/wasm_quiet_audit.py',str(p),
            'node',str(r/'wasm_perf_cpu.cjs'),'--bench-only','--wasm-build',wasm,
            '--scenes','bmw,tank','--samples',str(samples),'--rounds','1',
            '--warmup','80','--frames','240','--output',str(p)],env=env,check=True)
        d = json.loads(p.read_text())
        assert d['wasmSha256'] == module_hash
        assert d['benchmarks']['workerCounts'] == {'candidate':3}
        assert d['benchmarks']['resolvePerFrame'] and d['benchmarks']['samples'] == samples
        assert len(d['cpuAccounting']) == 2
        for row in d['cpuAccounting']:
            assert row['renderWorkers'] == 3 and row['samples'] == samples
            assert row['warmup'] == 80 and row['frames'] == 240
            assert row['totalStableThreadTicks'] > 0 and row['elapsedMs'] > 0
            assert len(row['before']['renderers']) == len(row['after']['renderers']) == 1
            assert not row['before']['errors'] and not row['after']['errors']
            print(f"audit={audit} samples={samples} {row['name']}: stable-renderer CPU {row['stableThreadAverageCores']:.3f} cores, snapshot bound {row['snapshotBoundMs']:.3f}ms",flush=True)
        records.append(dict(audit=audit,samples=samples,file=p.name,
            sha256=hashlib.sha256(p.read_bytes()).hexdigest()))
        (out/'runs.json').write_text(json.dumps(dict(wasmSha256=module_hash,
            notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All six guarded windows complete; twelve scene CPU-accounting records',flush=True)
