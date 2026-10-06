#!/usr/bin/env node
// Browser benchmark and Mesa image gate. Requires Playwright and Chromium.
const fs = require('node:fs');
const path = require('node:path');
const http = require('node:http');
const os = require('node:os');
const crypto = require('node:crypto');
const {execFileSync} = require('node:child_process');
const {chromium} = require('playwright');

const repo = process.cwd();
const options = {
    'wasm-build': 'build/wasm', 'native-build': 'build/native',
    output: 'build/perf/result.json', rounds: '7', warmup: '20', frames: '60', samples: '0',
    browser: process.env.CHROMIUM || '/usr/bin/chromium',
    'reference-build': '',
    'candidate-workers': '',
    'reference-workers': '',
    scenes: '',
    'profile-scene': '',
};
for (let i = 2; i < process.argv.length; i++) {
    const key = process.argv[i].replace(/^--/, '');
    if (key === 'bench-only' || key === 'images-only' || key === 'crossover') options[key] = true;
    else if (Object.hasOwn(options, key)) options[key] = process.argv[++i];
    else throw new Error(`Unknown option: ${process.argv[i]}`);
}
for (const key of ['rounds', 'warmup', 'frames']) {
    options[key] = Number(options[key]);
    if (!Number.isInteger(options[key]) || options[key] < 1) throw new Error(`Invalid ${key}`);
}
options.samples = Number(options.samples);
if (![0, 2, 4].includes(options.samples)) throw new Error('Samples must be 0, 2 or 4');
const wasmDir = path.resolve(repo, options['wasm-build']);
if (options['bench-only'] && options['images-only']) throw new Error('Choose bench-only or images-only');
const referenceDir = options['reference-build'] ? path.resolve(repo, options['reference-build']) : null;
const expectedWorkerCounts = options['candidate-workers'] !== '' || options['reference-workers'] !== '';
if (expectedWorkerCounts) {
    if (!referenceDir || options['candidate-workers'] === '' || options['reference-workers'] === '') {
        throw new Error('Worker expectations require a reference build and both --candidate-workers and --reference-workers');
    }
    for (const key of ['candidate-workers', 'reference-workers']) {
        options[key] = Number(options[key]);
        if (!Number.isInteger(options[key]) || options[key] < 0) throw new Error(`Invalid ${key}`);
    }
}
const modelPack = fs.existsSync(path.join(wasmDir, 'bmw.pack')) ? path.join(wasmDir, 'bmw.pack') : path.join(repo, 'build/assets/bmw.pack');
const referenceModelPack = referenceDir && fs.existsSync(path.join(referenceDir, 'bmw.pack')) ?
    path.join(referenceDir, 'bmw.pack') : modelPack;
const hashFile = file => fs.existsSync(file) ?
    crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex') : null;
if (options.crossover && (!referenceDir || options.rounds < 2 || options.rounds % 2)) {
    throw new Error('--crossover requires a reference build and an even number of rounds');
}
const nativeDir = path.resolve(repo, options['native-build']);
const output = path.resolve(repo, options.output);
const saveResult = result => {
    fs.mkdirSync(path.dirname(output), {recursive: true});
    fs.writeFileSync(output, JSON.stringify(result, null, 2) + '\n');
};
const manifest = JSON.parse(execFileSync('ctest', [
    '--test-dir', nativeDir, '-C', 'Bench', '--show-only=json-v1',
], {encoding: 'utf8'}));
const imageCases = manifest.tests.filter(t => t.name.endsWith('_compare')).map(t => ({
    name: t.name.replace(/_compare$/, ''), ref: t.command[1],
    maxDelta: Number(t.command[3]), maxBad: Number(t.command[4]),
}));
const cases = imageCases.filter(t => !/^(tank|bmw)_view_/.test(t.name));
const tankCases = imageCases.filter(t => t.name.startsWith('tank_view_'));
const bmwCases = imageCases.filter(t => t.name.startsWith('bmw_view_'));
const refs = new Map(imageCases.map(t => [`/refs/${t.name}.rgba`, t.ref]));
const html = '<!doctype html><script src="/module/softgl.js"></script>' +
    '<script>window.ready = createSoftGL({printErr:console.error}).then(m => window.mod=m);</script>';
