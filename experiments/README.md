# Optimization handoff

The checked-in renderer is the approved control. Historical results are in
`bench_report.md` and `tests/bench/wasm_results.json`; paths under `build/` refer
to this machine's untracked artifacts. Rebuild and rerun correctness checks on
the dedicated machine before measuring performance. Follow the root README for
asset preparation, native/Mesa, Emscripten and Node/Chromium setup.

## Pending raster experiment

`main-raster-participation.patch` lets the calling thread drain the existing
exclusive raster-bin queue for batches of at least 4096 triangle-bin records.
It is **unapplied and unaccepted**. It passes 720 native checks, 239 identical
WASM image comparisons, sanitizer checks, twelve F31 views and Chromium/Firefox
controls on the original host. No valid quiet-host performance pair was obtained.

Freeze a freshly built control before applying the patch:

```sh
mkdir -p build/controls/main-raster-control
cp build/wasm/{softgl.js,softgl.wasm,bmw.pack} build/controls/main-raster-control/
git apply --check experiments/main-raster-participation.patch
git apply experiments/main-raster-participation.patch
cmake --build build/native -j4
ctest --test-dir build/native -C Bench --output-on-failure -j1
cmake --build build/wasm -j4
node tools/wasm_perf.cjs --images-only --output build/perf/main-raster-images.json
node tools/wasm_lod_check.cjs build/main-raster-check
mkdir -p build/controls/main-raster-candidate
cp build/wasm/{softgl.js,softgl.wasm,bmw.pack} build/controls/main-raster-candidate/
```

Recheck sanitizers with both C and C++ instrumented:

```sh
cmake -S . -B build/checks/lod-asan -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_FLAGS="-fsanitize=address,undefined -fno-omit-frame-pointer" \
  -DCMAKE_CXX_FLAGS="-fsanitize=address,undefined -fno-omit-frame-pointer" \
  -DCMAKE_EXE_LINKER_FLAGS="-fsanitize=address,undefined"
cmake --build build/checks/lod-asan -j4 --target lod_cache worker_pool sgl_233_large_query_handoffs
ASAN_OPTIONS=detect_leaks=1 ctest --test-dir build/checks/lod-asan \
  -R '^(lod_cache_contract|worker_pool_contract|233_large_query_handoffs_run_sgl)$' \
  --output-on-failure -j1
```

Run `tools/wasm_preview_check.cjs` against the served candidate for Chromium.
In Firefox, also verify BMW Performance/Compliance switching, all 233 tests,
Prev/Next, the six-scene benchmark and cancellation, while the UI stays responsive.
Compare control/candidate image hashes, fixed-quality geometry and appearance
at unchanged tolerances. Restore the control source with
`git apply -R experiments/main-raster-participation.patch` and rebuild the live
preview while evaluating the frozen candidate.

## Performance acceptance

Use a **new output directory on each host**; do not reuse historical pairs:

```sh
python3 tools/wasm_main_raster_audit.py --output build/perf/dedicated-main-raster
```

The runner reads the new module hashes and checks reported processors, capped
at eight render workers. Fresh-browser AB/BA pairs use fixed 8-pixel detail and
no budget feedback. Both BMW audits must improve by more than 2%; two Tank
Performance audits and two complete 15-scene Compliance sets must have no
repeated slowdown of at least 5%. All rounds and current quiet-host monitors
are required. The dispatcher stops early on a failed gate and never applies
or accepts the patch automatically. Keep the goal blocked until the dedicated
measurement environment is ready, then resume it explicitly.
