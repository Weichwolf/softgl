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

### Prepared vertex inputs (2026-10-04, accepted)

Resolve the seven array/VBO streams once per joined vertex job, instead of
looking up buffer metadata for each attribute of each vertex. Float arrays
use direct component loads or an unaligned SIMD load for four components;
shorter arrays never read beyond their allocation. Other types retain the
existing conversions and stride rules. Position-cache replay still refreshes
all attributes and lighting. The descriptor adds 168 bytes of pool metadata;
addresses are resolved again for every draw and pending raster snapshots
never access them. Existing joined-job and storage-mutation barriers apply.

Two independent three-pair quiet AB/BA audits against accepted 34e1b54d
confirm BMW 4x frame time -4.36%/-4.63%, at 17.21/17.30 FPS; T80
-2.38%/-1.32%, at 51.64/51.74 FPS. Resolve is included every frame,
640x360, three workers plus caller, 80 warm-up and 100 measured frames.
All six complete pairs pass the host-activity guard; no tests, builds or
profiles ran during them. Both requested targets remain unmet. One guarded
no-MSAA pair with readback every frame gives BMW -7.30% (39.21ms,
25.51 FPS), T80 -3.37% (12.67ms, 78.92 FPS); preliminary only.

Production WASM is byte-identical to measured c566ddc0. Passes 730 native
checks, nine ASan/UBSan/leak contracts, 240 WASM/Mesa images byte-exact to
34e1b54d, 100 exact hashes and four exact frames per model with EACH
0/2/4 mode, 47 WASM contracts (9 inputs, 9 positions, 9 stream, 3 compact,
9 geometry, 8 MSAA), 18 default-pool cases and Chromium/Firefox previews
(234 tests, six benchmarks, cancellation, eight workers, MSAA switching).
The new contract compares fresh/prepared/cached vertices and classifications
across 16 array layouts, mixed VBO/client data, precisely sized allocations,
typed conversions, lighting/current attributes, client changes and VBO
reallocation. Geometry, arithmetic and image tolerances are unchanged.

Frozen build: build/controls/prepared-attributes-candidate; evidence:
build/diagnostics/prepared-attributes/validation.json and production-*-final
logs, build/perf/tigerlake-20261004/prepared-attributes-*.

Other private trials this turn were not adopted. Shader outlining reduces
BMW time by 1.74% but increases T80 time by 0.93% across three quiet pairs;
scalar-only outlining increases both in one screen. Conservative per-bin
Y clipping removes 17.6%/34.0% of BMW/T80 bounding-box pixels, but one
quiet screen gives BMW +0.06%, T80 -1.44%. Ten-byte cached triangle
references preserve full float depth sort keys and pass 1,114,112 exact
native/WASM round trips, boundary contracts and model image comparisons;
cache payload falls from 3.65 to 3.18 MB for BMW and 3.05 to 2.86 MB for
T80, but position hits are unchanged and both scenes become slightly slower.
All remain under build/diagnostics/, without production changes.

Logical-counter diagnostics show scalar tails consume 18.1%/12.8% of
BMW/T80 post-Z pixels. These are work counts, not CPU cycles or bandwidth
measurements. Reducing cached bytes alone did not improve reuse; the next
shader or triangle-setup experiment needs a measured bottleneck.

### Opaque post-Z 4x MSAA stores (2026-10-04, accepted)

For opaque four-sample triangle fragments, reuse the rasterizer's post-depth
coverage mask and quantize four RGBA channels together with SIMD. Full
coverage writes color/depth directly; partial coverage preserves untouched
samples with masked loads/stores. Eligibility is checked once per triangle:
alpha/stencil tests, blending, logic ops, queries, channel masks and active
multisample coverage/alpha controls retain the general writer. Triangle
bounds already include framebuffer/scissor, packets contain distinct pixels
and flush before the next triangle, and worker bins own disjoint X ranges.
Depth writes still require depth testing and its write mask. There is no new
cache allocation, precision reduction, reordered draw or viewer mode.

