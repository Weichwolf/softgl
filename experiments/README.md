# Optimization evidence

The renderer uses normal OpenGL 1.5 geometry. BMW simplification runs only in
`tools/pack_gltf.py`, targeting approximately 50,000 vertices. The runtime LOD
cache, Performance mode, preparation thread and their APIs were removed.

`main-raster-participation.patch` is already applied and accepted. It gives the
caller work from the exclusive raster-bin queue for large jobs. On this host,
both BMW audits improved by 7.90%/7.10%, both Tank audits passed and all thirty
Compliance audits passed. Historical raw evidence remains under
`build/perf/tigerlake-20261003/main-raster/`.

The two subsequent vertex-participation trials were not adopted. The first
regressed Shadow Volume by 6.07%/5.54%; the second was stopped when the requested
architecture changed to offline asset preparation.

Current offline preparation, correctness, appearance, browser and profile
artifacts are under `build/perf/tigerlake-20261003/`, with `offline-*` names.
`bench_report.md` contains only the current essential numbers.

For renderer optimization comparisons, freeze both modules and the same
prepared model pack under `build/controls/`. Run warmed fresh-browser AB/BA
pairs through `tools/wasm_quiet_audit.py` and `tools/wasm_perf.cjs --crossover`.
Retain raw samples, current module/pack hashes and quiet-host monitors. Test
BMW, Tank, DOT3/multiple-texture cases and the broader scene set; retain only
reproducible gains without relevant repeated regressions. Native/Mesa and WASM
image tolerances must remain unchanged. Validate asset appearance separately
with `tools/wasm_model_check.cjs`; changing geometry is not renderer speedup.

Generic 2D texture addressing and exact empty pixel-center bounds are accepted
together. Two model audits, each aggregating three individually guarded complete
AB/BA crossover pairs, improved BMW by 4.76%/4.25%; Tank changed by +0.23%/+0.35%.
The guard remains unchanged at 0.10 foreign CPU cores. Both variants use the
approved `fae69ce4` model pack. All 719 native checks pass and all 239 WASM images
are byte-identical. Frozen builds and raw pair evidence use `empty-bounds-*`.

Caller participation in dense vertex jobs of at least 1,024 vertices is also
accepted. The caller fills a disjoint tail while the unchanged workers fill
the prefix. Two model audits improved BMW by 2.46%/2.35% and Tank by
5.47%/4.74% against the accepted texture/bounds version. Evidence is in
`dense-caller-*`; 719 native tests, 239 byte-identical WASM images, both browser
checks and two sanitizer checks pass. Current user priority is BMW and Tank;
slower trivial benchmarks are acceptable while image tolerances remain fixed.
The broader eleven-scene screen passes: changes range from -4.52% to +3.82%,
with Shadow Volume at +0.13%. Raw results are `dense-caller-broad-*.json`.

Optional 2x/4x MSAA is implemented with sample color, depth and stencil storage,
sample coverage controls and one color/texture evaluation per covered pixel.
The normal context still has no sample buffers. Validation: 723 native checks,
240 WASM/Mesa images (all previous 239 hashes unchanged), two sanitizer contracts,
eight WASM sample/worker configurations and both browsers. Raw evidence uses
`msaa-*`; frozen module `build/controls/msaa-candidate` is `bbc7aad1`.
Actual four-sample Mesa FBO comparisons exactly match triangle coverage,
blending, depth, stencil and disabled multisampling. The eight-scene diagnostic
also records differences with modern Mesa for circular point coverage,
two line-boundary pixels and alpha-to-one before alpha testing. The contracts
follow OpenGL 1.5 sections 3.3.3, 3.4.4 and 4.1.3; no image tolerances changed.

The quiet-host monitor now recognizes its ancestor Codex app server and that
server's daemon bookkeeping helper as session overhead, retaining their CPU
samples in the audit record. The foreign-load threshold stays at 0.10 cores;
compilers, other Codex CLI processes and unrelated workloads remain checked.
Earlier attempts rejected due to the app server remain in the raw evidence.

The combiner source-pointer experiment passed 719 native checks and all 239
WASM hashes, but was not adopted before the MSAA request. It removes source
copies and unused arguments without changing the float operation order.
The frozen build is `build/controls/combiner-pointer-candidate`; performance
validation remains pending.

Packed four-sample coverage/depth, common sample writes/blends and SIMD resolve
are accepted. Two audits, each three individually guarded warmed AB/BA pairs,
improved BMW by 14.14%/13.35% and Tank by 24.53%/21.30% against `bbc7aad1`.
The driver now accepts `--samples 0|2|4`; multisample timings resolve every frame.
Candidate `build/controls/msaa-packed-candidate` (`9dc975e0`) is live. Validation:
723 native checks, 240 unchanged WASM image hashes, 100 matching four-sample
model-frame hashes per vehicle (four representative frames byte-compared), eight
WASM sample/worker contracts, two sanitizer contracts and both browser previews.
All eight native MSAA diagnostic scenes remain byte-identical to the accepted
MSAA implementation; the pre-existing modern-Mesa differences remain recorded.
New contracts compare common sample writes with the ordered query path across
all depth comparisons, coverage masks and common blend modes, and check resolve
rounding/readback on an odd-sized framebuffer. No image tolerances changed.
The latest user targets are >60 FPS Tank and >30 FPS F31 **with 4x MSAA**; both remain
unmet. Current medians are BMW 127.03/127.22 ms and Tank 36.98/37.59 ms at 640x360.
Raw evidence: `build/perf/tigerlake-20261003/msaa-packed-*`.

