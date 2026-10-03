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

Packed MSAA edge conversion is accepted against `fad35ca4`. After verifying pixel
coverage, a per-triangle bound proves that all sample edges fit signed 32 bits:
`area + 256*(abs(dx)+abs(dy)) <= INT32_MAX`. Four sample edges then use one native
WASM SIMD integer-to-float conversion instead of four scalar i64 conversions.
Large triangles retain the original i64 path. No coverage, barycentric grouping,
sample selection, depth or shading operations change. Two independent three-pair
quiet audits found BMW -1.14%/-0.84% and Tank -2.70%/-3.14% frame time. Current
4x-MSAA render+resolve is about 10.3 FPS BMW and 40.6–40.9 FPS Tank; targets remain
unmet. Candidate `90947461` passes 724 native checks, 240 identical WASM image
hashes, 100 identical model-angle hashes and four byte-compared frames per model,
eight WASM multisample contracts, three sanitizer contracts and both browser
previews. An additional million exact conversion comparisons pass on native and
WASM; 1,152 native scenes, including viewport sizes on both sides of the bound
and large viewports, match the prior sample-color, sample-depth and resolved
buffers byte for byte. Evidence: `build/perf/tigerlake-20261003/msaa-edge32-*`;
diagnostics: `build/diagnostics/msaa-edge32/`; frozen module:
`build/controls/msaa-edge32-candidate`.

The automatic WASM pool now reserves one reported logical CPU for the caller,
which participates in both vertex and raster work. Native sizing and explicit
worker counts remain unchanged; a one-CPU browser uses the serial renderer.
Current warmed profiles (`msaa-edge32-profile-*-functions.json`) located 23.6%
of BMW and 17.9% of Tank main-thread samples in active raster waiting. These are
sampled locations, not exact CPU-cycle counts. Candidate `5fd00d4f` is accepted
against `90947461`: two independent three-pair quiet audits found BMW
-2.32%/-3.49% and Tank -2.33%/-3.69% frame time, at about 10.5/42 FPS with 4x MSAA
and resolve each frame. The benchmark explicitly asserts and records three
candidate versus four reference workers through `--candidate-workers 3
--reference-workers 4`; without both expectations it still requires equal
worker counts. Negative checks confirm both mismatch guards reject bad counts.
Validation: 724 native checks, 240 unchanged-tolerance WASM/Mesa checks, eight
explicit MSAA contracts, three sanitizer contracts and both browser previews.
The previews still exercise all eight active workers, using nine reported CPUs
to fill the preloaded pool, including 234 cases, six benchmarks, cancellation
and sample-mode/context switches. Eighteen additional browser contracts verify
automatic pools for 1/2/4/8/9/16 reported CPUs with zero/two/four samples, coverage
and occlusion queries. All 100 four-sample angle hashes and four full byte frames
per model match the reference. Of 240 single-sample images, 213 hashes match;
27 change solely by one channel step because bin boundaries select different
scalar/SIMD rounding paths. The two changed single-sample Tank views each differ
at one pixel by one channel step. No image tolerances or geometry changed.
Evidence: `build/perf/tigerlake-20261003/caller-core-*` and
`build/diagnostics/caller-core-reservation/`; frozen module:
`build/controls/caller-core-candidate`.

Prepared constant one-texel 2D sampling is accepted against `5fd00d4f`. With
REPEAT/CLAMP_TO_EDGE and NEAREST/LINEAR magnification, a 1x1 texture has a
coordinate-independent color. A fresh per-draw cache skips UV interpolation,
wrapping and four equal bilinear taps. Other targets/wraps use the existing
sampler; no model or material identifiers select this path. Two independent
three-pair quiet audits found BMW -8.56%/-8.95% and Tank -1.42%/-0.30% frame
time. Current 4x-MSAA render+resolve is 11.29/11.42 FPS BMW and 41.37/41.40 FPS
Tank; targets remain unmet. Candidate `cd7998be` passes 725 native checks, all
240 byte-identical WASM images, 100 matching angle hashes and four byte-compared
frames per model, eight explicit sample/worker contracts, eighteen default-pool
contracts, four sanitizer contracts and both browser previews. An additional
131,072 comparisons per native/WASM match the original texture sampler exactly
(maximum delta zero), covering both filters, wraps, varied UVs and four colors;
upload/deletion and ineligible-state cases also pass. No image tolerances or
geometry changed. Evidence: `build/perf/tigerlake-20261003/constant-texture-*`,
`build/diagnostics/constant-texture/`; frozen module:
`build/controls/constant-texture-candidate`.

