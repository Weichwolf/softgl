const {chromium}=require('playwright');
const fs=require('fs'),http=require('http'),path=require('path'),assert=require('assert/strict');
const roots={base:path.resolve('build/controls/simd-index-range-candidate'),candidate:path.resolve('build/controls/raster-mode-entry-candidate')};
const server=http.createServer((req,res)=>{
    res.setHeader('Cross-Origin-Opener-Policy','same-origin');
    res.setHeader('Cross-Origin-Embedder-Policy','require-corp');
    const parts=new URL(req.url,'http://localhost').pathname.split('/');
    if(!roots[parts[1]]){res.writeHead(404).end();return;}
    if(!parts[2]){res.setHeader('Content-Type','text/html');res.end('<script src="softgl.js"></script><script>window.ready=createSoftGL().then(m=>window.mod=m)</script>');return;}
    const file=path.join(roots[parts[1]],path.basename(parts[2]));
    if(!fs.existsSync(file)){res.writeHead(404).end();return;}
    res.setHeader('Content-Type',file.endsWith('.wasm')?'application/wasm':'application/javascript');fs.createReadStream(file).pipe(res);
});
(async()=>{
    await new Promise(r=>server.listen(0,'127.0.0.1',r));let browser;
    try {
        browser=await chromium.launch({executablePath:'/usr/bin/chromium',headless:true,args:['--no-sandbox']});
        const variants={};
        for(const variant of ['base','candidate']){
            const page=await browser.newPage();page.setDefaultTimeout(420000);
            await page.goto(`http://127.0.0.1:${server.address().port}/${variant}/`);
            await page.evaluate(async()=>{await ready;});
            variants[variant]=await page.evaluate(async()=>{
                const rows=[];
                for(let i=0;i<mod._sg_test_count();i++){
                    const name=mod.UTF8ToString(mod._sg_test_name(i)),ctx=mod._softgl_create(640,360);
                    if(!ctx)throw Error('context '+name);
                    try {
                        mod._softgl_make_current(ctx);mod._sg_test_run(i,640,360);
                        const ptr=mod._softgl_read_rgba8(ctx);
                        const digest=await crypto.subtle.digest('SHA-256',mod.HEAPU8.slice(ptr,ptr+640*360*4));
                        rows.push({name,sha256:Array.from(new Uint8Array(digest),b=>b.toString(16).padStart(2,'0')).join('')});
                    } finally {mod._softgl_destroy(ctx);}
                }
                return rows;
            });
            console.log(variant,variants[variant].length,'two-sample test frames');await page.close();
        }
        assert.equal(variants.base.length,234);assert.deepEqual(variants.base,variants.candidate);
        fs.writeFileSync(__dirname+'/all-tests-ms0-results.json',JSON.stringify({passed:true,samples:0,exactImages:234,images:variants.candidate},null,2)+'\n');
        console.log('234 exact MSAA-off test images passed');
    } finally {if(browser)await browser.close();await new Promise(r=>server.close(r));}
})().catch(e=>{console.error(e);process.exitCode=1;});
