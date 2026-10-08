const fsCleanup=require('fs');
require('/usr/share/nodejs/playwright-core/lib/utilsBundle.js').rimraf=(dir,options)=>fsCleanup.promises.rm(dir,{recursive:true,force:true,maxRetries:options.maxRetries});
const {chromium}=require('playwright');
const fs=require('fs');
fs.mkdirSync('tmp/scene-quantized-visibility',{recursive:true});
(async()=>{
 const browser=await chromium.launch({executablePath:'/usr/bin/chromium',headless:true,args:['--no-sandbox','--use-angle=swiftshader','--enable-unsafe-swiftshader']});
 const results=[],errors=[];
 try {
  const page=await browser.newPage();
  await page.addInitScript(()=>{let factory;Object.defineProperty(window,'createSoftGL',{configurable:true,get(){return factory;},set(fn){factory=(...args)=>Promise.resolve(fn(...args)).then(mod=>{window.__softglInspection=mod;let create=mod._softgl_create_multisample;const observe=(w,h,s)=>{window.__softglDimensions={width:w,height:h,samples:s};return create(w,h,s);};Object.defineProperty(mod,'_softgl_create_multisample',{configurable:true,get(){return observe;},set(fn){create=fn;}});return mod;});}});});
  page.on('pageerror',e=>errors.push(e.message));
  page.setDefaultTimeout(120000);
  await page.goto('http://localhost:8000/');
  await page.waitForFunction(()=>document.querySelector('#name').textContent.includes('triangles'));
  for(const model of ['t80','bmw','sponza','bistro']) {
   await page.click('#'+model);
   await page.waitForFunction(()=>document.querySelector('#name').textContent.includes('triangles')&&!document.querySelector('#bmw').disabled);
   for(const samples of ['0','2','4']) {
    await page.selectOption('#msaa',samples);
    await page.waitForFunction(()=>document.querySelector('#name').textContent.includes('triangles')&&!document.querySelector('#bmw').disabled);
    await page.waitForTimeout(200);
    if(model==='bistro' && samples==='0') await page.screenshot({path:'tmp/scene-quantized-visibility/bistro-browser.png'});
    const r=await page.evaluate(()=>({name:document.querySelector('#name').textContent,title:document.querySelector('#counter').textContent,framebufferWidth:window.__softglDimensions.width,framebufferHeight:window.__softglDimensions.height,framebufferSamples:window.__softglDimensions.samples,crossOriginIsolated:window.crossOriginIsolated,sharedHeap:window.__softglInspection.HEAPU8.buffer instanceof SharedArrayBuffer,canvasWidth:document.querySelector("#canvas").width,canvasHeight:document.querySelector("#canvas").height,workers:document.querySelector('#s-threads').textContent,wasmHeapBytes:window.__softglInspection.HEAPU8.byteLength}));
    console.log(JSON.stringify({model,samples,inspection:r}));
    if(r.framebufferWidth!==640||r.framebufferHeight!==360||r.framebufferSamples!==Number(samples))throw Error('Unexpected framebuffer dimensions/samples');
    if(!r.crossOriginIsolated||!r.sharedHeap)throw Error('Missing isolated shared memory');
    if(r.wasmHeapBytes>4294967296)throw Error('WASM heap exceeds 4 GiB');
    results.push({model,samples,...r}); console.log(JSON.stringify(results.at(-1)));
   }
  }
  if(errors.length)throw Error(errors.join('\n'));
  fs.writeFileSync('tmp/scene-quantized-visibility/browser-smoke.json',JSON.stringify({results,errors,passed:true},null,2));
 } finally {await browser.close();}
})().catch(e=>{console.error(e);process.exitCode=1;});
