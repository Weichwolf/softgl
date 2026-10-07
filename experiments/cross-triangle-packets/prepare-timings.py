"""Hash all immutable producers, check finished gates, and preserve live D4."""
from pathlib import Path
import hashlib,json,subprocess,sys
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=json.loads((r/'validation.json').read_text())
assert v['status']=='full-fidelity-gates-passed-ready-for-timings'
assert json.loads((r/'process-completion.json').read_text())==dict(gateStatus='terminal',gateExitCode=0)
for collection in ['objects','linkedObjects']:
 for name,digest in v[collection].items():assert sha(repo/name)==digest,name
for name,digest in v['productionSources'].items():assert sha(r/'source-root'/name)==digest,name
for name,digest in v['finalSourceFiles'].items():
 assert sha(r/'source-root'/name)==sha(r/'patch-reconstruction'/name)==digest,name
assert sha(r/'source.patch')==v['patchSha256']
paths=[repo/'tests/bench/tank_data/tank.pack',repo/'tools/wasm_perf.cjs',repo/'tools/wasm_quiet_audit.py',r/'compare-all.py',r/'run-timings.py',r/'predeclared-timings.json']
for label in ['simd-index-range-candidate','cross-triangle-packets-enabled-candidate']:
 paths.extend(repo/'build/controls'/label/name for name in ['softgl.js','softgl.wasm','bmw.pack','tank.pack'])
(r/'timing-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
subprocess.run([sys.executable,str(r/'pre-timing-proof.py')],check=True)
print('Complete gates and producer identities checked; eighteen quiet AB/BA pairs may start',flush=True)
