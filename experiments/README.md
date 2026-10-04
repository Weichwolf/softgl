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

## Ordered multitexture draw queue (accepted)

Filled, query-free indexed triangles using at least two enabled/bound texture
units can submit four immutable full-vertex draw snapshots. Bins may advance
to a later draw only after every earlier draw for that same X stripe completes.
Other stripes progress independently. Workers remain in one queue epoch until
an explicit drain, avoiding the full raster join before every material draw.
The caller helps under backpressure and at flush. Per-draw sort legality is
snapshotted; triangle sorting, bin layout, shader math and float precision
remain unchanged. Single-texture and oversized packed draws retain their
existing paths and join the queue at handovers.

Retained raw vertex capacities across all four slots, including idle slots,
share a 2MiB ceiling. Backpressure retires completed jobs and releases idle
arrays before admitting more geometry. Producer arrays, classification, bin
records and state/texture metadata are separate. Queue drain releases its
vertex arrays; entering the queue releases idle ordinary snapshot storage.
The budget covers submitted vertices; active framebuffer stripes, geometry
caches and texture lines also occupy L3. Storage mutation, readback, queries,
mode changes and destruction preserve their existing draining behavior.

Two independent three-pair quiet audits against 532c4a5d give BMW four-sample
frame time -8.18%/-9.23% at 21.20/21.97 FPS. T80 gives -0.40%/+0.51% at
57.69/59.90 FPS, with no repeated regression. Without MSAA, resolving/readback
each frame, BMW gives -8.76%/-8.06% at 29.14/29.12 FPS; T80 -0.44%/-0.71%
at 85.38/85.58 FPS. All twelve complete AB/BA pairs pass the quiet guard on
their first attempt; each uses 640x360, three workers plus caller, 80 warm-up
and 100 measured frames per arm. Builds, tests and profiling are absent
during retained measurements. Both four-sample FPS goals remain unmet.

Acceptance: 735 native correctness/contracts plus the benchmark; 15 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images, also
exact to 532c4a5d; all 234 four-sample test images exact; both models' 100
hashes and four bytewise frames for each 0/2/4 samples; 51 existing WASM
contracts plus the new 99 queue/eager state and full sample-plane hashes
with 1/3/8 workers. The new contract exercises 48 overlapping draws before
readback, small/large vertex-capacity handovers, blending, masked/read-only
depth and color, fog/alpha/stencil, texture table movement and mutation, fresh
VBO/client storage, packed/synchronous fallback, query/mode and destruction
drains. Three strict numeric/shader contracts and 18 default-pool contracts
pass. ThreadSanitizer cannot start on this WSL host: unexpected memory
mapping, exit 66; this is not a race-check pass. Chromium/Firefox preview
results and publication are recorded in the validation artifact. Canonical
JS/WASM exactly match the timed frozen candidate, c57e1da0. Evidence:
`build/diagnostics/ordered-draw-queue/validation.json`,
`build/diagnostics/ordered-draw-queue/` and
`build/perf/tigerlake-20261004/ordered-draw-queue*-summary.json`.

## Exact saturated-byte additive MSAA blending

The current queue baseline was profiled separately using its accepted objects
with function names retained. BMW sampled self wall locations include
15.9ms/frame in the main MSAA raster loop, 5.1ms in queue help, 4.1ms in vertex
processing, 4.2ms in cached triangle processing, and 2.2ms in the MSAA writer.
Active workers sample 21.3–21.7ms in raster, 3.3–3.5ms in cube sampling and
2.6–2.9ms in the writer. These are 1ms location samples, not CPU cycles or
cache traffic. Evidence: `build/diagnostics/ordered-draw-queue-profile/`.

For additive destination factor ONE, each effective source S is multiplied
by 255 and rounded once. A source in [0,1] more than 1/512 away from an integer
boundary after the +0.5 bias has a destination-independent byte increment:
the float path's byte-domain error is below 1/8192. Four RGBA increments are
packed/repeated across four samples and added with unsigned byte saturation.
Out-of-range/nonfinite sources and rounding boundaries keep the existing
float path. Alpha overrides, coverage, depth, stencil, queries, color masks
and other blend factors preserve existing dispatch/order. The actual WASM
module emits one i8x16.add_sat_u site; the native oracle emits paddusb.
No geometry, texture precision, build flags or pixel tolerances change.

The initial inline candidate c87bc2b2 is rejected: BMW four-sample -2.27%/-2.32%,
but T80 +0.43%/+2.15%. Its no-MSAA results are BMW -0.30%/+0.22% and T80
+1.19%/-0.08%. The final WASM variant keeps the guard/packing in a separate
retained root outside the general writer; native code stays inline. Native
and WASM verify 266,461,184 channel comparisons across every destination byte
for accepted packets, including dense boundary/subnormal cases and fractional
source factors. 32,768 actual four-sample writes compare all color/depth/stencil
storage to the unchanged scalar query path under fragment-state combinations.