const server = http.createServer((req, res) => {
    res.setHeader('Cross-Origin-Opener-Policy', 'same-origin');
    res.setHeader('Cross-Origin-Embedder-Policy', 'require-corp');
    res.setHeader('Cache-Control', 'no-store');
    const url = new URL(req.url, 'http://localhost').pathname;
    if (url === '/' || url === '/reference/') {
        res.setHeader('Content-Type', 'text/html');
        res.end(url === '/' ? html : html.replace('/module/', '/reference/'));
        return;
    }
    const files = new Map([
        ['/module/softgl.js', path.join(wasmDir, 'softgl.js')],
        ['/module/softgl.wasm', path.join(wasmDir, 'softgl.wasm')],
        ['/tank.pack', path.join(repo, 'tests/bench/tank_data/tank.pack')],
        ['/bmw.pack', modelPack],
        ...refs,
    ]);
    if (referenceDir) {
        files.set('/reference/softgl.js', path.join(referenceDir, 'softgl.js'));
        files.set('/reference/softgl.wasm', path.join(referenceDir, 'softgl.wasm'));
        files.set('/reference/bmw.pack', referenceModelPack);
    }
    const file = files.get(url);
    if (!file || !fs.existsSync(file)) { res.writeHead(404); res.end('Missing artifact'); return; }
    res.setHeader('Content-Type', url.endsWith('.js') ? 'application/javascript' :
        url.endsWith('.wasm') ? 'application/wasm' : 'application/octet-stream');
    fs.createReadStream(file).pipe(res);
});

