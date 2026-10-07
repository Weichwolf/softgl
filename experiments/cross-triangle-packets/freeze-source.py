"""Freeze one source/patch identity, independently reconstruct the eleven-file trial."""
from pathlib import Path
import hashlib,json,shutil,subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();src=r/'source-root'
v=json.loads((r/'validation.json').read_text());names=v['changedFiles'];baseline=v['researchBaselineCommit']
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
p=r/'patch-source';p.mkdir(exist_ok=False)
subprocess.run(['git','init','-q'],cwd=p,check=True)
for name in names:
 old=r/'original'/name
 if old.exists():
  assert old.read_bytes()==subprocess.check_output(['git','show',baseline+':'+name]),name
  dest=p/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(old,dest)
subprocess.run(['git','add','.'],cwd=p,check=True)
for name in names:
 dest=p/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src/name,dest)
subprocess.run(['git','add','-N','.'],cwd=p,check=True)
patch=subprocess.check_output(['git','diff','--binary'],cwd=p)
(r/'source.patch').write_bytes(patch)
reconstruction=r/'patch-reconstruction';reconstruction.mkdir(exist_ok=False)
for name in names:
 old=r/'original'/name
 if old.exists():
  dest=reconstruction/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(old,dest)
subprocess.run(['git','init','-q'],cwd=reconstruction,check=True)
subprocess.run(['git','apply',str(r/'source.patch')],cwd=reconstruction,check=True)
for name in names:assert (reconstruction/name).read_bytes()==(src/name).read_bytes(),name
snap=r/'candidate-source';snap.mkdir(exist_ok=False)
for name in names:
 dest=snap/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src/name,dest)
# Do not carry generated identities from any earlier producer.
out={key:v[key] for key in ['researchBaselineCommit','referenceWasmSha256','changedFiles','hypothesis','scope']}
out.update(status='source-frozen-producer-and-gates-pending',finalSourceFiles={name:sha(src/name) for name in names},patchSha256=sha(r/'source.patch'),independentSourcePatchVerified=True,previousGenerations=['build/diagnostics/cross-triangle-packets/inline-codegen','build/diagnostics/cross-triangle-packets','build/diagnostics/cross-triangle-packets-default'])
(r/'validation.json').write_text(json.dumps(out,indent=2)+'\n')
(r/'patch-reconstruction.json').write_text(json.dumps(dict(changedSourcesExact=True,patchSha256=out['patchSha256'],files=out['finalSourceFiles']),indent=2)+'\n')
print('Frozen patch',out['patchSha256'],flush=True)