Three independent three-pair quiet four-sample audits against c57e1da0 give
BMW -2.15%/-1.57%/-1.56% at 22.41/22.30/22.31 FPS. T80 is mixed:
-1.74%/-0.23%/+1.30% at 60.91/57.57/59.10 FPS. The second audit contains
BMW paired changes +11.12%/-9.66%, despite passing the Linux activity guard;
all results are retained. This variability prompted the third audit.
No-MSAA/readback results: BMW -0.51%/+0.04%/-0.21%, T80 -1.42%/+3.73%/-0.06%;
these are neutral/mixed, not a demonstrated useful gain. All eighteen complete
AB/BA pairs pass the quiet guard on attempt one, at 640x360 with three workers
plus caller, 80 warm-up and 100 measured frames per arm, readback/resolve every
frame. Builds/tests/profiling are absent during measurements. The BMW gain
repeats across all three audits; T80 has no repeated sustained regression.
Both four-sample FPS goals remain unproven, including stable T80 >60.

Acceptance: 736 native correctness/contracts plus the benchmark; 16 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images and 240
exact baseline hashes; all 234 four-sample tests exact; both models' 100 hashes
and four bytewise frames each for 0/2/4 samples; 51 existing WASM contracts,
the 99 queue state/sample hashes, three strict shader/numeric contracts and
18 default-pool checks. Canonical JS/WASM match the timed frozen candidate
9a0e20a1 exactly. Browser checks and publication are in the validation artifact.
Evidence: `build/diagnostics/additive-msaa-bytes/validation.json`,
`build/diagnostics/additive-msaa-bytes-outlined/validation.json`, and
`build/perf/tigerlake-20261004/additive-msaa-bytes-outlined*-summary.json`.


## Additive post-Z stores (2026-10-04, rejected)

A private four-sample store reuses the rasterizer's post-depth coverage only
for additive blending with no depth writes, no sample-mask modifiers and no
pixel-serial fragment states. Accepted byte increments use the existing exact
saturation guard; other colors return to the existing writer. Both variants
match each model's 100 hashes and four bytewise frames. The dedicated WASM
contract passes 65,536 storage comparisons and 128 query-oracle frames; its
fixture explicitly enables depth writes before clearing the oracle contexts.

The inline screen gives BMW -7.12% but T80 +3.49%; the BMW reference arm
contains an unusually slow 52.04ms round, so this is not useful gain evidence.
The outlined variant's three complete quiet AB/BA pairs give BMW
+13.32%/-0.51%/-0.09% (median -0.09%) and T80 -1.59%/+0.24%/-3.01%
(median -1.59%). The first BMW candidate arm is unusually slow at 57.42ms;
all raw results remain recorded. No reproducible BMW gain is demonstrated,
so neither variant is retained. Full image/sanitizer/browser gates are not
run for these rejected variants. Production remains at 9a0e20a1.
Evidence: `build/diagnostics/msaa-additive-post-z*/validation.json` and
`build/perf/tigerlake-20261004/msaa-additive-post-z*-*.json`.


## SIMD packet texture addressing (2026-10-04, accepted)

Four-pixel 2D sampling now wraps/clamps integer texel coordinates in SIMD,
shares row products across bilinear taps, and uses the existing prepared
power-of-two masks for REPEAT. Full live packets gather four RGBA words
without four per-lane mask branches; partial packets still read only live
lanes. Float/integer filtering, interpolation and combiner arithmetic are
unchanged. The actual module emits native i32x4 min/max/multiply and v128
bit operations; smaller instruction counts do not prove cache traffic.

The first vector-only variant 8348349c passes strict native/WASM sampler and
shader contracts, all 234 four-sample images, and both models' 100 hashes plus
four byte frames. Its one three-pair audit gives BMW -0.49% and T80 -2.21%.
It is superseded by the power-of-two variant rather than published separately.

Two independent three-pair four-sample audits of a05d5778 against 9a0e20a1
give BMW -0.83 / -1.36% at 22.22 / 22.35 FPS,
and T80 -1.49 / -3.15% at 60.31 / 62.01 FPS.
Two no-MSAA/readback audits give BMW -0.54 / -3.28%
and T80 +0.62 / 0.48%; the latter is a small
paired-median cost below 1%, retained for the repeated four-sample gains.
The pooled T80 frame medians are slightly lower in both audits; the two
statistics differ, so no useful no-MSAA T80 gain is claimed. The first
no-MSAA T80 audit includes a +8.17% pair; all raw arms and quiet-guard results remain recorded.
All twelve complete AB/BA pairs use 640x360, three workers plus caller,
80 warm-up and 100 measured frames per arm, resolve/readback every frame.
Builds/tests/profiling are absent during timings. Both four-sample series
put T80 above 60 FPS; BMW remains well below 30 FPS, so the goal stays open.

