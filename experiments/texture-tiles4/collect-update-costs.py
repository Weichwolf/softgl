"""Separate native mutation-cost diagnostic, not renderer acceptance timing."""
from pathlib import Path
import argparse,hashlib,json,subprocess
r=Path(__file__).resolve().parent
parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',required=True);args=parser.parse_args()
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
producers=json.loads((r/'update-cost-producer.json').read_text())
for row in producers:
 assert sha(Path(row['command'][-1]))==row['binarySha256']
 assert sha(r/'texture-update-cost.c')==row['sourceSha256']
 assert sha(Path(row['command'][-4]))==row['librarySha256']
records=[]
for group in range(1,7):
 for variant in (['reference','candidate'] if group%2 else ['candidate','reference']):
  binary=r/('update-cost-'+variant)
  raw=subprocess.check_output([str(binary)],text=True);data=json.loads(raw)
  assert data['notAcceptanceTimings'] and data['warmup']==4 and data['iterations']==40 and data['noWorkers']
  assert len(data['records'])==20
  for row in data['records']:
   assert row['elapsedMs']>0 and row['msPerUpdate']>0
   assert row['derivedBytes']==(row['rowBytes'] if variant=='candidate' else 0)
  records.append(dict(group=group,variant=variant,binarySha256=sha(binary),data=data,rawStdout=raw))
Path(args.output).write_text(json.dumps(dict(scope='Linux native API-only mutation microbenchmark; no frame/FPS claim',notAcceptanceTimings=True,protocol='six groups alternating AB/BA, each binary has four warmups and40 measured calls per operation/dimension',records=records),indent=2)+'\n')
print('Complete12 fixed native mutation measurements; not acceptance timings',flush=True)
