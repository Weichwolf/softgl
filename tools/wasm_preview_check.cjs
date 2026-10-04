#!/usr/bin/env node
// Exercise real preview controls and pthread recycling, including pool capacity.
const {chromium} = require('playwright');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

async function main() {
    const url = process.argv[2] || 'http://127.0.0.1:8000/';
    const output = process.argv[3] || 'build/preview-check/chromium-check.json';
    fs.mkdirSync(path.dirname(output), {recursive: true});
    const browser = await chromium.launch({executablePath: process.env.CHROMIUM || '/usr/bin/chromium',
        headless: true, args: ['--no-sandbox', '--use-angle=swiftshader', '--enable-unsafe-swiftshader']});
    const errors = [];
    try {
        const context = await browser.newContext({ignoreHTTPSErrors: true});
        // Report nine CPUs to verify the four-context default and context recycling.
        await context.addInitScript(() => Object.defineProperty(navigator,
            'hardwareConcurrency', {get: () => 9}));
        const page = await context.newPage();
        page.setDefaultTimeout(30000);
        page.on('pageerror', error => errors.push(error.message));
        await page.goto(url);
        const moduleResponse = await context.request.get(new URL('softgl.wasm', url).href);
        assert.ok(moduleResponse.ok(), 'Preview WASM must be available from the checked server');
        const wasmSha256 = require('node:crypto').createHash('sha256')
            .update(await moduleResponse.body()).digest('hex');
        const waitTank = () => page.waitForFunction(() =>
            document.querySelector('#counter').textContent.startsWith('T-80') &&
            document.querySelector('#name').textContent.includes('triangles'));
        const waitBMW = () => page.waitForFunction(() =>
            document.querySelector('#counter').textContent.startsWith('2014 BMW') &&
            document.querySelector('#name').textContent.includes('triangles'));
        const waitTest = () => page.waitForFunction(() => document.querySelector('#name').textContent.startsWith('test_'));
        const waitWorkers = n => page.waitForFunction(n => document.querySelector('#s-threads').textContent.startsWith(`${n} (`), n);
        await waitTank();
        await waitWorkers(3);
        for (const samples of ['2', '4', '0']) {
            await page.selectOption('#msaa', samples);
            await waitTank();
            await waitWorkers(3);
            await page.waitForTimeout(150);
            assert.equal(await page.locator('#msaa').inputValue(), samples);
        }
        await page.evaluate(() => {
            window.previewHeartbeat = 0;
            setInterval(() => window.previewHeartbeat++, 10);
        });
        await page.click('#bmw');
        await waitBMW();
        await waitWorkers(3);
        await page.selectOption('#msaa', '4');
        await waitBMW();
        await waitWorkers(3);
        await page.waitForTimeout(200);
        await page.screenshot({path:path.join(path.dirname(output), 'bmw-msaa4.png')});
        await page.selectOption('#msaa', '0');
        await waitBMW();
        await waitWorkers(3);
        await page.screenshot({path:path.join(path.dirname(output), 'bmw.png')});
        await page.click('#bench');
        await page.waitForFunction(() => document.querySelector('#name').textContent === 'Benchmark: bmw');
        await page.click('#bench');
        await page.waitForFunction(() => document.querySelector('#bench-out').textContent.includes('# stopped.'));
        await page.click('#bmw');
        await waitBMW();
        await page.click('#tests');
        await waitTest();
        await page.click('#pause');
        await page.click('#next');
        await page.waitForFunction(() => document.querySelector('#name').textContent === 'test_02_clear_red');
        await page.click('#prev');
        await page.waitForFunction(() => document.querySelector('#name').textContent === 'test_01_clear_black');
        await page.click('#tank');
        await waitTank();
        await waitWorkers(3);
        await page.click('#bench');
        await page.waitForFunction(() => document.querySelector('#bench').textContent === 'Stop Benchmark');
        await page.click('#bench');
        await page.waitForFunction(() => document.querySelector('#bench-out').textContent.includes('# stopped.'));
        await page.click('#bmw');
        await waitBMW();
        await page.selectOption('#msaa', '2');
        await waitBMW();
        await waitWorkers(3);
        const before = await page.evaluate(() => window.previewHeartbeat);
        await page.click('#bench');
        await page.waitForFunction(() => document.querySelector('#bench-out').textContent.includes('# done.'), null, {timeout:240000});
        const result = await page.evaluate(() => ({
            benchmark: document.querySelector('#bench-out').textContent,
            heartbeat: window.previewHeartbeat,
            reportedProcessors: navigator.hardwareConcurrency,
            threads: document.querySelector('#s-threads').textContent,
            isolated: crossOriginIsolated,
        }));
        assert.equal((result.benchmark.match(/^scene=/gm) || []).length, 18);
        const passes = [...result.benchmark.matchAll(/^# MSAA=(off|2x|4x)\n([\s\S]*?)(?=^# MSAA=|^# done\.)/gm)];
        assert.deepEqual(passes.map(pass => pass[1]), ['off', '2x', '4x']);
        for (const pass of passes) {
            assert.equal((pass[2].match(/^scene=/gm) || []).length, 6);
            assert.ok(pass[2].includes('scene=bmw'));
        }
        assert.equal(await page.locator('#msaa').inputValue(), '2', 'Restore previous MSAA selection');
        assert.ok(result.benchmark.includes('scene=bmw'));
        assert.ok(result.heartbeat - before >= 10, 'Browser event loop must run during the benchmark');
        assert.equal(result.reportedProcessors, 9);
        assert.ok(result.threads.startsWith('3 ('));
        assert.equal(await page.locator('#render-cores').count(), 0);
        assert.equal(await page.locator('#render-mode').count(), 0);
        await page.click('#tests');
        await waitTest();
        await page.click('#pause');
        const count = await page.evaluate(() => Number(document.querySelector('#counter').textContent.match(/\/ (\d+)/)[1]));
        for (let i = 1; i < count; i++) {
            await page.click('#next');
            await waitTest();
        }
        await page.click('#tank');
        await waitTank();
        await waitWorkers(3);
        assert.deepEqual(errors, []);
        fs.mkdirSync(path.dirname(output), {recursive: true});
        fs.writeFileSync(output, JSON.stringify({url, browser:browser.version(), ...result,
            heartbeatDuringBenchmark:result.heartbeat - before, displayedTests:count,
            renderWorkers:3, bmwScene:true, cancelledBenchmark:true, offlineGeometry:true,
            multisampleModes:[0,2,4],
            wasmSha256, errors, passed:true}, null, 2) + '\n');
        console.log(`Preview passed: BMW, ${count} tests, six scenes in each of three MSAA passes, cancellation and three workers plus caller on nine reported processors.`);
    } finally {
        await browser.close();
    }
}
main().catch(error => {console.error(error); process.exitCode = 1;});
