#!/usr/bin/env node
// Compare explicitly approximate F31 rendering against the original geometry.
// This complements, and does not replace, the unchanged Mesa image gate.
const fs = require('node:fs');
const path = require('node:path');
const http = require('node:http');
const crypto = require('node:crypto');
const assert = require('node:assert/strict');
const {chromium} = require('playwright');

async function main() {
    const root = path.resolve(process.argv[3] || path.join(__dirname, '../build/wasm'));
    const output = path.resolve(process.argv[2] || 'build/lod-check');
    fs.mkdirSync(output, {recursive:true});
    const server = http.createServer((req, res) => {
        res.setHeader('Cross-Origin-Opener-Policy', 'same-origin');
        res.setHeader('Cross-Origin-Embedder-Policy', 'require-corp');
        res.setHeader('Cache-Control', 'no-store');
        if (req.url === '/') {
            res.end('<script src="softgl.js"></script><script>window.ready=createSoftGL().then(m=>window.mod=m)</script>');
            return;
        }
        const name = new URL(req.url, 'http://localhost').pathname.slice(1);
        if (!['softgl.js', 'softgl.wasm', 'bmw.pack'].includes(name)) { res.writeHead(404).end(); return; }
        res.setHeader('Content-Type', name.endsWith('.wasm') ? 'application/wasm' : 'application/octet-stream');
        fs.createReadStream(path.join(root, name)).pipe(res);
    });
    await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
    let browser;
    const errors = [];
    try {
        browser = await chromium.launch({executablePath:process.env.CHROMIUM || '/usr/bin/chromium',
            headless:true, args:['--no-sandbox']});
        const context = await browser.newContext();
        await context.addInitScript(() => Object.defineProperty(navigator, 'hardwareConcurrency', {get:()=>8}));
        const page = await context.newPage();
        page.on('pageerror', error => errors.push(error.message));
        await page.goto(`http://127.0.0.1:${server.address().port}/`);
        await page.evaluate(async () => {
            await window.ready;
            window.heartbeat = 0; setInterval(() => window.heartbeat++, 10);
            const bytes = new Uint8Array(await (await fetch('/bmw.pack')).arrayBuffer());
            window.ctx = mod._softgl_create(640, 360);
            if (!ctx || mod._softgl_get_mode(ctx) !== 0) throw new Error('Default must be Compliance');
            mod._softgl_make_current(ctx);
            const ptr = mod._malloc(bytes.length);
            mod.HEAPU8.set(bytes, ptr);
            if (!mod._sg_model_load(ptr, bytes.length)) throw new Error('BMW load failed');
            mod._free(ptr);
            window.stat = id => Number(mod.ccall('softgl_performance_stat', 'number', ['number', 'number'], [ctx,id]));
            window.render = angle => { mod._sg_model_render(angle,640,360); return mod._softgl_read_rgba8(ctx); };
            mod._softgl_set_mode(ctx,1);
            mod._softgl_set_lod_error(ctx,1);
            render(0);
        });
        const before = await page.evaluate(() => heartbeat);
        await page.waitForFunction(() => { render(0); return stat(3) === 0 && stat(2) > 0; }, null, {timeout:30000,polling:100});
        const metrics = await page.evaluate(() => ({ready:stat(2),pending:stat(3),builds:stat(4),
            heartbeatDuringPreparation:heartbeat,workers:mod._sg_thread_count(ctx),heapBytes:mod.HEAPU8.byteLength}));
        assert.equal(metrics.workers,8); assert.ok(metrics.heartbeatDuringPreparation-before > 1);
        const views = [];
        for (let angle = 0; angle < 360; angle += 30) {
            const frame = await page.evaluate(async angle => {
                mod._softgl_set_mode(ctx,0); const p=render(angle);
                const exact=new Uint8Array(mod.HEAPU8.slice(p,p+640*360*4));
                mod._softgl_set_mode(ctx,1); const q=render(angle);
                const approx=new Uint8Array(mod.HEAPU8.slice(q,q+exact.length));
                const geometry={input:stat(0),drawn:stat(1),ready:stat(2),pending:stat(3),builds:stat(4)};
                mod._softgl_set_mode(ctx,0); const r=render(angle);
                if (!exact.every((v,i)=>v===mod.HEAPU8[r+i])) throw new Error('Returning to Compliance changed the original image');
                const ppm = rgba => {
                    const rgb=new Uint8Array(640*360*3);
                    for(let y=0;y<360;y++) for(let x=0;x<640;x++) for(let c=0;c<3;c++)
                        rgb[(y*640+x)*3+c]=rgba[((359-y)*640+x)*4+c];
                    return btoa(Array.from(rgb, x=>String.fromCharCode(x)).join(''));
                };
                window.capturePPM=ppm;
                let sum=0,max=0,bad4=0,bad16=0;
                for(let i=0;i<exact.length;i+=4) {
                    let delta=0;
                    for(let c=0;c<3;c++) { const d=Math.abs(exact[i+c]-approx[i+c]); sum+=d; delta=Math.max(delta,d); }
                    max=Math.max(max,delta); bad4+=delta>4; bad16+=delta>16;
                }
                const hash=async rgba=>Array.from(new Uint8Array(await crypto.subtle.digest('SHA-256',rgba)),
                    byte=>byte.toString(16).padStart(2,'0')).join('');
                return {angle,geometry,exactRGBA:await hash(exact),approximateRGBA:await hash(approx),meanChannelDelta:sum/(640*360*3),maxDelta:max,
                    pixelsOver4:bad4,pixelsOver16:bad16,exact:ppm(exact),approximate:ppm(approx)};
            }, angle);
            assert.equal(frame.geometry.input,1879282);
            assert.ok(frame.geometry.drawn < frame.geometry.input);
            assert.equal(frame.geometry.pending,0); assert.equal(frame.geometry.builds,metrics.builds);
            for(const [mode,data] of [['compliance',frame.exact],['performance',frame.approximate]])
                fs.writeFileSync(path.join(output,`${angle}-${mode}.ppm`),Buffer.concat([
                    Buffer.from('P6\n640 360\n255\n'),Buffer.from(data,'base64')]));
            delete frame.exact; delete frame.approximate; views.push(frame);
        }
        const refinement = await page.evaluate(() => {
            mod._softgl_set_mode(ctx,1);
            const counts = [1,2,.5].map(scale => {
                mod._sg_model_render(0,640*scale,360*scale); mod._softgl_read_rgba8(ctx);
                return {viewportScale:scale,input:stat(0),drawn:stat(1),builds:stat(4)};
            });
            return counts;
        });
        assert.ok(refinement[1].drawn > refinement[0].drawn, 'Larger projection must refine the geometry');
        assert.ok(refinement[2].drawn < refinement[0].drawn, 'Smaller projection must simplify the geometry');
        assert.ok(refinement.every(x => x.builds === metrics.builds), 'Viewport changes must reuse the hierarchy');
        const adaptive = await page.evaluate(async () => {
            mod._softgl_set_frame_budget(ctx,1000/30);
            const samples=[];
            for(let frame=0;frame<120;frame++) {
                await new Promise(resolve=>setTimeout(resolve,0));
                const start=performance.now(); render(frame*3);
                samples.push({frame,ms:performance.now()-start,drawn:stat(1),
                    pixelError:mod._softgl_quality_stat(ctx,0),
                    smoothedMs:mod._softgl_quality_stat(ctx,2),
                    limited:mod._softgl_quality_stat(ctx,3)});
            }
            const coarse=mod._softgl_quality_stat(ctx,0);
            mod._softgl_set_lod_error(ctx,coarse);
            const views=[0,60,120,180].map(angle=>{
                mod._softgl_set_mode(ctx,0);const p=render(angle);
                const exact=mod.HEAPU8.slice(p,p+640*360*4);
                mod._softgl_set_mode(ctx,1);const q=render(angle);
                const approximate=mod.HEAPU8.slice(q,q+exact.length);
                let sum=0,bad16=0;
                for(let i=0;i<exact.length;i+=4) {
                    let delta=0;
                    for(let c=0;c<3;c++) {const d=Math.abs(exact[i+c]-approximate[i+c]);sum+=d;delta=Math.max(delta,d);}
                    bad16+=delta>16;
                }
                return {angle,drawn:stat(1),pixelError:coarse,meanChannelDelta:sum/(640*360*3),
                    pixelsOver16:bad16,exact:capturePPM(exact),approximate:capturePPM(approximate)};
            });
            mod._softgl_set_frame_budget(ctx,1000);
            // Loose budget must recover detail without rebuilding geometry.
            for(let frame=0;frame<45;frame++) {
                await new Promise(resolve=>setTimeout(resolve,0)); render(frame*3);
            }
            const recovered=mod._softgl_quality_stat(ctx,0), builds=stat(4);
            mod._sg_model_unload(); mod._softgl_destroy(ctx);
            return {frameBudget:1000/30,samples,coarse,recovered,builds,views};
        });
        for(const view of adaptive.views) {
            for(const [mode,data] of [['compliance',view.exact],['performance',view.approximate]])
                fs.writeFileSync(path.join(output,`budget-${view.angle}-${mode}.ppm`),Buffer.concat([
                    Buffer.from('P6\n640 360\n255\n'),Buffer.from(data,'base64')]));
            delete view.exact; delete view.approximate;
        }
        assert.ok(adaptive.samples.every(x=>x.pixelError>=.125 && x.pixelError<=8));
        assert.ok(adaptive.recovered<adaptive.coarse,'Available budget must recover detail');
        assert.equal(adaptive.builds,metrics.builds);
        assert.deepEqual(errors,[]);
        const hash = name => crypto.createHash('sha256').update(fs.readFileSync(path.join(root,name))).digest('hex');
        fs.writeFileSync(path.join(output,'result.json'),JSON.stringify({browser:browser.version(),
            wasmSha256:hash('softgl.wasm'),modelSha256:hash('bmw.pack'),width:640,height:360,
            pixelError:1,metrics,views,refinement,adaptive,errors,passed:true,
            note:'Appearance deltas are measurements of the explicitly approximate mode, not relaxed regression tolerances.'},null,2)+'\n');
        console.log(`LOD passed: ${views.length} views, eight render workers, reversible mode, one build per cached draw, no browser errors.`);
    } finally {
        if (browser) await browser.close();
        await new Promise(resolve => server.close(resolve));
    }
}
main().catch(error => {console.error(error);process.exitCode=1;});