Four-pixel SIMD shading and fixed-count MSAA raster functions are accepted
against `cd7998be`. MSAA2 and MSAA4 compile the shared raster implementation
with constant sample counts; sample-count branches and loops can specialize
outside the pixel shader. A triangle-local queue batches four surviving pixels
for perspective-correct color/UV interpolation, 2D texture addressing/filtering
and complete DOT3 chains. SIMD lanes now represent separate pixels. Integer
bilinear filtering uses native signed-i16 dot instructions for four pixels'
tap/weight pairs; float multi-texture sampling preserves its original grouping
and every combiner-stage clamp. Cubemaps/1D/3D sample via existing scalar
functions with SIMD-interpolated coordinates. Remainders and unsupported GL
shader states retain the scalar path; all fragment tests/writes stay ordered.
The single-sample DOT3 path also uses the shared SIMD shader on existing quads.

Two independent three-pair quiet audits found BMW -10.37%/-9.46% and Tank
-14.49%/-14.67% frame time. Current 4x-MSAA render+resolve is 12.79/12.68 FPS BMW
and 48.98/49.20 FPS Tank; both targets remain unmet. A separate single guarded
no-MSAA AB/BA screen found BMW -0.85% and Tank +0.003%, at 56.84/14.32 ms. This
one screen establishes neither a substantial BMW no-MSAA gain nor 60 FPS.
A warmed no-MSAA profile locates ~19.06 ms/frame on the caller in index/draw
processing and cached primitive preparation. These are sampled function
locations, not CPU-cycle counts; reducing this serial work is a next priority.

Candidate `d02a6367` passes 726 native checks, 240 byte-identical WASM images,
100 matching angle hashes and four exact byte frames per model with BOTH 2x
and 4x MSAA, eight explicit sample/worker contracts, eighteen default-pool
contracts, five ASan/UBSan/leak contracts and both browser previews. Per native
strict-oracle/WASM, 331,447 texture comparisons and 128,054 complete shader
comparisons are bit-exact, including partial lane masks, non-power-of-two sizes,
wrap modes, constant textures, cube/1D/3D targets, alpha and saturated DOT3
stages. Native image tests still exercise the optimized production library;
the differential arithmetic contract compiles its scalar sampler oracle without
fast-math. The module emits 26 native WASM signed-i16 dot opcode sites.
Geometry, image tolerances and OpenGL state semantics are unchanged. Evidence:
`build/perf/tigerlake-20261003/pixel-packet-*`,
`build/diagnostics/pixel-packet/`; frozen module:
`build/controls/pixel-packet-candidate`. Private next-design files under
`build/diagnostics/parallel-triangle-prep/` are not implemented or accepted.

### Geometry bin cache (2026-10-03, accepted)

Dense indexed VBO draws can reuse raw ordered triangle-bin records, their
index range and the results of frustum qualification/backface culling when
position/index revisions, attribute layout, matrices, viewport and culling
state match. Only wholly inside filled draws qualify. Attributes and vertices
still transform freshly on every draw, so material/color/UV changes remain
visible. Cached records precede optional Z sorting; blend, stencil and query
semantics remain in the original raster path. Client arrays, mapped buffers,
user clipping and two-sided lighting retain the existing preparation. Buffer
uploads, writable maps and reused object names invalidate by revision.
The 64-entry LRU is bounded to 4 MiB.

Two independent three-pair quiet AB/BA audits confirm BMW 4x-MSAA frame time
-6.86%/-6.52%, at 14.08/13.97 FPS. Tank -0.21%/-0.23%, at 49.65/49.74 FPS, is
practically neutral; both targets remain unmet. One contaminated attempt was
discarded after the guard detected Codex process CPU activity. No test or build
ran during the retained comparisons. The separate guarded no-MSAA screen is
recorded below; one pair does not establish a repeated performance result.

Candidate `162bc25f` passes 727 native checks, 240 WASM/Mesa checks with all
240 images byte-identical to `d02a6367`, 100 angle hashes and four exact frames
per model with each of 0/2/4 samples, nine native/WASM geometry contracts,
eight explicit MSAA and eighteen default-pool contracts, six ASan/UBSan/leak
contracts, and Chromium/Firefox previews with 234 tests, six benchmarks, eight
workers, cancellation and MSAA switching. Cache contracts exercise actual
hits/replay, clipping fallback, buffer mutation/reuse, matrix/viewport/cull
changes, LRU eviction, fresh colors, blending, alpha/stencil/scissor and queries.
Geometry and image tolerances remain unchanged. Evidence:
`build/diagnostics/geometry-cache/validation.json`,
`build/perf/tigerlake-20261003/geometry-cache-*`; frozen build:
`build/controls/geometry-cache-candidate-v2`. Private row-span files under
`build/diagnostics/msaa-row-spans/` are uncompiled and unaccepted.

