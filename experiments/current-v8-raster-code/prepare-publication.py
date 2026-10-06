"""Publish owned source and selected native/profile text, excluding binaries."""
from pathlib import Path
import hashlib,json,shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();public=repo/'experiments/current-v8-raster-code'
assert not public.exists();assert json.loads((r/'process-completion.json').read_text())['captureExitCode']==0
public.mkdir()
allowed={'.py','.cjs','.json','.log','.txt','.md','.asm','.c','.h','.symbols'}
for p in r.rglob('*'):
 if p.is_file() and p.suffix in allowed and not any(x in p.parts for x in ['__pycache__']):
  target=public/p.relative_to(r);target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
shutil.copy2(r/'research-readme.md',public/'README.md')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=dict(status='diagnostic-complete',diagnosticOnly=True,candidateAdopted=False,sourceBaselineCommit=json.loads((r/'plan.json').read_text())['baselineCommit'],referenceWasmSha256=json.loads((r/'plan.json').read_text())['referenceWasmSha256'],guardedCaptures=6,originalBrowserProducerExecuted=True,freshBrowserRecipeExecuted=False,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(m,indent=2)+'\n')
print('Published',len(m['artifacts']),'diagnostic text artifacts plus manifest; full dumps/binaries excluded')
