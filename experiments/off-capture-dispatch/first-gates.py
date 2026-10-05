from pathlib import Path
import subprocess,os,json,hashlib,shutil
r=Path(__file__).resolve().parent;env=os.environ.copy();env.update(NODE_PATH=str(Path('build/node/node_modules').resolve()),TMPDIR=str(Path('build/tmp').resolve()),XDG_CACHE_HOME=str(Path('build/browser-cache').resolve()))
for name in ['build-wasm.py','native-capture-gate.py','wasm-capture-gate.py']:
    with (r/(name+'.log')).open('w') as log: subprocess.run(['python3',str(r/name)],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
frozen=Path('build/controls/off-capture-dispatch-candidate');frozen.mkdir()
for name in ['index.html','main.js','bmw.pack','tank.pack']: shutil.copy2(Path('build/controls/depth-replay-off-bound-candidate')/name,frozen/name)
for name in ['softgl.js','softgl.wasm']: shutil.copy2(r/name,frozen/name)
v=json.loads((r/'validation.json').read_text());v.update(status='focused-gates-passed-full-gates-running',candidateWasmSha256=hashlib.sha256((r/'softgl.wasm').read_bytes()).hexdigest(),candidateJsSha256=hashlib.sha256((r/'softgl.js').read_bytes()).hexdigest());(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
with (r/'gates-driver.log').open('w') as log: subprocess.run(['python3',str(r/'run-gates.py')],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Fresh full trial gates passed',flush=True)