No-MSAA screen: bmw -8.62% frame time, 50.841 ms (19.67 FPS).

No-MSAA screen: tank +0.73% frame time, 14.131 ms (70.77 FPS).

### Finer MSAA bins (2026-10-03, accepted)

MSAA contexts use 32 independent X-range bins with the existing caller/worker
queue. At 640x360, each bin touches 225 KiB of sample color/depth instead of
~600 KiB with the default three-worker 12-bin layout. Framebuffer storage stays
unchanged; this describes the active regional set, not total resident memory.
More independent bins distribute narrow draws and keep active sample data
smaller. Single-sample contexts retain four bins per worker.

Two separate three-pair quiet AB/BA audits against geometry-cache `162bc25f`
confirm BMW -6.67%/-5.99%, at 14.84/14.85 FPS, and Tank
-3.16%/-3.42%, at 51.39/50.58 FPS with 4x render+resolve.
Both requested targets remain unmet. All six retained comparisons passed
the quiet-host guard; no build/test/profile ran during them.

The general 32-bin prototype was rejected after the 100-angle single-sample
Tank comparison detected a rare hash difference. The accepted change targets
MSAA storage, whose working set benefits from smaller regions, while keeping
the existing single-sample path. Candidate `fb8684b5` passes 727 native tests,
240 WASM/Mesa images (all byte-equal), 100 angle hashes and four exact frames
per model with EACH 0/2/4 mode, nine native/WASM geometry contracts, eight
explicit MSAA and eighteen default-pool contracts, six ASan/UBSan/leak checks,
and Chromium/Firefox previews with 234 tests, six benches, cancellation, eight
workers and sample-mode switching. Geometry, GL state semantics and image
tolerances are unchanged. Frozen build: `build/controls/fine-bins-scoped-candidate`;
evidence: `build/diagnostics/fine-bins/validation-scoped.json`,
`build/perf/tigerlake-20261003/fine-bins-scoped-*`.

Private, unaccepted trials: exact reciprocal-corrected MSAA row spans pass
a million native/WASM interval contracts and 100 model angles but one quiet
screen gives only BMW -0.52% and Tank -3.37%; not enough to adopt. Best-case
16-bit coordinate compression estimates BMW max screen displacement 0.00484
pixel with axis-scaled integers, versus 0.07831 with IEEE half; this is a
float64 projection diagnostic, not a renderer conformance/image/performance
result. No model/runtime precision or asset changes were made. A separate
private async-raster design considers bounded immutable draw snapshots to
overlap caller preparation with previous worker raster; it is unimplemented.
These files are under `build/diagnostics/msaa-row-spans/`, `geometry-i16/`,
and `async-raster/`; all stay unaccepted.

### Bounded draw preparation/raster overlap (2026-10-03, accepted)

Indexed filled triangles publish one immutable draw snapshot while the caller
prepares the next draw. Raster jobs retain their original order: publishing
the next draw joins the previous job, with the caller assisting outstanding
bins. Two vertex/bin slots exchange ownership without vertex copies. Each
submitted draw is bounded to 2MiB of transformed plus clipped vertex storage;
bin records, classification, textures and state metadata are additional.
Oversized draws use the synchronous path. Compact local indexed transforms
avoid allocating/touching the unreferenced prefix of a global vertex buffer.
This is an active-working-set budget, not an 8MiB resident-memory guarantee.

Sampler/context metadata belongs to the job. Texture storage mutation and
delete, framebuffer reads/writes, queries, immediate primitives, draw-array
fallbacks and mode/destruction handovers drain preceding work. All client
attributes are consumed before DrawElements returns. Queries remain
synchronous; raster draw order, geometry, arithmetic and tolerances are
unchanged. There is no new viewer mode or geometry simplification.

