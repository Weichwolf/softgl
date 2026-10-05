from pathlib import Path
import subprocess
r=Path(__file__).resolve().parent
for name in ("browser-gates.py", "canonical-gates.py"):
 with (r/(name+".log")).open("w") as f: subprocess.run(["python3",str(r/name)],stdout=f,stderr=subprocess.STDOUT,check=True)
 print(name+" completed",flush=True)
