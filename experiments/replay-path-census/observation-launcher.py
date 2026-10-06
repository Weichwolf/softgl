from pathlib import Path
import json,os,subprocess,sys
r=Path(__file__).resolve().parent;stat=(Path('/proc')/str(os.getpid())/'stat').read_text().rsplit(')',1)[1].split();(r/'observation-process.json').write_text(json.dumps(dict(pid=os.getpid(),birthTicks=stat[19],cwd=str(Path.cwd().resolve()),driver=str(r/'run-observations.py')),indent=2)+'\n')
code=subprocess.call([sys.executable,str(r/'run-observations.py')]);p=r/'process-completion.json';d=json.loads(p.read_text());d['observationExitCode']=code;d['observationStatus']='terminal';p.write_text(json.dumps(d,indent=2)+'\n');sys.exit(code)