Validation: 736 native correctness/contracts plus the benchmark; 16 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images, all 240
byte-identical to baseline; 234 exact four-sample tests; both models' 100
hashes plus four raw frames each for 0/2/4; 51 WASM contracts, 99 queue/eager
hashes, 18 browser default-pool contracts and three strict numeric/shader
contracts. The sampler oracle also injects NaN/infinity into inactive lanes
and prepares the POT masks, covering both address branches without texel reads
from inactive lanes. Native/WASM retain 331,447 sampler and 128,054 shader
comparisons, plus the existing 266,461,184 additive byte channels and 32,768
actual writer comparisons. Chromium and Firefox each pass 234 viewer cases,
three ordered six-scene MSAA benchmark passes, cancellation and eight-worker
context recycling. A system Playwright cleanup error after the 18 default
checks is retained in its log; the project-local Playwright retry exits cleanly.
Canonical JS/WASM exactly match the timed candidate. Geometry, framebuffer
format, quality, build flags, cache/queue budgets and pixel tolerances stay
unchanged. Evidence: `build/diagnostics/packet-pot-address/validation.json`,
`build/diagnostics/packet-vector-address/validation.json` and
`build/perf/tigerlake-20261004/packet-pot-address*-summary.json`.

## Identical vertex UV inputs (2026-10-04)

Prepared vertex inputs identify enabled UV arrays with identical resolved
base, type, component count and stride. Later units copy the earlier raw
four-component value, including padding, instead of fetching and converting
the same source again. Resolution is repeated for every joined vertex job;
there is no persistent attribute cache or additional context/vertex storage.
Independent unit state and the unprepared vertex path remain unchanged.

Two independent three-pair quiet four-sample audits of 2da59ac9 against
a05d5778 give BMW -0.63 / -1.15% frame time, at 22.71 / 22.52 FPS.
All six BMW pairs improve. T80 gives +0.21 / -1.04% at 61.86 / 61.52 FPS;
its mixed pairs do not demonstrate a useful gain or repeated regression.
Two no-MSAA/readback audits give BMW -1.17 / -0.83% and T80
-1.93 / +0.77%. All twelve complete AB/BA pairs pass the quiet guard on
attempt one; none are removed. Each uses 640x360, three workers plus caller,
80 warm-up and 100 measured frames per arm, resolve/readback every frame.
Builds, tests and profiling are absent during timings. BMW remains below
30 FPS with four samples, so the overall optimization goal stays open.

The extended input contract compares full vertices to the independent
unprepared path and geometry replay for float/short/int, client/VBO storage,
one to four components, distinct pointer/stride/size/type, disabled sources,
nonzero alias roots and fresh storage. Native and WASM both pass the extended
contract for 0/2/4 samples and 1/3/8 workers. Full validation passes 736 native
checks plus the benchmark, 16 explicit ASan/UBSan/leak contracts, all 240
unchanged-tolerance WASM/Mesa images and exact baseline hashes, 234 exact
four-sample tests, and both models' 100 hashes plus four raw frames each for
0/2/4 samples. Existing WASM gates pass 51 contracts, 99 queue/eager hashes,
18 default-pool checks, three strict numeric/shader contracts, 266,461,184
additive byte channels and 32,768 actual writer comparisons. Canonical
JS/WASM exactly match the timed frozen candidate. Browser and publication
status are recorded in `build/diagnostics/vertex-uv-alias/validation.json`.
Raw measurements: `build/perf/tigerlake-20261004/vertex-uv-alias*-summary.json`.


## Partial four-sample shader packets (2026-10-04, rejected)

A private variant shades two- and three-pixel triangle remainders with a
masked SIMD packet, padding inactive edge lanes and retaining scalar single
pixels. Both models' 100 hashes plus four raw frames and all 234 four-sample
test images match 2da59ac9. One three-pair quiet audit gives BMW
-1.06 / +1.18 / +0.29% (median +0.29%) and T80
-0.50 / +4.12 / -2.27% (median -0.50%). There is no reproducible BMW gain,
so the variant is not retained. The second pair passes on attempt five;
four CPU-contaminated attempts and their monitors remain recorded. Full
acceptance gates and a confirmation audit are not run for this rejection.
Evidence: `build/diagnostics/msaa-partial-packets/validation.json` and
`build/perf/tigerlake-20261004/msaa-partial-packets-audit-1-summary.json`.

