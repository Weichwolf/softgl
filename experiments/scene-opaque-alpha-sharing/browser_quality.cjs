#!/usr/bin/env node
// Original assets, physical MSAA fixtures separately, quantified per-pixel colors.
const assert = require('node:assert/strict');
const crypto = require('node:crypto');
const fs = require('node:fs');
const path = require('node:path');
const {chromium} = require('../../tools/node_modules/playwright');

async function main() {
    const url = process.argv[2] || 'http://127.0.0.1:8000/';
    const reference = process.argv[3] === '-' ? null : path.resolve(process.argv[3]);
    const privateModule = process.argv[5] ? path.resolve(process.argv[5]) : null;
    const output = path.resolve(process.argv[4]);
    fs.mkdirSync(output, {recursive:false});
    const previous = reference ? JSON.parse(fs.readFileSync(path.join(reference, 'receipt.json'))) : null;
    if (previous) assert(previous.passed && previous.actualSimd128Wasm && previous.opaqueOutputAlpha === 1 && previous.records.length === 12);
    const hash = bytes => crypto.createHash('sha256').update(bytes).digest('hex');
    const wrapper = `\nif (typeof window !== 'undefined') {
        const factory = createSoftGL;
        createSoftGL = options => factory(options).then(module => {
            window.checkedModule = module;
            module._softgl_make_current(0);
            const make = module._softgl_make_current;
            module._softgl_make_current = context => {
                window.checkedContext = context;
                return make(context);
            };
            return module;
        });
    }\n`;
    const browser = await chromium.launch({executablePath:process.env.CHROMIUM || '/usr/bin/chromium',
        headless:true, args:['--no-sandbox', '--use-angle=swiftshader', '--enable-unsafe-swiftshader']});
    const records = [], errors = [];
    try {
        const context = await browser.newContext();
        await context.addInitScript(() => Object.defineProperty(navigator, 'hardwareConcurrency', {get:() => 9}));
        const page = await context.newPage();
        page.setDefaultTimeout(240000);
        page.on('pageerror', error => {errors.push(error.message); console.error('pageerror:',error.message);});
        page.on('console', message => {if (message.type() === 'error') console.error('browser:',message.text());});
        page.on('requestfailed', request => console.error('requestfailed:',request.url(),request.failure()));
        await context.route('**/softgl.js', async route => {
            if (privateModule) await route.fulfill({status:200, contentType:'application/javascript', body:fs.readFileSync(path.join(privateModule,'softgl.js'),'utf8') + wrapper});
            else {
                const response = await route.fetch();
                await route.fulfill({response, body:(await response.text()) + wrapper});
            }
        });
        if (privateModule) await context.route('**/softgl.wasm', async route => {
            await route.fulfill({status:200, contentType:'application/wasm', body:fs.readFileSync(path.join(privateModule,'softgl.wasm'))});
        });
        const httpSha256 = {};
        for (const name of ['index.html', 'main.js', 'softgl.js', 'softgl.wasm']) {
            const response = await context.request.get(new URL(name, url).href);
            assert(response.ok(), name);
            httpSha256[name] = hash(await response.body());
            if (privateModule && name.startsWith('softgl.')) httpSha256[name] = hash(fs.readFileSync(path.join(privateModule,name)));
        }
        await page.goto(url);
        const waitModel = () => page.waitForFunction(() => window.checkedModule &&
            document.querySelector('#name').textContent.includes('triangles') &&
            !document.querySelector('#msaa').disabled);
        await waitModel();
        assert.equal(await page.locator('#shading').count(), 0);
        assert.equal(await page.locator('#mesh-detail').count(), 0);
        const expectedTriangles = {t80:44513, bmw:63009, sponza:262267, bistro:640502};
        for (const asset of ['t80', 'bmw', 'sponza', 'bistro']) {
            await page.click(`#${asset}`);
            await waitModel();
            for (const samples of [0, 2, 4]) {
                await page.selectOption('#msaa', String(samples));
                await waitModel();
                if (await page.locator('#pause').textContent() === 'Pause') await page.click('#pause');
                const result = await page.evaluate(() => {
                    const module = window.checkedModule, context = window.checkedContext;
                    const frames = [];
                    for (const angle of [0, 45, 90, 135, 160, 180, 225, 270, 315]) {
                        module._sg_model_render(angle, 640, 360);
                        const ptr = module._softgl_read_rgba8(context);
                        module._sg_viewer_present(ptr);
                        const pixels = module.HEAPU8.subarray(ptr, ptr + 640*360*4);
                        let bytes = '';
                        for (let i = 0; i < pixels.length; i += 32768)
                            bytes += String.fromCharCode(...pixels.subarray(i, i + 32768));
                        frames.push({angle, rgba:btoa(bytes)});
                    }
                    return {frames, triangles:module._sg_model_tri_count(), materials:module._sg_model_mat_count(),
                        workers:module._sg_thread_count(context), heapBytes:module.HEAPU8.buffer.byteLength,
                        isolated:crossOriginIsolated,
                        removedExports:['_sg_model_set_coarse', '_sg_model_lod_load', '_sg_model_active_tri_count',
                            '_sg_model_set_cache', '_sg_model_cache_status'].every(name => !(name in module))};
                });
                assert.equal(result.triangles, expectedTriangles[asset]);
                assert.equal(result.workers, 3);
                assert(result.isolated && result.heapBytes < 4294967296 && result.removedExports);
                const control = previous ? previous.records.find(row => row.asset === asset && row.samples === samples) : null;
                if (previous) { assert(control && control.triangles === result.triangles); assert.equal(result.materials, control.materials); }
                for (const frame of result.frames) {
                    const bytes = Buffer.from(frame.rgba, 'base64');
                    assert.equal(bytes.length, 640*360*4);
                    const expected = control ? control.frames.find(view => view.angle === frame.angle) : null;
                    const before = reference ? fs.readFileSync(path.join(reference, `${asset}-ms${samples}-angle${frame.angle}.rgba`)) : bytes;
                    if (previous) assert.equal(hash(before), expected.rgbaSha256);
                    let total = 0, squared = 0, max = 0, over8 = 0, over32 = 0, alphaMax = 0, alphaTotal = 0;
                    for (let i = 0; i < bytes.length; i += 4) {
                        const alphaDelta = Math.abs(bytes[i+3]-before[i+3]);
                        alphaMax = Math.max(alphaMax,alphaDelta); alphaTotal += alphaDelta;
                        let largest = 0;
                        for (let channel = 0; channel < 3; channel++) {
                            const d = Math.abs(bytes[i+channel] - before[i+channel]);
                            total += d; squared += d*d; max = Math.max(max,d); largest = Math.max(largest,d);
                        }
                        over8 += largest > 8; over32 += largest > 32;
                    }
                    Object.assign(frame, {rgbaSha256:hash(bytes), meanAbsoluteChannelError:total/(640*360*3),
                        meanSquaredChannelError:squared/(640*360*3), maxChannelError:max,
                        pixelFractionOver8:over8/(640*360), pixelFractionOver32:over32/(640*360),
                        alphaExact:alphaMax === 0, maxAlphaError:alphaMax, meanAbsoluteAlphaError:alphaTotal/(640*360)});
                    if (samples !== 4) assert(bytes.equals(before), `${asset} MSAA ${samples} angle ${frame.angle}`);
                    // Scene-specific acceptance for this opt-in; ordinary GL tolerances stay unchanged.
                    assert(frame.meanAbsoluteChannelError < 3 && frame.pixelFractionOver8 < .12);
                    // Final constant alpha and all physical-sample contracts remain exact.
                    assert.equal(alphaMax, 0, `${asset} alpha budget ${samples} angle ${frame.angle}`);
                    fs.writeFileSync(path.join(output, `${asset}-ms${samples}-angle${frame.angle}.rgba`), bytes);
                    delete frame.rgba;
                }
                records.push({asset, samples, ...result});
                if (samples === 4) await page.screenshot({path:path.join(output, `${asset}-msaa4.png`)});
                console.log(JSON.stringify({asset, samples, worstViewMeanRgbError:Math.max(...result.frames.map(f => f.meanAbsoluteChannelError)),
                    heapBytes:result.heapBytes}));
            }
        }
        assert.deepEqual(errors, []);
        fs.writeFileSync(path.join(output, 'receipt.json'), JSON.stringify({passed:true, url,
            width:640, height:360, actualSimd128Wasm:true, pairedViews:108,
            captureOnly:!previous, opaqueOutputAlpha:1, privateModule:!!privateModule,
            offAnd2xRgbaExact:!!previous, alphaByteIdentical:!!previous, approximateIntrapixelShading:true,
            originalMeshesAndTextures:true, selectorsAndExportsRemoved:true, records, errors,
            peakHeapBytes:Math.max(...records.map(row => row.heapBytes)), httpSha256,
            referenceWasmSha256:previous ? previous.httpSha256['softgl.wasm'] : null,
            referenceReceiptSha256:reference ? hash(fs.readFileSync(path.join(reference, 'receipt.json'))) : null,
            moduleBuildReceiptSha256:privateModule ? hash(fs.readFileSync(path.join(privateModule,'receipt.json'))) : null,
            runnerSha256:hash(fs.readFileSync(__filename)),
            helperInstrumentationSha256:hash(wrapper)}, null, 2) + '\n');
        console.log(previous ? '108 browser view pairs: off/2x exact, 4x RGB quantified, alpha exact.' : '108 equal-semantics browser control views captured; no performance claim.');
    } finally {
        await browser.close();
    }
}
main().catch(error => {console.error(error); process.exitCode = 1;});