Two independent three-pair quiet AB/BA audits against accepted c566ddc0
confirm BMW 4x frame time -2.41%/-2.33%, at 17.54/17.61 FPS; T80
-4.54%/-4.35%, at 54.57/54.55 FPS. Resolve is included every frame,
640x360, three workers plus caller, 80 warm-up and 100 measured frames.
All six complete pairs pass the host-activity guard; no builds, tests or
profiles ran during retained timing. Both requested targets remain unmet.
One guarded no-MSAA pair with readback every frame gives BMW +0.51%
(39.42ms, 25.37 FPS), T80 +0.64% (12.73ms, 78.55 FPS); preliminary only.

Production WASM is byte-identical to measured 5f2835f4. Passes 730 native
checks plus the Bench configuration's benchmark (731 total), ten fully
instrumented ASan/UBSan/leak contracts, 240 WASM/Mesa images byte-exact to
c566ddc0 and all 234 rendering tests byte-exact at 4x MSAA. Both models
match 100 hashes plus four exact frames with EACH 0/2/4 mode; 48 WASM
contracts and 18 default-pool cases pass. Chromium/Firefox previews pass
234 tests, six benches, cancellation, eight workers and MSAA switching.
The new store contract verifies 262,144 exact RGBA conversions (including
rounding boundaries), 65,536 exact sample writes over all eight depth
functions, depth/write masks and coverage, and 128 rendered frames against
the general query writer with overlap, clipping and scissor. Existing image
tolerances, prepared geometry and materials are unchanged.

Frozen build: build/controls/msaa-opaque-store-candidate; evidence:
build/diagnostics/msaa-opaque-store/validation.json and production-* logs;
build/perf/tigerlake-20261004/msaa-opaque-store-*. Native all-tests output
is production-native-tests.log (730); production-native-benchmark.log adds
the one Bench-only case. The first ASan make invocation regenerated CMake
but retained an old target list; the explicit configure and final ASan logs
prove all ten contracts.

Fresh accepted c566ddc0 profiling before this change reports sampled self
time of 2.57ms main/3.22-3.42ms active workers for cube sampling and
3.99ms/4.26-4.54ms for sample writes; these are diagnostics, not CPU cycles.
Four-lane cube face selection/filtering was tried privately: 1,258,864 exact
strict-native/WASM comparisons, sanitizer probe and both models' 4x images
pass, but a quiet screen gives BMW -0.39%, T80 +2.62%. It is rejected.
Files remain under build/diagnostics/cube-packets; production cube sampling
is unchanged.

### Hierarchical four-sample depth and retained MSAA functions (2026-10-04, accepted)

Four-sample rendering now rejects triangles whose entire clamped bounding box
is already hidden. Each 4x4-pixel cell tracks all 64 actual depth writes, the
maximum depth, and its sample index. LESS/LEQUAL writes rescan only when they
lower that maximum sample. A conservative vertex-depth lower bound includes
floating-point error and polygon offset; unsupported depth functions, incomplete
cells and stencil side effects retain normal rasterization. Nonmonotonic writes,
depth clears and direct DrawPixels/CopyPixels depth transfers invalidate affected
metadata. Queries retain their exact original sample counts.

Column-major metadata uses padded, cache-line-aligned planes, with complete
cells owned by one X-stripe worker. The optional table and its 64-byte header
share a 256KiB limit; 640x360 uses 235,584 bytes. Unsupported widths, allocation
failure, unaligned bin boundaries or larger tables fall back. The header prefixes
the four-sample color allocation and is shared by immutable draw snapshots;
framebuffer/context size and field offsets stay unchanged. Position/bin and
asynchronous geometry budgets remain 4MiB and 2MiB.