async function main() {
    await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
    let browser;
    try {
        browser = await chromium.launch({executablePath: options.browser, headless: true,
            args: ['--no-sandbox', '--disable-dev-shm-usage']});
        const page = await browser.newPage();
        page.setDefaultTimeout(120000);
        page.on('pageerror', error => console.error(error));
        await page.goto(`http://127.0.0.1:${server.address().port}/`);
        await page.evaluate(async () => { await window.ready; });
        const metadata = await page.evaluate(() => ({
            userAgent: navigator.userAgent, hardwareConcurrency: navigator.hardwareConcurrency,
            crossOriginIsolated, width: 640, height: 360,
            testCount: mod._sg_test_count(),
        }));
        if (!metadata.crossOriginIsolated) throw new Error('SharedArrayBuffer isolation is required');
        const result = {
            timestamp: new Date().toISOString(), browser: browser.version(),
            cpu: os.cpus()[0].model, hostLogicalCpus: os.cpus().length,
            gitCommit: execFileSync('git', ['rev-parse', 'HEAD'], {cwd: repo, encoding: 'utf8'}).trim(),
            driverSha256: crypto.createHash('sha256').update(fs.readFileSync(__filename)).digest('hex'),
            wasmSha256: crypto.createHash('sha256').update(fs.readFileSync(path.join(wasmDir, 'softgl.wasm'))).digest('hex'),
            options, metadata,
            modelAssets: {candidatePackSha256:hashFile(modelPack),
                referencePackSha256:referenceDir ? hashFile(referenceModelPack) : null},
            emscripten: execFileSync('emcc', ['--version'], {encoding: 'utf8'}).split('\n')[0],
            sourceDiffSha256: crypto.createHash('sha256').update(execFileSync('git', ['diff', '--', 'libsoftgl', 'wasm'], {cwd: repo})).digest('hex'),
        };
        if (!options['bench-only']) {
            result.images = await page.evaluate(async ({cases, tankCases, bmwCases}) => {
                const results = [];
                const count = mod._sg_test_count();
                if (count !== cases.length) throw new Error(`Case count mismatch: WASM ${count}, native ${cases.length}`);
                const byName = new Map(cases.map(t => [`test_${t.name}`, t]));
                async function compare(spec, ctx) {
                    const response = await fetch(`/refs/${spec.name}.rgba`);
                    if (!response.ok) throw new Error(`Missing Mesa reference: ${spec.name}`);
                    const raw = new Uint8Array(await response.arrayBuffer());
                    const header = new DataView(raw.buffer);
                    if (String.fromCharCode(...raw.subarray(0, 4)) !== 'SGRG' ||
                        header.getUint32(4, true) !== 640 || header.getUint32(8, true) !== 360 ||
                        raw.length !== 12 + 640 * 360 * 4) throw new Error(`Invalid reference: ${spec.name}`);
                    const ptr = mod._softgl_read_rgba8(ctx);
                    if (!ptr || ptr + 640 * 360 * 4 > mod.HEAPU8.length) throw new Error(`Invalid framebuffer: ${spec.name}`);
                    const pixels = mod.HEAPU8.subarray(ptr, ptr + 640 * 360 * 4);
                    let bad = 0, maxDelta = 0, sumDelta = 0;
                    for (let p = 0; p < pixels.length; p += 4) {
                        let delta = 0;
                        for (let c = 0; c < 4; c++) {
                            const d = Math.abs(pixels[p + c] - raw[12 + p + c]);
                            sumDelta += d;
                            delta = Math.max(delta, d);
                        }
                        maxDelta = Math.max(maxDelta, delta);
                        if (delta > spec.maxDelta) bad++;
                    }
                    const digest = await crypto.subtle.digest('SHA-256', pixels.slice());
                    results.push({name: spec.name, bad, maxDelta, maxBad: spec.maxBad,
                        threshold: spec.maxDelta, averageDelta: sumDelta / pixels.length,
                        sha256: Array.from(new Uint8Array(digest), b => b.toString(16).padStart(2, '0')).join(''),
                        passed: bad <= spec.maxBad});
                }
                for (let i = 0; i < count; i++) {
                    const name = mod.UTF8ToString(mod._sg_test_name(i));
                    const spec = byName.get(name);
                    if (!spec) throw new Error(`No tolerance manifest for ${name}`);
                    const ctx = mod._softgl_create(640, 360);
                    if (!ctx) throw new Error(`Context creation failed: ${name}`);
                    try {
                        mod._softgl_make_current(ctx);
                        mod._sg_test_run(i, 640, 360);
                        await compare(spec, ctx);
                    } finally { mod._softgl_destroy(ctx); }
                }
                if (tankCases.length) {
                    const bytes = new Uint8Array(await (await fetch('/tank.pack')).arrayBuffer());
                    const ptr = mod._malloc(bytes.length);
                    if (!ptr) throw new Error('Tank allocation failed');
                    mod.HEAPU8.set(bytes, ptr);
                    try {
                        for (const spec of tankCases) {
                            const angle = Number(spec.name.replace('tank_view_', ''));
                            const ctx = mod._softgl_create(640, 360);
                            if (!ctx) throw new Error('Tank context allocation failed');
                            try {
                                mod._softgl_make_current(ctx);
                                if (!mod._sg_tank_load(ptr, bytes.length)) throw new Error('Tank load failed');
                                mod._sg_tank_render(angle, 640, 360);
                                await compare(spec, ctx);
                            } finally {
                                mod._sg_tank_unload();
                                mod._softgl_destroy(ctx);
                            }
                        }
                    } finally { mod._free(ptr); }
                }
                if (bmwCases.length) {
                    const response = await fetch('/bmw.pack');
                    if (!response.ok) throw new Error('BMW pack missing');
                    const bytes = new Uint8Array(await response.arrayBuffer());
                    const ptr = mod._malloc(bytes.length);
                    if (!ptr) throw new Error('BMW allocation failed');
                    mod.HEAPU8.set(bytes, ptr);
                    try {
                        for (const spec of bmwCases) {
                            const ctx = mod._softgl_create(640, 360);
                            if (!ctx) throw new Error('BMW context allocation failed');
                            try {
                                mod._softgl_make_current(ctx);
                                if (!mod._sg_model_load(ptr, bytes.length)) throw new Error('BMW load failed');
                                mod._sg_model_render(Number(spec.name.replace('bmw_view_', '')), 640, 360);
                                await compare(spec, ctx);
                            } finally {
                                mod._sg_model_unload();
                                mod._softgl_destroy(ctx);
                            }
                        }
                    } finally {mod._free(ptr);}
                }
                return results;
            }, {cases, tankCases, bmwCases});
            const failures = result.images.filter(t => !t.passed);
            console.log(`Mesa image gate: ${result.images.length - failures.length}/${result.images.length} passed`);
            if (failures.length) {
                console.error(JSON.stringify(failures, null, 2));
                saveResult(result);
                throw new Error(`Image regressions detected; results: ${output}`);
            }
        }
        const allScenes = ['100_showcase', '202_shadow_volume', '209_particles_additive',
            '98_city_block', '57_icosphere_lit', '70_heightfield', '217_dot3_multipass_fog',
            '94_lit_textured_sphere', '72_fog_linear', '73_fog_exp', '74_fog_colored', 'tank'];
        if (options['images-only']) {
            saveResult(result);
            console.log(`Results: ${output}`);
            return;
        }
        if (bmwCases.length) allScenes.push('bmw');
        const scenes = options.scenes ? options.scenes.split(',') : allScenes;
        if (new Set(scenes).size !== scenes.length || scenes.some(name => !allScenes.includes(name) && !cases.some(test => test.name === name))) {
            throw new Error(`Invalid scenes: ${options.scenes}`);
        }
        let candidatePage = page;
        let referencePage;
        if (referenceDir) {
            referencePage = await browser.newPage();
            await referencePage.goto(`http://127.0.0.1:${server.address().port}/reference/`);
            await referencePage.evaluate(async () => { await window.ready; });
            const referenceCount = await referencePage.evaluate(() => mod._sg_test_count());
            // Model scenes load the same frozen packs through dedicated exports;
            // adding an unrelated correctness case does not change that workload.
            if (referenceCount !== metadata.testCount &&
                scenes.some(name => name !== 'bmw' && name !== 'tank')) {
                throw new Error('Reference and candidate must have identical test catalogs');
            }
            result.referenceTestCount = referenceCount;
            result.referenceWasmSha256 = crypto.createHash('sha256')
                .update(fs.readFileSync(path.join(referenceDir, 'softgl.wasm'))).digest('hex');
        }
        const preparePage = async target => {
            await target.evaluate(async ({includeBMW, samples}) => {
                const indices = new Map();
                for (let i = 0; i < mod._sg_test_count(); i++) indices.set(mod.UTF8ToString(mod._sg_test_name(i)), i);
                const tankBytes = new Uint8Array(await (await fetch('/tank.pack')).arrayBuffer());
                const packURL = location.pathname.startsWith('/reference/') ? '/reference/bmw.pack' : '/bmw.pack';
                const bmwBytes = includeBMW ? new Uint8Array(await (await fetch(packURL)).arrayBuffer()) : null;
                const createContext = () => samples ?
                    mod._softgl_create_multisample(640, 360, samples) : mod._softgl_create(640, 360);
                window.perfRun = async (name, warmup, frames) => {
                    const ctx = createContext();
                    if (!ctx) throw new Error(`Context allocation failed: ${name}`);
                    let tankPtr = 0;
                    try {
                        mod._softgl_make_current(ctx);
                        const workers = mod._sg_thread_count(ctx);
                        if (name === 'tank' || name === 'bmw') {
                            const bytes = name === 'tank' ? tankBytes : bmwBytes;
                            if (!bytes) throw new Error('BMW pack unavailable');
                            tankPtr = mod._malloc(bytes.length);
                            if (!tankPtr) throw new Error('Tank allocation failed');
                            mod.HEAPU8.set(bytes, tankPtr);
                            const load = name === 'tank' ? mod._sg_tank_load : mod._sg_model_load;
                            if (!load(tankPtr, bytes.length)) throw new Error(`${name} load failed`);
                        } else if (!indices.has(`test_${name}`)) throw new Error(`Missing scene: ${name}`);
                        const draw = name === 'tank' ?
                            i => mod._sg_tank_render((i % frames) * 360 / frames, 640, 360) :
                            name === 'bmw' ? i => mod._sg_model_render((i % frames) * 360 / frames, 640, 360) :
                            () => mod._sg_test_run(indices.get(`test_${name}`), 640, 360);
                        const producerPhases = [];
                        const render = (i, observe = false) => {
                            if (!observe) {
                                draw(i);
                                mod._softgl_read_rgba8(ctx);
                                return;
                            }
                            mod._sg_caller_producer_reset();
                            const frameStart = performance.now();
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                            const frameEnd = performance.now();
                            const calls = Array.from({length:13}, (_, j) => mod._sg_caller_producer_read(j));
                            const elapsedMs = Array.from({length:13}, (_, j) => mod._sg_caller_producer_read(j + 13));
                            const counts = Array.from({length:18}, (_, j) => mod._sg_caller_producer_read(j + 2*13));
                            producerPhases.push({frame:i, angle:(i % frames)*360/frames,
                                frameStart, frameEnd, frameElapsedMs:frameEnd-frameStart, calls, elapsedMs, counts});
                        };
                        for (let i = 0; i < warmup; i++) render(i);
                        mod._softgl_read_rgba8(ctx);
                        const start = performance.now();
                        for (let i = 0; i < frames; i++) render(i, true);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength, producerPhases};
                    } finally {
                        if (name === 'tank') mod._sg_tank_unload();
                        if (name === 'bmw') mod._sg_model_unload();
                        if (tankPtr) mod._free(tankPtr);
                        mod._softgl_destroy(ctx);
                    }
                };
                // Diagnostics keep a warmed context alive while CDP starts.
                // Benchmark context lifetime and timed loops remain unchanged.
                let profile = null;
                window.perfProfileFinish = () => {
                    if (!profile) return;
                    const state = profile; profile = null;
                    mod._softgl_make_current(state.ctx);
                    if (state.name === 'tank') mod._sg_tank_unload();
                    if (state.name === 'bmw') mod._sg_model_unload();
                    if (state.ptr) mod._free(state.ptr);
                    mod._softgl_destroy(state.ctx);
                };
                window.perfProfilePrepare = async ({name, warmup, frames}) => {
                    if (profile) throw new Error('Profiling context already exists');
                    const ctx = createContext();
                    if (!ctx) throw new Error(`Profiling context allocation failed: ${name}`);
                    profile = {ctx, name, ptr:0, frames};
                    try {
                        mod._softgl_make_current(ctx);
                        if (name === 'tank' || name === 'bmw') {
                            const bytes = name === 'tank' ? tankBytes : bmwBytes;
                            if (!bytes) throw new Error('Profiling model pack unavailable');
                            profile.ptr = mod._malloc(bytes.length);
                            if (!profile.ptr) throw new Error('Profiling model allocation failed');
                            mod.HEAPU8.set(bytes, profile.ptr);
                            const load = name === 'tank' ? mod._sg_tank_load : mod._sg_model_load;
                            if (!load(profile.ptr, bytes.length)) throw new Error(`Profiling model load failed: ${name}`);
                        } else if (!indices.has(`test_${name}`)) throw new Error(`Missing profile scene: ${name}`);
                        const draw = name === 'tank' ?
                            i => mod._sg_tank_render((i % frames) * 360 / frames, 640, 360) :
                            name === 'bmw' ? i => mod._sg_model_render((i % frames) * 360 / frames, 640, 360) :
                            () => mod._sg_test_run(indices.get(`test_${name}`), 640, 360);
                        profile.render = i => {
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                        };
                        for (let i = 0; i < warmup; i++) profile.render(i);
                        mod._softgl_read_rgba8(ctx);
                        return {warmup, frames, workers:mod._sg_thread_count(ctx)};
                    } catch (error) {
                        window.perfProfileFinish(); throw error;
                    }
                };
                window.perfProfileRun = () => {
                    if (!profile) throw new Error('Profiling context is not prepared');
                    for (let i = 0; i < profile.frames; i++) profile.render(i);
                    mod._softgl_read_rgba8(profile.ctx);
                };
            }, {includeBMW: scenes.includes('bmw'), samples: options.samples});
        };
        for (const target of [candidatePage, referencePage].filter(Boolean)) await preparePage(target);
        const samples = new Map(scenes.map(name => [name, {
            candidate: [], reference: [], candidateHeap: [], referenceHeap: [],
            candidateGeometry: [], referenceGeometry: [],
        }]));
        let workers;
        const workerCounts = {};
        for (let round = 0; round < options.rounds; round++) {
            for (let s = 0; s < scenes.length; s++) {
                const name = scenes[(s + round) % scenes.length];
                const variants = referencePage ? (round % 2 ? ['candidate', 'reference'] : ['reference', 'candidate']) : ['candidate'];
                for (const variant of variants) {
                    const target = variant === 'candidate' ? candidatePage : referencePage;
                    await target.bringToFront();
                    const timing = await target.evaluate(({name, warmup, frames}) => window.perfRun(name, warmup, frames),
                        {name, warmup: options.warmup, frames: options.frames});
                    if (!result.callerProducerObservations) result.callerProducerObservations = [];
                    result.callerProducerObservations.push({name, variant, round, samples:timing.samples,
                        workers:timing.workers, warmup:options.warmup, frames:options.frames,
                        rows:timing.producerPhases});
                    result.notAcceptanceTimings = true;
                    samples.get(name)[variant].push(timing.ms);
                    samples.get(name)[`${variant}Heap`].push(timing.heapBytes);
                    samples.get(name)[`${variant}Geometry`].push({workers:timing.workers, samples:timing.samples});
                    if (timing.samples !== options.samples) throw new Error('Sample count differs between variants');
                    if (workerCounts[variant] !== undefined && workerCounts[variant] !== timing.workers) {
                        throw new Error(`${variant} worker count changed between runs`);
                    }
                    workerCounts[variant] = timing.workers;
                    if (expectedWorkerCounts) {
                        if (timing.workers !== options[`${variant}-workers`]) {
                            throw new Error(`${variant} workers: expected ${options[`${variant}-workers`]}, got ${timing.workers}`);
                        }
                    } else if (workers !== undefined && workers !== timing.workers) {
                        throw new Error('Worker count differs between variants');
                    }
                    workers = timing.workers;
                }
            }
            console.log(`Benchmark round ${round + 1}/${options.rounds} complete`);
            if (options.crossover && round + 1 < options.rounds) {
                [candidatePage, referencePage] = [referencePage, candidatePage];
                const reloads = [[candidatePage, '/'], [referencePage, '/reference/']];
                if ((round + 1) % 2) reloads.reverse();
                for (const [target, route] of reloads) {
                    await target.goto(`http://127.0.0.1:${server.address().port}${route}`);
                    await target.evaluate(async () => { await window.ready; });
                    const count = await target.evaluate(() => mod._sg_test_count());
                    const expectedCount = route === '/' ? metadata.testCount : result.referenceTestCount;
                    if (count !== expectedCount) throw new Error('Test catalog changed during crossover');
                    await preparePage(target);
                }
            }
        }
        const stats = (values, heapBytes) => {
            const sorted = [...values].sort((a, b) => a - b);
            return {samples: values, medianMs: sorted[Math.floor(sorted.length / 2)],
                minMs: sorted[0], maxMs: sorted[sorted.length - 1], heapBytes};
        };
        result.benchmarks = {
            workers: !referencePage || workerCounts.candidate === workerCounts.reference ? workerCounts.candidate : null,
            workerCounts, samples:options.samples, resolvePerFrame:true,
            protocol: options.crossover ? 'page crossover AB/BA, two-round geometric pairs' :
            referencePage ? 'interleaved AB/BA, foreground pages' : 'single variant',
            scenes: scenes.map(name => {
                const values = samples.get(name);
                const candidate = stats(values.candidate, values.candidateHeap);
                candidate.geometrySamples = values.candidateGeometry;
                if (!referencePage) return {name, ...candidate};
                const reference = stats(values.reference, values.referenceHeap);
                reference.geometrySamples = values.referenceGeometry;
                let pairedRatios = values.candidate.map((ms, i) => ms / values.reference[i]);
                if (options.crossover) {
                    const blocks = [];
                    for (let i = 0; i < pairedRatios.length; i += 2) blocks.push(Math.sqrt(pairedRatios[i] * pairedRatios[i + 1]));
                    pairedRatios = blocks;
                }
                pairedRatios.sort((a, b) => a - b);
                return {name, ...candidate, reference, medianRatio: pairedRatios[Math.floor(pairedRatios.length / 2)],
                    changePercent: (pairedRatios[Math.floor(pairedRatios.length / 2)] - 1) * 100};
            })};
        if (options['profile-scene']) {
            if (!allScenes.includes(options['profile-scene'])) throw new Error('Invalid profile scene');
            const preparation = await candidatePage.evaluate(args => window.perfProfilePrepare(args),
                {name:options['profile-scene'], warmup:Math.max(60,options.warmup), frames:options.frames});
            const mainSession = await candidatePage.context().newCDPSession(candidatePage);
            const targetSession = await browser.newBrowserCDPSession();
            let id = 0;
            const pending = new Map();
            targetSession.on('Target.receivedMessageFromTarget', ({message}) => {
                const response = JSON.parse(message);
                const request = pending.get(response.id);
                if (!request) return;
                pending.delete(response.id);
                if (response.error) request.reject(new Error(response.error.message));
                else request.resolve(response.result);
            });
            const sendWorker = async (sessionId, method, params = {}) => {
                const requestId = ++id;
                const response = new Promise((resolve, reject) => pending.set(requestId, {resolve, reject}));
                await targetSession.send('Target.sendMessageToTarget', {
                    sessionId, message: JSON.stringify({id: requestId, method, params}),
                });
                return response;
            };
            const targets = (await targetSession.send('Target.getTargets')).targetInfos
                .filter(target => target.type === 'worker');
            const sessions = [{label: 'main', send: (method, params) => mainSession.send(method, params)}];
            for (const target of targets) {
                const {sessionId} = await targetSession.send('Target.attachToTarget', {targetId: target.targetId, flatten: false});
                sessions.push({label: `worker:${target.targetId}`, url: target.url,
                    send: (method, params) => sendWorker(sessionId, method, params)});
            }
            for (const session of sessions) {
                await session.send('Profiler.enable');
                await session.send('Profiler.setSamplingInterval', {interval: 1000});
                await session.send('Profiler.start');
            }
            console.log(`Profiling ${options['profile-scene']}: main thread and ${targets.length} workers`);
            await candidatePage.evaluate(() => window.perfProfileRun());
            const profiles = [];
            for (const session of sessions) {
                profiles.push({label: session.label, url: session.url, ...(await session.send('Profiler.stop'))});
            }
            const profilePath = output.replace(/\.json$/, '') + '.profiles.json';
            fs.mkdirSync(path.dirname(profilePath), {recursive: true});
            fs.writeFileSync(profilePath, JSON.stringify({scene: options['profile-scene'], profiles}) + '\n');
            result.profile = {scene: options['profile-scene'], path: profilePath, targets: sessions.length,
                intervalUs: 1000, preparation,
                note: 'Separate warmed diagnostic run; context/model loading, hierarchy preparation and warm-up excluded. Not benchmark acceptance evidence.'};
            await candidatePage.evaluate(() => window.perfProfileFinish());
            await mainSession.detach();
            await targetSession.detach();
        }
        saveResult(result);
        for (const scene of result.benchmarks.scenes) console.log(`${scene.name}: ${scene.medianMs.toFixed(3)} ms median${scene.changePercent === undefined ? "" : ` (${scene.changePercent.toFixed(1)}% paired change)`}`);
        console.log(`Results: ${output}`);
    } finally {
        if (browser) await browser.close();
        await new Promise(resolve => server.close(resolve));
    }
}
main().catch(error => { console.error(error); process.exitCode = 1; });
