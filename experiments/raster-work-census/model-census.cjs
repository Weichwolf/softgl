const {chromium}=require('playwright'),fs=require('fs'),http=require('http'),path=require('path'),crypto=require('crypto'),assert=require('assert/strict');
const root=path.resolve(process.argv[2] || 'build/diagnostics/raster-work-census'),
 baseline=path.resolve(process.argv[4] || 'build/controls/msaa-edge-reuse-candidate'),
 names=['tileCalls','nonPositiveArea','emptyClippedRectangle','sampleKernelCalls','hierarchicalRejectedKernels','visitedRows','candidateRowPixels','coveredPixels','coveredSamples','passingPixels','passingSamples','fullPackets','scalarTailPixels','scalarInlinePixels','coverage32PixelVisits','reusedCoefficientPixels','packedCoefficientPixels','wideCoefficientPixels','fullyCoveredPixels','fullyPassingPixels','packetEligibleKernels','opaqueStoreKernels'],
 groups=['off','msaa2','msaa4','msaa4Capture'];

const server=http.createServer((req,res)=>{res.setHeader('Cross-Origin-Opener-Policy','same-origin');res.setHeader('Cross-Origin-Embedder-Policy','require-corp');const u=new URL(req.url,'http://localhost').pathname;
if(u==='/diag/'||u==='/base/'){res.setHeader('Content-Type','text/html');res.end('<script src="softgl.js"></script><script>window.ready=createSoftGL().then(m=>window.mod=m)</script>');return;}
const f=u==='/bmw.pack'?path.resolve('build/assets/bmw.pack'):u==='/tank.pack'?path.resolve('tests/bench/tank_data/tank.pack'):path.join(u.startsWith('/diag/')?root:baseline,path.basename(u));if(!fs.existsSync(f)){res.writeHead(404).end();return;}res.setHeader('Content-Type',u.endsWith('.wasm')?'application/wasm':u.endsWith('.js')?'application/javascript':'application/octet-stream');fs.createReadStream(f).pipe(res);});
(async()=>{await new Promise(r=>server.listen(0,'127.0.0.1',r));let browser;try{browser=await chromium.launch({executablePath:'/usr/bin/chromium',headless:true,args:['--no-sandbox']});const result={frames:100,width:640,height:360,samples:Number(process.argv[3] || 4),counters:'Instrumented logical work requests, not unique pixels, fragment acceptance, cache/DRAM transactions or timings. Before/after reads follow joined resolves; 80 warm-up frames excluded.',names,groups,models:{}};
for(const model of ['bmw','tank']){const variants={};for(const variant of ['base','diag']){const page=await browser.newPage();page.setDefaultTimeout(120000);page.on('console',m=>{if(m.type()==='error')console.error('BROWSER',m.text().slice(0,400));});page.on('pageerror',e=>console.error('PAGE',e.message));console.log('Start',model,variant);await page.goto(`http://127.0.0.1:${server.address().port}/${variant}/`);await page.evaluate(async()=>{await ready;});
variants[variant]=await page.evaluate(async({model,variant,names,groups,samples})=>{const readCounters=()=>groups.flatMap((_,g)=>names.map((_,j)=>mod._sg_raster_census_counter(g,j)));const ctx=samples ? mod._softgl_create_multisample(640,360,samples) : mod._softgl_create(640,360);mod._softgl_make_current(ctx);const bytes=new Uint8Array(await(await fetch('/'+model+'.pack')).arrayBuffer()),p=mod._malloc(bytes.length);mod.HEAPU8.set(bytes,p);if(!(model==='bmw'?mod._sg_model_load(p,bytes.length):mod._sg_tank_load(p,bytes.length)))throw Error('load');mod._free(p);const render=a=>model==='bmw'?mod._sg_model_render(a,640,360):mod._sg_tank_render(a,640,360);
await new Promise(r=>setTimeout(r,25));for(let i=0;i<80;i++){render(i*3.6);mod._softgl_read_rgba8(ctx);}const rows=[];for(let i=0;i<100;i++){const before=variant==='diag'?readCounters():null;render(i*3.6);const ptr=mod._softgl_read_rgba8(ctx);const counts=variant==='diag'?readCounters().map((n,j)=>n-before[j]):null;const perThread=null;
// Simple per-frame two independent integer hashes; also return exact representative frames for byte comparison.
let h=2166136261,h2=0;for(let j=0;j<640*360*4;j++){const b=mod.HEAPU8[ptr+j];h=Math.imul(h^b,16777619);h2=(Math.imul(h2,65599)+b)|0;}let raw=null;if(i%25===0){let s='';for(let j=0;j<640*360*4;j+=32768)s+=String.fromCharCode(...mod.HEAPU8.subarray(ptr+j,ptr+Math.min(j+32768,640*360*4)));raw=btoa(s);}rows.push({angle:i*3.6,hash:[h>>>0,h2>>>0],counts,perThread,raw});}
const info={workers:mod._sg_thread_count(ctx),rows};if(model==='bmw')mod._sg_model_unload();else mod._sg_tank_unload();mod._softgl_destroy(ctx);return info;},{model,variant,names,groups,samples:result.samples});await page.close();}
assert.equal(variants.base.workers,3);assert.equal(variants.diag.workers,3);for(let i=0;i<100;i++){assert.deepEqual(variants.base.rows[i].hash,variants.diag.rows[i].hash);assert.equal(variants.base.rows[i].raw,variants.diag.rows[i].raw);delete variants.base.rows[i].raw;delete variants.diag.rows[i].raw;}
const summary={};
for(let g=0;g<groups.length;g++) {
 const sums=Object.fromEntries(names.map(n=>[n,0]));
 for(const row of variants.diag.rows) {
  const q=Object.fromEntries(names.map((n,j)=>[n,row.counts[g*names.length+j]]));
  for(const n of names) { assert(Number.isSafeInteger(q[n])&&q[n]>=0); sums[n]+=q[n]; }
  if(g===0) { for(const n of names.slice(3)) assert.equal(q[n],0); continue; }
  assert.equal(q.tileCalls-q.nonPositiveArea-q.emptyClippedRectangle,q.sampleKernelCalls);
  assert(q.hierarchicalRejectedKernels<=q.sampleKernelCalls);
  assert(q.candidateRowPixels>=q.coveredPixels&&q.coveredPixels>=q.passingPixels);
  assert(q.coveredSamples>=q.passingSamples);
  assert(q.coveredSamples>=q.coveredPixels&&q.coveredSamples<=result.samples*q.coveredPixels);
  assert(q.passingSamples>=q.passingPixels&&q.passingSamples<=result.samples*q.passingPixels);
  assert.equal(q.passingPixels,4*q.fullPackets+q.scalarTailPixels+q.scalarInlinePixels);
  assert(q.coverage32PixelVisits<=q.candidateRowPixels);
  assert(q.fullyCoveredPixels<=q.coveredPixels&&q.fullyPassingPixels<=q.passingPixels);
  assert(q.packetEligibleKernels<=q.sampleKernelCalls-q.hierarchicalRejectedKernels);
  assert(q.opaqueStoreKernels<=q.sampleKernelCalls-q.hierarchicalRejectedKernels);
  if(g>=2) assert.equal(q.reusedCoefficientPixels+q.packedCoefficientPixels+q.wideCoefficientPixels,q.coveredPixels);
  else assert.equal(q.reusedCoefficientPixels+q.packedCoefficientPixels+q.wideCoefficientPixels,0);
 }
 summary[groups[g]]=Object.fromEntries(names.map((name,j)=>{const v=variants.diag.rows.map(r=>r.counts[g*names.length+j]);return [name,{mean:sums[name]/100,min:Math.min(...v),max:Math.max(...v)}];}));
}
result.models[model]={workers:3,frameHashesEqual:100,representativeFramesByteEqual:4,summary,rows:variants.diag.rows};console.log(model,JSON.stringify(summary));}
result.wasmSha256=crypto.createHash('sha256').update(fs.readFileSync(path.join(root,'softgl.wasm'))).digest('hex');result.modelAssets={bmwPackSha256:crypto.createHash('sha256').update(fs.readFileSync('build/assets/bmw.pack')).digest('hex'),tankPackSha256:crypto.createHash('sha256').update(fs.readFileSync('tests/bench/tank_data/tank.pack')).digest('hex')};result.baselineSha256=crypto.createHash('sha256').update(fs.readFileSync(path.join(baseline,'softgl.wasm'))).digest('hex');fs.writeFileSync(path.join(root,`census-${result.samples}.json`),JSON.stringify(result,null,2)+'\n');}finally{if(browser)await browser.close();await new Promise(r=>server.close(r));}})().catch(e=>{console.error(e);process.exitCode=1;});