Initial implementations repeatedly slowed BMW without MSAA by about 2.5%.
Fresh byte-matched WASM profiling localized additional sampled work in the common
rasterizer. LLVM noinline alone did not preserve separate functions: Binaryen
inlined both sample loops again. The two MSAA functions are retained WASM module
roots, with native static noinline counterparts; no public GL API changes.
The common function shrinks from 65,988 to 21,065 encoded WASM bytes versus
the private unsplit hierarchy. These are code sizes, not native instructions or
cycle counts. Private rejected variants and byte-matched profile maps remain
under build/diagnostics/msaa-hierarchical-depth*.

Two independent three-pair quiet AB/BA audits against accepted 5f2835f4 give
BMW 19.15/19.13 FPS, frame time -9.09%/-9.12%; T80 55.23/55.37 FPS,
-2.27%/-2.27%. Every frame includes resolve, 640x360, three workers plus caller,
80 warm-up and 100 measured frames. All six retained pairs pass the activity
guard on their first attempt, without parallel tests/builds/profiling. Both FPS
targets remain unmet. Two independent three-pair no-MSAA readback audits give
BMW +0.83%/-0.66% and T80 -0.48%/+0.06%, with no reproducible regression.

Production WASM is byte-identical to measured 2a926624. Passes: 731 normal
native checks plus the Bench-only benchmark (732), eleven ASan/UBSan/leak
contracts, 240 unchanged-tolerance Mesa comparisons and 240 exact baseline
hashes, all 234 four-sample test images exact, both models at 0/2/4 with 100
hashes plus four raw frames per mode/model, 49 WASM contracts and 18 default
pool checks. Chromium and Firefox each pass 234 displayed tests, six benchmarks,
responsive cancellation, eight workers and sample switching. The new strict
hierarchy oracle covers 131,072 writes, 1,048,576 actual rejection predicates,
and 1,536 exact HZ-on/off sample/query frames with 1/3/8 workers, all depth
functions and relevant alpha/stencil/blend/scissor/mask/offset states. Geometry,
materials, image tolerances and framebuffer precision are unchanged.

Frozen module: build/controls/msaa-hierarchical-depth-kept-split-candidate.
Evidence: build/diagnostics/msaa-hierarchical-depth-kept-split/validation.json,
canonical-proof.json, map-proof.json, function-sizes.json and production logs;
build/perf/tigerlake-20261004/msaa-hierarchical-depth-kept-split-*. Earlier first
screens are preliminary; the independent multi-pair audits are acceptance data.


### Cache-local depth and finer MSAA bins (2026-10-04, rejected)

All variants use the accepted `2a926624` renderer as their reference, unchanged
model packs, 640x360, three workers plus caller, and a resolve on every timed
four-sample frame. Screens use one quiet AB/BA pair with 80 warm-up and 100
measured frames; they are preliminary measurements, not accepted speedups.

Aligning only the four-sample depth plane to 64 bytes eliminated the observed
16/32/48-byte base offsets, but its first screen was mixed: BMW -0.77%, T80
+0.76% frame time. This establishes alignment, not measured cache traffic.
A tighter range-dependent floating-point depth bound passed strict native/WASM
oracles and exact model frames, but added arithmetic: BMW +0.83%, T80 +2.38%.
Neither was retained.

Two-pixel-square hierarchy cells track 16 samples in eight bytes and reduce
maximum-depth refresh from 64 samples to 16. The optional table doubles to
471,104 bytes including the header at 640x360, capped at 512KiB. Two independent
three-pair four-sample audits gave BMW -1.73%/-1.52% and T80 -0.31%/+0.39%.
Two matching no-MSAA/readback audits gave BMW +1.04%/+0.47% and T80
-0.80%/+0.66%. The modest four-sample benefit was not retained with that BMW
no-MSAA tradeoff. All 732 native checks, 11 sanitizer contracts, 49 WASM
contracts, 18 default-pool checks, 240 unchanged-tolerance Mesa comparisons,
240 exact images, 234 exact four-sample images and both models at 0/2/4
passed. Chromium and Firefox passed their preview checks. Source and canonical
WASM were restored; live port 8000 stayed on the accepted module throughout.

