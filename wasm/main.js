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
  const capEl     = document.getElementById('cap');
  const benchOut  = document.getElementById('bench-out');

  capEl.textContent = 'WASM SIMD support: ' + (simdOK ? 'yes' : 'no (fixed-point scalar fallback)');
  capEl.classList.toggle('bad', !simdOK);

  const Mod = await createSoftGL();

  const testCount = Mod.ccall('sg_test_count', 'number', [], []);
  let idx = 0;
  let paused = false;
  let timer = null;
  let benching = false;

  function renderCurrent() {
    const c = Mod.ccall('softgl_create', 'number', ['number','number'], [W, H]);
    Mod.ccall('softgl_make_current', null, ['number'], [c]);

    const t0 = performance.now();
    Mod.ccall('sg_test_run', null, ['number','number','number'], [idx, W, H]);
    const t1 = performance.now();

    const pixelsPtr = Mod.ccall('softgl_read_rgba8', 'number', ['number'], [c]);
    const pixels = Mod.HEAPU8.subarray(pixelsPtr, pixelsPtr + W * H * 4);
    for (let y = 0; y < H; y++) {
      const src = (H - 1 - y) * W * 4;
      const dst = y * W * 4;
      img.data.set(pixels.subarray(src, src + W * 4), dst);
    }
    ctx.putImageData(img, 0, 0);

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

  function schedule() {
    clearTimeout(timer);
    if (paused || benching) return;
    timer = setTimeout(() => {
      idx = (idx + 1) % testCount;
      renderCurrent();
      schedule();
    }, INTERVAL_MS);
  }

  pauseBtn.onclick = () => {
    paused = !paused;
    pauseBtn.textContent = paused ? 'Resume' : 'Pause';
    if (paused) clearTimeout(timer); else schedule();
  };
  prevBtn.onclick = () => {
    idx = (idx - 1 + testCount) % testCount;
    renderCurrent(); schedule();
  };
  nextBtn.onclick = () => {
    idx = (idx + 1) % testCount;
    renderCurrent(); schedule();
  };

  /* ----- Benchmark mode -------------------------------------------
   * Runs each FP-6 slot on both backends, appends a pass-2 check vs
   * best-of-5. We only do best-of-3 in WASM to keep the button snappy. */
  async function runBenchmark() {
    if (benching) return;
    benching = true;
    clearTimeout(timer);
    benchBtn.disabled = true;
    benchOut.hidden = false;
    benchOut.textContent = '';

    const slotCount = Mod.ccall('sg_bench_slot_count', 'number', [], []);
    const tags = [];
    for (let s = 0; s < slotCount; s++) {
      tags.push(Mod.ccall('sg_bench_slot_tag', 'string', ['number'], [s]));
    }

    const log = (s) => {
      benchOut.textContent += s + '\n';
      benchOut.scrollTop = benchOut.scrollHeight;
    };

    log(`# FP-6 WASM benchmark @ ${W}x${H} — SIMD=${simdOK}`);
    log(`# userAgent: ${navigator.userAgent}`);
    log(`# 3 runs per (scene, backend); min reported.`);
    log('');

    const iters = 20;
    const runs  = 3;

    for (let s = 0; s < slotCount; s++) {
      const tag = tags[s];
      for (const backend of [0, 1]) {
        const name = backend === 0 ? 'float' : 'fixed';
        let best = Infinity;
        for (let r = 0; r < runs; r++) {
          /* Yield to the event loop so the UI stays responsive. */
          await new Promise(res => setTimeout(res, 0));
          const ms = Mod.ccall('sg_bench_run_slot', 'number',
                               ['number','number','number'],
                               [s, iters, backend]);
          if (ms < best) best = ms;
        }
        const fps = best > 0 ? (1000 / best) : 0;
        log(`scene=${tag.padEnd(10)} backend=${name.padEnd(5)} ms=${best.toFixed(3)} fps=${fps.toFixed(1)}`);
      }
    }
    log('');
    log('# done. click "Resume" to continue test cycling.');

    benching = false;
    benchBtn.disabled = false;
  }

  benchBtn.onclick = runBenchmark;

  renderCurrent();
  schedule();
})();
