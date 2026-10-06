"""Bind the final source after correcting the native test-only capture export."""
from pathlib import Path
import hashlib
import json
import subprocess

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
v = json.loads((r/'validation.json').read_text())
patch = ''
for name in v['changedFiles']:
    result = subprocess.run(['diff','-u','--label','a/'+name if (repo/name).exists() else '/dev/null',
        '--label','b/'+name,str(r/'patch-base'/name),str(r/'source-root'/name)],text=True,stdout=subprocess.PIPE)
    assert result.returncode == 1
    patch += result.stdout
(r/'source.patch').write_text(patch)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v['finalSourceFiles'] = {name:sha(r/'source-root'/name) for name in v['changedFiles']}
v['patchSha256'] = sha(r/'source.patch')
v['status'] = 'candidate-test-export-corrected-rebuild-pending'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Final source patch bound; original failed link and compiled unmeasured module retained')
