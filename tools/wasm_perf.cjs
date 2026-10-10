#!/usr/bin/env node
// Browser benchmark and Mesa image gate. Requires Playwright and Chromium.
const fs = require('node:fs');
const path = require('node:path');
const http = require('node:http');
const os = require('node:os');
const crypto = require('node:crypto');
const {execFileSync} = require('node:child_process');
const {chromium} = require('playwright');

const repo = path.resolve(__dirname, '..');
const options = {
    'wasm-build': 'build/wasm', 'native-build': 'build/native-clang22',
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
const models = JSON.parse(fs.readFileSync(path.join(repo, 'assets/models.json'), 'utf8'));
const modelNames = Object.keys(models);
const resolveModelPack = (name, directory) => {
    const candidates = [directory, path.join(repo, 'build/assets')].filter(Boolean);
    for (const folder of candidates) {
        for (const file of [models[name].browserPack, `${name}.pack`].filter(Boolean)) {
            if (fs.existsSync(path.join(folder, file))) return path.join(folder, file);
        }
    }
    return path.join(repo, 'build/assets', `${name}.pack`);
};
const modelPacks = Object.fromEntries(modelNames.map(name => [name, resolveModelPack(name, wasmDir)]));
const referenceModelPacks = Object.fromEntries(modelNames.map(name => [name,
    referenceDir ? resolveModelPack(name, referenceDir) : modelPacks[name]]));
const modelTextureFiles = new Map();
for (const packs of [modelPacks, referenceModelPacks]) {
    for (const name of modelNames) {
        const manifestName = models[name].textureManifest;
        if (!manifestName) continue;
        const folder = path.dirname(packs[name]), manifestFile = path.join(folder, manifestName);
        if (!fs.existsSync(manifestFile)) continue;
        const prefix = packs === referenceModelPacks ? '/reference/' : '/';
        modelTextureFiles.set(prefix + manifestName, manifestFile);
        const manifest = JSON.parse(fs.readFileSync(manifestFile, 'utf8'));
        for (const group of manifest.groups) modelTextureFiles.set(prefix + group.file, path.join(folder, group.file));
    }
}
const hashFile = file => {
    if (!fs.existsSync(file)) return null;
    const digest = crypto.createHash('sha256'), buffer = Buffer.alloc(4 * 1024 * 1024);
    const fd = fs.openSync(file, 'r');
    try {
        let size;
        while ((size = fs.readSync(fd, buffer, 0, buffer.length, null))) digest.update(buffer.subarray(0, size));
        return digest.digest('hex');
    } finally { fs.closeSync(fd); }
};
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
const modelCases = imageCases.filter(t => modelNames.some(name => t.name.startsWith(`${name}_view_`)))
    .map(t => ({...t, asset:t.name.split('_view_')[0], angle:Number(t.name.split('_view_')[1])}));
const cases = imageCases.filter(t => !modelCases.some(model => model.name === t.name));
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
        ...modelNames.map(name => [`/${name}.pack`, modelPacks[name]]),
        ...refs,
        ...modelTextureFiles,
    ]);
    if (referenceDir) {
        files.set('/reference/softgl.js', path.join(referenceDir, 'softgl.js'));
        files.set('/reference/softgl.wasm', path.join(referenceDir, 'softgl.wasm'));
        for (const name of modelNames) files.set(`/reference/${name}.pack`, referenceModelPacks[name]);
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
            modelAssets: Object.fromEntries(modelNames.map(name => [name, {
                candidatePackSha256:hashFile(modelPacks[name]),
                referencePackSha256:referenceDir ? hashFile(referenceModelPacks[name]) : null,
                nativePackSha256:hashFile(path.join(repo, 'build/assets', `${name}.pack`)),
                textureManifestSha256:models[name].textureManifest ?
                    hashFile(path.join(path.dirname(modelPacks[name]), models[name].textureManifest)) : null,
            }])),
            emscripten: execFileSync('emcc', ['--version'], {encoding: 'utf8'}).split('\n')[0],
            sourceDiffSha256: crypto.createHash('sha256').update(execFileSync('git', ['diff', '--', 'libsoftgl', 'wasm'], {cwd: repo})).digest('hex'),
        };
        if (!options['bench-only']) {
            result.images = await page.evaluate(async ({cases, modelCases, models}) => {
                const uploadTextures = async (asset, prefix = '/') => {
                    if (!models[asset].textureManifest) return;
                    const response = await fetch(prefix + models[asset].textureManifest);
                    if (!response.ok) throw new Error(`${asset} texture manifest missing`);
                    const manifest = await response.json();
                    const ptr = mod._malloc(manifest.maximumUploadBytes);
                    if (!ptr) throw new Error(`${asset} texture allocation failed`);
                    try {
                        for (const group of manifest.groups) {
                            const response = await fetch(prefix + group.file);
                            if (!response.ok) throw new Error(`${group.file} missing`);
                            const pixels = new Uint8Array(await response.arrayBuffer());
                            if (pixels.length !== group.width * group.height * 4) throw new Error('Invalid texture size');
                            mod.HEAPU8.set(pixels, ptr);
                            if (!mod._sg_model_upload_albedo(group.materials[0], group.width, group.height, ptr))
                                throw new Error(`${asset} texture upload failed`);
                            for (const material of group.materials.slice(1)) {
                                if (!mod._sg_model_share_albedo(material, group.materials[0]))
                                    throw new Error(`${asset} texture sharing failed`);
                            }
                        }
                    } finally { mod._free(ptr); }
                };
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
                for (const asset of new Set(modelCases.map(spec => spec.asset))) {
                    const response = await fetch(`/${asset}.pack`);
                    if (!response.ok) throw new Error(`${asset} pack missing`);
                    const bytes = new Uint8Array(await response.arrayBuffer());
                    const ptr = mod._malloc(bytes.length);
                    if (!ptr) throw new Error(`${asset} allocation failed`);
                    mod.HEAPU8.set(bytes, ptr);
                    try {
                        for (const spec of modelCases.filter(test => test.asset === asset)) {
                            const ctx = mod._softgl_create(640, 360);
                            if (!ctx) throw new Error(`${asset} context allocation failed`);
                            try {
                                mod._softgl_make_current(ctx);
                                if (!mod._sg_model_load(ptr, bytes.length)) throw new Error(`${asset} load failed`);
                                if (new DataView(bytes.buffer).getUint32(4, true) === 3) await uploadTextures(asset);
                                if (models[asset].camera) mod._sg_model_set_camera(...models[asset].camera);
                                mod._sg_model_render(spec.angle, 640, 360);
                                await compare(spec, ctx);
                            } finally {
                                mod._sg_model_unload();
                                mod._softgl_destroy(ctx);
                            }
                        }
                    } finally { mod._free(ptr); }
                }
                return results;
            }, {cases, modelCases, models});
            const failures = result.images.filter(t => !t.passed);
            console.log(`Mesa image gate: ${result.images.length - failures.length}/${result.images.length} passed`);
            if (failures.length) {
                console.error(JSON.stringify(failures, null, 2));
                saveResult(result);
                throw new Error(`Image comparisons exceed the Mesa budget; results: ${output}`);
            }
        }
        const allScenes = ['100_showcase', '202_shadow_volume', '209_particles_additive',
            '098_city_block', '057_icosphere_lit', '070_heightfield', '217_dot3_multipass_fog',
            '094_lit_textured_sphere', '072_fog_linear', '073_fog_exp', '074_fog_colored', ...modelNames.filter(name => fs.existsSync(modelPacks[name]))];
        if (options['images-only']) {
            saveResult(result);
            console.log(`Results: ${output}`);
            return;
        }
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
                scenes.some(name => !modelNames.includes(name))) {
                throw new Error('Reference and candidate must have identical test catalogs');
            }
            result.referenceTestCount = referenceCount;
            result.referenceWasmSha256 = crypto.createHash('sha256')
                .update(fs.readFileSync(path.join(referenceDir, 'softgl.wasm'))).digest('hex');
        }
        const preparePage = async target => {
            await target.evaluate(async ({models, samples}) => {
                const indices = new Map();
                for (let i = 0; i < mod._sg_test_count(); i++) indices.set(mod.UTF8ToString(mod._sg_test_name(i)), i);
                const uploadTextures = async (asset, prefix = '/') => {
                    if (!models[asset].textureManifest) return;
                    const response = await fetch(prefix + models[asset].textureManifest);
                    if (!response.ok) throw new Error(`${asset} texture manifest missing`);
                    const manifest = await response.json();
                    const ptr = mod._malloc(manifest.maximumUploadBytes);
                    if (!ptr) throw new Error(`${asset} texture allocation failed`);
                    try {
                        for (const group of manifest.groups) {
                            const response = await fetch(prefix + group.file);
                            if (!response.ok) throw new Error(`${group.file} missing`);
                            const pixels = new Uint8Array(await response.arrayBuffer());
                            if (pixels.length !== group.width * group.height * 4) throw new Error('Invalid texture size');
                            mod.HEAPU8.set(pixels, ptr);
                            if (!mod._sg_model_upload_albedo(group.materials[0], group.width, group.height, ptr))
                                throw new Error(`${asset} texture upload failed`);
                            for (const material of group.materials.slice(1)) {
                                if (!mod._sg_model_share_albedo(material, group.materials[0]))
                                    throw new Error(`${asset} texture sharing failed`);
                            }
                        }
                    } finally { mod._free(ptr); }
                };
                // Keep at most one source pack in JS; load and upload are outside timing.
                let cachedName = null, cachedBytes = null;
                const loadModel = async name => {
                    if (cachedName !== name) {
                        cachedBytes = null;
                        const prefix = location.pathname.startsWith('/reference/') ? '/reference/' : '/';
                        const response = await fetch(`${prefix}${name}.pack`);
                        if (!response.ok) throw new Error(`${name} pack unavailable`);
                        cachedBytes = new Uint8Array(await response.arrayBuffer());
                        cachedName = name;
                    }
                    const ptr = mod._malloc(cachedBytes.length);
                    if (!ptr) throw new Error(`${name} allocation failed`);
                    try {
                        mod.HEAPU8.set(cachedBytes, ptr);
                        if (!mod._sg_model_load(ptr, cachedBytes.length)) throw new Error(`${name} load failed`);
                        if (new DataView(cachedBytes.buffer).getUint32(4, true) === 3) {
                            const prefix = location.pathname.startsWith('/reference/') ? '/reference/' : '/';
                            await uploadTextures(name, prefix);
                        }
                        if (models[name].camera) mod._sg_model_set_camera(...models[name].camera);
                    } finally { mod._free(ptr); }
                };
                const createContext = () => samples ?
                    mod._softgl_create_multisample(640, 360, samples) : mod._softgl_create(640, 360);
                window.perfRun = async (name, warmup, frames) => {
                    const ctx = createContext();
                    if (!ctx) throw new Error(`Context allocation failed: ${name}`);
                    try {
                        mod._softgl_make_current(ctx);
                        const workers = mod._sg_thread_count(ctx);
                        if (models[name]) await loadModel(name);
                        else if (!indices.has(`test_${name}`)) throw new Error(`Missing scene: ${name}`);
                        const draw = models[name] ?
                            i => mod._sg_model_render((i % frames) * 360 / frames, 640, 360) :
                            () => mod._sg_test_run(indices.get(`test_${name}`), 640, 360);
                        const render = i => {
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                        };
                        for (let i = 0; i < warmup; i++) render(i);
                        mod._softgl_read_rgba8(ctx);
                        const start = performance.now();
                        for (let i = 0; i < frames; i++) render(i);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength};
                    } finally {
                        if (models[name]) mod._sg_model_unload();
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
                    if (models[state.name]) mod._sg_model_unload();
                    mod._softgl_destroy(state.ctx);
                };
                window.perfProfilePrepare = async ({name, warmup, frames}) => {
                    if (profile) throw new Error('Profiling context already exists');
                    const ctx = createContext();
                    if (!ctx) throw new Error(`Profiling context allocation failed: ${name}`);
                    profile = {ctx, name, frames};
                    try {
                        mod._softgl_make_current(ctx);
                        if (models[name]) await loadModel(name);
                        else if (!indices.has(`test_${name}`)) throw new Error(`Missing profile scene: ${name}`);
                        const draw = models[name] ?
                            i => mod._sg_model_render((i % frames) * 360 / frames, 640, 360) :
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
            }, {models:Object.fromEntries(modelNames.filter(name => scenes.includes(name)).map(name => [name, models[name]])), samples: options.samples});
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
