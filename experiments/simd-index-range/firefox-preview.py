#!/usr/bin/env python3
"""Fresh Firefox/Marionette preview checks; all artifacts stay in build/."""
import argparse
import functools
import hashlib
import json
from pathlib import Path
import subprocess
import threading
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from marionette_driver.marionette import Marionette

parser = argparse.ArgumentParser()
parser.add_argument('output')
parser.add_argument('--web-root', default='build/wasm')
args = parser.parse_args()
output = Path(args.output).resolve()
output.mkdir(parents=True, exist_ok=True)
web_root = Path(args.web_root).resolve()
manifest = json.loads(subprocess.check_output(['ctest', '--test-dir', 'build/native', '-C', 'Bench', '--show-only=json-v1']))
names = ['test_' + t['name'][:-8] for t in manifest['tests']
         if t['name'].endswith('_compare') and not t['name'].startswith(('bmw_', 'tank_'))]
names.sort()

class Handler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cross-Origin-Opener-Policy', 'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        self.send_header('Cache-Control', 'no-store')
        super().end_headers()

    def do_GET(self):
        if self.path in ('/', '/index.html'):
            html = (web_root / 'index.html').read_text().replace('<script src="softgl.js">', '''<script>
Object.defineProperty(navigator, 'hardwareConcurrency', {get:()=>9});
window.previewErrors=[];
addEventListener('error', e=>previewErrors.push(e.message));
addEventListener('unhandledrejection', e=>previewErrors.push(String(e.reason)));
</script><script src="softgl.js">''')
            self.send_response(200)
            self.send_header('Content-Type', 'text/html')
            self.end_headers()
            self.wfile.write(html.encode())
        else:
            super().do_GET()

    def log_message(self, *args):
        pass

server = ThreadingHTTPServer(('127.0.0.1', 0), functools.partial(Handler, directory=str(web_root)))
threading.Thread(target=server.serve_forever, daemon=True).start()
driver = Marionette(bin='/usr/lib/firefox-esr/firefox-esr', port=0, headless=True,
                    workspace=str(output), gecko_log=str(output / 'firefox.log'),
                    socket_timeout=420, prefs={'dom.max_script_run_time': 0})
try:
    driver.start_session()
    driver.navigate(f'http://127.0.0.1:{server.server_port}/')
    result = driver.execute_async_script('''
const done = arguments[arguments.length-1], expected = arguments[0];
const text = id => document.getElementById(id).textContent;
const assert = (p, msg) => { if (!p) throw Error(msg); };
const wait = async (fn, label, timeout=30000) => {
  const deadline=Date.now()+timeout;
  while(!fn()) { if(Date.now()>deadline) throw Error('Timeout: '+label); await new Promise(r=>setTimeout(r,25)); }
};
const click = async id => { assert(!document.getElementById(id).disabled, id+' disabled'); document.getElementById(id).click(); await new Promise(r=>setTimeout(r,0)); };
const bmw = () => text('counter').startsWith('2014 BMW') && text('name').includes('triangles');
const tank = () => text('counter').startsWith('T-80') && text('name').includes('triangles');
(async()=>{
  await wait(tank,'initial Tank');
  assert(text('s-threads').startsWith('3 ('),'initial three workers plus caller');
  window.previewHeartbeat=0; const timer=setInterval(()=>window.previewHeartbeat++,10);
  for (const samples of ['2','4','0']) {
    const select=document.getElementById('msaa');
    select.value=samples;select.dispatchEvent(new Event('change'));
    await wait(()=>!select.disabled && tank(),'MSAA Tank '+samples);
    await new Promise(r=>setTimeout(r,150));
    assert(text('s-threads').startsWith('3 ('),'MSAA three workers plus caller');
  }
  await click('bmw'); await wait(bmw,'BMW');
  await click('bench'); await wait(()=>text('name')==='Benchmark: bmw','BMW benchmark');
  await click('bench'); await wait(()=>text('bench-out').includes('# stopped.'),'BMW cancellation');
  await click('bmw'); await wait(bmw,'BMW restart');
  await click('tests'); await wait(()=>text('name')===expected[0],'first test');
  await click('pause'); await click('next'); await wait(()=>text('name')===expected[1],'Next');
  await click('prev'); await wait(()=>text('name')===expected[0],'Prev');
  const count=Number(text('counter').match(/\\/ (\\d+)/)[1]);
  assert(count===expected.length,'catalog size');
  const displayed=[text('name')];
  for(let i=1;i<count;i++) { await click('next'); await wait(()=>text('name')===expected[i],'test '+i); displayed.push(text('name')); }
  await click('tank'); await wait(tank,'Tank restart');
  await click('bench'); await wait(()=>text('bench')==='Stop Benchmark','Tank benchmark');
  await click('bench'); await wait(()=>text('bench-out').includes('# stopped.'),'Tank cancellation');
  await click('bmw'); await wait(bmw,'BMW final');
  assert(!document.getElementById('render-mode'),'no runtime mode switch');
  const select=document.getElementById('msaa');
  select.value='2'; select.dispatchEvent(new Event('change'));
  await wait(()=>!select.disabled && bmw(),'BMW MSAA 2');
  const before=window.previewHeartbeat;
  await click('bench'); await wait(()=>text('bench-out').includes('# done.'),'full benchmark',240000);
  const benchmark=text('bench-out'), heartbeatDuringBenchmark=window.previewHeartbeat-before;
  assert((benchmark.match(/^scene=/gm)||[]).length===18,'eighteen scene rows');
  const passes=[...benchmark.matchAll(/^# MSAA=(off|2x|4x)\\n([\\s\\S]*?)(?=^# MSAA=|^# done\\.)/gm)];
  assert(JSON.stringify(passes.map(p=>p[1]))===JSON.stringify(['off','2x','4x']),'MSAA pass order');
  for(const pass of passes) assert((pass[2].match(/^scene=/gm)||[]).length===6 && pass[2].includes('scene=bmw'),'six scenes per MSAA pass');
  assert(select.value==='2','restore MSAA selection');
  assert(benchmark.includes('scene=bmw'),'BMW measured');
  assert(heartbeatDuringBenchmark>=10,'responsive benchmark');
  await click('tank'); await wait(tank,'final context recycling');
  assert(text('s-threads').startsWith('3 ('),'final three workers plus caller');
  assert(window.previewErrors.length===0,'page errors: '+window.previewErrors);
  clearInterval(timer);
  return {passed:true, displayedTests:count, displayed, benchmark,
    heartbeatDuringBenchmark, reportedProcessors:navigator.hardwareConcurrency,
    renderWorkers:3, isolated:crossOriginIsolated, errors:window.previewErrors,
    offlineGeometry:true, cancelledBenchmark:true, multisampleModes:[0,2,4]};
})().then(done,error=>done({passed:false,error:String(error),stack:error.stack}));
''', script_args=[names], sandbox=None, script_timeout=360000)
    result['browser'] = driver.session_capabilities['browserVersion']
    result['wasmSha256'] = hashlib.sha256((web_root / 'softgl.wasm').read_bytes()).hexdigest()
    (output / 'result.json').write_text(json.dumps(result, indent=2)+'\n')
    assert result['passed'], result
    assert result['isolated']
    (output / 'final.png').write_bytes(driver.screenshot(format='binary'))
    print('Firefox passed:', result['displayedTests'], 'tests, six scenes, cancellation and three workers plus caller', flush=True)
finally:
    if driver.instance:
        driver.instance.close(clean=True)
    server.shutdown()
    server.server_close()
