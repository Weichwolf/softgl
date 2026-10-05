import subprocess,os,json,time,urllib.request
from pathlib import Path
r=Path(__file__).resolve().parent;root=Path('build/controls/bin-store-state-candidate').resolve();env=os.environ.copy();env.update(SOFTGL_WEB_ROOT=str(root),NODE_PATH=str(Path('build/node/node_modules').resolve()),TMPDIR=str(Path('build/tmp').resolve()),XDG_CACHE_HOME=str(Path('build/browser-cache').resolve()))
with (r/'preview-server.log').open('w') as f:
 server=subprocess.Popen(['bash','wasm/serve.sh','8001'],env=env,stdout=f,stderr=subprocess.STDOUT)
 try:
  for attempt in range(100):
   if server.poll() is not None:raise RuntimeError('owned server failed')
   try:
    with urllib.request.urlopen('http://127.0.0.1:8001/softgl.wasm',timeout=2) as res:assert res.read()==(root/'softgl.wasm').read_bytes()
    break
   except urllib.error.URLError:time.sleep(.1)
  else:raise RuntimeError('owned server not ready')
  proc=Path('/proc')/str(server.pid);birth=(proc/'stat').read_text().rsplit(')',1)[1].split()[19];owner={'pid':server.pid,'birthTicks':birth,'cwd':str((proc/'cwd').resolve()),'root':str(root),'port':8001};(r/'preview-server-owner.json').write_text(json.dumps(owner,indent=2)+'\n')
  with (r/'preview-chromium.log').open('w') as log:subprocess.run(['node','tools/wasm_preview_check.cjs','http://127.0.0.1:8001/',str(r/'preview-chromium.json')],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
 finally:
  if server.poll() is None:
   assert (proc/'stat').read_text().rsplit(')',1)[1].split()[19]==birth
   assert str((proc/'cwd').resolve())==str(root)
   server.terminate();server.wait(timeout=10)
with (r/'preview-firefox.log').open('w') as log:subprocess.run(['build/python/bin/python','build/diagnostics/wasm-four-contexts/firefox-preview.py',str(r/'preview-firefox'),'--web-root',str(root)],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Both browser UI gates passed')