Two independent three-pair guarded AB/BA audits against fb8684b5 confirm BMW
4x frame time -13.00%/-13.30%, at 16.43/16.40 FPS including per-frame resolve.
T80 +1.05%/+1.49%, at 48.77/49.10 FPS, is slightly slower; this change targets
the BMW preparation/raster bottleneck. Both requested targets remain unmet.
One guarded no-MSAA pair with readback every frame gives BMW -16.92%
(42.33ms, 23.62 FPS), T80 -0.43% (14.59ms, 68.52 FPS); preliminary only.
No build/test/profile ran during retained timings. All six 4x pairs and the
no-MSAA screen passed the host-activity guard.

Production WASM is byte-identical to measured V3 candidate 1ecea859. Passes
728 native checks, 240 WASM/Mesa images byte-exact to accepted fb8684b5,
100 exact hashes plus four exact frames per model with EACH 0/2/4 mode,
seven ASan/UBSan/leak contracts, 29 WASM contracts (9 streaming, 3 local-range,
9 geometry, 8 multisample), 18 default-pool contracts and Chromium/Firefox
previews (234 tests, six benchmarks, cancellation, eight workers, MSAA
switching). The new committed contract compares eager drains and overlap at
equal worker/bin counts and exercises texture-table movement, sampler/state
changes, image replacement/delete, BufferData/map/client UV mutation,
display-list clear, immediate points, DrawPixels, framebuffer texture copies,
queries, mode handover, destruction, oversized fallback and bounded recovery.
The transform oracle covers nonzero first=50003, lighting/normal modes and
1023..13108 capacity boundaries. Mode handover preserves existing behavior;
it does not introduce a selection implementation.

Frozen control: build/controls/async-raster-candidate-v3. Evidence:
build/diagnostics/async-raster/validation-v3.json and production-* logs,
build/perf/tigerlake-20261003/async-raster-v3-*. Earlier V2 and uncompiled
designs remain private diagnostics, not additional accepted optimizations.

### Bounded position-page cache (2026-10-03, accepted)

Cache clip, screen and eye-space positions plus six-plane classifications in
1024-vertex pages, shared between draws over the same VBO address. Canonical
stride/field offsets let part-local array pointers refer to the same global
records. Colors, UVs, normals and front/back lighting are refreshed per vertex;
edge flags are refreshed separately from cached eye coordinates. This also
applies to clipped, lit and query draws because cached coordinates are
independent of those states. Client-memory positions and mapped position
buffers bypass the cache; ranges exceeding 64 pages take the ordinary path.

VBO identity/revision and exact matrix/viewport epochs invalidate the position
data. Pages share the existing strict 4MiB payload budget with ordered bins;
no additional 4MiB cache was added. Selected pages are pinned for the vertex
job, each vertex index has one producer, and pending raster jobs never read
position-cache pages. Allocation failures/partial budgets fall back per page.

Two independent three-pair quiet AB/BA audits against accepted 1ecea859 confirm
BMW 4x frame time -1.33%/-1.50%, at 16.73/16.82 FPS; T80 -1.48%/-1.34%,
at 50.97/50.80 FPS. All six complete pairs pass the quiet-host guard.
Both requested targets remain unmet. The separate guarded no-MSAA screen
with readback every frame is preliminary: BMW -1.38%, 42.13ms, 23.74FPS;
T80 -5.37%, 13.04ms, 76.68FPS. No build/test/profile ran during retained timing.

Production WASM byte-identical to measured 34e1b54d passes 729 native checks,
240 WASM/Mesa images byte-exact to 1ecea859, 100 hashes plus four exact frames
per model with EACH 0/2/4 mode, eight ASan/UBSan/leak contracts, 38 WASM
contracts (9 position, 9 stream, 3 compact, 9 bin cache, 8 MSAA), 18 default-pool
cases, Chromium/Firefox 234 tests, six benches, cancellation, 8 workers and
MSAA switching. The new position contract verifies exact vertices and
classifications against scalar transformation with partial pages, canonical
array offsets, fresh attributes/lighting/edge flags, outside vertices,
matrix/viewport/storage changes, read-only/writable maps, deletion/reuse,
large-range fallback and bounded LRU eviction. Geometry, arithmetic and
all image tolerances stay unchanged.

Frozen build: build/controls/position-cache-candidate; evidence:
build/diagnostics/position-cache/validation.json,production-* logs and
build/perf/tigerlake-20261003/position-cache-*. The early oversized-range
drain trial is not adopted: one quiet 4x screen gave BMW -1.0%, T80 +2.1%;
it remains under build/diagnostics/stream-large-range/. Fresh adopted-async
profiling is under async-raster-profile4-bmw-functions.json (sampled self,
not CPU cycles); raster work remains the main optimization target.
