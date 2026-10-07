"""Bind actual producers, observer inputs and the unchanged live renderer."""
from pathlib import Path
import hashlib,json,shutil,subprocess,urllib.request
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(r/'validation.json');assert v['status']=='full-fidelity-gates-passed-ready-for-observations'
assert load(r/'process-completion.json')==dict(gateStatus='terminal',gateExitCode=0)
for collection in ['objects','linkedObjects','disabledObjects']:
 for name,digest in v[collection].items():assert sha(Path(name) if Path(name).is_absolute() else repo/name)==digest,name
for name,digest in v['productionSources'].items():assert sha(r/'source-root'/name)==digest
assert v['disabledBuildByteExact'] and v['disabledWasmSha256']==v['referenceWasmSha256']
stage=r/'patch-reconstruction';stage.mkdir(exist_ok=False)
for name in v['changedFiles']:
 original=repo/name
 if original.is_file():
  p=stage/name;p.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(original,p)
subprocess.run(['git','apply',str(r/'source.patch')],cwd=stage,check=True)
for name,digest in v['finalSourceFiles'].items():assert sha(stage/name)==digest
v['independentSourcePatchVerified']=True
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()==v['researchBaselineCommit']
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
assets={};reference=repo/'build/controls/simd-index-range-candidate'
for name in ['softgl.js','softgl.wasm','index.html','main.js','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+name) as response:
  b=response.read();assert response.headers['Cross-Origin-Opener-Policy']=='same-origin' and response.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert b==(reference/name).read_bytes()==(repo/'build/wasm'/name).read_bytes()
 assets[name]=dict(bytes=len(b),sha256=hashlib.sha256(b).hexdigest())
paths=[repo/'tests/bench/tank_data/tank.pack',repo/'tools/wasm_quiet_audit.py',r/'wasm_perf_footprints.cjs',r/'check-row.py',r/'run-observations.py']
for name in ['softgl.js','softgl.wasm','bmw.pack','tank.pack']:
 paths.append(repo/'build/controls/sampler-footprints-candidate'/name)
for mode in [0,2,4]:paths.append(r/f'frame-equivalence-{mode}.json')
(r/'observer-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
(r/'pre-observation-proof.json').write_text(json.dumps(dict(status='actual-source-objects-inputs-bound-live-D4-preserved',head=v['researchBaselineCommit'],liveAssets=assets,disabledBuildByteExact=True,diagnosticWasmSha256=v['diagnosticWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],goalRemainsActive=True),indent=2)+'\n')
print('Diagnostic, disabled D4, source reconstruction, observer inputs and all6 live assets bound',flush=True)
