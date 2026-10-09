#!/usr/bin/env node
// Verify HTTP module identity and exercise the real localhost viewer.
const fs = require('node:fs');
const crypto = require('node:crypto');
const assert = require('node:assert/strict');
const {chromium} = require('../../tools/node_modules/playwright');
const digest = b => crypto.createHash('sha256').update(b).digest('hex');

async function main() {
    const output = process.argv[2], expected = JSON.parse(fs.readFileSync(output+'/adoption.json'));
    const base = process.env.SOFTGL_PREVIEW_URL || 'http://127.0.0.1:8000/';
    const hashes = {};
    for(const name of ['softgl.wasm','softgl.js','main.js','index.html']) {
        const response = await fetch(base+name); assert(response.ok);
        hashes[name] = digest(Buffer.from(await response.arrayBuffer()));
    }
    assert.equal(hashes['softgl.wasm'],expected.wasmSha256);
    assert.equal(hashes['softgl.js'],expected.jsSha256);
    for(const name of ['main.js','index.html']) assert.equal(hashes[name],expected.uiSha256[name]);
    const browser = await chromium.launch({executablePath:'/usr/bin/chromium',headless:true,args:['--no-sandbox']});
    const errors=[];
    try {
        const page = await browser.newPage();page.on('pageerror',e=>errors.push(e.message));
        await page.route('**/softgl.js',async route=>{
            const response=await route.fetch();
            await route.fulfill({response,body:await response.text()+`\nconst liveFactory=createSoftGL;
                createSoftGL=o=>liveFactory(o).then(m=>{window.liveModule=m;
                  m._softgl_make_current(0);
                  const make=m._softgl_make_current;
                  m._softgl_make_current=c=>{window.liveContext=c;return make(c)};return m});`});
        });
        await page.goto(base);
        const ready=()=>page.waitForFunction(()=>window.liveModule &&
            document.querySelector('#name').textContent.includes('triangles') &&
            !document.querySelector('#msaa').disabled,{},{timeout:240000});
        await ready();assert.equal(await page.locator('#shading').inputValue(),'full');
        await page.click('#t80');await ready();await page.selectOption('#msaa','4');await ready();
        if(await page.locator('#pause').textContent()==='Pause')await page.click('#pause');
        const capture=()=>page.evaluate(()=>{
            const m=window.liveModule,c=window.liveContext;
            m._sg_model_render(160,640,360);const p=m._softgl_read_rgba8(c);
            return {rgba:Array.from(m.HEAPU8.subarray(p,p+640*360*4)),workers:m._sg_thread_count(c),
                heapBytes:m.HEAPU8.buffer.byteLength,triangles:m._sg_model_active_tri_count()};
        });
        const full=await capture();await page.selectOption('#shading','coarse');const coarse=await capture();
        assert.equal(full.workers,3);assert.equal(coarse.workers,3);
        assert(coarse.heapBytes<4294967296 && coarse.triangles===full.triangles);
        const fullHash=digest(Buffer.from(full.rgba)),coarseHash=digest(Buffer.from(coarse.rgba));
        assert.notEqual(fullHash,coarseHash);
        await page.click('#tests');await page.waitForFunction(()=>document.querySelector('#name').textContent.startsWith('test_'));
        await page.click('#pause');await page.click('#next');
        await page.waitForFunction(()=>document.querySelector('#name').textContent==='test_02_clear_red');
        assert.deepEqual(errors,[]);
        fs.writeFileSync(output+'/live.json',JSON.stringify({passed:true,url:base,httpSha256:hashes,
            asset:'t80',samples:4,width:640,height:360,defaultShadingFull:true,
            fullHash,coarseHash,workers:coarse.workers,heapBytes:coarse.heapBytes,
            triangles:coarse.triangles,ordinaryTestsPassed:true,errors},null,2)+'\n');
        expected.liveUpdatePending=false;fs.writeFileSync(output+'/adoption.json',JSON.stringify(expected,null,2)+'\n');
    } finally {await browser.close();}
}
main().catch(e=>{console.error(e);process.exitCode=1;});