Finer bins instead preserve the accepted 4x4 hierarchy and align bin endpoints
to whole hierarchy cells; no-MSAA bins remain unchanged. At 640x360, 64 bins
use 8/12-pixel stripes (90–135KiB sample color+depth per stripe), versus the
accepted 32 bins' 225KiB. Their first quiet screen gave BMW +0.23% and T80
+4.31%. Forty bins use 16-pixel stripes (180KiB) and gave BMW -0.73%, T80
+0.54%. Both mixed or negative screens were rejected before full validation.
A quad-cell/64-bin source variant was prepared but never built or measured.
Smaller active regions alone did not compensate for added bin work.

Evidence: `build/diagnostics/msaa-cache-alignment/`, `hz-depth-error-bound/`,
`hz-quad-cells/`, `msaa-64-aligned-bins/`, `msaa-40-aligned-bins/` and the
corresponding JSON results under `build/perf/tigerlake-20261004/`.

### Caller phases and tighter strip depth bounds (2026-10-04)

Caller-only wall timers outside the worker spin loops preserve both models'
100 frame hashes and four raw frames. BMW has 82 indexed draws per frame
(41 parts in two passes), not 41. Of its diagnostic 52.43ms frame, caller raster
work takes 24.05ms, actual raster/vertex waits 5.86ms, and serial transformation
of asynchronous draws 6.65ms. Draw preparation excluding raster and waits is
19.01ms, including transformation. These are instrumented wall times, not
CPU cycles, sampled self time, measured cache traffic or acceptance timings.
T80 has six draws, 1.19ms actual waits and 6.86ms non-raster/non-wait draw work;
large jobs frequently use synchronous rasterization under the 2MiB geometry
limit. The current pack contains 51,342 vertices; its hull's 20,340 unique
indexed vertices alone exceed that limit at the full 160-byte vertex stride.

A tighter depth lower bound clips a triangle to a bin's vertical strip only
after a complete depth cell fails the global bound. Strict numerical oracles
pass, and tested variants preserve both models' four-sample frames. Preliminary
quiet AB/BA screens give BMW/T80 frame-time changes: ungated double precision
+0.66%/+2.77%; float with a 256-pixel bounding-box gate -0.50%/+0.78%; the
same gate with an outlined helper -0.82%/+1.87%; lazy coordinate conversion
-0.65%/+1.90%. All are rejected. Ungated float passed numerical contracts but
was not timed or checked against model frames. Logical counters show too few
additional rejections to repay the bound calculation in these scenes.

Splitting oversized indexed triangle draws into bounded, ordered subdraws
preserves BMW frames but changes T80 hashes. At angle zero, 220 pixels and
365 channels differ, with maximum channel delta six. The old oversized-draw
drain-policy contract also fails. The exact image cause is unproven; no timed
benchmark was run and this variant is rejected.

Evidence: `build/diagnostics/caller-wait-phases/phase-summary.json`,
`build/diagnostics/caller-wait-phases/tank-index-spans.json`,
the `hz-strip-depth*` directories and
`build/diagnostics/bounded-index-segments/frame0-diff.json`.

### Coherent SIMD cube sampling (2026-10-04, rejected)

Packets whose live lanes select the same cube face share SIMD projection and
the existing float-bilinear four-pixel sampler. Mixed faces, nonfinite live
coordinates and missing faces retain scalar sampling. Axis ties, signed zero,
small directions, wraps, filters, inactive lanes and RGBA operation grouping
match the original sampler. The direct native/WASM oracle checks 262,144
packets: 243,712 take the SIMD path with bit-exact float RGBA, 18,432 fall back.
Both private variants pass 50 WASM contracts and both models' 100 four-sample
hashes plus four raw frames. Full image, sanitizer and browser gates were not
run because neither variant was retained.

