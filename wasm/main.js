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

  const canvas = document.getElementById('c');
  const ctx = canvas.getContext('2d');
  const img = ctx.createImageData(W, H);
  const counterEl = document.getElementById('counter');
  const nameEl    = document.getElementById('name');
  const timingEl  = document.getElementById('timing');
  const progEl    = document.getElementById('prog');
  const pauseBtn  = document.getElementById('pause');
  const prevBtn   = document.getElementById('prev');
  const nextBtn   = document.getElementById('next');
  const benchBtn  = document.getElementById('bench');
  const tankBtn   = document.getElementById('tank');
  const testsBtn  = document.getElementById('tests');
  const capEl     = document.getElementById('cap');
  const benchOut  = document.getElementById('bench-out');

  capEl.textContent = 'WASM SIMD support: ' + (simdOK ? 'yes' : 'no (fixed-point scalar fallback)');
  capEl.classList.toggle('bad', !simdOK);

  const Mod = await createSoftGL();

  /* ---- Shared output path: softgl FB → canvas ----------------------- */
  function blitContext(c) {
    const pixelsPtr = Mod.ccall('softgl_read_rgba8', 'number', ['number'], [c]);
    const pixels = Mod.HEAPU8.subarray(pixelsPtr, pixelsPtr + W * H * 4);
    for (let y = 0; y < H; y++) {
      const src = (H - 1 - y) * W * 4;
      const dst = y * W * 4;
      img.data.set(pixels.subarray(src, src + W * 4), dst);
    }
    ctx.putImageData(img, 0, 0);
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
    const t0 = performance.now();
    Mod.ccall('sg_test_run', null, ['number','number','number'], [idx, W, H]);
    const t1 = performance.now();
    blitContext(c);
    Mod.ccall('softgl_destroy', null, ['number'], [c]);

    const name = Mod.ccall('sg_test_name', 'string', ['number'], [idx]);
    counterEl.textContent = `[${idx + 1} / ${testCount}]`;
    nameEl.textContent = name;
    timingEl.textContent = `render: ${(t1 - t0).toFixed(2)} ms`;

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
  }

  function tankFrame(t) {
    if (mode !== 'tank') { tankFrameId = 0; return; }
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
    timingEl.textContent = `render: ${(t1 - t0).toFixed(2)} ms   ·   ${(1000/(t1-t0)).toFixed(0)} fps`;
    /* steady angle bar instead of test progress */
    progEl.style.transition = 'none';
    progEl.style.width = `${(tankAngle / 360) * 100}%`;

    tankFrameId = requestAnimationFrame(tankFrame);
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
