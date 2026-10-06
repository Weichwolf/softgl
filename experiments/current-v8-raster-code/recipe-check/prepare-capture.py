"""Prepare a source-unchanged Chromium JIT/profile observer."""
from pathlib import Path
import hashlib,json,shutil
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
s=Path('/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/original-wasm_perf.cjs').read_text()
s=s.replace("const repo = path.resolve(__dirname, '..');", "const repo = path.resolve(process.env.SG_RESEARCH_REPO);\nif (!process.env.SG_RESEARCH_REPO) throw Error('SG_RESEARCH_REPO required');")
s=s.replace('    let browser;','''    let browser, browserServer, processTimer;
    const captureBase=path.resolve(process.env.SG_CAPTURE_DIR);
    const captureDir=path.join(captureBase,path.basename(output,'.json'));
    if (!process.env.SG_CAPTURE_DIR || !captureDir.startsWith(repo+'/build/')) throw Error('SG_CAPTURE_DIR must be under build');
    fs.mkdirSync(captureDir,{recursive:true});
    let child, captureVersion;
    const snapshots=[];
    const stat=pid=>{const raw=fs.readFileSync(`/proc/${pid}/stat`,'utf8');const tail=raw.substring(raw.lastIndexOf(')')+1).trim().split(/\\s+/);return {pid:Number(pid),ppid:Number(tail[1]),birthTicks:tail[19],comm:raw.substring(raw.indexOf('(')+1,raw.lastIndexOf(')'))};};
    const snapshot=()=>{
        const processes=[];for (const n of fs.readdirSync('/proc')) if (/^\\d+$/.test(n)){try{processes.push(stat(n));}catch{}}
        const owned=new Set([child.pid]);let changed;
        do{changed=false;for(const p of processes)if(owned.has(p.ppid)&&!owned.has(p.pid)){owned.add(p.pid);changed=true;}}while(changed);
        const rows=processes.filter(p=>owned.has(p.pid));
        for(const p of rows){p.threads=[];try{for(const tid of fs.readdirSync(`/proc/${p.pid}/task`)){try{const raw=fs.readFileSync(`/proc/${p.pid}/task/${tid}/stat`,'utf8');const tail=raw.substring(raw.lastIndexOf(')')+1).trim().split(/\\s+/);p.threads.push({tid:Number(tid),birthTicks:tail[19],comm:raw.substring(raw.indexOf('(')+1,raw.lastIndexOf(')'))});}catch{}}}catch{}}
        snapshots.push({monotonicNs:process.hrtime.bigint().toString(),processes:rows});
    };''')
old="""        browser = await chromium.launch({executablePath: options.browser, headless: true,
            args: ['--no-sandbox', '--disable-dev-shm-usage']});"""
new="""        browserServer = await chromium.launchServer({executablePath: options.browser, headless: true,
            args: ['--no-sandbox', '--disable-dev-shm-usage', '--js-flags=--perf-prof --perf-prof-path='+captureDir]});
        child=browserServer.process();snapshot();
        processTimer=setInterval(snapshot,250);
        browser=await chromium.connect(browserServer.wsEndpoint());
        captureVersion=await (await browser.newBrowserCDPSession()).send('Browser.getVersion');"""
assert s.count(old)==1;s=s.replace(old,new)
old="""        if (browser) await browser.close();
        await new Promise(resolve => server.close(resolve));"""
print('Close block present:',s.count(old))
if s.count(old)!=1:print(s[-1600:]);raise AssertionError('Inspect exact original finally block before creating observer')
new="""        if (child) snapshot();
        if (processTimer) clearInterval(processTimer);
        if (browser) await browser.close();
        if (browserServer) await browserServer.close();
        if (child) fs.writeFileSync(path.join(captureDir,'capture-processes.json'),JSON.stringify({browserPid:child.pid,browserVersion:captureVersion,command:child.spawnargs,snapshots,terminal:{exitCode:child.exitCode,signal:child.signalCode},diagnosticOnly:true,noRendererSourceOrModuleChange:true},null,2)+'\\n');
        await new Promise(resolve => server.close(resolve));"""
s=s.replace(old,new)
(r/'wasm_perf_jit.cjs').write_text(s)
inputs=[Path('/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/original-wasm_perf.cjs'),repo/'build/controls/simd-index-range-candidate/softgl.wasm',repo/'build/controls/simd-index-range-candidate/softgl.js',Path('/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/accepted.symbols'),repo/'build/assets/bmw.pack',repo/'tests/bench/tank_data/tank.pack',Path('/usr/lib/chromium/chromium'),r/'wasm_perf_jit.cjs']
identities={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
(r/'input-identities.json').write_text(json.dumps(identities,indent=2)+'\n')
shutil.copy2(Path('/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/accepted.symbols'),r/'accepted.symbols')
print('Prepared actual native-code/profile observer; original D4 untouched')