## SIMD two-sample resolve (2026-10-04)

The two-sample resolve now handles four pixels per iteration. Two 16-byte
loads contain their RGBA sample pairs; unsigned rounded byte averages and
shuffles produce four resolved pixels. Sample-zero depth/stencil readback
is unchanged, and remaining pixels use the existing scalar loop. Both native
SSE and WASM SIMD paths share this implementation. The actual WASM module
1fce9677 contains two native i8x16.avgr_u opcodes. No framebuffer representation,
sample locations, shading, coverage rules or sample writes change.

Two independent three-pair quiet 2x audits against 2da59ac9 give BMW
-7.70 / -8.60%, T80 -12.48 / -14.76%, and the lit icosphere
-56.77 / -54.62% frame time. Every pair improves all three scenes.
Candidate times are BMW 45.14 / 44.87ms, T80 17.03 / 16.88ms and
icosphere 2.10 / 2.23ms. A three-pair 4x control gives BMW -0.97% and
T80 -1.35%, at 22.52 / 61.17 FPS; this single series is regression control,
not proof of a new useful 4x gain. A no-MSAA/readback control gives BMW
+0.18% and T80 -1.15%, without repeated regressions. All twelve complete
AB/BA pairs pass the quiet guard on attempt one, using 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm, resolve/readback
every frame. No builds, tests or profiles run during timings. BMW's 4x
30 FPS goal remains open, and other 2x scalar paths still need optimization.

The extended multisample contract checks all 65,536 byte pairs independently
in each RGBA channel, sample-zero depth/stencil and the scalar tail on an odd
31x23 framebuffer. Native and WASM pass with direct rendering and 1/3/8
workers, along with all existing 2x/4x coverage, state and query checks.
All 234 rendering cases are byte-identical to baseline for both 2x and 4x;
each model matches 100 hashes plus four raw frames in both modes.
Full regression/browser results and publication status are recorded in
`build/diagnostics/msaa2-resolve-simd/validation.json`. Raw timings:
`build/perf/tigerlake-20261004/msaa2-resolve-simd*-summary.json`.


## SIMD two-sample fragment writer (2026-10-04)

The two-sample writer now handles common opaque and supported blend states
with SIMD depth tests and color blending, using bounded eight-byte sample
loads/stores. It reuses the existing conservative additive-byte rounding
guard; alpha/stencil/logic/query/masked-color states retain the scalar writer.
A separate retained two-sample WASM root keeps its dispatch and scratch out
of the four-sample writer. Sample positions, coverage, interpolation, storage
format, query semantics and the prepared BMW geometry remain unchanged.

The first private variant e431f43b put the two-sample eligibility dispatch
inside the general writer. Its two independent three-pair 2x audits improve
BMW by 3.14/4.03%, T80 by 6.56/6.24%, and icosphere by 19.51/10.43%.
However, all three 4x BMW pairs regress (+0.51/+0.91/+2.48%; median +0.91%).
That variant is superseded, without full acceptance gates or publication.
Its raw outliers remain recorded, including one unusually large 2x BMW gain.
Evidence: `build/diagnostics/msaa2-writer-simd/validation.json`.

The separate-root candidate cd80da51 has two independent quiet three-pair
2x audits against 1fce9677: BMW -3.48/-3.66%, T80 -4.28/-7.04%, and lit
icosphere -12.05/-14.02% frame time. All six pairs improve all three scenes.
Candidate times are BMW 43.44/43.36ms, T80 16.30/16.02ms and icosphere
1.77/1.81ms. A three-pair 4x control gives BMW -0.18% and T80 -1.01%,
at 22.39/61.28 FPS; BMW pair changes are -0.18/-2.23/+3.64%, so this
control is not evidence of a useful 4x gain. A no-MSAA control gives BMW
-0.27% and T80 +0.33%, without material regressions. All twelve complete
AB/BA pairs pass the quiet guard on attempt one: 640x360, three workers
plus caller, 80 warm-up and 100 timed frames per arm, resolve/readback every
frame, and no simultaneous builds/tests/profiling. BMW's 4x goal stays open.

Multisample contracts check every existing depth/blend/coverage case both
inside the framebuffer and at its final pixel, in native and WASM with
0/1/3/8 workers. The independent scalar-query writer contract now covers
32,768 states for each of 2x and 4x, comparing whole color/depth/stencil
planes. All 234 test images match baseline exactly in both MSAA modes;
each model matches 100 hashes and four raw frames per mode. Full regression,
browser and publication results are recorded in
`build/diagnostics/msaa2-writer-isolated/validation.json`. Raw timings:
`build/perf/tigerlake-20261004/msaa2-writer-isolated*-summary.json`.


