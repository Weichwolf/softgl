#!/usr/bin/env node
// Compare offline asset geometry through the same unchanged GL renderer.
const fs = require('node:fs');
const path = require('node:path');
const http = require('node:http');
const crypto = require('node:crypto');
const assert = require('node:assert/strict');
const {chromium} = require('playwright');

async function main() {
    const output = path.resolve(process.argv[2] || 'build/model-check');
    const moduleRoot = path.resolve(process.argv[3] || 'build/wasm');
    const fullPack = path.resolve(process.argv[4] || 'build/assets/bmw-original.pack');
    const preparedPack = path.resolve(process.argv[5] || 'build/assets/bmw.pack');
    fs.mkdirSync(output, {recursive:true});
    const files = new Map([
        ['/softgl.js', path.join(moduleRoot, 'softgl.js')],
        ['/softgl.wasm', path.join(moduleRoot, 'softgl.wasm')],
        ['/original.pack', fullPack], ['/prepared.pack', preparedPack],
    ]);
    const server = http.createServer((req,res) => {
        res.setHeader('Cross-Origin-Opener-Policy', 'same-origin');
        res.setHeader('Cross-Origin-Embedder-Policy', 'require-corp');
        if (req.url === '/') {
            res.end('<script src="softgl.js"></script><script>window.ready=createSoftGL().then(m=>window.mod=m)</script>');
            return;
        }
        const file = files.get(req.url);
        if (!file) { res.writeHead(404).end(); return; }
        res.setHeader('Content-Type', req.url.endsWith('.wasm') ? 'application/wasm' : 'application/octet-stream');
        fs.createReadStream(file).pipe(res);
    });
    await new Promise(resolve => server.listen(0,'127.0.0.1',resolve));
    let browser;
    const errors = [];
    try {
        browser = await chromium.launch({executablePath:process.env.CHROMIUM || '/usr/bin/chromium',
            headless:true,args:['--no-sandbox']});
        const page = await browser.newPage();
        page.on('pageerror',e=>errors.push(e.message));
        await page.goto(`http://127.0.0.1:${server.address().port}/`);
        await page.evaluate(async()=>{await ready;});
        const frames = new Map(), geometry = {};
        for (const variant of ['original','prepared']) {
            geometry[variant] = await page.evaluate(async variant => {
                if (mod._softgl_set_mode || mod._softgl_performance_stat) throw Error('Runtime LOD must be absent');
                const bytes = new Uint8Array(await (await fetch(`/${variant}.pack`)).arrayBuffer());
                window.ctx=mod._softgl_create(640,360); mod._softgl_make_current(ctx);
                const ptr=mod._malloc(bytes.length);mod.HEAPU8.set(bytes,ptr);
                if (!mod._sg_model_load(ptr,bytes.length)) throw Error('Model load failed');
                mod._free(ptr);
                return {triangles:mod._sg_model_tri_count(),materials:mod._sg_model_mat_count(),workers:mod._sg_thread_count(ctx)};
            },variant);
            for (let angle=0;angle<360;angle+=30) {
                const base64=await page.evaluate(angle=>{
                    mod._sg_model_render(angle,640,360);
                    const ptr=mod._softgl_read_rgba8(ctx),rgb=new Uint8Array(640*360*3);
                    for(let y=0;y<360;y++) for(let x=0;x<640;x++) for(let c=0;c<3;c++)
                        rgb[(y*640+x)*3+c]=mod.HEAPU8[ptr+((359-y)*640+x)*4+c];
                    let text='';
                    for(let i=0;i<rgb.length;i+=32768) text+=String.fromCharCode(...rgb.subarray(i,i+32768));
                    return btoa(text);
                },angle);
                const rgb=Buffer.from(base64,'base64');
                frames.set(`${variant}-${angle}`,rgb);
                fs.writeFileSync(path.join(output,`${variant}-${angle}.ppm`),Buffer.concat([Buffer.from('P6\n640 360\n255\n'),rgb]));
            }
            await page.evaluate(()=>{mod._sg_model_unload();mod._softgl_destroy(ctx);});
            await page.waitForTimeout(0);
        }
        const views=[];
        for(let angle=0;angle<360;angle+=30) {
            const a=frames.get(`original-${angle}`),b=frames.get(`prepared-${angle}`);
            let sum=0,max=0,intersection=0,union=0;
            for(let i=0;i<a.length;i+=3) {
                const foreground=frame=>frame[i]!==frame[0] || frame[i+1]!==frame[1] || frame[i+2]!==frame[2];
                const fa=foreground(a),fb=foreground(b);
                intersection+=fa&&fb;union+=fa||fb;
                for(let c=0;c<3;c++) { const d=Math.abs(a[i+c]-b[i+c]);sum+=d;max=Math.max(max,d); }
            }
            views.push({angle,meanAbsoluteRGB:sum/a.length,maxRGBDelta:max,silhouetteIoU:union?intersection/union:1});
        }
        assert.deepEqual(errors,[]);
        const sha=file=>crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
        const result={geometry,views,errors,wasmSha256:sha(path.join(moduleRoot,'softgl.wasm')),
            originalPackSha256:sha(fullPack),preparedPackSha256:sha(preparedPack),
            note:'Asset approximation diagnostics; native/Mesa correctness tolerances remain unchanged.'};
        fs.writeFileSync(path.join(output,'result.json'),JSON.stringify(result,null,2)+'\n');
        console.log(`Captured ${views.length} original/prepared views; minimum silhouette IoU ${Math.min(...views.map(v=>v.silhouetteIoU)).toFixed(5)}`);
    } finally {
        if(browser) await browser.close();
        await new Promise(resolve=>server.close(resolve));
    }
}
main().catch(error=>{console.error(error);process.exitCode=1;});
