"""Prove actual producer identities and unchanged live reference before timing."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import sys
r=Path(__file__).resolve().parent
repo=Path.cwd().resolve()
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=json.loads((r/'validation.json').read_text())
assert v['status']=='full-correctness-gates-passed-ready-for-18-pair-timings'
assert json.loads((r/'process-completion.json').read_text())==dict(gateStatus='terminal',gateExitCode=0)
for name,digest in v['objects'].items():assert sha(repo/name)==digest,name
for name,digest in v['linkedObjects'].items():assert sha(Path(name))==digest,name
for name,digest in v['productionSources'].items():assert sha(r/'source-root'/name)==digest,name
reconstruction=r/'patch-reconstruction';reconstruction.mkdir(exist_ok=False)
for name in v['changedFiles']:
    original=repo/name
    if original.is_file():
        target=reconstruction/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(original,target)
subprocess.run(['git','apply',str(r/'source.patch')],cwd=reconstruction,check=True)
for name in v['changedFiles']:
    assert (reconstruction/name).read_bytes()==(r/'source-root'/name).read_bytes(),name
v['independentSourcePatchVerified']=True
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
for name in ['analyze-timings.py']:
    s=(repo/'build/diagnostics/ordered-packed-capacity'/name).read_text().replace('ordered-packed-capacity','raster-mode-entry')
    (r/name).write_text(s)
paths=[repo/'tests/bench/tank_data/tank.pack',repo/'tools/wasm_perf.cjs',repo/'tools/wasm_quiet_audit.py',r/'compare-all.py',r/'run-timings.py']
for label in ['simd-index-range-candidate','raster-mode-entry-candidate']:
    paths.extend(repo/'build/controls'/label/name for name in ['softgl.js','softgl.wasm','bmw.pack','tank.pack'])
(r/'timing-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
subprocess.run([sys.executable,str(r/'pre-timing-proof.py')],check=True)
print('PASS: actual producer hashes and independent source reconstruction; ready for eighteen comparisons',flush=True)