Two independent three-pair quiet four-sample audits of the coherent sampler
give BMW -2.45%/-4.02% frame time and T80 +0.15%/+1.40%. One three-pair
no-MSAA/readback audit gives BMW +0.12%, T80 +0.58%; its third pair required
a second attempt after the activity guard discarded the first. The BMW gain
was not retained with the T80 tradeoff.

Outlining the non-2D packet fallback additionally reduces the code inside the
ordinary raster loops. Its first quiet screen gives BMW -3.2%, T80 +0.4%,
but two independently guarded pairs give BMW -4.15%/-3.94% and T80
+4.55%/+1.71%. Remaining audits were intentionally stopped, and this variant
is rejected. Smaller encoded code is not evidence of improved native cache
behavior. An extended fallback oracle was prepared but not run.

All timed four-sample frames use 640x360, three workers plus caller, resolve
every frame, 80 warm-up and 100 measured frames. Accepted renderer source,
canonical WASM and live port 8000 remain unchanged. Evidence:
`build/diagnostics/cube-coherent-packets/validation.json`,
`build/diagnostics/cube-outlined-sampling/validation.json` and the corresponding
JSON results under `build/perf/tigerlake-20261004/`.

### Packed raster vertices for oversized draws (2026-10-04, private trials)

Previously oversized draws synchronously drain when full 160-byte vertex
capacities exceed the 2MiB immutable-draw budget. Private trials instead pack
only exact float NDC, front color, eye.z and every active UV set. A one-UV
record uses 64 bytes; at most 2MiB is submitted per job. The producer retains
full geometry, triangle/bin/sort order stays intact, and a collision-safe
64-entry decode cache supplies the existing rasterizer. No precision or
geometry reduction is involved. This bounds submitted storage, not total
resident memory or cache traffic.

Both the original-layout and separately outlined variants pass 51 WASM
contracts, including 524,288 bit-exact triangle fetches across all 16 UV masks
and 90 large packed/full state comparisons of resolved and individual sample
planes. Both models retain 100 four-sample hashes and four bytewise frames.
The separately outlined variant also passes a private full-core native
ASan/UBSan/leak run of the 90-state sample-plane oracle. The earlier initial
variant additionally passed 180 cross-module comparisons against the accepted
renderer. These results do not constitute full native/Mesa/browser acceptance.

Two independent three-pair audits of the original-layout variant give
BMW/T80 four-sample frame-time changes -0.75%/-2.26% and -0.80%/-2.40%;
no-MSAA/readback changes +1.78%/-4.17% and +0.86%/-3.21%. Separately keeping
the packed submission and drain as WASM roots gives a first four-sample screen
-0.4%/-3.9%, but its three-pair no-MSAA audit still gives +0.94%/-3.11%.
That audit's second pair needed a second attempt after detected Codex CPU
activity; discarded data remain recorded. Remaining audits were stopped.
Neither variant was adopted because BMW is the primary scene.

Evidence: `build/diagnostics/packed-large-raster-reused/validation.json`,
`build/diagnostics/packed-large-raster-cold/validation.json`,
`build/diagnostics/packed-large-raster-counters/summary.json`, and matching
`build/perf/tigerlake-20261004/` JSON. Counters are logical counts; reduced
storage is not a measured reduction in cache misses or DRAM traffic.

The retained variant reuses the existing prepared-range flag store for the
compact source count, with a negative count marking original-index storage
that retains the synchronous fallback. Worker-pool layout and the original
vertex-job partition stores stay unchanged. Two independent three-pair quiet
four-sample audits give BMW -0.70%/-0.18%, T80 -0.70%/-1.92%, at
19.32/19.40 and 57.21/57.65 FPS. No-MSAA/readback audits give BMW
-0.35%/+1.09% and T80 -4.72%/-4.72%; BMW's no-MSAA result is mixed,
not a demonstrated gain or repeated regression. The first pair of the first
four-sample audit required a second attempt after detected Codex CPU activity;
all other accepted pairs passed the activity guard on their first attempt.
Four-sample frames resolve every frame; both modes use 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm.

