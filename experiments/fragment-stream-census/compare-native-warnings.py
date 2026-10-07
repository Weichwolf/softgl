"""Compare normalized warning lines against the previously published D4 list."""
from pathlib import Path
import hashlib,json
r=Path(__file__).resolve().parent
prior=Path('experiments/dot3-sampler-alpha/native-warnings-comparison.json')
reference=json.loads(prior.read_text())['referenceWarnings']
log=r/'native-full-build.log'
candidate=[line.split('/source-root/',1)[-1] for line in log.read_text().splitlines() if 'warning:' in line]
new=sorted(set(candidate)-set(reference))
d=dict(candidateWarnings=candidate,referenceWarnings=reference,newWarningLines=new,
 candidateLogSha256=hashlib.sha256(log.read_bytes()).hexdigest(),
 publishedReferenceFile=str(prior),publishedReferenceSha256=hashlib.sha256(prior.read_bytes()).hexdigest())
(r/'native-warnings-comparison.json').write_text(json.dumps(d,indent=2)+'\n')
assert not new,new
print(len(candidate),'warning lines; none new relative to published D4')