Contiguous SIMD multisample clears are accepted against `9dc975e0`. Two
three-pair audits improved BMW by 8.92%/8.97% and Tank by 32.02%/28.93%.
Color channels, depth masks and partial stencil masks apply over each scissor
row; common clears use contiguous vector stores. Masked/scissored odd-sized
sample-buffer contracts were added. All 723 native checks, 240 unchanged WASM
images, 100 matching four-sample frame hashes per model, eight WASM contracts,
two sanitizer contracts and both browser previews pass. Current live module
is `3f078581`; current four-sample medians are BMW 115.85/115.87 ms and Tank
26.21/26.20 ms, including resolve every frame. Targets remain unmet.
Raw evidence uses `msaa-clear-*`. Accepted four-sample workload counters and
profiles are in `build/diagnostics/workload/result-msaa4.json` and
`build/perf/tigerlake-20261003/msaa-packed-profile*.json`. Sleep samples are
not CPU work; the measured clear hotspot motivated this change.

WASM opcode mapping trials (not adopted): explicit RGBA float bilinear SIMD
(`01e5f016`) passed 723 native checks, 240 identical WASM images and both
100-angle model hash comparisons. One quiet AB/BA screen showed BMW -1.46%
and Tank +9.05%; it did not establish a useful gain. Exact integer bilinear
using three signed i16 dot products (`9cdc926e`) passed 1,256,784 strict
comparisons, the same correctness gates and identical model images. Its one
quiet screen showed only about -0.6% Tank frame time. Both source changes were
restored, with candidates and raw `rgba-sampler-*`/`i16-bilinear-*` evidence
retained under `build/`.

Relaxed SIMD FMA and explicit four-component color/UV interpolation
(`11381f06`) were not adopted after repeated performance evaluation. Native SSE4.1
retains separate multiply/add; WASM uses relaxed FMA without global fast-math.
The candidate emits 17 relaxed SIMD multiply-add instruction sites and passes
723 native checks, all 240 unchanged-tolerance Mesa image comparisons, eight
WASM multisample contracts, two sanitizer contracts and both browser checks.
Of 100 angles per model, 65 BMW and 87 Tank frames remain byte-identical; four
changed views per model differ at only one or two pixels by one channel step.
Node 20 contracts require `--experimental-wasm-relaxed-simd`; both tested
browsers support the feature directly. A three-pair quiet audit found BMW +0.51% and Tank -0.26% frame time, so
the initial positive screen did not reproduce. The second audit was stopped
after this rejection. FMA remains explicitly allowed for future measured
optimizations. Evidence: `fma-interpolation-*`.

Current 4x-MSAA profiles (`msaa-clear-profile-bmw/tank-functions.json`)
identified main-thread active polling in worker synchronization: 38.3% of BMW
and 28.3% of Tank main-thread sample locations. These are sampled elapsed
locations, not exact CPU-cycle counts; sleeping worker samples are separate.
The caller now claims exclusive raster bins for every draw instead of only
batches with at least 4096 bin records. Draw order, state and query merging
remain unchanged. Candidate `1553d949` passed 723 native checks, 240 identical
WASM images, 100 identical model-angle hashes and four exact representative
frames per model, eight WASM sample contracts, two sanitizer contracts and
both browser checks (234 cases, six benches, cancellation, eight workers and
MSAA context switches). Two independent three-pair quiet audits showed BMW
-4.05%/-4.14% and Tank -2.15%/-2.76% frame time. Current live module is
`build/controls/caller-all-raster-candidate`; 4x-MSAA render+resolve is about
9 FPS BMW and 39 FPS Tank. Targets are still unmet. Evidence:
`build/perf/tigerlake-20261003/caller-all-raster-*`.

Prepared four-stage DOT3 chains are accepted against `1553d949`. Exact GL-state
classification replaces four general combiner calls with one inlined sequence;
all stage clamps and alpha operations remain, and other states use the general
combiner. Arbitrary constants and texture targets are supported; no material or
model identity enters classification. Profiles identified the general combiner
as a significant BMW hotspot. Two independent three-pair quiet audits found BMW
-9.26%/-8.92% frame time and Tank +1.07%/+0.11%, with no relevant repeated Tank
regression. Current four-sample render+resolve is about 10 FPS BMW and 39 FPS
Tank; both targets remain unmet. Candidate `fad35ca4` passes 724 native checks,
240 unchanged WASM image hashes, 100 identical model-angle hashes and four exact
frames per model, eight WASM multisample contracts, three sanitizer contracts
and both browser previews. The new differential contract checks 300,000 exact
float results against the original general combiner, including stage saturation,
alpha, out-of-range constants and ignored arguments, in strict native, native
Release and standard SIMD128 WASM builds. No tolerances or geometry changed.
Evidence: `build/perf/tigerlake-20261003/dot3-chain-*`; frozen module:
`build/controls/dot3-chain-candidate`.
