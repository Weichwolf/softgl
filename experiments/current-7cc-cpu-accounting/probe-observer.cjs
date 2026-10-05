// Validate the actual observer against a CPU-active owned Chromium renderer.
const fs = require('node:fs');
const path = require('node:path');
const {execFileSync} = require('node:child_process');
const {chromium} = require('playwright');
const source = fs.readFileSync(path.join(__dirname, 'wasm_perf_cpu.cjs'), 'utf8');
const helpers = source.slice(source.indexOf('// Linux observation only:'), source.indexOf('async function main() {'));
const snapshot = new Function('fs', 'execFileSync', helpers + '\nreturn rendererCpuSnapshot;')(fs, execFileSync);
(async () => {
    const browser = await chromium.launch({headless:true, executablePath:'/usr/bin/chromium', args:['--no-sandbox']});
    try {
        const page = await browser.newPage();
        await page.goto('data:text/html,<p>CPU accounting parser probe</p>');
        const before = snapshot();
        if (!before.renderers.length || !before.tasks.length || before.errors.length) throw new Error('Empty or invalid actual renderer selection');
        await page.evaluate(() => {
            const deadline = performance.now() + 300;
            let value = 0;
            while (performance.now() < deadline) value += Math.cos(value);
            return value;
        });
        const after = snapshot();
        const key = t => `${t.pid}:${t.processBirth}:${t.tid}:${t.birth}`;
        const old = new Map(before.tasks.map(t => [key(t), t]));
        let ticks = 0;
        for (const task of after.tasks) {
            const start = old.get(key(task));
            if (start) ticks += task.userTicks + task.systemTicks - start.userTicks - start.systemTicks;
        }
        if (!(ticks > 0)) throw new Error('CPU-active actual renderer produced no matched CPU ticks');
        const result = {passed:true, matchedTicks:ticks, before, after, scope:'Actual Chromium parser/counter probe, no SoftGL benchmark or module'};
        fs.writeFileSync(path.join(__dirname, 'probe-result.json'), JSON.stringify(result, null, 2) + '\n');
        console.log('Actual observer selects', before.renderers.length, 'owned renderers and', before.tasks.length, 'tasks; CPU-active probe matched', ticks, 'ticks');
    } finally { await browser.close(); }
})().catch(e => { console.error(e); process.exitCode = 1; });
