const fs=require('node:fs');const path=require('node:path');const crypto=require('node:crypto');
const {chromium}=require('playwright');
const root=__dirname;const out=path.join(root,'preflight');fs.mkdirSync(out);
const sha=p=>crypto.createHash('sha256').update(fs.readFileSync(p)).digest('hex');
const birth=pid=>fs.readFileSync(`/proc/${pid}/stat`,'utf8').split(')')[1].trim().split(/\s+/)[19];
(async()=>{
 const commandFlags=`--print-wasm-code --print-wasm-code-function-index=0 --redirect-code-traces --perf-prof --perf-prof-path=${out}`;
 const server=await chromium.launchServer({executablePath:'/usr/bin/chromium',headless:true,args:['--no-sandbox','--disable-dev-shm-usage','--js-flags='+commandFlags]});
 const child=server.process();let stdout='',stderr='';child.stdout?.on('data',d=>stdout+=d);child.stderr?.on('data',d=>stderr+=d);
 const processBirth=birth(child.pid);const browser=await chromium.connect(server.wsEndpoint());const page=await browser.newPage();
 const bytes=[0,97,115,109,1,0,0,0,1,7,1,96,2,127,127,1,127,3,2,1,0,7,7,1,3,97,100,100,0,0,10,9,1,7,0,32,0,32,1,106,11];
 const check=await page.evaluate(async bytes=>{const {instance}=await WebAssembly.instantiate(new Uint8Array(bytes));let n=0;for(let i=0;i<1000000;i++)n=instance.exports.add(i,1);return n;},bytes);
 const processes=await (await browser.newBrowserCDPSession()).send('SystemInfo.getProcessInfo');
 const version=browser.version();await browser.close();await server.close();
 fs.writeFileSync(path.join(out,'stdout.log'),stdout);fs.writeFileSync(path.join(out,'stderr.log'),stderr);
 const result={commandFlags,command:child.spawnargs,pid:child.pid,birthTicks:processBirth,browserVersion:version,chromiumBinarySha256:sha('/usr/lib/chromium/chromium'),fixtureSha256:crypto.createHash('sha256').update(Buffer.from(bytes)).digest('hex'),result:check,expected:1000000,processes:processes.processInfo,terminal:{exitCode:child.exitCode,signal:child.signalCode},stdoutBytes:stdout.length,stderrBytes:stderr.length,diagnosticOnly:true};
 fs.writeFileSync(path.join(out,'result.json'),JSON.stringify(result,null,2)+'\n');if(check!==1000000)throw Error('Control result mismatch');console.log('Control result exact; browser',version,'terminal',child.exitCode,child.signalCode,'stdout',stdout.length,'stderr',stderr.length);
})().catch(e=>{console.error(e);process.exitCode=1;});