## SIMD two-sample raster depth (2026-10-04, rejected)

A private variant db3f5ee4 extends the four-sample SIMD barycentric depth and
early-depth path to two samples when the existing signed-32 edge range proof
holds. Larger triangles retain the scalar i64 path, and sample depth loads
are bounded to eight bytes. Native and WASM multisample contracts pass;
both models' 100 hashes and four raw frames plus all 234 images match
cd80da51 exactly for each of 2x and 4x.

Two independent quiet three-pair 2x audits give BMW -0.70/+0.89%,
T80 -0.63/-0.79%, and lit icosphere -3.31/-6.68%. All three confirmation
BMW pairs are slower (+0.37/+0.94/+0.89%), and sphere results have large
positive and negative outliers in both audits. The variant is rejected:
BMW's gain does not repeat. The first confirmation pair passes on attempt
two; its contaminated attempt and monitor remain recorded. Four-sample and
no-MSAA timing controls and full acceptance gates are not run for this
rejection. Production remains cd80da51. Evidence:
`build/diagnostics/msaa2-depth-simd/validation.json` and
`build/perf/tigerlake-20261004/msaa2-depth-simd*-summary.json`.


## Current four-sample CPU profile (2026-10-04)

A separate symbol-bearing diagnostic links the accepted 822a406 production
objects with -g1/--profiling-funcs. CDP samples the main thread and all eight
reserved workers at 1ms after model/context preparation and warm-up. Both
scenes run 300 diagnostic frames at 640x360, four samples, three active
workers plus caller, resolve every frame. The other five reserved workers
are idle. These sampled self times include inlined callees; they cannot
separate coverage, interpolation and inline texture/combiner work, and they
are not acceptance timings or measured cache traffic.

BMW main-thread samples span 14.17s: the MSAA raster root contributes 4.76s,
queue helping 1.59s, vertex processing 1.19s and cached triangle processing
1.18s. Each active worker spans about 14s, with 6.44-6.57s in the raster root,
4.36-4.39s in timed waits and 0.97-1.02s in scalar cube sampling. T80 also
spends most active-worker execution in the raster root (2.05-2.12s per
worker); timed waits contribute 2.56-2.63s. This confirms that raster work
including inline shading remains a major target while producer geometry
and synchronization also matter. It does not prove a specific arithmetic
or memory bottleneck. Evidence:
`build/diagnostics/msaa-current-profile/summary.json` and
`build/perf/tigerlake-20261004/current-822a406-*-profile.profiles.json`.


## Opaque post-Z two-sample stores (2026-10-04)

The two-sample raster path now selects the same proven opaque fragment states
as four samples. It reuses the already-tested sample coverage/depth mask,
quantizes RGBA channels together with SIMD, and writes exactly eight bytes
of sample color and depth. Partial coverage preserves untouched samples.
Queries, alpha/stencil/logic/blend/color masks and enabled multisample alpha
or coverage controls retain the general writer. Packet stores use a separate
two-sample helper; compile-time macros select eligibility, direct store and
packet store for each sample count. Four-sample helper bodies are unchanged.

Candidate acfc66bb has two independent quiet three-pair 2x audits against
cd80da51: BMW -2.83/-2.19% and T80 -5.82/-5.94% frame time; all six pairs
improve both models. Candidate times are BMW 42.31/42.47ms (23.63/23.55 FPS)
and T80 15.12/15.14ms (66.13/66.07 FPS). Lit icosphere gives -5.31/-26.19%
with large outliers, including a +7.30% first-audit pair; those measurements
do not support a precise expected gain for that small scene. Four-sample
control is BMW -0.64% and T80 +0.39%, at 22.71/61.12 FPS. No-MSAA control
is BMW -0.48% and T80 -0.03%. The controls show no material regression and
are not proof of a useful new four-sample/no-MSAA optimization. All twelve
complete AB/BA pairs pass the quiet guard on attempt one, with the unchanged
640x360 / three workers plus caller / 80 warm-up / 100 timed frames per arm /
resolve-readback every frame protocol. Builds/tests/profiling are absent from
timings. BMW's four-sample 30 FPS goal remains open.

The store regression contract now runs both sample counts, with 262,144
independent RGBA quantizations, 65,536 whole-plane color/depth/stencil store
comparisons and 128 rendered query-oracle frames for each sample count.
Eligibility rejection states and final framebuffer pixels are covered.
All 234 rendering cases and each model's 100 hashes plus four raw frames
match baseline exactly for both 2x and 4x. Full gates/browser/publication
status: `build/diagnostics/msaa2-opaque-store/validation.json`.
Raw timings: `build/perf/tigerlake-20261004/msaa2-opaque-store*-summary.json`.


