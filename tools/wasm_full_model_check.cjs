#!/usr/bin/env node
// Compare current full-model pixels with a previously captured original-mesh module.
const assert = require('node:assert/strict');
const crypto = require('node:crypto');
const fs = require('node:fs');
const path = require('node:path');
const {chromium} = require('playwright');

async function main() {
    const url = process.argv[2] || 'http://127.0.0.1:8000/';
    const reference = path.resolve(process.argv[3]);
    const output = path.resolve(process.argv[4]);
    fs.mkdirSync(output, {recursive:true});
    const previous = JSON.parse(fs.readFileSync(path.join(reference, 'receipt.json')));
    assert(previous.passed && previous.actualSimd128Wasm);
    const hash = bytes => crypto.createHash('sha256').update(bytes).digest('hex');
    const wrapper = `\nif (typeof window !== 'undefined') {
        const factory = createSoftGL;
        createSoftGL = options => factory(options).then(module => {
            window.checkedModule = module;
            // Bind Emscripten's lazy export before installing the observer.
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
        page.on('pageerror', error => errors.push(error.message));
        await page.route('**/softgl.js', async route => {
            const response = await route.fetch();
            await route.fulfill({response, body:(await response.text()) + wrapper});
        });
        const httpSha256 = {};
        for (const name of ['index.html', 'main.js', 'softgl.js', 'softgl.wasm']) {
            const response = await context.request.get(new URL(name, url).href);
            assert(response.ok(), name);
            httpSha256[name] = hash(await response.body());
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
                const control = previous.records.find(row => row.asset === asset && row.samples === samples &&
                    row.mode === 'original' && row.shading === 'full');
                assert(control && control.originalTriangles === result.triangles);
                assert.equal(result.materials, control.materials);
                for (const frame of result.frames) {
                    const bytes = Buffer.from(frame.rgba, 'base64');
                    assert.equal(bytes.length, 640*360*4);
                    frame.rgbaSha256 = hash(bytes);
                    const expected = control.frames.find(view => view.angle === frame.angle);
                    assert.equal(frame.rgbaSha256, expected.rgbaSha256, `${asset} MSAA ${samples} angle ${frame.angle}`);
                    const oldFile = `${asset}-ms${samples}-original-full-angle${frame.angle}.rgba`;
                    assert.equal(hash(fs.readFileSync(path.join(reference, oldFile))), expected.rgbaSha256);
                    fs.writeFileSync(path.join(output, `${asset}-ms${samples}-angle${frame.angle}.rgba`), bytes);
                    delete frame.rgba;
                }
                records.push({asset, samples, ...result});
                if (samples === 4) await page.screenshot({path:path.join(output, `${asset}-msaa4.png`)});
                console.log(JSON.stringify({asset, samples, originalFullExact:true, heapBytes:result.heapBytes}));
            }
        }
        assert.deepEqual(errors, []);
        fs.writeFileSync(path.join(output, 'receipt.json'), JSON.stringify({passed:true, url,
            width:640, height:360, actualSimd128Wasm:true, pairedViews:108, fullRgbaByteIdentical:true,
            originalMeshesAndTextures:true, selectorsAndExportsRemoved:true, records, errors,
            peakHeapBytes:Math.max(...records.map(row => row.heapBytes)), httpSha256,
            referenceWasmSha256:previous.wasmSha256,
            referenceReceiptSha256:hash(fs.readFileSync(path.join(reference, 'receipt.json'))),
            runnerSha256:hash(fs.readFileSync(__filename)),
            helperInstrumentationSha256:hash(wrapper)}, null, 2) + '\n');
        console.log('All four original models, OFF/2x/4x: 108 actual browser views equal the prior Full module.');
    } finally {
        await browser.close();
    }
}
main().catch(error => {console.error(error); process.exitCode = 1;});
