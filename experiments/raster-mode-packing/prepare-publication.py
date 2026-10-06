"""Publish the completed rejected trial and a closed source/measurement archive."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();public=repo/'experiments/raster-mode-packing'
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(r/'validation.json');d=load(r/'decision.json');terminal=load(r/'process-completion.json')
assert d['status'] in ['accepted','rejected'] and terminal==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
assert not public.exists()
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p,name):
 target=public/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
for p in r.iterdir():
 if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.rsp','.md','.symbols','.wat'] and p.name not in ['candidate.wat','reference.wat']:
  copy(p,p.name)
for folder in ['timings','wasm-contracts','recipe-check','mode-isolation']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ['.py','.cjs','.json','.log','.c','.h','.inc','.md','.wat','.symbols']:
   copy(p,str(p.relative_to(r)))
for name in v['changedFiles']:
 original=repo/name
 if original.exists():copy(original,'original/'+name)
 copy(r/'source-root'/name,'candidate-source/'+name)
for row in load(r/'wasm-contracts/results.json')['results']:
 copy(r/'source-root/tests'/(row['name']+'.c'),'fixtures/'+row['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for name in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/name,name)
a=load(r/'analysis.json')
rows=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
shutil.copy2(r/'research-readme.md',public/'README.md')
manifest=dict(status=d['status'],researchBaselineCommit=v['researchBaselineCommit'],candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],gateExitCode=0,timingExitCode=0,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Published',len(manifest['artifacts']),'trial artifacts plus manifest')