## Shared packet UV calculation (2026-10-04, rejected)

Two private variants share perspective XY interpolation and normalized wrapping
between sampled 2D units 0 and 2 when all three vertex coordinate bit patterns
and wrap modes match. Each sampler keeps its own dimensions, filtering, texel
addresses and weights. BMW material inspection finds several normal/albedo
pairs with different resolutions, so identical texture grids are not assumed.
Constants, different targets, mismatched coordinates and wraps retain the
original sampler. Both variants pass strict native/WASM scalar sampler and
DOT3 oracles, each model's 100 hashes and four raw frames, and all 234 rendering
cases for both 2x and 4x MSAA. The second numeric fixture also exercises shared
coordinates with different dimensions, filtering and wrapping.

The per-packet proof variant 8d6a5160 regresses BMW in all three quiet 4x pairs
(+5.49/+1.26/+1.05%; aggregate +1.26%). T80 gives -8.30/-1.20/+1.46%,
which does not prove a repeatable gain. Hoisting the proof to triangle setup
(cef3fe1b) gives BMW -1.64/-0.73/+0.53% and T80 -0.39/+1.36/-0.95%.
Neither variant is retained. Full gates and additional sample-mode performance
controls are intentionally not run for rejected variants. Renderer arithmetic,
assets and image tolerances remain unchanged. Baseline is acfc66bb throughout.
Evidence: build/diagnostics/packet-shared-uv*/validation.json and
build/perf/tigerlake-20261004/packet-shared-uv*-summary.json.


## Geometry help inside the ordered draw queue (2026-10-04)

The queue adds a finite geometry stage for next-draw ranges of at least 1,024
vertices. Ready raster bins keep priority. Otherwise, workers claim disjoint
slices of at most 128 vertices in the caller-owned arrays, using the existing
prepared inputs and position cache. The GL caller processes the same slices.
Queue metadata is protected by the existing mutex; release/acquire completion
ensures all attributes and cache flags are consumed before the caller changes
inputs or submits the new snapshot. Ordered per-bin raster claims, float
geometry arithmetic, texture evaluation and existing memory budgets are
unchanged. This uses three workers plus caller without a fifth coordinator.

Candidate 32338ac5 improves BMW four-sample frame time by 1.37/1.48% in two
independent quiet three-pair audits against acfc66bb. All six BMW pairs improve.
T80 changes by -0.59/-2.11%. Two-sample control gives BMW -1.07%, T80 -0.08%;
no-MSAA/readback control gives -2.18%/-0.22%. All twelve complete AB/BA pairs
pass the unchanged activity guard on attempt one, at 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm, resolve every frame.
No compiles, image tests or profiling overlap acceptance measurements.

A separate counter-bearing build preserves both models' 100 hashes and four
raw frames. BMW uses nine geometry stages and 585 vertex slices per frame;
workers claim about 83.1 slices (14.2%), caller about 501.9. T80 does not use
this stage in the tested views, so its timing differences cannot be attributed
to transferred vertex work. The lit icosphere's -12.15% control also does not
establish a geometry-stage benefit. Counters are scheduling diagnostics, not
hardware cache/DRAM measurements. Current four-sample audit medians are BMW
22.17/22.15 FPS and T80 58.95/59.26 FPS; both target thresholds remain open.

The existing ordered-draw regression now crosses the 1,024-vertex threshold
with 1,020/1,023/1,026/1,152/6,144-vertex ranges and partial 128-vertex tails.
It compares 99 whole-frame/sample-plane hashes against eager flushing while
reusing slots, changing inputs/state, blending and exercising storage drains.
Full validation/publication status: build/diagnostics/queue-vertex-stage/validation.json.
Design and next hypotheses: build/diagnostics/queue-vertex-stage/design.md.
Raw evidence: build/perf/tigerlake-20261004/queue-vertex-stage*-summary.json.


## Finite geometry-priority stages (2026-10-04)

Ready vertex slices now take priority over claiming another raster bin.
Already claimed bins finish before switching, and the caller uses the same
finite geometry stage. Mutex ownership, release/acquire completion, vertex
arithmetic and per-bin draw order are unchanged. No additional worker is
created. A counter-only diagnostic preserves 100 hashes/four raw frames for
each model: BMW still uses nine stages and 585 slices per frame, with workers
claiming about 338.5 (57.9%) instead of 83.1 (14.2%). T80 does not use the stage
in these views; its timing differences are not transferred vertex work.

