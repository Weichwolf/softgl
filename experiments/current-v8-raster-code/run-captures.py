"""Run six fixed quiet diagnostic captures; retain attempts and actual exit."""
from pathlib import Path
import os,json,subprocess,time,hashlib
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
p=Path('/proc')/str(os.getpid());birth=p.joinpath('stat').read_text().rsplit(')',1)[1].split()[19]
state=dict(pid=os.getpid(),birthTicks=birth,status='running',step='initializing');(r/'capture-process.json').write_text(json.dumps(state,indent=2)+'\n')
env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'),SG_RESEARCH_REPO=str(repo))
try:
 for audit in (1,2):
  for mode in (0,2,4):
   label=f'guarded-audit{audit}-ms{mode}';out=r/'runs'/label;out.mkdir(exist_ok=False);env['SG_CAPTURE_DIR']=str(out)
   command=['python3',str(repo/'tools/wasm_quiet_audit.py'),str(out/'result.json'),'node',str(r/'wasm_perf_jit.cjs'),'--bench-only','--wasm-build','build/controls/simd-index-range-candidate','--native-build','build/diagnostics/simd-index-range/native-full','--scenes','bmw,tank','--samples',str(mode),'--warmup','80','--frames','240','--rounds','1','--profile-scene','bmw','--output',str(out/'result.json')]
   state.update(step=label,command=command);(r/'capture-process.json').write_text(json.dumps(state,indent=2)+'\n')
   subprocess.run(command,env=env,check=True)
   print(label,'captured; native/profile diagnostics, not acceptance timings',flush=True)
except subprocess.CalledProcessError as error:
 state.update(status='terminal',exitCode=error.returncode);(r/'capture-process.json').write_text(json.dumps(state,indent=2)+'\n');raise
state.update(status='terminal',exitCode=0);(r/'capture-process.json').write_text(json.dumps(state,indent=2)+'\n')
(r/'process-completion.json').write_text(json.dumps(dict(captureStatus='terminal',captureExitCode=0,plannedCaptures=6),indent=2)+'\n')
print('Six fixed diagnostic captures terminal exit0',flush=True)
