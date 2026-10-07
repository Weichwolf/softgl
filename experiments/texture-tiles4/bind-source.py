"""Bind the actual final private source, preserving existing producer identities."""
from pathlib import Path
import hashlib,json,subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd();src=r/'source-root';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=json.loads((r/'validation.json').read_text());patch=[];changed=[]
for folder in ['libsoftgl','tests']:
 for p in sorted((src/folder).rglob('*')):
  if not p.is_file():continue
  name=str(p.relative_to(src));original=repo/name
  if original.is_file() and original.read_bytes()==p.read_bytes():continue
  changed.append(name)
  result=subprocess.run(['diff','-u','--label','a/'+name if original.exists() else '/dev/null','--label','b/'+name,str(original) if original.exists() else '/dev/null',str(p)],text=True,stdout=subprocess.PIPE);assert result.returncode==1
  patch.append(result.stdout)
(r/'source.patch').write_text(''.join(patch));v.update(changedFiles=changed,finalSourceFiles={name:sha(src/name) for name in changed},patchSha256=sha(r/'source.patch'))
v['prototypeCorrection']=dict(scope='New contract include dependency only; renderer/module unchanged',missingHeader='frag_combine_hot.h',initialFixtureSha256=sha(r/'texture_tiles4-initial.c'),correctedFixtureSha256=sha(src/'tests/texture_tiles4.c'),initialBuildLog='native-initial-build.log',correctedBuildLog='native-initial-build-retry.log',correctedRunLog='native-initial-run-retry.log',correctedRunExitCode=0)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Final private source and original compile correction bound',len(changed))