Candidate 58d27457 versus accepted 32338ac5 improves BMW 4x frame time by
1.55/1.22% in two independent quiet three-pair audits; all six pairs improve.
T80 changes by -1.56/-0.91%. The 2x control is BMW -1.29%, T80 +0.32%;
no-MSAA/readback is -0.91%/-0.53%. Lit icosphere 2x ratios include +3.60%,
-36.59% and +19.84%, so no stable speed claim is made for it. All twelve
complete AB/BA pairs pass the unchanged quiet guard on attempt one, with
640x360, three workers plus caller, warm-up 80, timed frames 100 per arm and
resolve/readback each frame. Current 4x medians are BMW 22.26/22.19 FPS and
T80 59.36/58.86 FPS; goal thresholds remain open.

An initial canonical check caught a stale workers object because copying the
private include retained an older timestamp. Touching the include and rerunning
all native/sanitizer/canonical/WASM gates fixes the build provenance. Final
canonical JS and WASM match the timed frozen module exactly. The original
private numeric/image/performance evidence remains valid; initial stale native
gates were not accepted. Final tests/publication:
build/diagnostics/queue-geometry-priority/validation.json.
Scheduling counters: build/diagnostics/queue-geometry-priority/stage-counts-summary.json.
Timings: build/perf/tigerlake-20261004/queue-geometry-priority*-summary.json.


## Four compute contexts by default in WASM (2026-10-04)

Automatic WASM contexts use min(reported CPUs - 1, 3) helper workers, with
the GL caller also computing. One reported CPU uses no helpers. Explicit
worker hints remain available, including the eight-worker correctness stress
path; the prestarted pthread capacity remains eight so those synchronous API
calls do not require asynchronous browser worker startup. Native defaults
are unchanged. This implements the requested four-context architecture;
there is no speed claim for the four-CPU benchmark host, whose default pool
already used three helpers. The last performance numbers refer to 58d27457.

Candidate 700e203b passes eighteen default-pool contracts across reported
1/2/4/8/9/16 CPUs and MSAA off/2x/4x. Explicit 1/3/8 worker contracts pass
51 checks including 99 ordered queue hashes. All 240 Mesa images and all
234 two- and four-sample frames match 58d27457 exactly; each model preserves
100 hashes and four raw frames per sample mode. Chromium and Firefox each
pass 234 scenes, eighteen benchmark rows, MSAA switches and cancellation
with three helpers on nine reported CPUs. Canonical JS/WASM match the
frozen module. The native Release workers object is byte-identical to the
validated baseline, carrying its 737 checks; sixteen sanitizer contracts
were rerun successfully. Evidence: build/diagnostics/wasm-four-contexts/validation.json.


## Adjacent bilinear tap-pair loads (2026-10-04)

Full four-pixel packets whose mapped horizontal neighbors are adjacent inside
each texture row gather two RGBA8 taps with one bounded 64-bit load. Two
128-bit shuffles separate left and right words before the existing integer
or float bilinear arithmetic. Sixteen 32-bit loads become eight 64-bit loads;
the byte count and filtering arithmetic are unchanged. Width-one textures,
repeat seams, collapsed clamp neighbors and partial packets retain the
original live-lane gathers. No texture padding or inactive-lane access is
required. This reduces load instructions, without a claim about hardware
cache misses or DRAM traffic.

Candidate 4b5b002c versus accepted 700e203b improves T80 four-sample frame
time by 3.03/2.38% in two independent quiet three-pair audits; all six pairs
improve. BMW changes by -1.60/-0.28%, with five pairs improving and one +0.07%.
The two-sample control is BMW +0.73%, T80 -2.72%; no-MSAA/readback gives
-0.30%/-0.56%. Lit icosphere two-sample ratios +7.66/-8.32/+17.14% do not
establish a stable gain or loss; trivial scenes are lower priority. All twelve
complete AB/BA pairs pass the unchanged activity guard on attempt one, at
640x360, three workers plus caller, 80 warm-up and 100 timed frames per arm,
resolve/readback every frame. Four-sample medians are BMW 22.38/22.20 FPS
and T80 58.92/58.98 FPS; both requested thresholds remain open.

A regression extends the strict packet sampler oracle with 23,360 float and
integer bilinear comparisons at texture row/storage ends: widths 1/2/3/16/31,
all wrap pairs, full/partial masks and inactive NaN/infinity coordinates.
POSIX native builds put a protected page immediately after the final texel;
other platforms use an exact-sized allocation. Full validation/publication:
build/diagnostics/packet-paired-taps/validation.json. Timing evidence:
build/perf/tigerlake-20261004/packet-paired-taps*-summary.json.


## Packet specialization and visible-vertex replay, rejected (2026-10-04)

