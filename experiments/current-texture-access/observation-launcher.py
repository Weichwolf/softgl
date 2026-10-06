from pathlib import Path
import subprocess,json,os,sys
r=Path(__file__).resolve().parent;stat=(Path('/proc')/str(os.getpid())/'stat').read_text().rsplit(')',1)[1].split()
(r/'observation-process.json').write_text(json.dumps(dict(pid=os.getpid(),birthTicks=stat[19],cwd=str(Path.cwd().resolve()),driver=str(r/'run-observations.py'),status='running'),indent=2)+'\n')
code=subprocess.call([sys.executable,str(r/'run-observations.py')])
(r/'process-completion.json').write_text(json.dumps(dict(exitCode=code,status='terminal'),indent=2)+'\n');sys.exit(code)
