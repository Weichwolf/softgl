"""Final test correction and all18 predeclared comparisons, sequentially."""
from pathlib import Path
import subprocess,json,os,sys
r=Path(__file__).resolve().parent
stat=(Path('/proc')/str(os.getpid())/'stat').read_text().rsplit(')',1)[1].split()
record=dict(pid=os.getpid(),birthTicks=stat[19],cwd=str(Path.cwd().resolve()),status='running',step='correct-fixture-size.py')
p=r/'continuation-process.json';p.write_text(json.dumps(record,indent=2)+'\n')
try:
 for step,log in [('correct-fixture-size.py','fixture-correction-driver.log'),('pre-timing-proof.py','pre-timing-proof.log'),('timing-launcher.py','timings-driver.log')]:
  record['step']=step;p.write_text(json.dumps(record,indent=2)+'\n')
  with (r/log).open('w') as stream:subprocess.run([sys.executable,str(r/step)],stdout=stream,stderr=subprocess.STDOUT,check=True)
 record.update(status='terminal',exitCode=0)
except subprocess.CalledProcessError as error:
 record.update(status='terminal',exitCode=error.returncode);p.write_text(json.dumps(record,indent=2)+'\n');raise
p.write_text(json.dumps(record,indent=2)+'\n')
print('Final fixture and all18 comparisons complete',flush=True)
