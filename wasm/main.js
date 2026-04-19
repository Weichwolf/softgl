(async () => {
  const W = 640, H = 360, INTERVAL_MS = 3000;

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

  const Mod = await createSoftGL();

  const testCount = Mod.ccall('sg_test_count', 'number', [], []);
  let idx = 0;
  let paused = false;
  let timer = null;

  function renderCurrent() {
    // Fresh context per test so GL state can't leak between cases.
    const c = Mod.ccall('softgl_create', 'number', ['number','number'], [W, H]);
    Mod.ccall('softgl_make_current', null, ['number'], [c]);

    const t0 = performance.now();
    Mod.ccall('sg_test_run', null, ['number','number','number'], [idx, W, H]);
    const t1 = performance.now();

    const pixelsPtr = Mod.ccall('softgl_read_rgba8', 'number', ['number'], [c]);
    const pixels = Mod.HEAPU8.subarray(pixelsPtr, pixelsPtr + W * H * 4);

    // softgl framebuffer is bottom-up (GL convention); canvas is top-down — flip.
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

    // Restart the progress bar animation.
    progEl.style.transition = 'none';
    progEl.style.width = '0%';
    // Force reflow so the next transition takes effect.
    void progEl.offsetWidth;
    progEl.style.transition = `width ${INTERVAL_MS}ms linear`;
    progEl.style.width = '100%';
  }

  function schedule() {
    clearTimeout(timer);
    if (paused) return;
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

  renderCurrent();
  schedule();
})();