Acceptance gates: 733 native correctness/contract checks plus the native
benchmark; 13 ASan/UBSan/leak contracts; 240 WASM/Mesa comparisons with unchanged
tolerances and 240 exact images against the previous renderer; all 234 tests
with four-sample MSAA exact; each model's 100 hashes and four bytewise frames
with 0/2/4 samples; 51 WASM and 18 default-pool contracts; Chromium and Firefox
with 234 tests, six benchmarks, responsive cancellation, eight workers and
MSAA switching. The canonical JS and WASM match the frozen timed candidate
byte for byte (`b1f61553`). Neither FPS goal has yet been reached. The model
packs, full float precision and renderer semantics stay unchanged.

Evidence: `build/diagnostics/packed-large-raster-marker/validation.json` and
`build/perf/tigerlake-20261004/packed-large-raster-marker*-summary.json`.

### Direct WASM pseudo-min/max clamps (2026-10-04, retained)

A named-function diagnostic linked from the accepted packed-draw objects shows
BMW sampled self wall time around 18.1ms/frame in the main MSAA raster loop
and 21.3–21.5ms in each active worker's loop. Cube sampling accounts for
2.6ms main and 3.1–3.4ms per worker. The three active workers have about
22–23ms/frame of sampled locations in timed waits; five unused pool workers
remain idle. These are location samples in a separate 160-frame warmed run,
not measured CPU cycles, cache traffic, acceptance timings or proof that
12.1ms in the main indexed-draw function is entirely geometry work. Evidence:
`build/diagnostics/accepted-packed-profile/bmw-functions.json`.

Emscripten 3.1.69 implements SSE min/max with compares and bitselects. The
WASM chain clamp now uses pmax(input, zero), then pmin(result, one) directly.
The first operand survives ties and unordered comparisons, preserving signed
zero and every NaN payload with the existing stage ordering. Native SSE4.1
is unchanged. A separately retained opaque test function actually emits both
instructions; an independent integer-bit oracle verifies 18,087,936 lanes,
including all signed NaN payloads, both infinities, small subnormals and zero/one
boundaries. Strict WASM sampler/shader/DOT3 comparisons pass 331,447/128,054/300,000.
The module has 118 additional pmin and 118 pmax sites, with fewer compares and
bitselects; whole-module opcode counts are not native instruction counts.

Two independent three-pair quiet four-sample audits give BMW -1.46%/-2.44%
frame time at 19.63/19.62 FPS. T80 results are mixed, +0.83%/-0.30%,
at 57.34/58.46 FPS, with no repeated regression. No-MSAA/readback audits
give BMW -0.14%/-0.08% and T80 +0.46%/-0.05%; these are effectively
neutral, not a demonstrated useful gain. All twelve complete AB/BA pairs pass
the activity guard on their first attempt. Each uses 640x360, three workers plus
caller, 80 warm-up and 100 measured frames per arm; four-sample frames resolve
every frame. No builds, tests or profiling run during retained measurements.

Acceptance: 734 native correctness/contract checks plus the benchmark;
14 ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa comparisons
and 240 images exact to b1f61553; all 234 four-sample tests exact; both models'
100 hashes plus four bytewise frames for each 0/2/4 samples; 51 worker/render
contracts, three direct numeric/shader contracts and 18 default-pool contracts;
Chromium and Firefox each run 234 tests, six benches, cancellation, eight
workers and MSAA switching. Canonical JS/WASM match the timed frozen candidate
byte for byte (532c4a5d). Geometry and image tolerances remain unchanged.
Both requested FPS targets remain unmet. Evidence:
`build/diagnostics/dot3-pseudo-clamp/validation.json` and corresponding
`build/perf/tigerlake-20261004/dot3-pseudo-clamp*-summary.json`.

Opcode semantics: [WebAssembly SIMD specification](https://github.com/WebAssembly/spec/blob/main/proposals/simd/SIMD.md).