Four private experiments were compared with accepted module 4b5b002c; none
was integrated or published. A fused DOT3 packet reuses one texture result
instead of retaining four, with unchanged floating-point operations. Two
independent quiet three-pair four-sample audits give BMW -0.87/-0.01% and
T80 -1.64/+0.86% frame time. Three separately retained fixed DOT3 kernel
roots give BMW -0.41/-0.19% and T80 -0.48/-1.35%, with mixed individual
pairs. Neither establishes enough repeatable BMW benefit for the extra
specialization. Strict native/WASM numeric checks, model frames at 2x/4x,
and 234 exact scene images per MSAA mode pass; the fused packet also passes
its native sanitizer check. Evidence: build/diagnostics/packet-fused-stages/
and build/diagnostics/packet-fixed-kernels/validation.json.

Cached-bin vertex replay marks only referenced vertices for attribute refresh.
The initial whole-array initialization variant makes BMW slower in all three
quiet pairs (+0.78/+0.80/+1.78%). A second variant initializes unused slots
inside worker slices; counters establish zero vertices skipped in the target
scenes, so it was rejected before timing. BMW has 23 replay jobs per frame,
46,103 input vertices and 46,103 refreshed vertices; T80 has no such jobs.
Both variants pass 51 WASM contracts, 99 queue hashes, all 234 exact images
at 2x and 4x, and 100 hashes plus four raw frames per model at off/2x/4x.
Evidence: build/diagnostics/visible-vertex-replay*/validation.json and
build/diagnostics/visible-vertex-replay-counts/frame-equivalence-4.json.

Fresh per-thread sampling of accepted d16829a is under
build/diagnostics/current-d16829a-profile/summary.json, with raw profiles
under build/perf/tigerlake-20261004/current-d16829a-*.profiles.json. The
caller still spends substantial samples in triangle/bin preparation while
workers sample wait locations. These include inlined callees and blocked
waits; they are diagnostic observations, not CPU utilization, measured
cache misses or acceptance FPS. Parallel triangle preparation is an
architectural follow-up, not an implemented or measured improvement.


## Exact compact DOT3 draw queue (2026-10-04)

Complete recognized DOT3 chains with at least 1,024 prepared vertices now
store exact NDC, front color, eye.z and the UV sets consumed by nonconstant
samplers in the ordered draw queue. This is 48–96 bytes per vertex instead
of 160; all float components of each required UV set are retained. Each
rendering thread decodes through the existing collision-pinned 64-entry
cache, with three spill vertices. Its 10.72KiB contains values, no pointers
to retired storage. Small and other-state draws retain raw ownership swaps.
The four queue slots share the existing 2MiB capacity budget across both
raw and packed storage, including idle slots; old storage is released before
resizing. Allocation failure returns to the existing ordered fallback.
This changes storage and available overlap, without quantization or any
claim about measured hardware cache misses. The T80 single-texture path
continues to use its existing packed stream.

Frozen f72016fd versus 4b5b002c improves BMW in all six quiet crossover
pairs in each sample mode. Independent three-pair audit medians are
4x -2.83/-3.13%, 2x -3.37/-2.91%, and off -6.22/-5.60% frame time.
T80 remains mixed: 4x +0.44/-1.91%, 2x +1.98/+0.24%, and off
+2.35/-0.61%; no repeatable relevant regression is established. All eighteen
complete AB/BA pairs pass the unchanged host-activity guard on attempt one,
with 640x360, three workers plus caller, 80 warm-up and 100 timed frames
per arm, resolve/readback every frame. Four-sample medians are BMW
24.06/24.02 FPS and T80 61.68/62.45 FPS. The BMW >30 FPS goal remains open.
The two-sample lit icosphere is mixed (-0.04/+9.44%) with large individual
variation; no stable gain is claimed for this lower-priority scene.

The existing ordered-queue contract now alternates raw and packed chains,
all three recognized DOT3 kinds, constant/nonconstant textures, source
reuse, different draw sizes and clipped vertices. All 135 eager/queued
whole-frame and sample-plane hashes also match the prior raw-only module,
across off/2x/4x and 1/3/8 workers. Full validation includes 737 native
checks, sixteen ASan/UBSan/leak contracts, 240 Mesa and exact baseline
images, 234 exact images in each MSAA mode, 100 model hashes and four raw
frames per model/mode, 51 WASM plus eighteen default-pool contracts, strict
numeric and additive writer oracles, and both Chromium/Firefox previews.
Canonical JS/WASM match the measured frozen module. Evidence/publication:
build/diagnostics/queue-packed-dot3/validation.json and publication-proof.json;
timings: build/perf/tigerlake-20261004/queue-packed-dot3*-summary.json.

An outlined queue-submission follow-up is prepared separately under
build/diagnostics/queue-packed-dot3-outlined. It has not been compiled,
measured or integrated; it is not part of this retained improvement.
