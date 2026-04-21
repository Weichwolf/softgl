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
  const tankBtn   = document.getElementById('tank');
  const testsBtn  = document.getElementById('tests');
  const benchOut  = document.getElementById('bench-out');
  const sStatsSimd    = document.getElementById('s-simd');
  const sStatsSab     = document.getElementById('s-sab');
  const sStatsThreads = document.getElementById('s-threads');
  const sStatsCores   = document.getElementById('s-cores');
  const sStatsMs      = document.getElementById('s-ms');
  const sStatsP       = document.getElementById('s-p');

  /* SIMD is a hard build-time requirement — the .wasm contains v128 ops,
   * so a browser that fails the probe also fails to instantiate the
   * module. Surfaced in the stats row so a broken env is visible
   * instead of silently hanging on module load. */
  sStatsSimd.textContent = simdOK ? 'yes' : 'NO — module load will fail';
  sStatsSimd.classList.toggle('bad', !simdOK);
  sStatsSab.textContent = sabOK
      ? 'yes (cross-origin isolated)'
      : 'NO (COOP/COEP headers missing — threads disabled)';
  sStatsSab.classList.toggle('bad', !sabOK);
  sStatsCores.textContent = (navigator.hardwareConcurrency || 1) + ' (navigator.hardwareConcurrency)';

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

  /* Render threads actually spawned — 0 when SAB is missing or
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
    const threads = Mod.ccall('sg_thread_count', 'number', ['number'], [ctx]);
    sStatsThreads.textContent = threads > 0
        ? `${threads} (tile workers + parallel vertex transform)`
        : '0 (single-threaded fallback — no pthreads)';
    sStatsThreads.classList.toggle('bad', threads === 0);
  }

  /* Rolling frame-time window for p50/p95 stats. */
  const FT_MAX = 120;
  const frameTimes = [];
  function recordFrameMs(ms) {
    frameTimes.push(ms);
    if (frameTimes.length > FT_MAX) frameTimes.shift();
    sStatsMs.textContent = `${ms.toFixed(2)} ms (${(1000/ms).toFixed(0)} fps)`;
    if (frameTimes.length >= 10) {
      const s = [...frameTimes].sort((a,b)=>a-b);
      const p50 = s[Math.floor(s.length * 0.50)];
      const p95 = s[Math.floor(s.length * 0.95)];
      sStatsP.textContent = `${p50.toFixed(2)} / ${p95.toFixed(2)} ms (${frameTimes.length}-frame window)`;
    }
  }

  /* ---- Shared output path: softgl FB → SDL texture → canvas ---------
   * sg_viewer_present uploads the softgl context's fb.color into the
   * SDL streaming texture (SDL_UpdateTexture) and calls RenderCopyEx
   * with SDL_FLIP_VERTICAL so the GL y=bottom convention reads correct
   * in window space. Replaces the per-row putImageData Y-flip that ran
   * on the JS side. */
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
  let mode = 'tank';       /* 'tank' | 'tests' */

  function renderTest() {
    const c = Mod.ccall('softgl_create', 'number', ['number','number'], [W, H]);
    Mod.ccall('softgl_make_current', null, ['number'], [c]);
    updateThreadStats(c);
    const t0 = performance.now();
    Mod.ccall('sg_test_run', null, ['number','number','number'], [idx, W, H]);
    const t1 = performance.now();
    blitContext(c);
    Mod.ccall('softgl_destroy', null, ['number'], [c]);

    const name = Mod.ccall('sg_test_name', 'string', ['number'], [idx]);
    counterEl.textContent = `[${idx + 1} / ${testCount}]`;
    nameEl.textContent = name;
    const ms = t1 - t0;
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

  /* ---- Tank mode -------------------------------------------------- */
  /* 30 fps display cap. 2:2 cadence on 60 Hz, 4:4 on 120 Hz — clean,
   * no judder. The compute-time measurement below (t1-t0 around
   * sg_tank_render) is unaffected, so the "fps" shown in the UI stays
   * the uncapped theoretical rate implied by render cost. */
  const TANK_CAP_MS = 1000 / 30;
  let tankLoaded = false;
  let tankCtx = 0;
  let tankFrameId = 0;
  let tankAngle = 0;
  let tankLastTime = 0;

  async function loadTank() {
    const resp = await fetch('tank.pack');
    if (!resp.ok) throw new Error('tank.pack not found (HTTP ' + resp.status + ')');
    const bytes = new Uint8Array(await resp.arrayBuffer());

    /* Allocate inside WASM heap, copy the file in */
    const ptr = Mod._malloc(bytes.length);
    Mod.HEAPU8.set(bytes, ptr);

    /* A context must be current before glGenBuffers etc. can do anything */
    if (!tankCtx) {
      tankCtx = Mod.ccall('softgl_create', 'number', ['number','number'], [W, H]);
    }
    Mod.ccall('softgl_make_current', null, ['number'], [tankCtx]);

    const ok = Mod.ccall('sg_tank_load', 'number', ['number','number'], [ptr, bytes.length]);
    Mod._free(ptr);
    if (!ok) throw new Error('sg_tank_load returned 0 (bad pack?)');

    tankLoaded = true;
    const tris = Mod.ccall('sg_tank_tri_count', 'number', [], []);
    const mats = Mod.ccall('sg_tank_mat_count', 'number', [], []);
    counterEl.textContent = `T-80 MBT`;
    nameEl.textContent = `${tris.toLocaleString()} triangles · ${mats} materials`;
    updateThreadStats(tankCtx);
  }

  function tankFrame(t) {
    if (mode !== 'tank') { tankFrameId = 0; return; }
    tankFrameId = requestAnimationFrame(tankFrame);
    /* Drop rAF ticks that land before the 30 fps budget elapses.
     * 0.95× tolerance absorbs rAF jitter on 60 Hz (→ every 2nd tick
     * renders) and 120 Hz (→ every 4th). tankLastTime is only advanced
     * on rendered frames, so angle dt stays true real time. */
    if (tankLastTime !== 0 && (t - tankLastTime) < TANK_CAP_MS * 0.95) return;

    if (tankLastTime === 0) tankLastTime = t;
    const dt = Math.min(50, t - tankLastTime);    /* clamp to 50 ms */
    tankLastTime = t;
    tankAngle = (tankAngle + dt * 0.04) % 360;    /* ~14.4 °/s */

    Mod.ccall('softgl_make_current', null, ['number'], [tankCtx]);
    const t0 = performance.now();
    Mod.ccall('sg_tank_render', null, ['number','number','number'],
              [tankAngle, W, H]);
    const t1 = performance.now();
    blitContext(tankCtx);
    const ms = t1 - t0;
    timingEl.textContent = `render: ${ms.toFixed(2)} ms   ·   ${(1000/ms).toFixed(0)} fps theoretical (capped @ 30)`;
    recordFrameMs(ms);
    /* steady angle bar instead of test progress */
    progEl.style.transition = 'none';
    progEl.style.width = `${(tankAngle / 360) * 100}%`;
  }

  function startTank() {
    mode = 'tank';
    paused = false;
    pauseBtn.textContent = 'Pause';
    clearTimeout(timer);
    tankLastTime = 0;
    if (!tankFrameId) tankFrameId = requestAnimationFrame(tankFrame);
  }
  function startTests() {
    mode = 'tests';
    if (tankFrameId) { cancelAnimationFrame(tankFrameId); tankFrameId = 0; }
    renderTest();
    scheduleTests();
  }

  /* ---- Buttons ---------------------------------------------------- */
  pauseBtn.onclick = () => {
    paused = !paused;
    pauseBtn.textContent = paused ? 'Resume' : 'Pause';
    if (mode === 'tests') {
      if (paused) clearTimeout(timer); else scheduleTests();
    } else if (mode === 'tank') {
      if (paused && tankFrameId) { cancelAnimationFrame(tankFrameId); tankFrameId = 0; }
      else if (!paused && !tankFrameId) { tankLastTime = 0; tankFrameId = requestAnimationFrame(tankFrame); }
    }
  };
  prevBtn.onclick = () => {
    if (mode !== 'tests') startTests();
    idx = (idx - 1 + testCount) % testCount;
    renderTest(); scheduleTests();
  };
  nextBtn.onclick = () => {
    if (mode !== 'tests') startTests();
    idx = (idx + 1) % testCount;
    renderTest(); scheduleTests();
  };
  if (tankBtn)  tankBtn.onclick  = startTank;
  if (testsBtn) testsBtn.onclick = startTests;

  /* ---- Benchmark mode -------------------------------------------- */
  async function runBenchmark() {
    if (benching) return;
    benching = true;
    clearTimeout(timer);
    if (tankFrameId) { cancelAnimationFrame(tankFrameId); tankFrameId = 0; }
    benchBtn.disabled = true;
    benchOut.hidden = false;
    benchOut.textContent = '';

    const slotCount = Mod.ccall('sg_bench_slot_count', 'number', [], []);
    const tags = [];
    for (let s = 0; s < slotCount; s++) {
      tags.push(Mod.ccall('sg_bench_slot_tag', 'string', ['number'], [s]));
    }
    const log = (s) => { benchOut.textContent += s + '\n'; benchOut.scrollTop = benchOut.scrollHeight; };
    log(`# scenes WASM benchmark @ ${W}x${H} — SIMD=${simdOK}`);
    log(`# userAgent: ${navigator.userAgent}`);
    log(`# 3 runs per scene; min reported.`);
    log('');

    const iters = 20;
    const runs  = 3;
    for (let s = 0; s < slotCount; s++) {
      const tag = tags[s];
      let best = Infinity;
      for (let r = 0; r < runs; r++) {
        await new Promise(res => setTimeout(res, 0));
        const ms = Mod.ccall('sg_bench_run_slot', 'number',
                             ['number','number','number'],
                             [s, iters, 0]);   /* backend arg ignored (fp-only) */
        if (ms < best) best = ms;
      }
      const fps = best > 0 ? (1000 / best) : 0;
      log(`scene=${tag.padEnd(10)} ms=${best.toFixed(3)} fps=${fps.toFixed(1)}`);
    }
    log('');
    log('# done. click "Tank" or "Tests" to resume.');
    benching = false;
    benchBtn.disabled = false;
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

  /* ---- Boot: try tank, fall back to tests ------------------------- */
  nameEl.textContent = 'loading tank.pack…';
  try {
    await loadTank();
    startTank();
  } catch (err) {
    console.error('tank mode unavailable:', err);
    nameEl.style.color = '#c77';
    nameEl.textContent = `tank load failed: ${err.message} — falling back to test cycle`;
    timingEl.textContent = (err.stack || '').split('\n').slice(0,3).join(' | ');
    /* small delay so the user can read the error before cycling starts */
    await new Promise(r => setTimeout(r, 1500));
    nameEl.style.color = '';
    startTests();
  }
})();
