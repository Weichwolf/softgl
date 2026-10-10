(async () => {
  const W = 640, H = 360, INTERVAL_MS = 3000;

  /* ---- WASM-SIMD capability probe --------------------------------
   * A hand-assembled WASM module containing a single v128.const +
   * i32x4.all_true; browsers without SIMD fail validation. Xbox Edge
   * currently (2026) is built on Chromium ≥ 120 → SIMD works, but we
   * surface the result either way so a failure mode is obvious.     */
  const SIMD_PROBE = new Uint8Array([
    0,97,115,109, 1,0,0,0,
    1,5,1, 96,0,1,123,
    3,2,1,0,
    10,10,1, 8,0, 65,0, 253,15, 253,98, 11,
  ]);
  const simdOK = WebAssembly.validate(SIMD_PROBE);
  const sabOK  = (typeof SharedArrayBuffer !== 'undefined')
              && (typeof crossOriginIsolated === 'undefined' || crossOriginIsolated);

  /* The canvas is owned by the SDL2 WebGL binding — do NOT call
   * getContext() on it from JS, SDL's emscripten shim grabs it
   * when SDL_CreateWindow runs and fails if a 2d context is
   * already bound. id must be "canvas": Emscripten's SDL2 port
   * hardcodes "#canvas" as the CSS selector for event-target
   * registration and for resolving Module.canvas from the DOM,
   * so any other id makes SDL bind its GL context to a phantom
   * element and the visible canvas stays black. */
  const canvas = document.getElementById('canvas');
  const counterEl = document.getElementById('counter');
  const nameEl    = document.getElementById('name');
  const timingEl  = document.getElementById('timing');
  const progEl    = document.getElementById('prog');
  const pauseBtn  = document.getElementById('pause');
  const prevBtn   = document.getElementById('prev');
  const nextBtn   = document.getElementById('next');
  const benchBtn  = document.getElementById('bench');
  const fsBtn     = document.getElementById('fullscreen');
  const bmwBtn = document.getElementById('bmw');
  const modelButtons = ['t80', 'sponza', 'bistro'].map(name => document.getElementById(name));
  const testsBtn  = document.getElementById('tests');
  const benchOut  = document.getElementById('bench-out');
  const sStatsSimd    = document.getElementById('s-simd');
  const sStatsSab     = document.getElementById('s-sab');
  const sStatsThreads = document.getElementById('s-threads');
  const sStatsCores   = document.getElementById('s-cores');
  const sStatsMs      = document.getElementById('s-ms');
  const sStatsP       = document.getElementById('s-p');
  const msaaSelect = document.getElementById('msaa');
  const createContext = (samples = 0) => {
    const c = Mod._softgl_create_multisample(W, H, samples);
    if (!c) throw new Error('Could not create render context');
    return c;
  };
  const yieldBrowser = () => new Promise(resolve => setTimeout(resolve, 0));

  /* SIMD is a hard build-time requirement — the .wasm contains v128 ops,
   * so a browser that fails the probe also fails to instantiate the
   * module. Surfaced in the stats row so a broken env is visible
   * instead of silently hanging on module load. */
  sStatsSimd.textContent = simdOK ? 'yes' : 'NO — module load will fail';
  sStatsSimd.classList.toggle('bad', !simdOK);
  sStatsSab.textContent = sabOK
      ? 'yes (cross-origin isolated)'
      : 'NO (HTTPS/localhost and COOP/COEP required)';
  sStatsSab.classList.toggle('bad', !sabOK);
  sStatsCores.textContent = (navigator.hardwareConcurrency || 1) + ' (navigator.hardwareConcurrency)';

  if (!sabOK) {
    nameEl.textContent = window.isSecureContext
        ? 'WASM threads require cross-origin isolation. Serve with COOP/COEP headers.'
        : 'WASM threads require HTTPS or localhost. Open the HTTPS preview for LAN access.';
    return;
  }

  console.log('[main] starting module init');
  /* Hand the specific canvas to Emscripten's SDL shim. Without this it
   * falls back to the first canvas on the page, and SDL_CreateWindow
   * does the getContext('webgl') call internally.
   * print/printErr route stdio from the wasm side (fprintf in
   * sg_viewer.c) to the browser console — without these overrides the
   * modularize wrapper can swallow stdio. */
  const Mod = await createSoftGL({
    canvas,
    print:    (...a) => console.log('[wasm]',  ...a),
    printErr: (...a) => console.warn('[wasm]', ...a),
  });
  console.log('[main] module ready, calling sg_viewer_create');

  /* Worker threads actually spawned — 0 when SAB is missing or
   * -pthread was off in the build. Matches sg_thread_count() on a
   * real context once one exists, so we read it lazily below. */
  const hwThreads = Mod.ccall('sg_hwthreads', 'number', [], []);
  sStatsCores.textContent = hwThreads + ' (emscripten_num_logical_cores)';

  /* Init SDL viewer once. Subsequent render calls will reuse the same
   * SDL texture + renderer; destroy is only needed on shutdown. */
  const viewerOK = Mod.ccall('sg_viewer_create', 'number', ['number', 'number'], [W, H]);
  console.log('[main] sg_viewer_create returned:', viewerOK);
  if (!viewerOK) {
    nameEl.textContent = 'SDL init failed — check console';
    return;
  }

  function updateThreadStats(ctx) {
    const workers = Mod.ccall('sg_thread_count', 'number', ['number'], [ctx]);
    sStatsThreads.textContent = workers > 0
        ? `${workers + 1} (${workers} workers + main thread)`
        : '1 (main thread; no workers)';
    sStatsThreads.classList.toggle('bad', workers === 0);
  }

  /* Rolling frame-time window for p50/p95 stats. */
  const FT_MAX = 120;
  const frameTimes = [];
  function resetFrameStats() {
    frameTimes.length = 0;
    timingEl.textContent = '';
    sStatsMs.textContent = '–';
    sStatsP.textContent = '–';
  }
  function recordFrameMs(ms) {
    frameTimes.push(ms);
    if (frameTimes.length > FT_MAX) frameTimes.shift();
    sStatsMs.textContent = `${ms.toFixed(2)} ms (${(1000/ms).toFixed(0)} render fps)`;
    if (frameTimes.length >= 10) {
      const s = [...frameTimes].sort((a,b)=>a-b);
      const p50 = s[Math.floor(s.length * 0.50)];
      const p95 = s[Math.floor(s.length * 0.95)];
      sStatsP.textContent = `${p50.toFixed(2)} / ${p95.toFixed(2)} ms (${frameTimes.length}-frame window)`;
    }
  }

  /* Complete deferred rendering and MSAA resolve before uploading the
   * framebuffer to SDL. The canvas CSS handles the GL y=bottom flip. */
  function blitContext(c) {
    const pixelsPtr = Mod.ccall('softgl_read_rgba8', 'number', ['number'], [c]);
    Mod.ccall('sg_viewer_present', null, ['number'], [pixelsPtr]);
  }

  /* ---- Test cycle mode -------------------------------------------- */
  const testCount = Mod.ccall('sg_test_count', 'number', [], []);
  let idx = 0;
  let paused = false;
  let timer = null;
  let benching = false;
  let transitioning = false;
  let benchmarkCancelled = false;
  let mode = 'model';       /* 'model' | 'tests' | 'bench' */

  function renderTest() {
    resetFrameStats();
    const c = createContext();
    let ms;
    try {
      Mod._softgl_make_current(c);
      updateThreadStats(c);
      const t0 = performance.now();
      Mod._sg_test_run(idx, W, H);
      const pixels = Mod._softgl_read_rgba8(c);
      ms = performance.now() - t0;
      Mod._sg_viewer_present(pixels);
    } finally {
      Mod._softgl_destroy(c);
    }

    const name = Mod.ccall('sg_test_name', 'string', ['number'], [idx]);
    counterEl.textContent = `[${idx + 1} / ${testCount}]`;
    nameEl.textContent = name;
    timingEl.textContent = `render: ${ms.toFixed(2)} ms`;
    recordFrameMs(ms);

    progEl.style.transition = 'none';
    progEl.style.width = '0%';
    void progEl.offsetWidth;
    progEl.style.transition = `width ${INTERVAL_MS}ms linear`;
    progEl.style.width = '100%';
  }

  function scheduleTests() {
    clearTimeout(timer);
    if (paused || benching || mode !== 'tests') return;
    timer = setTimeout(() => {
      idx = (idx + 1) % testCount;
      renderTest();
      scheduleTests();
    }, INTERVAL_MS);
  }

  /* ---- Model mode -------------------------------------------------- */
  /* 30 fps display cap. Render timing includes driver completion and
   * MSAA resolve, but excludes SDL presentation and the display cap. */
  const MODEL_CAP_MS = 1000 / 30;
  const assetBytes = new Map();
  const assets = {
    bmw: {file:'bmw.pack', title:'2014 BMW 3 Series (F31)'},
    t80: {file:'t80.pack', title:'T-80 MBT'},
    sponza: {file:'sponza.pack', title:'Sponza'},
    bistro: {file:'bistro.pack', title:'Amazon Lumberyard Bistro'},
  };
  let modelMetadata;
  async function loadModelMetadata() {
    if (!modelMetadata) {
      const response = await fetch('models.json');
      if (!response.ok) throw new Error(`Model metadata unavailable (${response.status})`);
      modelMetadata = await response.json();
    }
  }
  let selectedAsset = 't80';
  const textureManifests = new Map();
  async function loadOriginalTextures(name) {
    const file = modelMetadata?.[name]?.textureManifest;
    if (!file) return;
    if (!textureManifests.has(name)) {
      const response = await fetch(file);
      if (!response.ok) throw new Error(`${file}: HTTP ${response.status}`);
      textureManifests.set(name, await response.json());
    }
    const manifest = textureManifests.get(name);
    const ptr = Mod._malloc(manifest.maximumUploadBytes);
    if (!ptr) throw new Error('Texture upload allocation failed');
    try {
      for (const [index, group] of manifest.groups.entries()) {
        nameEl.textContent = `loading ${name} textures ${index+1}/${manifest.groups.length}…`;
        const response = await fetch(group.file);
        if (!response.ok) throw new Error(`${group.file}: HTTP ${response.status}`);
        const pixels = new Uint8Array(await response.arrayBuffer());
        if (pixels.length !== group.width*group.height*4) throw new Error('Invalid texture upload');
        Mod.HEAPU8.set(pixels, ptr);
        if (!Mod._sg_model_upload_albedo(group.materials[0], group.width, group.height, ptr))
          throw new Error(`Original texture upload failed: ${group.file}`);
        for (const material of group.materials.slice(1))
          if (!Mod._sg_model_share_albedo(material, group.materials[0])) throw new Error('Texture sharing failed');
        await yieldBrowser();
      }
    } finally {
      Mod._free(ptr);
    }
  }
  let modelCtx = 0;
  let modelFrameId = 0;
  let modelAngle = 0;
  let modelLastTime = 0;

  async function loadModel() {
    const asset = assets[selectedAsset];
    await loadModelMetadata();
    const file = modelMetadata?.[selectedAsset]?.browserPack || asset.file;
    if (!assetBytes.has(selectedAsset)) {
      const resp = await fetch(file);
      if (!resp.ok) throw new Error(`${file} not found (HTTP ${resp.status})`);
      assetBytes.set(selectedAsset, new Uint8Array(await resp.arrayBuffer()));
    }
    const bytes = assetBytes.get(selectedAsset);

    /* Allocate inside WASM heap, copy the file in */
    const ptr = Mod._malloc(bytes.length);
    if (!ptr) throw new Error(`${asset.file} allocation failed`);
    Mod.HEAPU8.set(bytes, ptr);

    /* A context must be current before glGenBuffers etc. can do anything */
    if (!modelCtx) {
      modelCtx = createContext(Number(msaaSelect.value));
    }
    Mod.ccall('softgl_make_current', null, ['number'], [modelCtx]);

    const ok = Mod.ccall('sg_model_load', 'number', ['number','number'], [ptr, bytes.length]);
    Mod._free(ptr);
    if (!ok) throw new Error(`sg_model_load returned 0 (bad pack?)`);
    await loadOriginalTextures(selectedAsset);

    const tris = Mod.ccall('sg_model_tri_count', 'number', [], []);
    const mats = Mod.ccall('sg_model_mat_count', 'number', [], []);
    counterEl.textContent = asset.title;
    await loadModelMetadata();
    const camera = modelMetadata?.[selectedAsset]?.camera;
    if (camera) Mod.ccall("sg_model_set_camera", null, camera.map(() => "number"), camera);
    nameEl.textContent = `${tris.toLocaleString()} triangles · ${mats} materials`;
    updateThreadStats(modelCtx);
  }

  function modelFrame(t) {
    if (mode !== 'model') { modelFrameId = 0; return; }
    modelFrameId = requestAnimationFrame(modelFrame);
    /* Drop rAF ticks that land before the 30 fps budget elapses.
     * 0.95× tolerance absorbs rAF jitter on 60 Hz (→ every 2nd tick
     * renders) and 120 Hz (→ every 4th). modelLastTime is only advanced
     * on rendered frames, so angle dt stays true real time. */
    if (modelLastTime !== 0 && (t - modelLastTime) < MODEL_CAP_MS * 0.95) return;

    if (modelLastTime === 0) modelLastTime = t;
    const dt = Math.min(50, t - modelLastTime);    /* clamp to 50 ms */
    modelLastTime = t;
    modelAngle = (modelAngle + dt * 0.04) % 360;    /* ~14.4 °/s */

    Mod.ccall('softgl_make_current', null, ['number'], [modelCtx]);
    const t0 = performance.now();
    Mod.ccall('sg_model_render', null, ['number','number','number'],
              [modelAngle, W, H]);
    const pixels = Mod._softgl_read_rgba8(modelCtx);
    const ms = performance.now() - t0;
    Mod._sg_viewer_present(pixels);
    timingEl.textContent = `render: ${ms.toFixed(2)} ms   ·   ${(1000/ms).toFixed(0)} render fps (display capped @ 30)`;
    recordFrameMs(ms);
    /* steady angle bar instead of test progress */
    progEl.style.transition = 'none';
    progEl.style.width = `${(modelAngle / 360) * 100}%`;
  }

  function stopPlayback() {
    clearTimeout(timer);
    if (modelFrameId) { cancelAnimationFrame(modelFrameId); modelFrameId = 0; }
  }

  function releaseModel() {
    if (!modelCtx) return;
    Mod._softgl_make_current(modelCtx);
    Mod.ccall('sg_model_unload', null, [], []);
    Mod._softgl_destroy(modelCtx);
    modelCtx = 0;
  }

  function setControlsBusy(busy) {
    for (const button of [bmwBtn, ...modelButtons, testsBtn, prevBtn, nextBtn, pauseBtn, benchBtn, msaaSelect])
      if (button) button.disabled = busy;
  }

  async function startModel() {
    if (transitioning || benching) return;
    transitioning = true;
    setControlsBusy(true);
    stopPlayback();
    resetFrameStats();
    mode = 'model';
    try {
      // Let terminated pthreads return to Emscripten's prestarted pool.
      await yieldBrowser();
      if (!modelCtx) {
        nameEl.textContent = `loading ${assets[selectedAsset].file}…`;
        await loadModel();
      } else {
        const asset = assets[selectedAsset];
        counterEl.textContent = asset.title;
        const tris = Mod.ccall('sg_model_tri_count', 'number', [], []);
        const mats = Mod.ccall('sg_model_mat_count', 'number', [], []);
        nameEl.textContent = `${tris.toLocaleString()} triangles · ${mats} materials`;
        await loadModelMetadata();
        updateThreadStats(modelCtx);
      }
      paused = false;
      pauseBtn.textContent = 'Pause';
      modelLastTime = 0;
      modelFrameId = requestAnimationFrame(modelFrame);
    } finally {
      transitioning = false;
      setControlsBusy(false);
    }
  }

  async function startTests() {
    if (transitioning || benching) return;
    transitioning = true;
    setControlsBusy(true);
    stopPlayback();
    mode = 'tests';
    try {
      releaseModel();
      await yieldBrowser();
      paused = false;
      pauseBtn.textContent = 'Pause';
      renderTest();
      scheduleTests();
    } finally {
      transitioning = false;
      setControlsBusy(false);
    }
  }

  function reportError(error) {
    stopPlayback();
    nameEl.textContent = `Error: ${error.message}`;
    console.error(error);
  }

  /* ---- Buttons ---------------------------------------------------- */
  pauseBtn.onclick = () => {
    if (benching || transitioning) return;
    paused = !paused;
    pauseBtn.textContent = paused ? 'Resume' : 'Pause';
    if (mode === 'tests') {
      if (paused) clearTimeout(timer); else scheduleTests();
    } else if (mode === 'model') {
      if (paused) stopPlayback();
      else { modelLastTime = 0; modelFrameId = requestAnimationFrame(modelFrame); }
    }
  };
  const stepTest = async direction => {
    if (benching || transitioning) return;
    idx = (idx + direction + testCount) % testCount;
    if (mode !== 'tests') await startTests();
    else { renderTest(); scheduleTests(); }
  };
  prevBtn.onclick = () => stepTest(-1).catch(reportError);
  nextBtn.onclick = () => stepTest(1).catch(reportError);
  async function startAsset(name) {
    if (transitioning || benching) return;
    if (name !== selectedAsset) {
      stopPlayback();
      releaseModel();
      selectedAsset = name;
      if (name === 'bmw') modelAngle = 120;
    }
    await startModel();
  }
  if (bmwBtn) bmwBtn.onclick = () => startAsset('bmw').catch(reportError);
  for (const button of modelButtons) {
    if (button) button.onclick = () => startAsset(button.id).catch(reportError);
  }
  if (testsBtn) testsBtn.onclick = () => startTests().catch(reportError);
  msaaSelect.onchange = async () => {
    if (transitioning || benching) return;
    if (mode === 'model') {
      stopPlayback();
      releaseModel();
      await startModel();
    }
  };
  /* ---- Benchmark mode -------------------------------------------- */
  async function runBenchmark() {
    if (benching) { benchmarkCancelled = true; return; }
    if (transitioning) return;
    const benchmarkAsset = selectedAsset;
    benching = true;
    benchmarkCancelled = false;
    mode = 'bench';
    stopPlayback();
    resetFrameStats();
    setControlsBusy(true);
    benchBtn.disabled = false;
    benchBtn.textContent = 'Stop Benchmark';
    benchOut.hidden = false;
    benchOut.textContent = '';
    const log = text => { benchOut.textContent += text + '\n'; benchOut.scrollTop = benchOut.scrollHeight; };
    const previousSamples = msaaSelect.value;
    log(`# scenes WASM benchmark @ ${W}x${H} — SIMD=${simdOK}, reported processors=${hwThreads}`);
    log('# Models use original meshes and textures at 640x360 render resolution.');
    log(`# userAgent: ${navigator.userAgent}`);
    log('# 3 runs of 20 frames per scene; warm-up excluded; min reported.');
    log('# Browser yields between frames; each timed frame includes worker completion.');
    log('');

    try {
      releaseModel();
      await yieldBrowser();
      const slots = Mod._sg_bench_slot_count();
      const scenes = Array.from({length:slots}, (_, s) => ({
        tag:Mod.ccall('sg_bench_slot_tag', 'string', ['number'], [s]),
        test:Mod._sg_bench_slot_test_index(s),
      }));
      scenes.push({tag:benchmarkAsset, model:true});
      for (const benchmarkSamples of [0, 2, 4]) {
        if (benchmarkCancelled) break;
        msaaSelect.value = String(benchmarkSamples);
        log(`# MSAA=${benchmarkSamples ? `${benchmarkSamples}x` : 'off'}`);
        for (const {tag, test, model} of scenes) {
          if (benchmarkCancelled) break;
          if (!model && test < 0) throw new Error(`Missing benchmark scene: ${tag}`);
          let best = Infinity;
          nameEl.textContent = `Benchmark: ${tag}`;
          for (let run = 0; run < 3 && !benchmarkCancelled; run++) {
            // Context teardown posts worker-pool return messages to the browser.
            await yieldBrowser();
            const c = createContext(benchmarkSamples);
            let modelPtr = 0;
            try {
              Mod._softgl_make_current(c);
              updateThreadStats(c);
              if (model) {
                const bytes = assetBytes.get(benchmarkAsset);
                modelPtr = Mod._malloc(bytes.length);
                if (!modelPtr) throw new Error(`${benchmarkAsset} allocation failed`);
                Mod.HEAPU8.set(bytes, modelPtr);
                if (!Mod._sg_model_load(modelPtr, bytes.length)) throw new Error(`${benchmarkAsset} load failed`);
                Mod._free(modelPtr);
                modelPtr = 0;
                await loadOriginalTextures(benchmarkAsset);
                nameEl.textContent = `Benchmark: ${tag}`;
                const camera = modelMetadata?.[benchmarkAsset]?.camera;
                if (camera) Mod.ccall('sg_model_set_camera', null, camera.map(() => 'number'), camera);
              }
              const render = model ? frame => Mod._sg_model_render(frame*18, W, H)
                                   : () => Mod._sg_test_run(test, W, H);
              render(0);
              Mod._softgl_read_rgba8(c);
              let total = 0;
              for (let frame = 0; frame < 20 && !benchmarkCancelled; frame++) {
                await yieldBrowser();
                if (benchmarkCancelled) break;
                const t0 = performance.now();
                render(frame);
                Mod._softgl_read_rgba8(c);
                total += performance.now() - t0;
              }
              if (!benchmarkCancelled) {
                best = Math.min(best, total / 20);
                blitContext(c);
              }
            } finally {
              if (model) Mod._sg_model_unload();
              if (modelPtr) Mod._free(modelPtr);
              Mod._softgl_destroy(c);
            }
          }
          if (!benchmarkCancelled)
            log(`scene=${tag.padEnd(10)} ms=${best.toFixed(3)} fps=${(1000 / best).toFixed(1)}`);
        }
        log('');
      }
      log('');
      log(benchmarkCancelled ? '# stopped. Select a model or "Tests" to resume.'
                            : '# done. Select a model or "Tests" to resume.');
    } catch (error) {
      log(`# error: ${error.message}`);
      reportError(error);
    } finally {
      msaaSelect.value = previousSamples;
      benching = false;
      benchBtn.textContent = 'Run Benchmark';
      setControlsBusy(false);
    }
  }
  benchBtn.onclick = runBenchmark;

  /* Fullscreen the wrapper, not the canvas — browsers force
   * transform: none on the fullscreen element, which would kill the
   * scaleY(-1) y-flip. The wrapper stays untransformed; the canvas
   * inside it keeps the flip. */
  const canvasWrap = document.getElementById('canvas-wrap');
  fsBtn.onclick = () => {
    if (document.fullscreenElement) document.exitFullscreen();
    else canvasWrap.requestFullscreen().catch(e => console.warn('fullscreen denied:', e));
  };
  document.addEventListener('fullscreenchange', () => {
    fsBtn.textContent = document.fullscreenElement ? 'Exit Fullscreen' : 'Fullscreen';
  });

  /* ---- Boot: try model, fall back to tests ------------------------- */
  nameEl.textContent = `loading ${assets[selectedAsset].file}…`;
  try {
    await startModel();
  } catch (err) {
    console.error('model mode unavailable:', err);
    nameEl.style.color = '#c77';
    nameEl.textContent = `model load failed: ${err.message} — falling back to test cycle`;
    timingEl.textContent = (err.stack || '').split('\n').slice(0,3).join(' | ');
    /* small delay so the user can read the error before cycling starts */
    await new Promise(r => setTimeout(r, 1500));
    nameEl.style.color = '';
    await startTests();
  }
})();
