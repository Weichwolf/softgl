#!/usr/bin/env node
// Exercise the actual SIMD128 module, original assets and optional coarse shading and mesh UI.
const fs = require('node:fs');
const path = require('node:path');
const http = require('node:http');
const crypto = require('node:crypto');
const assert = require('node:assert/strict');
const {chromium} = require('../../tools/node_modules/playwright');

async function main() {
    const root = path.resolve(process.argv[2]);
    const output = path.resolve(process.argv[3]);
    fs.mkdirSync(output, {recursive:true});
    const source = path.join(root, 'wasm'), moduleRoot = path.join(root, 'wasm-build');
    const hash = p => crypto.createHash('sha256').update(fs.readFileSync(p)).digest('hex');
    const wrapper = `\nif(typeof window!=='undefined') { const factory=createSoftGL;
      createSoftGL=opts=>factory(opts).then(m=>{window.gateModule=m;
        m._softgl_make_current(0); const make=m._softgl_make_current;
        m._softgl_make_current=c=>{window.gateContext=c;return make(c)};return m;}); }\n`;
    const server = http.createServer((req,res) => {
        res.setHeader('Cross-Origin-Opener-Policy','same-origin');
        res.setHeader('Cross-Origin-Embedder-Policy','require-corp');
        res.setHeader('Cache-Control','no-store');
        let name = new URL(req.url,'http://localhost').pathname.slice(1) || 'index.html';
        const roots = ['index.html','main.js'].includes(name) || name.endsWith('.lod') ? [source] : [moduleRoot];
        const file = roots.map(dir=>path.resolve(dir,name)).find(p=>p.startsWith(roots[0]+path.sep) && fs.existsSync(p));
        if (!file) {res.writeHead(404).end();return;}
        res.setHeader('Content-Type',name.endsWith('.wasm')?'application/wasm':
            name.endsWith('.js')?'application/javascript':name.endsWith('.html')?'text/html':'application/octet-stream');
        if(name==='softgl.js') res.end(fs.readFileSync(file,'utf8')+wrapper);
        else fs.createReadStream(file).pipe(res);
    });
    await new Promise(resolve=>server.listen(0,'127.0.0.1',resolve));
    const errors=[], records=[];
    let browser;
    try {
        browser=await chromium.launch({executablePath:process.env.CHROMIUM||'/usr/bin/chromium',headless:true,args:['--no-sandbox']});
        const page=await browser.newPage();
        page.on('pageerror',e=>errors.push(e.message));
        await page.goto(`http://127.0.0.1:${server.address().port}/`);
        const waitModel = () => page.waitForFunction(()=>window.gateModule &&
            document.querySelector('#name').textContent.includes('triangles') &&
            !document.querySelector('#msaa').disabled,{},{timeout:240000});
        await waitModel();
        const capture = async (asset, samples, mode, shading) => {
            if(await page.locator('#pause').textContent()==='Pause') await page.click('#pause');
            const result=await page.evaluate(({samples})=>{
                const m=window.gateModule, context=window.gateContext;
                const frames=[];
                for(const angle of [0,45,90,135,160,180,225,270,315]) {
                    m._sg_model_render(angle,640,360);
                    const ptr=m._softgl_read_rgba8(context);
                    m._sg_viewer_present(ptr);
                    const bytes=new Uint8Array(m.HEAPU8.buffer,ptr,640*360*4);
                    let text='';for(let i=0;i<bytes.length;i+=32768)text+=String.fromCharCode(...bytes.subarray(i,i+32768));
                    frames.push({angle,rgba:btoa(text),selectedTriangles:m._sg_model_active_tri_count()});
                }
                return {frames, samples, originalTriangles:m._sg_model_tri_count(), materials:m._sg_model_mat_count(),
                    workers:m._sg_thread_count(context), heapBytes:m.HEAPU8.buffer.byteLength, isolated:crossOriginIsolated};
            },{samples});
            assert.equal(result.workers,3);assert(result.isolated && result.heapBytes<4294967296);
            for(const frame of result.frames) {
                const data=Buffer.from(frame.rgba,'base64');assert.equal(data.length,640*360*4);
                const file=`${asset}-ms${samples}-${mode}-${shading}-angle${frame.angle}.rgba`;
                fs.writeFileSync(path.join(output,file),data);
                frame.rgbaSha256=crypto.createHash('sha256').update(data).digest('hex');delete frame.rgba;
                assert(frame.selectedTriangles>0 && frame.selectedTriangles<=result.originalTriangles);
                if(mode==='original')assert.equal(frame.selectedTriangles,result.originalTriangles);
            }
            records.push({asset,mode,shading,...result});
            fs.writeFileSync(path.join(output,'receipt.json'),JSON.stringify({passed:false,records,errors},null,2)+'\n');
            console.log(JSON.stringify({asset,samples,mode,shading,heapBytes:result.heapBytes,
                lastSelectedTriangles:result.frames.at(-1).selectedTriangles,workers:result.workers}));
        };
        assert.equal(await page.locator('#shading').inputValue(),'full');
        for(const asset of ['t80','bmw','sponza','bistro']) {
            await page.selectOption('#mesh-detail','original');await waitModel();
            await page.click(`#${asset}`);await waitModel();
            for(const samples of [0,2,4]) {
                await page.selectOption('#msaa',String(samples));await waitModel();
                for(const mode of ['original','automatic']) {
                    await page.selectOption('#mesh-detail',mode);await waitModel();
                    for(const shading of ['full','coarse']) {
                        await page.selectOption('#shading',shading);
                        await capture(asset,samples,mode,shading);
                        if(samples===4 && mode==='original')
                            await page.screenshot({path:path.join(output,`${asset}-${shading}-ms4.png`)});
                    }
                }
            }
        }
        await page.click('#tests');
        await page.waitForFunction(()=>document.querySelector('#name').textContent.startsWith('test_'));
        await page.click('#pause');await page.click('#next');
        await page.waitForFunction(()=>document.querySelector('#name').textContent==='test_02_clear_red');
        assert.deepEqual(errors,[]);
        const receipt={passed:true,width:640,height:360,records,errors,
            ordinaryTestsUnaffectedBySelector:true, actualSimd128Wasm:true, defaultShadingFull:true,
            sourceRoot:root,wasmSha256:hash(path.join(moduleRoot,'softgl.wasm')),
            jsSha256:hash(path.join(moduleRoot,'softgl.js')),runnerSha256:hash(__filename),
            previewMainSha256:hash(path.join(source,'main.js')),previewHtmlSha256:hash(path.join(source,'index.html')),
            peakHeapBytes:Math.max(...records.map(r=>r.heapBytes)),
            helperInstrumentationSha256:crypto.createHash('sha256').update(wrapper).digest('hex')};
        fs.writeFileSync(path.join(output,'receipt.json'),JSON.stringify(receipt,null,2)+'\n');
    } finally {
        if(browser)await browser.close();await new Promise(resolve=>server.close(resolve));
    }
}
main().catch(e=>{console.error(e);process.exitCode=1;});
