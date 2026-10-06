"""Owned sequential producer/fidelity process; retain actual terminal status."""
from pathlib import Path
import json
import os
import subprocess
import sys
r=Path(__file__).resolve().parent
stat=(Path('/proc')/str(os.getpid())/'stat').read_text().rsplit(')',1)[1].split()
state=dict(pid=os.getpid(),birthTicks=stat[19],cwd=str(Path.cwd().resolve()),status='running',step='run-gates.py')
(r/'gate-process.json').write_text(json.dumps(state,indent=2)+'\n')
try:
    for script in ['run-gates.py','finalize-gates.py']:
        state['step']=script
        (r/'gate-process.json').write_text(json.dumps(state,indent=2)+'\n')
        subprocess.run([sys.executable,str(r/script)],check=True)
except subprocess.CalledProcessError as error:
    state.update(status='terminal',exitCode=error.returncode)
    (r/'gate-process.json').write_text(json.dumps(state,indent=2)+'\n')
    raise
state.update(status='terminal',exitCode=0)
(r/'gate-process.json').write_text(json.dumps(state,indent=2)+'\n')
(r/'process-completion.json').write_text(json.dumps(dict(gateStatus='terminal',gateExitCode=0),indent=2)+'\n')
print('Complete candidate regression gates terminal exit0; comparisons not started',flush=True)
