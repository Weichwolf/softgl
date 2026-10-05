from pathlib import Path
import subprocess
r=Path(__file__).resolve().parent
for name in ('browser-gates.py','canonical-gates.py'):
    with (r/(name+'.log')).open('w') as log:
        subprocess.run(['python3',str(r/name)],stdout=log,stderr=subprocess.STDOUT,check=True)
print('Both UI and canonical gates passed',flush=True)
