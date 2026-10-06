from pathlib import Path
import json,os,subprocess,sys
r=Path(__file__).resolve().parent
stat=(Path('/proc')/str(os.getpid())/'stat').read_text().rsplit(')',1)[1].split()
(r/'gate-process.json').write_text(json.dumps(dict(pid=os.getpid(),birthTicks=stat[19],cwd=str(Path.cwd().resolve()),driver=str(r/'run-gates.py')),indent=2)+'\n')
code=subprocess.call([sys.executable,str(r/'run-gates.py')]+sys.argv[1:])
d=dict(gateExitCode=code,gateStatus='terminal')
if code==0:
 code=subprocess.call([sys.executable,str(r/'finalize-gates.py')]);d.update(finalizerExitCode=code,finalizerStatus='terminal')
(r/'process-completion.json').write_text(json.dumps(d,indent=2)+'\n');sys.exit(code)
