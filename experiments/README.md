# Optimization evidence

Fresh profiles of the current renderer and a repeated logical-work census
for BMW/T-80 in all three MSAA modes are published in
[raster-work-census](raster-work-census/README.md). Every counter and model
hash record reproduces byte-for-byte. These diagnostics motivate exact SIMD
coverage-edge recurrence; they establish no accepted performance gain.

SoftGL's current objective is open, reproducible research into the fastest
practical OpenGL 1.5 implementation in WebAssembly. BMW F31 has priority;
T-80 is the second demanding reference. Image quality, prepared geometry and
OpenGL semantics remain fixed. FPS milestones guide comparisons rather than
define completion. Historical acceptance decisions below retain the criteria
that applied when those experiments were measured.

Research references include Intel's
[Masked Software Occlusion Culling implementation](https://github.com/GameTechDev/MaskedOcclusionCulling),
which separates coverage from depth and supplies SSE4.1 kernels; its 1/w depth
and default DirectX conventions require adaptation before any use in SoftGL.
[Laine and Karras, HPG 2011](https://research.nvidia.com/publication/2011-08_high-performance-software-rasterization-gpus)
study software rasterization with ordering constraints and MSAA on GPUs.
[Mesa LLVMpipe](https://docs.mesa3d.org/drivers/llvmpipe.html) uses LLVM-generated
CPU code. These are sources of hypotheses for conservative depth bounds,
staged raster work and state specialization. Their published performance
does not establish a speedup or hardware-limit percentage for this WASM renderer.

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
reproducible gains, reporting costs in other modes and scenes. A small T80 cost
may be accepted for a reproducible BMW gain under the user's current priority.
Native/Mesa and WASM
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


## Parallel ordered triangle preparation (2026-10-04)

The existing three workers plus caller also prepare triangle descriptors.
Each disjoint 128-triangle slice computes the original float area/culling,
fixed-point conservative bounds, bin range and depth key. A 28-byte descriptor
records the result; the caller appends bins in original primitive order and
processes clipped triangles through the existing path. The retained scratch
is capped at 8,192 records (224KiB), with at most 448KiB during allocation
growth. Work boundaries start on separate 64-byte cache lines. Queue workers
finish claimed raster bins before taking the finite geometry stage; ordinary
idle pools share the same stage. Small/ineligible jobs, two-sided lighting,
user clip planes and existing single-draw asynchronous raster epochs keep
their prior path. Position/bin cache qualification and ownership are unchanged.

Candidate 0a9df7ee versus f72016fd improves all six BMW four-sample pairs;
the independent quiet three-pair audits give -0.88/-0.37% frame time. T80
improves five of six (-1.29/-0.97%), with one +0.26%. Two-sample controls
improve all three pairs for both models (BMW -0.83%, T80 -2.43%); off-MSAA
BMW improves all three (-2.27%), while T80 is mixed (-0.69%, including one
+6.52% outlier). All twelve complete AB/BA pairs pass the unchanged activity
guard on attempt one, 640x360, three workers plus caller, 80 warm-up and
100 timed frames per arm with resolve/readback every frame. The two-sample
lit icosphere is mixed (+1.50%); no stable gain is claimed. Four-sample
medians are BMW 24.23/24.17 FPS, T80 62.83/62.95 FPS; BMW >30 FPS remains open.

Separate counters preserve 100 model hashes and four raw frames each.
BMW prepares 51,894 triangles through eight stage jobs per frame, all ready,
with 39.93% mean worker participation; T80 prepares 17,424 through three
jobs, 57.30% worker participation, with clipped/rejected counts varying by
angle. These are scheduling diagnostics, not cache counters or acceptance
timings. Evidence: build/diagnostics/parallel-triangle-stage-counts/
frame-equivalence-4.json. The native isolated build initially lacked wrapper
source links; its failed configuration and empty CTest run are not accepted
as tests. After adding the sources, all sixteen preliminary contracts pass.
Preexisting warnings in unchanged dlist.c/evaluators.c are recorded separately.

A new triangle_stage contract compares large staged draws with the original
serial producer using <=512-triangle draws, preserving the exact primitive
order and bin layout. Its 54 whole-frame/sample-plane hashes cover u8/u16/u32
indices, 1,023/1,024/1,152/8,192/8,193-triangle boundaries, winding, culling,
clipping, an older queued draw, off/2x/4x and 1/3/8 workers. It passes native,
sanitized and WASM builds and checks retained scratch capacity. Final gates:
738 native checks, seventeen ASan/UBSan/leak contracts, 240 Mesa and exact
baseline images, 234 exact images per MSAA mode, all rotating model frames,
51 WASM renderer + 135 queue + 54 triangle + eighteen default-pool contracts,
strict numeric/writer checks and both browser previews. Canonical JS/WASM
are identical to the measured frozen module. Validation/publication:
build/diagnostics/parallel-triangle-stage/validation.json and publication-proof.json.
Timings: build/perf/tigerlake-20261004/parallel-triangle-stage*-summary.json.

Ordered opaque visibility trials against `0a9df7ee` are rejected. A separate
four-sample diagnostic records successful shader color writes and final
distinct primitive owners per pixel, including mixed sample owners at edges.
BMW averages 158,827 shader writes, 142,120 surviving primitive/pixel pairs
within individual draws, and 104,079 across compatible opaque queue segments.
The corresponding 10.52%/34.47% redundancy is a logical upper bound for that
queue scope, not a whole-frame speedup or a cache-miss measurement. T80 does
not use this path. Evidence: build/diagnostics/opaque-visibility-counts/.

Private prototypes preserve the original post-depth-test coverage mask for
each primitive/pixel, so deferred shading retains the original shading point
even when later primitives overwrite some samples. Same-bin order and queue
ownership are preserved; alpha, blending, stencil, queries and incompatible
sample/color states retain the ordinary path. Four variants all preserve
100 rotating model hashes and four exact frames per model at 640x360/4x.
Each timed variant has three complete quiet AB/BA pairs, three workers plus
caller, 80 warm-up and 100 timed frames per arm, resolving every frame:

| Private trial | BMW frame-time change | T80 frame-time change |
| --- | --- | --- |
| Visibility followed by another triangle scan | +11.09% | -0.73% |
| Sparse surviving-fragment lists | +1.20% | -0.63% |
| Sparse lists, gathered batches, 4 MiB queue | +7.38% | -0.64% |
| Sparse lists, SIMD depth/owner writes, 2 MiB queue | +0.66% | -0.70% |

BMW is slower in all twelve pairs; T80 is outside the new path, so its small
mixed changes are not attributed to this architecture. Full native/Mesa and
WASM compliance gates were not rerun for rejected prototypes. Production,
live assets, geometry and tolerances remain unchanged. Raw trials and proof:
build/perf/tigerlake-20261004/opaque-deferred-*-audit-1-summary.json and
build/diagnostics/opaque-visibility-counts/trials.json.

Separate untimed batch counters show that a gathered 2 MiB queue forms only
two-draw groups, saving 16,988 shader calls per frame. A 4 MiB queue adds
three-draw groups and saves 25,053; neither forms four-draw groups in the
measured model sequence. Both counter modules preserve the model images.
More saved shading does not by itself offset visibility, scheduling and
storage costs. Counter evidence: build/diagnostics/opaque-deferred-batched-counts/
and build/diagnostics/opaque-deferred-batched-4m-counts/frame-equivalence-4.json.


Conservative incremental MSAA scanlines against `0a9df7ee` reduce raster work
without changing the coverage predicates. Three floating-point edge
intersections are initialized per triangle and advanced once per row. They
only propose excluded left/right tails: exact signed 64-bit edge extrema
must prove each tail has no covered sample. Rounding or accumulated drift
can therefore only leave extra work. Pixel/sample order, post-Z shading
points, depth/query semantics and shader arithmetic remain unchanged. The
shared template applies to both 2x and 4x; ordinary non-MSAA is unchanged.
Spans are enabled only for bounding boxes at least eight pixels wide and
64 pixels in area. No new retained allocation or worker coordination.

Untimed counters on the previous production module show BMW visits
2,840,601 bounding-box pixels versus 641,674 covered pixels per frame;
T80 visits 1,022,817 versus 215,722. Whole-triangle HZ has already run at
that point. Counters preserve 100 rotating frame hashes and four exact
frames per model. These are logical operations, not cache-miss counters.
Evidence: build/diagnostics/current-a99c3ad-raster-counts/.

The incremental candidate `36aa8414` has two independent 4x audits,
three complete quiet AB/BA pairs each, resolving every frame at 640x360,
three workers plus caller, 80 warm-up and 100 measured frames per arm:

| Scene | 4x frame-time change, audit 1 / 2 | FPS, audit 1 / 2 |
| --- | --- | --- |
| BMW | -1.12% / -0.04% | 24.50 / 24.29 |
| T80 | -3.19% / -4.07% | 64.59 / 64.36 |

T80 improves in all six pairs. BMW's initial gain does not reproduce in
the confirmation audit, so no reliable 4x BMW speedup is claimed and its
30 FPS target remains unmet. Three-pair 2x audit: BMW -1.87%, T80 -2.67%.
Without MSAA: BMW -0.83%, T80 +0.68%, mixed pairs; no algorithmic change
or reliable speedup is claimed for that path. A per-row multiplication
prototype and a tighter sample-aware bounding-box variant were also
image-exact, but did not provide a clearer two-model improvement.
Raw data: build/perf/tigerlake-20261004/msaa-incremental-spans*-summary.json;
validation: build/diagnostics/msaa-incremental-spans/validation.json.

Three private tiled level-zero 2D texture layouts are rejected. Canonical
texture storage and mipmap semantics are preserved; optional aligned
64-byte tiles serve packet sampling, with paired loads only when physical
addresses are adjacent. Upload builds the cache; mutation joins pending
work before invalidation; allocation failure uses canonical storage.

| Tile trial | BMW time | T80 time | Exact channel comparisons |
| --- | --- | --- | --- |
| 4x4 RGBA8 | -0.06% | +1.67% | 4,834,816 |
| 8x2 RGBA8 | -0.68% | +1.88% | 5,729,792 |
| 8x2 shared float scalar/packet sampling | +0.15% | +1.92% | 11,158,016 |

Each trial has three quiet AB/BA pairs and exact model frames; no full
compliance rerun after the performance rejection. The scalar-sharing trial
also compares actual scalar sampling against a canonical texture clone.
Evidence: build/diagnostics/texture-tile{4,8x2,8x2-float}/validation.json.

A separate current-module CPU profile outlines packet, unit, 2D and scalar
shader boundaries; the emitted WASM verifies those calls remain outlined.
Across 300 frames, BMW MSAA raster self samples total 22.71 s across caller
and three workers, versus 1.37 s in packet shading and 0.42 s in packet 2D
sampling; cube sampling totals 4.09 s. T80 raster totals 6.62 s, packet 2D
0.79 s. Sampling can include waiting/preemption and outlining changes code
generation, so these are diagnostic locations, not CPU busy time or an
acceptance benchmark. Logical HZ counters show BMW performs 10,755 cell
refreshes and rejects 73,323 of 155,291 valid triangle-bound queries per
frame. Evidence: build/diagnostics/current-a99c3ad-shader-profile/ and
build/diagnostics/current-a99c3ad-hz-counts/.

The independent full-frame scanline oracle checks 4,480 actual renderings
and 46,688,256 exact sample masks in native SSE4.1 and WASM: thin/wide/tall
triangles, negative and large coordinates, both MSAA modes, and disabled
multisampling. It does not duplicate the optimized intersection algorithm.
Full gates: 738 native tests plus benchmark_fp6, 18 sanitizer contracts,
240 Mesa images, 240 exact previous-production images, 234 exact images
at each of 2x/4x, model hashes/bytes in all three modes, 51 WASM renderer,
135 queue, 54 triangle, eighteen default-pool and strict numeric/writer
contracts. Canonical JS/WASM match the timed frozen module exactly.
Both Chromium and Firefox pass 234 viewer scenes, all eighteen benchmark
rows in off/2x/4x order, cancellation and MSAA restoration with three workers.
Firefox exits successfully; its Python mozprofile destructor logs a cleanup
ImportError after the passed result during interpreter shutdown.


Exact four-sample coverage SIMD against `36aa8414` is accepted.
A per-triangle i64 bound proves that all three raw sample edges across the
entire clipped bounding rectangle fit signed 32 bits, with a one-unit margin
for the top-left bias. Extreme origins or spans take the original i64 path.
The checked origin and dimension cap keep the bound arithmetic inside i64.
Packed additions deliberately wrap modulo 2^32: proved final sample sums fit
signed i32, so their signs are exact even when a base/offset cast wraps.
Four lanes now test the actual four samples of one pixel with three vector
adds, two ORs and one sign mask. All geometry, sample locations, shading
points, depth expressions and float interpolation remain unchanged. Native
SSE4.1 and standard WASM SIMD128 use the same predicates; no extra retained
allocation, threading or texture storage. Only the 4x coverage path changes.

Two independent three-pair quiet AB/BA audits at 640x360, three workers plus
caller, 80 warm-up and 100 measured frames per arm, resolving every frame:

| Scene | Frame-time change, audit 1 / 2 | FPS, audit 1 / 2 |
| --- | --- | --- |
| BMW | -8.94% / -7.71% | 26.51 / 26.38 |
| T80 | -5.50% / -5.86% | 68.03 / 67.80 |

Both improve in all six pairs; BMW remains below 30 FPS. Additional three-pair
2x audits give BMW -0.39%, T80 -0.97%; without MSAA -1.21%/-1.97%. Those
paths have no algorithm change, so these small differences are not claimed
as SIMD-coverage gains. Raw timings: build/perf/tigerlake-20261004/
msaa-sample-coverage32*-summary.json. Frozen module: `69e0b1d3`.

Two preceding private row-level hierarchical-depth trials are rejected.
They use the existing conservative vertex-depth lower bound to skip aligned
four-pixel segments inside partly visible triangles. Stencil or unsupported
depth functions retain the ordinary path. An untimed diagnostic shows BMW
checks 73,426 groups, skipping 100,827 pixels; T80 checks 30,030, skipping
25,529. These are logical operations, not hardware cache misses.

| Private trial | BMW time | T80 time |
| --- | --- | --- |
| Probe each aligned segment | +2.83% | +2.93% |
| Reuse proved hidden cells across four rows | +1.47% | +1.21% |

Each has three quiet AB/BA pairs, 100 exact model hashes and four exact
frames per model, and the 1,536-frame HZ-on/off depth/query oracle. BMW is
slower in all six pairs; no full compliance rerun after rejection. Evidence:
build/diagnostics/msaa-cell-span-depth{,-cached,-counts}/validation.json.
Both remain private. A source-only experiment postponing ordinary non-MSAA
setup was prepared but not built or timed; no performance claim is made.

The independent full-frame oracle now includes positive, screen-crossing
triangles around the signed-32 dispatch boundaries (180/181 and 16383/16384
pixel extents). Native SSE4.1 and WASM check 4,480 frames and 46,688,256 exact
sample masks. Full runtime gates pass: 738 native tests plus benchmark_fp6,
18 ASan/UBSan/leak contracts, 240 unchanged-tolerance Mesa images, 240 exact
baseline hashes, all 234 images in each of 2x/4x, both rotating models in
0/2/4 samples, 51 WASM renderer, 135 queue, 54 triangle, eighteen pool and
strict sampler/combiner/byte-writer contracts. The regular canonical JS/WASM
match the measured frozen module exactly. Final browser/publication evidence:
build/diagnostics/msaa-sample-coverage32/validation.json and publication-proof.json.
Both Chromium and Firefox pass 234 viewer scenes, all eighteen benchmark
rows in off/2x/4x order, cancellation and MSAA restoration with three workers.
Firefox exits successfully; its Python mozprofile destructor logs a cleanup
ImportError after the passed result during interpreter shutdown.


## 2026-10-05: current shader boundaries and isolated texture trials

A fresh diagnostic build from accepted `17b296f` outlines the pixel shader,
packet shader, packet unit sampler and packet 2D sampler. WAT confirms actual
calls at all four boundaries (9/3/5/1 static sites). Both rotating models retain
100 exact hashes and four byte-identical frames at 4x. CDP preserves all eight
prestarted worker profiles and summarizes caller plus three active helpers over
300 measured frames per model. These samples include blocked/waiting locations
and inlined code; outlining changes code generation. They are neither acceptance
timings nor hardware cache-miss measurements.

BMW MSAA raster self samples sum to 18.365 s across the four contexts, with
4.182 s in scalar cube sampling and 2.486 s in the MSAA writer. T80 has no cube
samples. Evidence: build/diagnostics/current-17b296f-shader-profile/validation.json
and build/perf/tigerlake-20261004/current-17b296f-shader-*-profile*.json.
The actual BMW pack has 23 cube textures, each six 128x128 RGBA faces, totaling
8.625 MiB. The parsed dimensions and wraps are saved in model-texture-shapes.json.

Two renewed coherent-cube packet trials use the current POT-address and paired
bilinear-load implementation. Both have 262,144 scalar/vector oracle packets
(243,712 fast exact, 18,432 fallback), all live masks, face ties, zeros,
tiny/large coordinates, filters/wraps, and exact rotating-model images. The second
also checks its entire target kernel, including mixed-face fallback, against
scalar results on every packet. No full compliance rerun after holding them.

| Private trial | BMW 4x time, two audits | BMW 2x time | T80 concern |
| --- | --- | --- | --- |
| Coherent cube guard | -2.79% / -3.64% | -2.32% | Off: +0.83%, all three pairs slower |
| Separate cube target kernel | -3.55% / -2.61% | -2.89% / -2.99% | 2x: +1.06% / +0.84%, mixed pairs |

All six 4x BMW pairs improve for each trial. Both remain private to avoid the
repeated small regressions. The second is neutral for T80 without MSAA. No cube
speedup is attributed to T80. Evidence: build/diagnostics/cube-coherent-current/
validation.json and build/diagnostics/cube-target-kernel/validation.json; all
attempts, including timing outliers, remain under build/perf/tigerlake-20261004/.

A first shared 2x coverage proof gives BMW -5.01%/-3.59% and T80 -3.71%/-3.32%
in two three-pair 2x audits; every pair improves both models. Nevertheless,
4x BMW is slower in all six controls (+0.24%/+0.78%). Binary comparison finds
two changed function bodies among 1,394. This trial is held. A revised isolated
instantiation restores the exact prior 4x source ordering: its binary changes
only one function body, and all other 1,393 bodies remain byte-identical.
Both pass the independent 4,480-frame / 46,688,256-sample-mask WASM oracle.
The isolated revision retains 100 exact model hashes and four exact frames
per model at 2x. Nevertheless, two quiet three-pair 4x audits show BMW
+0.39%/+1.00% with all six pairs slower. The isolated trial is held too;
remaining timing work was stopped, with completed files and owned-process
identities retained. One completed 2x pair is not acceptance evidence.
Evidence: build/diagnostics/msaa2-{sample-coverage32,coverage-isolated}/.

A separate scalar cube-address trial reuses the existing exact bounded-address
helper from 2D sampling. Wrapping bounds taps to [-1, size], so a single correction
replaces integer remainder, including NPOT and one-texel faces. The old cube
projection, modulo addressing and filtering are frozen as an independent oracle.
524,288 actual scalar samples are bit-identical in native SSE4.1 and WASM;
100 rotating-model hashes and four frames per model are exact at 4x. Its binary
changes only the existing cube-sampler function body; the other 1,393 bodies
remain byte-identical. Evidence: build/diagnostics/cube-face-bounded-address/.
Two quiet three-pair 4x audits give BMW +0.001%/+0.23% and T80 +0.02%/-1.44%.
There is no repeatable BMW gain, so the address trial is rejected. No full
compliance rerun follows rejection; production remains accepted `69e0b1d3`.


The explicit scalar-fragment RGBA cube filter is then tested independently.
The previous WASM body has 38 scalar multiplies, 16 scalar adds and 20 byte-load
sites, with no vector float filter arithmetic. The explicit variant has seven
vector multiplies, three vector adds and four bounded `v128.load32_zero` taps;
these are static instruction sites across all branches, not executed counts.
An independent frozen scalar oracle checks 524,288 samples with axis ties,
zeros, tiny/large coordinates, POT/NPOT/one-texel faces, min/mag filters and wraps,
plus null textures and missing faces. Strict native and WASM checks are exact.
WASM model hashes/frames remain exact. The isolated RGBA variant gives BMW
-1.81%/-1.51% in two 4x audits, but T80 +0.85%/+1.44%, so it is held.
Evidence: build/diagnostics/cube-rgba-simd/validation.json.

The combined private revision adds the isolated 2x coverage proof and RGBA
cube filtering. Compared with accepted `69e0b1d3`, BMW improves every one of
six quiet 4x pairs, with audit medians -1.27%/-1.05% and 26.99/26.92 FPS.
T80 remains mixed (-0.87%/+0.47%), at 68.52/68.10 FPS. Three 2x pairs improve
both models: BMW -6.17% and T80 -1.83%, 27.17/71.27 FPS. Two off/readback audits
give BMW -1.82%/-2.08% and T80 +0.61%/-0.75%; no repeatable relevant T80 loss is
established. All completed and incomplete attempts remain recorded. None of
these timings is attributed to hardware cache misses. BMW still misses 30 FPS.

The normal canonical JS/WASM match frozen `c4e565e0` exactly. The new cube
contract follows the existing packet oracle: compile actual sampler sources
with strict arithmetic, while normal renderer image gates exercise native
Fast-Math flags unchanged. An initial cube-contract flag mismatch and a missing
new ASan Makefile target are corrected; final 739 native checks plus benchmark,
19 ASan/UBSan/leak contracts and the full WASM runtime/numeric/image gates pass.
WASM keeps all 240 previous image hashes exactly, all 234 images per 2x/4x mode,
and 100 hashes plus four byte-exact rotating frames per model in off/2x/4x.
Independent coverage remains 4,480 frames / 46,688,256 exact sample masks.
Both Chromium and Firefox pass all 234 scenes, eighteen benchmark rows in
off/2x/4x order, cancellation and MSAA restoration with three helpers on nine
reported CPUs. Browser timings during correctness work are not acceptance
measurements. Firefox exits successfully; the existing mozprofile cleanup
ImportError appears only during interpreter shutdown. Binary comparison proves
1,392 of 1,394 function bodies unchanged, with only the 2x raster and cube
sampler bodies modified. Final evidence: build/diagnostics/msaa-cube-combined/
validation.json and publication-proof.json.


## 2026-10-05: four-context architecture trials

All trials below start from accepted `261f286` / WASM `c4e565e0`.
They preserve GL arithmetic, geometry, sampling and the three-helper-plus-caller
pool. Each has two quiet 4x audits with three complete AB/BA pairs per audit,
640x360, 80 warm-up / 100 measured frames per arm, and resolve/readback on
every frame. All attempts and host monitors are retained.

| Private architecture | BMW time, audit 1 / 2 | T80 time, audit 1 / 2 | Decision |
| --- | --- | --- | --- |
| Pack queue vertices at the end of each 128-vertex transform slice | +0.65% / -1.24% | +2.21% / +0.64% | Reject: BMW mixed; T80 slower |
| Same packing, reclaim idle queue storage before reservation | +1.15% / +0.80% | +0.94% / -0.62% | Reject: all six BMW pairs slower |
| Atomic monotonic geometry tickets between 128-vertex slices | +1.53% / +1.47% | +0.59% / +0.31% | Reject: no gain in either audit |
| Intern byte-identical cube faces; copy on mutation | +0.85% / +1.48% | +0.76% / +1.04% | Reject: both models slower |
| Same interning with 64-byte-aligned face data | +1.49% / +1.42% | +0.57% / +0.29% | Reject: no BMW gain |
| Coarse four-pixel SIMD before exact sample-lane coverage | +2.93% / +2.41% | +3.46% / +1.78% | Reject: all six pairs slower in both models |

Early packing reserves an unpublished idle slot without waiting and keeps the
existing aggregate 2MiB queue budget. Joined workers pack disjoint slices while
full transformed vertices remain available for clipping. Final submission
reuses the payload only if layout, capacity and source count still match;
clipped vertices and failed reservations retain the ordinary copy. Untimed
counters show BMW reuses 33,354 of 83,746 packed vertices per frame (39.8%),
with about 60.2% of early writes performed by helpers. T80 does not use this
DOT3 queue path. Moving the same writes earlier does not establish a speedup.

The ticket trial claims further slices without the queue mutex. Each worker
captures immutable stage inputs before releasing completion; a monotonic
cursor prevents an old stage from claiming a new stage's work. Tickets reset
only after all queue workers join, with an exact overflow fallback. Existing
135 queue and 54 triangle state/sample-plane oracles pass.

Cube interning keeps ordinary aligned RGBA8 sampler pointers. A private storage
prefix owns references and fingerprints; every alias is confirmed by full byte
comparison. Upload/copy may share within one context, while subimage writes
first detach shared storage. State teardown releases references after joining
workers. Nine new private ownership/mutation cases pass native, WASM and
ASan/UBSan with leak checking, including mipmaps, face/object isolation,
delete/re-upload, framebuffer copy, display lists and old queued snapshots.
The 51 renderer and 135 queue checks pass too. No full compliance rerun follows
these performance rejections. All six trials keep 100 exact rotating hashes
and four byte-identical frames per model at 4x. Production remains unchanged.

A current-module diagnostic preserves the same exact model frames and counts
work after whole-triangle HZ. These are logical operations, not hardware cache
misses or measured DRAM traffic:

| Per frame, 640x360 / 4x | BMW | T80 |
| --- | --- | --- |
| Bounding-box pixels | 2,840,601 | 1,022,817 |
| Pixels visited after scanline bounds | 1,744,066 | 442,589 |
| Geometrically covered pixels | 641,674 | 215,722 |
| Empty visited pixels | 1,102,392 | 226,866 |
| Covered pixels after early depth | 301,292 | 137,667 |
| Fully covered pixels before depth | 234,725 | 95,894 |

The unchanged BMW pack contains 23 cubes but only nine byte-distinct whole
cubes; 138 faces contain only 48 byte-distinct face images. Cube texels occupy
8.625MiB unshared and 3.000MiB if shared per identical face, excluding small
ownership prefixes. This establishes a storage opportunity, not a frame-time
or cache-miss improvement.

The coarse four-pixel trial conservatively rejects a pixel only if one edge
excludes all its samples; every candidate retains the original exact sample
test and pixel order. Its 4,480-frame / 46,688,256-sample-mask oracle,
51 renderer checks, 135 queue hashes and both rotating-model comparisons pass.
Extra coarse-test overhead is not offset by fewer sample tests; all six pairs
are slower for both scenes. It remains private.

The separate 64-byte-aligned storage variant keeps the same mutation rules
and passes all nine WASM storage cases and both exact rotating-model gates.
Its two complete audits show BMW +1.49%/+1.42% and T80 +0.57%/+0.29%;
BMW is slower in five of six pairs and T80 in all six. It is rejected too.
No native/full compliance rerun follows this rejection. The smaller storage
footprint and deliberate alignment establish neither a frame-time gain nor
a hardware cache-miss reduction. All six trials remain private; production
source and live module stay at accepted `261f286` / `c4e565e0`.

Evidence: build/diagnostics/{queue-slice-prepack,queue-slice-prepack-reclaim,
queue-atomic-stage,cube-storage-intern,cube-storage-intern-aligned,
msaa-coarse-pixel-groups}/validation.json
and experiment.patch;
build/diagnostics/current-261f286-raster-counts/{validation,cube-dedup-shapes}.json;
all raw timing pairs under build/perf/tigerlake-20261004/.

## 2026-10-05: sample-plane layout and bin alignment, rejected

Three private trials compare against accepted `261f286` / `c4e565e0`.
Each has two quiet audits of three complete AB/BA pairs, 640x360,
80 warm-up / 100 measured frames per arm, three helpers plus caller and
resolve/readback on every measured frame. All eighteen pairs pass the host
activity guard on their first attempt. Positive changes mean slower frames.

| Private architecture | MSAA | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 |
| --- | --- | --- | --- |
| 16x16 tiled sample planes, page-aligned color/depth | 4x | +2.14% / +1.39% | +2.84% / +0.93% |
| Same layout, row offsets hoisted and sample addresses reused by writers | 4x | +0.79% / +2.35% | +1.03% / +1.79% |
| Linear 2x planes aligned to 64 bytes; interior X-bin boundaries aligned to eight pixels | 2x | -0.13% / +0.67% | +0.05% / +0.22% |

The tiled variants preserve linear resolved output while changing every
sample-plane consumer, including clears, pixel transfers, accumulation return,
general/opaque writers, HZ refresh and resolve. Padded partial tiles are bounded;
small framebuffers retain linear sample storage. The revision passes one
physical sample index from coverage/depth through shading to the final writer.
Both variants preserve 100 rotating hashes and four byte-exact frames per model
at 4x. Each passes 51 WASM renderer checks, 135 queue hashes and 270 logical
color/depth/stencil sample-plane state hashes on native, WASM and ASan/UBSan
with leak checks. Shapes 65x67 and 128x81 exercise padded edges and active HZ,
off/2x/4x, eager/queued draws and 1/3/8 helpers against the old linear renderer.
BMW is slower in every one of the six pairs for each tiled variant.

The independent 2x trial keeps linear storage and the old four-sample layout.
At 640 pixels, aligned boundaries alternate 16/24-pixel bins instead of 20;
sample color/depth bases, rows and bin boundaries then align to 64 bytes.
This proves separate cache-line ownership for those writes, not fewer measured
cache misses. Small/nonqualifying widths retain the old bins. Both models keep
100 exact hashes and four byte-identical frames at 2x; 51 WASM renderer checks
and 135 queue hashes pass. Both audits have mixed individual pairs, with no
reproducible model gain. No native/full compliance rerun follows this rejection.

All trials remain private; production source and served assets are unchanged.
Evidence: build/diagnostics/{msaa-tiled16,msaa-tiled16-cached-address,
msaa2-bin-alignment}/{validation.json,experiment.patch}; timing pairs and
summaries under build/perf/tigerlake-20261004/.

## 2026-10-05: rectangular worker bins, rejected

Two private implementations retain linear sample planes, the ordered draw
queue and three helpers plus caller, but replace 32 MSAA X-stripes with an
8-column / 4-row partition. At 640x360, approximately 80x90 pixels per bin
keep the sample color/depth area near the previous 225KiB. Interior X/Y
boundaries align to eight/four pixels, preserving separate HZ-cell ownership.
Conservative Y bounds and row/column lookups limit producer work to overlapping
rectangles. Prepared descriptors grow from 28 to 32 bytes, with an unchanged
8,192-record limit: 256KiB retained scratch, 512KiB during growth.

| Private bounds dispatch | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 |
| --- | --- | --- |
| Read the current worker bin through TLS when clipping Y | +3.09% / +1.71% | +4.31% / +2.33% |
| Pass Y bounds directly to the prepared rasterizer | +0.88% / +2.37% | -1.32% / +2.63% |

Each implementation has two quiet three-pair 4x AB/BA audits at 640x360,
80 warm-up / 100 measured frames per arm, resolving/reading back every frame.
All twelve pairs pass the activity guard on attempt one. The TLS variant is
slower in every pair for both models; direct parameters do not establish a
reproducible improvement either. Neither is integrated or served.

Both preserve 100 rotating hashes and four byte-exact frames per model at 4x.
Each passes 51 WASM renderer checks, 135 queue hashes, 405 full logical-plane
state hashes on native/WASM/ASan, and 54 stage/serial hashes on each platform.
ASan/UBSan with leak checks passes. Shapes 65x67, 128x81 and 640x67 cover
partial rectangles, active HZ, off/2x/4x, eager/queued draws and 1/3/8 helpers.
The stage fixture exercises rectangle rows and the 8,192-record boundary.
No full native/Mesa/browser retention rerun follows these rejections.

Untimed modules compare the original stripes with the first rectangle variant.
Both preserve the same exact rotating model frames. Per frame, BMW emitted
bin references fall 155,431→139,097 (-10.51%), T80 28,101→24,195 (-13.90%);
visited raster pixels fall 1,744,066→1,629,398 (-6.57%) and
442,589→410,486 (-7.25%). Post-Z pixels/samples remain exactly unchanged.
More pixels enter the scanline path, and pre-Z covered pixels increase slightly.
These logical reductions do not establish a speedup or a cache-miss reduction;
hardware miss counters and the cause of the timing regression were not measured.

Evidence: build/diagnostics/{rectangular-bins,rectangular-bins-explicit-bounds}/
{validation.json,experiment.patch}; rectangular-bins/logical-work-comparison.json;
build/diagnostics/{rectangular-bins-counts,stripe-bin-reference-counts}/
frame-equivalence-4.json; timing pairs under build/perf/tigerlake-20261004/.

## 2026-10-05: exact SIMD scanline phases, held/rejected

Two private row walkers retain the accepted stripe layout and all float color,
depth and interpolation expressions. Three SIMD lanes track three edge
quotients and Euclidean remainders. Because a biased maximum sample edge value
C advances by 256*dy per row, floor(C/(256*d)) equals floor((C>>8)/d).
The quotient/remainder can therefore advance exactly with adds, a comparison
and a carry correction; excluded pixel tails need no repeated proof checks.
The divisor and whole-height displacement are checked before narrowing to
signed i32. Exceptional ranges retain the original i64-verified scanline.

The first implementation divides in i64 during initialization and uses the
existing width>=8 / area>=64 eligibility. The revision uses two SIMD float
divisions as proposals, accepts quotients only after exact i64 remainder
validation, and extends eligibility to width>=3 / area>=12. Its input bounds
protect float-to-i32 conversion and i64 products; rounding cannot make an
incorrect quotient pass the remainder identity. No retained allocation or
worker coordination is added.

| Private walker | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 | Decision |
| --- | --- | --- | --- |
| Integer initialization, SIMD row recurrence | -5.47% / +0.55% | -2.18% / -3.58% | Hold: BMW benefit unconfirmed |
| SIMD proposals, exact remainders, smaller boxes | +2.42% / +3.25% | +1.10% / +1.26% | Reject: all six BMW pairs slower |

Each has two quiet three-pair 4x AB/BA audits, 640x360, three helpers plus
caller, 80 warm-up / 100 measured frames per arm, resolve/readback every frame.
All twelve pairs pass the activity guard on attempt one. The first integer
audit has highly variable raw arm times (BMW reference 36.80–53.10ms), and
the steadier second audit fails to confirm a BMW gain. No measurements are
discarded or attributed to an unmeasured source of load. No full retention
or off/2x timing gates follow either performance hold/rejection.

Both pass the unchanged independent full-frame edge oracle on native, WASM
and ASan/UBSan/leaks: each 4,480 frames / 46,688,256 exact sample masks,
including thin/wide/tall geometry, large coordinates and packed-edge limits.
Each also passes 51 WASM renderer checks, 135 queue hashes, 100 exact rotating
hashes and four byte-identical frames per model at 4x. Production remains
unchanged. Evidence: build/diagnostics/{msaa-simd-span-phase,
msaa-simd-span-proposal}/{validation.json,phase-proof.md,experiment.patch};
all raw timing arms and host monitors under build/perf/tigerlake-20261004/.

## 2026-10-05: native WASM conversion in the exact phase walker, held

The SIMD-proposal revision above directly uses `_mm_cvttps_epi32`. Debian's
installed Emscripten 3.1.69 compatibility header implements that intrinsic
with four scalar `lrint` calls and per-lane conversions. A third private
revision replaces only these two proposal conversions with
`wasm_i32x4_trunc_sat_f32x4`; native SSE retains `_mm_cvttps_epi32`.
Proposal numerators are bounded to +/-2^29 and divisors are positive, so
all lanes are finite and inside the signed-i32 range. Saturating truncation
therefore gives the same result, and exact i64 remainder validation still
proves the quotient before use. The same width>=3 / area>=12 eligibility,
SIMD row recurrence and original exceptional-range fallback remain.

| Native-conversion revision | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change to accepted `c4e565e0` | +0.29% | -0.32% |
| BMW FPS | 27.06 | 26.93 |
| T80 frame-time change | -3.23% | -2.42% |
| T80 FPS | 68.69 | 68.29 |

Two quiet three-pair 4x AB/BA audits use the same 640x360 protocol, three
helpers plus caller, 80 warm-up / 100 measured frames and per-frame
resolve/readback. All six activity guards pass on attempt one. All six T80
pairs improve, but three BMW pairs improve and three regress. The revision
is held privately: a reproducible BMW gain and off/2x/full retention gates
are still required. These comparisons are against production, rather than
a direct timing comparison against the previous scalar-conversion trial.

Fresh native/WASM/ASan edge-oracle runs each pass 4,480 frames / 46,688,256
exact sample masks; ASan/UBSan/leaks passes. Native rasterizer object bytes
match the previous proposal trial. WASM passes 51 renderer checks, 135 queue
hashes, 100 rotating hashes and four byte-identical frames per model at 4x.

Both production and candidate have 1,394 defined WASM functions. Only the
2x/4x raster bodies change; all other 1,392 bodies are byte-identical. The 4x
body grows from 25,345 to 27,538 bytes, and declared v128 locals from 33 to
42 (2x: 17,103 to 18,946 bytes; 27 to 32 v128 locals). Declared locals do not
measure hardware register liveness or prove spills. A targeted V8 code/profile
inspection is needed before attributing the missing BMW gain to register
pressure or trying another raster-loop architecture. No hardware cache-miss
cause has been measured. Production source, geometry and served assets remain
unchanged.

Evidence: build/diagnostics/msaa-simd-span-native/{validation.json,
experiment.patch,wasm-body-comparison.json}; all raw arms and host monitors
under build/perf/tigerlake-20261004/msaa-simd-span-native-*.

## 2026-10-05: profile of byte-identical production and outlined phase state

A fresh link requests only a symbol map. Its WASM bytes exactly match accepted
`c4e565e0`; no profiling function boundaries or diagnostic counters are added.
CDP samples 300 rotating frames per model at 640x360, 4x MSAA, three helpers
plus caller, resolving/reading back each frame. All eight prestarted worker
profiles are retained; exactly three have rendering samples. Across the four
active contexts, BMW raster self samples total 22.220s, cube sampling 3.502s,
and the MSAA writer 2.378s; T80 raster samples total 6.433s. Self samples include
inlined code, waits and preemption, rather than measured CPU busy time or
acceptance frame timings.

Chromium 154 is separately forced to compile with TurboFan. Its packaged V8
prints code addresses/sizes but lacks instruction disassembly. The diagnostic
parent reads only the known executable byte range of the selected compiled
WASM function in its owned renderer; objdump decodes those saved bytes.

| 4x raster machine code | Accepted | Inline phase trial | Outlined phase trial |
| --- | --- | --- | --- |
| Instruction bytes | 121,512 | 130,776 | 122,072 |
| Initial native-stack reservation, bytes | 1,480 | 1,656 | 1,264 |
| Disassembly sites referencing RBP/RSP | 2,519 | 2,869 | 2,437 |
| 128-bit vector stack-move sites | 577 | 612 | 569 |

These are static code/disassembly quantities, including all branches; no
instruction-cache miss rate or dynamic spill traffic is measured. Forced
compilation is diagnostic and is not used during acceptance timing.

The new private phase revision outlines initialization and row bounds/update
into two retained used/noinline functions. Five SIMD values, three direction
signs and two bounds occupy one 112-byte transient, aligned state per triangle.
The pixel/shader loop carries its address. The same exact quotient identities,
whole-height guards and original i64 fallback remain. Width>=8 / area>=64
eligibility matches production. Moving the phase update before shading is safe
because no sample coverage, depth or color operation reads that state. Emitted
WAT confirms two initialization and two row-helper call sites (2x/4x).

| Outlined state, against accepted `c4e565e0` | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +0.98% | +0.11% |
| BMW FPS | 27.05 | 26.96 |
| T80 frame-time change | -0.75% | -0.30% |
| T80 FPS | 67.00 | 66.81 |

Six quiet 4x AB/BA pairs follow the existing 80 warm-up / 100 measured-frame
protocol; all activity guards pass on attempt one. Five BMW pairs regress,
one improves. Smaller native-stack reservation and fewer disassembly stack
references do not yield a reproducible BMW gain, so this revision is rejected.
Off/2x timing and full retention gates do not follow the rejection.

Fresh native/WASM/ASan full-frame coverage oracles each pass 4,480 frames /
46,688,256 exact masks, with ASan/UBSan/leaks. WASM passes 51 renderer checks
and 135 queue hashes. Both models retain 100 exact rotating hashes and four
byte-identical frames at 4x. Production code and served assets remain unchanged.
Evidence: build/diagnostics/current-c4e565e-profile/{validation.json,summary.json,
machine-code-comparison.json,native-*.{json,bin,asm}} and
build/diagnostics/msaa-simd-span-outlined/{validation.json,experiment.patch,
phase-proof.md}; raw quiet arms under build/perf/tigerlake-20261004/.

## 2026-10-05: immutable whole-cube objects in the model loader, rejected

A separate viewer-only trial compares complete, same-sized six-face cube byte
sequences during `sg_model_load`, then gives matching materials the same
immutable GL texture object. Sampler parameters are identical. All borrowed
source views are local to loading; GL owns copied texels afterwards, and the
scene context owns GL-object destruction. The renderer, packed model, geometry,
texture dimensions/bytes, material parameters and draw order stay unchanged.
This differs from the earlier rejected renderer storage-interning trials.

The current BMW pack contains 23 material cubes and nine unique whole cubes;
all are six 128x128 RGBA8 faces. The trial reduces allocated cube texel copies
from 9,043,968 to 3,538,944 bytes (8.625 to 3.375MiB). This is exact payload
accounting, not a hardware cache-miss or DRAM-traffic measurement.
Both modules have 1,394 defined WASM functions: only `sg_model_load` changes,
and every other 1,393 body is byte-identical. Both models retain 100 exact
rotating hashes and four byte-identical frames at 4x.

| Shared GL-object trial, against `c4e565e0` | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +0.77% | +0.20% |
| BMW FPS | 26.72 | 26.86 |
| T80 frame-time change | -1.72% | +1.41% |
| T80 FPS | 67.94 | 67.50 |

Two quiet three-pair 4x AB/BA audits use three helpers plus caller, 640x360,
80 warm-up / 100 measured frames and per-frame resolve/readback. All activity
guards pass on attempt one; five BMW pairs regress, one improves. The T80
renderer and loader are unchanged; its mixed timings do not prove a code
speedup. No cause is attributed to unmeasured cache behavior. This viewer
revision is rejected despite its storage reduction. No full retention or
off/2x gates follow the performance rejection. Production remains unchanged.
Evidence: build/diagnostics/model-cube-object-share/{validation.json,
experiment.patch,pack-cube-equivalence.json,wasm-body-comparison.json}; all
quiet raw arms/host monitors under build/perf/tigerlake-20261004/.

## 2026-10-05: bounded sample-depth planes and static dispatch, rejected

Two private numerical/architecture trials replace repeated sample barycentric
depth evaluation with an anchored triangle plane. Window depth remains linear;
integer coverage, sample positions, shading-point selection, texture/color
arithmetic, geometry and image tolerances remain unchanged. Plane eligibility
depends exclusively on full-triangle geometry, independent of bins, scissor,
materials and depth/stencil/query/write state. This preserves repeatability
across fragment states, as required by the [OpenGL 1.5 specification,
sections 3.5.1/3.5.6 and appendix A.3](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf).

Setup uses f64 derivatives and narrows them to f32. Full fixed coordinates
are bounded to +/-8192 pixels; integer exponent checks reject exceptional
depths even under native fast-math. A conservative f64 conditioning bound
limits setup error to 1e-8, and a full-triangle L1 bound limits gradient terms
to 0.5. The resulting conservative sample-depth error bound is below the
existing HZ margin of 2e-6*(1+abs(polygon_offset)); clamp is nonexpansive.
The initial version lacked the explicit conditioning guard and was superseded
before timing. Complete derivation and initial failure evidence are retained.

This reformulation changes rounding. The user's FMA/rounding permission allows
investigation, but does not remove the original reference-image gates. The
legacy byte-equivalence helper fails against production: over 100 rotating
4x frames, BMW changes 672 pixels in total, with maximum channel delta 59
and only one exact frame; T80 changes 62 pixels, maximum delta 64, with 69
exact frames. These sparse differences are measured, not an added acceptance
tolerance or a claim of color equivalence. They remain in the evidence.

The guarded generic version chooses the depth formula within its raster path.
It changes only the 2x/4x WASM bodies; the other 1,392 bodies are byte-identical.
The static version retains dedicated 2x/4x plane roots alongside unchanged
legacy kernels, selecting once in the common triangle caller. HZ precedes
f64 setup and is omitted inside plane kernels. WAT confirms all four roots
and the caller dispatch; no plane-eligibility flag enters the plane pixel loops.
Static and generic plane versions retain 100 exact hashes plus four raw
byte-identical frames per model at 4x, relative to each other, not production.

| Against accepted `c4e565e0`, 4x | BMW audit 1 / 2 | T80 audit 1 / 2 |
| --- | --- | --- |
| Guarded generic, frame-time change | +4.01% / +3.84% | +1.22% / -1.82% |
| Guarded generic, FPS | 26.09 / 25.93 | 66.99 / 66.72 |
| Static kernels, frame-time change | +4.19% / +3.98% | +3.31% / +2.05% |
| Static kernels, FPS | 26.06 / 25.91 | 65.74 / 66.28 |

Each version runs two independent three-pair quiet AB/BA audits, at 640x360,
three helpers plus caller, 80 warm-up / 100 measured frames, two rounds and
per-frame resolve/readback. Every activity guard passes on attempt one. All
six BMW pairs regress for each version; static also regresses T80 in all six.
Both are rejected. Full retention and off/2x timing do not follow rejection.

Fresh native/WASM/ASan full-frame tests pass 4,480 frames and 46,688,256 exact
sample masks for each version. A new actual-raster depth oracle independently
computes f64 edge interpolation for 4,570,220 covered depths; maximum absolute
error is 1.34798664e-7 on native, WASM and ASan. Its 72 GL_EQUAL/stencil/alpha/
query/scissor/write-mask/split-bin cases pass. Geometry classification reports
2,544 eligible and 1,936 rejected input frames; this is not a count of actual
fast-kernel executions, since some primitives are rejected before raster entry.
ASan/UBSan/leaks pass. Each version also passes 51 WASM renderer contracts,
135 queue/eager sample-plane hashes, and 240 default-sample Mesa images.
The image helper creates default contexts: those 240 results are not MSAA
reference-image validation. No image tolerance or production asset changes.

The static 4x plane kernel's actual Chromium TurboFan code is 117,872 bytes
versus production's 121,512. Initial stack reservation is 1,496 versus 1,480
bytes; disassembly has 2,436 versus 2,519 stack-reference sites and 551 versus
577 vector stack-move sites. These static quantities do not establish dynamic
spill traffic, cache misses or the cause of the performance loss. Forced JIT
inspection finishes before quiet timing; acceptance uses ordinary compilation.

Evidence: build/diagnostics/msaa-depth-plane{,-guarded,-static}/ including
validation.json, experiment.patch, plane-proof.md, depth_oracle.c, model pixel
reports and retained machine-code bytes; raw arms/monitors under
build/perf/tigerlake-20261004/msaa-depth-plane-{guarded,static}-*.

## 2026-10-05: exact production triangle-size histogram

A separate diagnostic retains production's depth/coverage/shading arithmetic
and only counts non-HZ-rejected bin invocations by complete fixed-point
triangle area, area2/131072 in square pixels. It computes plane eligibility
without using the plane for rendering. Both models retain 100 exact rotating
hashes and four raw byte-identical frames at 4x against accepted `c4e565e0`.
No diagnostic frame timings are used for performance claims.

| Mean per 4x frame | BMW | T80 |
| --- | --- | --- |
| Bin triangle invocations after HZ | 81,968.56 | 17,446.07 |
| Eligible for guarded plane | 81,627.93 | 17,401.67 |
| Invocations with full triangle area <4 pixels | 72.10% | 61.30% |
| Invocations with full triangle area >=16 pixels | 11.27% | 19.63% |
| Covered pixels belonging to >=16-pixel triangles | 57.42% | 70.37% |
| Covered pixels / bin invocation, area <1 | 0.97 | 1.20 |
| Covered pixels / bin invocation, area 16–64 | 24.36 | 24.89 |

These are logical work counts, not unique triangles, native cycles, cache-miss
or bandwidth measurements. They justify investigating a single geometry-only
area crossover that avoids plane preparation for tiny triangles; they do not
prove its performance. All seven size buckets and per-angle rows are retained
in build/diagnostics/msaa-depth-area-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}.

## 2026-10-05: plane arithmetic only for larger triangles, rejected

The size histogram motivates one geometry-only crossover: complete fixed-point
area2>=2097152, equivalent to 16 square pixels. Smaller triangles bypass f64
preparation and the added caller HZ check, retaining original legacy depth/HZ
kernels. Every state/bin/scissor uses the same full-geometry choice. There is
no sweep of timing thresholds. The two legacy and two plane kernels remain
byte-identical to the static predecessor: among 1,398 defined WASM functions,
only common dispatch body 166 changes; the other 1,397 remain byte-identical.

| Area-gated trial against `c4e565e0`, 4x | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +1.82% | +1.97% |
| BMW FPS | 26.47 | 26.53 |
| T80 frame-time change | -0.28% | +0.45% |
| T80 FPS | 66.15 | 66.91 |

Six quiet AB/BA pairs use the same 640x360/4x, three-helpers-plus-caller,
80/100-frame, two-round, per-frame-resolve protocol. All guards pass on
attempt one; BMW regresses in all six pairs. T80 is mixed. Reject the version
and do not run full retention or off/2x timing after this result.

Fresh native/WASM/ASan oracles each pass 4,480 frames / 46,688,256 exact sample
masks and 4,570,220 depths, maximum absolute error 1.34798664e-7, plus all 72
state/scissor/split-bin invariance cases. Geometry classification is now
2,202 eligible / 2,278 rejected input frames, not actual fast-kernel execution
counts. ASan/UBSan/leaks, 51 WASM renderer contracts, 135 queue/eager hashes
and 240 default-sample Mesa image comparisons pass. Reference-MSAA/full
retention gates are not claimed. Image tolerances and production remain unchanged.

Against production over 100 rotating 4x frames, BMW has 64 exact frames and
71 changed pixels in total, maximum channel delta 35; T80 has 77 exact frames,
49 changed pixels, maximum delta 64. Numerical reformulation still breaks
legacy byte equivalence; no new tolerance is introduced.

After all quiet timing finishes, inspect the actual common caller's Chromium
TurboFan code. It shrinks from 105,976 to 41,608 bytes; initial stack reservation
shrinks from 1,296 to 952 bytes, stack-reference sites from 2,946 to 1,530, and
vector stack-move sites from 283 to 165. Thus an assumed increase in caller
stack reservation is not supported. These static quantities still do not
measure dynamic spills/misses or explain the measured regression. Avoid
another outlining/layout trial solely from static function sizes.

Evidence: build/diagnostics/msaa-depth-plane-large/{validation.json,
experiment.patch,plane-proof.md,wasm-body-comparison.json,
common-machine-code-comparison.json,native-common-*.{json,bin,asm}} and
build/perf/tigerlake-20261004/msaa-depth-plane-large-*.

An additional byte-exact 100-angle shape histogram measures active bin-clamped
boxes, rather than treating small full triangle area as a small box. BMW has
2,499.42 one-pixel-box calls per frame (3.05% of post-HZ bin invocations), but
only 163.28 surviving shaded pixels from these boxes (0.054% of post-Z pixels).
T80 has 282.40 such calls and 46.71 surviving pixels. A kernel that batches
only single-pixel-box triangles therefore targets too little work and is
rejected before implementation/timing. BMW boxes of <=4/<=16 pixels account
for 25.44%/59.40% of post-HZ calls; these cumulative counts are not claims of
successful coverage, saved operations or performance. Evidence:
build/diagnostics/msaa-depth-shape-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; both models retain 100 exact hashes
and four byte-identical frames, with unchanged production arithmetic.

### Exact empty-sample filtering, 2026-10-05

A fresh production diagnostic counts completely sample-empty post-HZ triangle
invocations: BMW 19,871.41 of 81,968.56 per frame, T80 2,454.86 of 17,446.07.
However, rejecting an entire active box when one edge excludes it would save
only 0.192%/0.158% of visited pixels. That particular proposal is rejected
before implementation or timing. Evidence:
build/diagnostics/msaa-box-reject-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; 100 model hashes and four raw frames
per model remain byte-exact against production c4e565e0.

A different private candidate tests small triangles once in parallel geometry
preparation, before appending their bin references. Supported raw fixed-point
boxes fit 4x4 pixels. Existing screen-coordinate conversion and sample patterns
are preserved; bounded edge differences and sample distances fit signed i16
exactly. Three SIMD dot products evaluate four samples against the three edges.
The implementation uses the original top-left rule, requires every active
sample to fail before rejecting, and falls back for unsupported coordinates,
boxes or render modes. Geometry, depth, color and texture precision remain
unchanged. Cache hits reuse the filtered ordered bins. No retained allocation,
descriptor growth or new coordination is introduced.

At 100 rotating 4x frames, this detects 7,792.81 empty prepared triangles per
BMW frame and 948.21 per T80 frame. Including geometry-cache replay, actual
bin references fall from 155,431.04 to 139,128.64 for BMW (-10.49%) and from
28,100.62 to 27,112.19 for T80 (-3.52%). These are logical counts, not measured
CPU time, cache misses, memory transactions or an FPS improvement.

An independent scalar i64 oracle scans the full framebuffer, then compares
actual original-raster sample colors and the new helper's classifications.
Native SSE4.1, WASM and ASan/UBSan each pass 8,192 frames / 5,431,296 exact
sample masks, with 128 fragment-state invariance cases and 60 exceptional
coordinate fallbacks. Each run supports 6,814 classifications and finds 6,291
empty cases; those deliberately adversarial oracle counts are not model
execution counts. New candidates pass 51 renderer contracts, 135 ordered queue
hashes, 54 staged triangle hashes, 240 default-sample Mesa comparisons, and
100 hashes plus four byte-identical 4x frames per model. Tolerances stay fixed.
These are preliminary gates, not a fresh full retention suite.

The first implementation (00698b43) is rejected. Two three-pair quiet AB/BA
audits change BMW frame time by +0.081%/+1.512%; five of six pairs are slower.
T80 changes by -0.702%/+0.797%, so its gain also fails to reproduce across
audits. Every quiet guard passes on its first attempt. Removing work does not
justify retaining an implementation without a reproducible main-scene gain.

Evidence: build/diagnostics/msaa-tiny-lattice{,-counts,-bin-counts}/,
including validation.json, proof.md, tiny_msaa_oracle.c, emitted-helper.json,
frame-equivalence-4.json and experiment.patch; frozen control
build/controls/msaa-tiny-lattice-candidate/; quiet raw pairs and monitors
build/perf/tigerlake-20261004/msaa-tiny-lattice-audit-*.

One cost-removal revision (0e088583) adds an early scalar Y-extent selector
before screen-coordinate conversion and SIMD edge packing. The 4x4 threshold
is unchanged. It returns only unsupported; near negative zero it can
conservatively bypass a previously supported box, retaining original
rasterization. The new helper still emits three i32x4.dot_i16x8_s sites and
two i32x4.trunc_sat_f32x4_s sites, plus one early f32.floor. The original
selector reached roughly 8,141 unsupported BMW boxes per frame, motivating
this specific revision rather than a threshold sweep.

The revision passes the same fresh independent native/WASM/sanitizer oracle
and preliminary image/contract gates. Nevertheless, BMW frame time changes
by +0.596%/+0.790% over two independent three-pair quiet audits; all six pairs
are slower. T80 changes by +0.482%/+3.943%. All guards pass first attempt.
It is also rejected. No full retention suite or off/2x timing is run after
either rejection. Production c4e565e0 and both model assets remain unchanged.
Evidence: build/diagnostics/msaa-tiny-lattice-yguard/, frozen
build/controls/msaa-tiny-lattice-yguard-candidate/, and
build/perf/tigerlake-20261004/msaa-tiny-lattice-yguard-audit-*.

A further diagnostic revisits previously rejected visible-vertex replay
against these newly filtered cached lists. Unlike the original unfiltered
scene, BMW now has 2,758.71 unused of 46,103 replayed input vertices per frame
(5.98%), over 23 cache-hit jobs. T80 has no cache-hit jobs in this sequence.
Temporary flags count referenced indices without altering any transform,
triangle or pixel; 100 hashes and four raw frames per model remain exact.
This establishes a changed work target, not a speedup or a retained sparse
transform implementation. Evidence:
build/diagnostics/msaa-tiny-lattice-visible-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}.

Fresh production counters split the same raster work by actual depth-mask
state. BMW's read-only passes have 39,566.58 post-HZ triangle invocations,
10,339.34 sample-empty invocations and 71,992.43 visited pixels in those empty
invocations per frame. T80 has no read-only passes in this benchmark. These
counts include transparent material passes and do not identify cache hits or
prove that coverage can be reused. They motivate investigating coverage
results from the ordinary first raster pass, rather than paying a second
sample test during geometry preparation. Evidence:
build/diagnostics/msaa-coverage-phase-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; 100 hashes and four raw frames per
model remain byte-exact. No such reuse implementation has been timed or
retained in this evidence entry.

### Reuse intrinsic coverage at queue retirement, 2026-10-05

Accepted module 58ecf6ef reuses coverage already computed by ordinary MSAA
rasterization. A fresh cached draw records whether each bin reference covers
any sample, before depth, stencil, alpha or shader rejection. HZ rejection is
unknown and kept. Scissor-enabled draws do not publish pruning. After the
existing job join or queue-slot completion, the caller compacts sample-empty
references from the cached ordered list. Replay stays a bulk copy. No extra
sample test, early join, buffer or allocation is introduced. Workers use the
unused second half of existing sort scratch; a count consumes four bytes of
existing bin padding. Draw snapshots add an entry pointer/stamp, and the pool
adds one pointer. The existing 4 MiB geometry/position cache budget is unchanged.

Only the caller accesses cache entries. Publication verifies validity, the
original stamp and every original bin count, so replaced or touched entries
are conservatively discarded. Queue retirement releases the existing mutex
during compaction; other slots can continue. Surviving references retain their
original bin/primitive order. Matrix/viewport/MS-enable and buffer-revision
invalidation remain in force. Fragment-state changes cannot make intrinsically
sample-empty geometry observable. Source and ownership proof are retained in
build/diagnostics/msaa-coverage-reuse-queue/{experiment.patch,proof.md}.

The initial packed-single-job implementation (0e81939a) is rejected before
timing: an actual model diagnostic finds zero capture/publication jobs for
BMW. Its draws use the ordered queue. The corrected raw/packed queue path
binds 23 jobs/frame, publishes eight and conservatively discards 15 stale
associations. Those eight jobs cover 67,779.92 bin references and omit
9,252.34 references from later BMW passes. Replay references fall from
73,949.02 to 64,696.68 (-12.51%). T80 publishes 0.19 jobs/frame, but has no
replay jobs in this sequence. These are logical work counts, not FPS/miss or
memory-bandwidth measurements. All diagnostics retain 100 exact model hashes
and four byte-identical frames each against production c4e565e0.

Two guarded three-pair 4x audits reproduce BMW gains of 1.337%/1.295% in
frame time; all six pairs improve. Medians are 27.615/27.502 FPS and
36.212/36.362 ms. T80 changes by +0.284%/-1.391%, with medians
67.715/68.917 FPS. Two further three-pair 2x audits improve BMW by
2.929%/3.106% (all six pairs), at 26.957/26.973 FPS. T80 changes by
+0.729%/-0.975%, so the initial small regression does not reproduce.
The lit-sphere control changes by -2.078%/+2.108%, with mixed pairs.
A three-pair no-MSAA audit changes BMW/T80 by -0.676%/-1.375%, with mixed
pairs; medians are 32.244/83.911 FPS. All fifteen quiet guards pass first
attempt. Each pair warms 80 frames and measures 100, with two complete
AB/BA rounds, three helpers plus caller and resolve/readback per frame.
The BMW 30 FPS target with 4x remains unmet.

Fresh retention gates pass: 740 native tests plus the benchmark (741 total),
20 ASan/UBSan/leak contracts, 240 WASM/Mesa default-sample images and exact
default-image hashes against c4e565e0, 234 byte-identical images each at
2x/4x, and 100 hashes plus four raw frames per model at each of 0/2/4 samples.
Renderer/queue/triangle/default-pool checks remain 51/135/54/18.
Strict clamp/sampler/shader/DOT3, additive-write and cube-filter oracles pass.
The original full-frame coverage oracle passes 4,480 frames / 46,688,256
sample masks on SSE4.1 and WASM. A fresh independent raster-return oracle
passes 8,192 frames / 5,431,296 sample masks each on SSE4.1/WASM/ASan, plus
128 fragment-state/scissor cases. Its 7,657 empty classifications are
adversarial test cases, not model execution counts.

New tests/cache_coverage.c compares real warm replay against a forced VBO
revision miss: 84 state/mutation comparisons each on SSE4.1/WASM/ASan,
covering complete color/depth/stencil sample planes and query counts at
2x/4x with 1/3/8 helpers. It covers depth/stencil/alpha, coverage controls,
color masks/blending, scissor/offset and MS/position/viewport/matrix changes.
Chromium and Firefox each pass 234 tests, 18 benchmark rows, cancellation,
MSAA switching and the three-helper default with nine reported processors.
Firefox exits successfully; its pre-existing mozprofile shutdown destructor
message remains in the log.

The internal raster return type changes to carry coverage. A stale void
declaration in the existing scanline fixture initially caused a WASM linker
signature mismatch/trap. The declaration now lives in types.h; the corrected
fixture and related native/sanitizer checks pass. Those failed harness logs
remain saved. The cleanup preserves measured canonical JS/WASM byte-for-byte.
No geometry, floating depth/color/texture arithmetic or image tolerance changes.

Evidence: build/diagnostics/msaa-coverage-reuse{,-counts,-queue,-queue-counts}/,
frozen build/controls/msaa-coverage-reuse-queue-candidate/, and raw guarded
build/perf/tigerlake-20261004/msaa-coverage-reuse-queue{-ms0,-ms2,}-audit-*.

## 2026-10-05: exact screen-coordinate reuse across stages, not retained

Two isolated architecture trials use production ca4b10d / WASM 58ecf6ef
as their control. They preserve the existing float screen coordinates and
the exact signed 16.8 quantization. Neither changes geometry, sample positions,
depth/color/texture arithmetic or tolerances.

| Architecture | BMW paired time, audits | T80 paired time, audits | Decision |
| --- | --- | --- | --- |
| Pass six existing fixed coordinates in one stack record | +2.720% / +1.177% | +2.110% / -1.054% | Rejected |
| Cache fixed XY in packed vertex spare lanes | -0.650% / -1.666% / +0.327% | +0.631% / +0.539% / -0.493% | Held; not published |

The emitted production WASM confirms duplicate coordinate conversion: the
common rasterizer already has fixed XY, while both retained MSAA roots
convert the same coordinates again. Passing a 24-byte record removes six
scalar conversion sites from each MSAA root. The common root also changes
its conversion packing. The actual Chromium/TurboFan 4x root shrinks from
121,448 to 119,504 bytes, with an unchanged 1,504-byte stack allocation.
This is static code evidence, not dynamic conversion/spill or cache-miss
counts. Both independent three-pair BMW audits are slower; four of six
pairs regress. The smaller root does not establish a performance benefit.

The second trial writes exact fixed XY into two formerly zero lanes of
the packed vertex's existing eye block. The float NDC and eye.z remain
available. No vertex-buffer stride, decode-cache size, bin stride or
retained geometry-cache budget grows. A validity field belongs to the
immutable draw layout; its bin flag consumes existing padding. Bit checks
bound finite coordinates to +/-8192 before conversion. An exceptional or
out-of-range vertex conservatively disables cache consumption for the whole
draw. Raw draws use the original path. Both common and MSAA raster roots
read integer payloads through memcpy, without float arithmetic on their bits.

Five of the first six BMW pairs improve, but all three pairs in an additional
independent audit are slower. T80's small initial slowdown also reverses in
that third audit. The measured implementation therefore lacks a reproducible
gain and remains private. Its emitted 4x root is 121,704 bytes with a
1,488-byte stack allocation. Static register/stack changes are not an
explanation of the timing result.

All fifteen guarded AB/BA pairs pass their quiet-host guard on attempt one:
80 warmup frames, 100 measured frames, two crossover rounds per pair,
640x360, 4x MSAA, three helpers plus caller, resolve/readback each frame,
and identical model assets. No builds or profiles run during these timings.
Fresh preliminary renderer/queue/triangle contracts pass 51/135/54 each.
Each candidate matches 100 hashes and four raw frames per model against
58ecf6ef. The first trial's independent raster oracle passes 8,192 frames /
5,431,296 sample masks and 128 state/scissor cases on native/WASM/ASan.
The packed trial tests cached and ordinary paths in 16,384 frames /
10,862,592 sample masks and 256 state/scissor cases on all three platforms.
Its packing oracle additionally checks 2,097,152 arbitrary/boundary IEEE
coordinate pairs each in strict/fast native and WASM builds: 626,565 exact
cached pairs and 1,470,587 exceptional/range fallbacks per run. The private
packed-layout fixture checks the new integer payload against a double-based
reference while preserving the exact checks for all existing vertex data.
Full retention gates and other MSAA timing modes are not rerun because
neither implementation is retained. An initial missing worker declaration
in the private packed trial is fixed; its failed build log remains saved.

A fresh logical diagnostic of accepted 58ecf6ef finds 23 BMW geometry-replay
jobs/frame: 46,103 input vertices, 44,120.91 referenced and 1,982.09
unreferenced (4.30%). T80 has zero such replay jobs in this sequence.
These counts describe the current compacted bins, not the rejected tiny
lattice trial. The diagnostic retains 100 hashes and four byte-identical
frames per model. It is not timed.

Separate sequential profiles of the byte-identical accepted module cover
300 warmed frames per model with three active helpers plus caller. BMW
aggregate self samples include 20.054 seconds in the 4x raster root,
3.352 in cube sampling, 2.318 in multisample writes and 1.281 in vertex
processing. T80's raster root accounts for 5.991 seconds. These samples
include inlining, waits and preemption; they are neither CPU busy-time nor
acceptance FPS. An earlier overlapping diagnostic is preserved and excluded.
The next architecture work should examine stage handoffs and raster work
reuse; unreferenced-vertex skipping alone targets a small part of the work.

A separate untimed diagnostic confirms that the held packed-coordinate cache
is actually consumed by the models. Mean cached/total common raster calls
are 122,160.46/146,178.70 for BMW and 18,275.69/28,100.62 for T80;
cached/total MSAA calls after HZ are 62,615.71/75,477.34 and
10,464.69/17,446.07 respectively. All 100 model hashes and four raw frames
remain exact against accepted 58ecf6ef. Instrumentation and queue scheduling
affect these logical workload counts; they are not native instruction counts
or performance measurements. The lack of a reproducible gain is not explained
by the cache always falling back.

Evidence: build/diagnostics/{msaa-fixed-reuse,packed-screen-cache,
packed-screen-cache-counts,current58-visible-counts,current58-profile}/,
frozen candidate controls,
and build/perf/tigerlake-20261004/{msaa-fixed-reuse,packed-screen-cache}-audit-*.
Production source, live module 58ecf6ef and its accepted measurements remain
unchanged.

## 2026-10-05: cooperative stage handoffs, not retained

An isolated queue trial lets an exclusive raster-bin owner return its bin
between blocks of 128 triangles when the caller publishes a geometry stage.
The next owner continues from a cursor stored in existing bin padding. The
pending bit remains set until the complete bin finishes, preserving draw order
and disjoint framebuffer ownership. All three helpers and the caller can work;
there is no fifth coordinator. Decode tags reset at each ownership interval.

The accepted module and trial each match 100 model hashes and four raw frames
per model. Preliminary WASM renderer/queue/triangle gates pass 51/135/54.
A separate forced-continuation stress test yields after every triangle and
records 6,776,698 resumptions on each of native, WASM and ASan/UBSan builds.
All 135 eager/queued state and sample-plane hashes remain exact, covering
0/2/4 samples and 1/3/8 helpers. All twenty renderer translation units are
rebuilt for the changed internal layout.

Untimed stage instrumentation confirms the intended scheduling change. The
BMW averages 31.79 yields and resumptions per frame. Summed vertex-stage wall
durations fall from 3.145 to 2.388 ms/frame, and triangle-stage durations from
2.236 to 1.489 ms/frame. Helper joins rise from 22.13 to 25.78 across nine
vertex stages and from 13.05 to 20.05 across seven triangle stages. Both
instrumented modules rasterize exactly 146,178.70 triangle-bin references
per frame in this sequence. These perturbed stage durations include waits
and preemption and are not CPU busy-time or acceptance FPS.

The initial uninstrumented rendering benchmark is slower in five of six BMW
pairs. Two independent three-pair audits change BMW frame time by +0.354%
and +0.315%; T80 changes by +0.836% and -1.146%, outside the changed queue
path. All quiet guards pass on attempt one: 640x360, 4x MSAA, three helpers
plus caller, 80 warmup/100 measured frames, two AB/BA crossover rounds and
resolve/readback each frame. No concurrent builds or profiles run. Shorter
geometry stages do not establish a whole-frame gain in that measurement. The
initial decision was rejection; after the user's later report of concurrent
system load, these six pairs are historical diagnostics, not acceptance data.
Cache/register effects remain hypotheses, not measured explanations. Other
MSAA timing modes and full retention gates are not rerun for this rejection.

Evidence: build/diagnostics/{stage-handoffs,queue-preemptible-bins,
queue-preemptible-handoffs,queue-preemptible-stress}/, frozen
build/controls/queue-preemptible-bins-candidate/, and guarded
build/perf/tigerlake-20261004/queue-preemptible-bins-audit-*.

## 2026-10-05: GL_EQUAL hierarchy trial, no target-scene work removed

A private hierarchy extension also rejects GL_EQUAL triangles when the
conservative incoming-depth lower bound is strictly greater than every
overlapped cell's stored maximum. It preserves equality and disables rejection
with stencil side effects. Native/ASan/WASM oracles pass 131,072 tracked depth
writes, 1,048,576 conservative bounds and 1,536 hierarchy-on/off frame/query
comparisons. Preliminary WASM gates pass 51/135/54, and both models match
100 hashes and four raw frames against accepted 58ecf6ef.

A separate draw-state diagnostic finds zero GL_EQUAL raster calls in either
target model over all 100 frames. The viewer's BMW primary pass uses GL_LESS;
reflection and transparent passes use GL_LEQUAL, which the accepted hierarchy
already handles. The earlier read-only depth counts did not identify GL_EQUAL.
The extension therefore removes no model work and is stopped before timing.
Passing its correctness tests is not a target-scene performance improvement.

Evidence: build/diagnostics/{hz-equal,hz-equal-counts}/, including the strengthened
native/sanitizer oracle logs and byte-exact model comparisons.

## 2026-10-05: transient depth visibility across geometry replays

An untimed accepted-source diagnostic distinguishes geometric coverage from
weak depth visibility (`incoming <= stored`, before alpha/color/sample filters).
BMW averages 33,906.53 covered triangle-bin references in cache-associated
draws, of which 12,427.74 are strictly hidden. This measurement excludes the
early hierarchy rejection. Equality is common: 12,082.04 covered references
have at least one equal-depth sample across the measured eligible draws.
Both models retain 100 exact hashes and four byte-identical raw frames.

The first private architecture trial captures weak visibility alongside the
existing intrinsic-empty classification. It stores one hidden bit per retained
reference in the reclaimed tail of the entry's triangle allocation, after
intrinsic compaction completes. Allocation capacity is checked; entries without
tail space fall back. No geometry-cache budget or bin stride grows. Unlike
intrinsic emptiness, depth invisibility never permanently deletes a triangle
from the general geometry cache.

Depth reuse requires matching position/index revisions, transforms, viewport
and multisample state through the existing geometry key, plus enabled depth
testing, disabled stencil and polygon offset, and LESS/LEQUAL/EQUAL. Every
worker flush invalidates the caller-owned depth epoch before joining work;
streamed draws that can increase depth also invalidate it before preparation.
Only monotonic LESS/LEQUAL/EQUAL writes can cross that epoch. Immutable jobs
carry their captured epoch; workers do not read mutable geometry-cache entries.
Publication checks entry validity/stamp, bin sizes and the current epoch.
LESS failures that include equality remain available for later LEQUAL/EQUAL.
Early HZ rejections are not classified as transiently hidden in this trial.

A separate diagnostic of this implementation confirms actual BMW consumption:
7.99 valid publications/frame, 12,002.01 hidden references captured and skipped
from 58,522.77 eligible replay references. T80 has 0.19 publications and zero
replay consumers. Both diagnostic models match accepted 58ecf6ef in 100 hashes
and four raw frames; these logical counts are not instruction/cache/FPS counts.

The new private oracle compares classification against an actual LEQUAL render
in 2,048 cases, including adjacent float depths and mixed sample visibility:
686 strictly hidden cases and 256 full equality ties preserved. Eighteen
publication/depth-function/stencil/offset/epoch/stale-ticket checks also pass
on native, WASM and ASan/UBSan. Preliminary WASM gates pass 51/135/54 and
uninstrumented models match all 100 hashes and four raw frames. Missing fixture
includes and a private helper-name error are corrected; failed compiler logs
remain saved.

Two guarded three-pair audits of the first implementation change BMW time by
-0.358% and -1.089%, with four of six pairs improving. T80 changes by +3.744%
and +0.946%, with five of six pairs slower. All guards pass on attempt one,
using the same quiet 640x360/4x/three-helper/80-warm/100-frame/AB-BA/readback
protocol as above. The first implementation was initially rejected for the
T80 cost. The user subsequently reports concurrent system load and explicitly
prioritizes BMW gains over small T80 regressions. These initial six pairs and
the specialized variant's first nine pairs are therefore excluded from
acceptance; the local guard did not establish absence of that reported load.
The next private variant compiles capture into its own 4x root and restricts
capture to the ordered multitexture queue; it is measured separately.

The specialized variant's initial BMW audits are -2.315% / -2.032% / +1.602%,
and T80 audits +0.309% / +2.013% / +2.444%. Its first six BMW pairs improve
and the following three regress. These results remain saved with the reported
load qualification. A fresh two-audit measurement uses a new
`depth-replay-specialized-recheck` label after the user's correction.

Its additional API integration oracle compares warm replays with forced VBO
revision misses in 108 state cases per native/WASM/ASan run. It compares query
counts and every resolved/color/depth/stencil sample, tests clears, depth pixel
transfers, nonmonotonic writes, stencil, polygon offset, alpha/sample coverage,
position/matrix changes and multisample switching. It also verifies that a
4x warm replay really contains fewer references and that a subsequent flush
restores the full intrinsic geometry. All 108 cases pass on each platform.

Evidence: build/diagnostics/{depth-replay-counts,depth-replay,
depth-replay-consumption,depth-replay-specialized}/, frozen candidate controls,
and build/perf/tigerlake-20261004/depth-replay*-audit-*.

### Specialized depth replay retained after the user's load correction

Fresh 4x audits against byte-identical accepted 58ecf6ef improve paired BMW
frame time by 1.457% and 3.141%; five of six independent pairs improve.
Candidate FPS are 28.039 and 27.711. T80 changes by +0.621% / +0.175%, at
66.231 / 66.975 FPS. The user explicitly prioritizes the reproducible BMW
gain over a small T80 cost. BMW's 30 FPS target remains unmet.

The retained variant compiles a separate 4x capture root with no capture
bookkeeping in the ordinary 2x/4x roots. Only the ordered multitexture queue
captures depth visibility. A fresh separate instrument of this exact variant
confirms BMW's 12,002.01 skipped references from 58,522.77 eligible references,
7.99 valid publications/frame, and zero T80 capture/replay consumers. It
matches 100 model hashes and four raw frames per model against 58ecf6ef.
These perturbed logical counts do not establish a cache-miss or instruction
reduction. No extra coordinator, payload allocation or bin-stride growth.

Two fresh 2x audits change BMW by +1.450% / +0.002% and T80 by
+0.726% / +0.832%; BMW pairs are mixed. The off audit changes BMW by
-0.331% and T80 by -1.353%, also with mixed pairs. All fifteen acceptance
pairs pass the local guard on attempt one, after the load correction, with
three helpers plus caller and resolve/readback every frame. Previous guarded
pairs with user-reported load remain saved and excluded. The paired changes
are medians of per-pair geometric crossover ratios, not ratios of the pooled
frame-time medians used for FPS.

Fresh retention gates pass 741 native tests plus the single native benchmark,
21 ASan/UBSan/leak contracts, 240 WASM/Mesa comparisons and 240/234/234
byte-exact control images for off/2x/4x. Both models match 100 hashes and
four raw frames in every mode. WASM renderer/queue/triangle/default-pool gates
pass 51/135/54/18; strict clamp/sampler/shader/DOT3 and writer/cube oracles
pass their existing counts. Scanline coverage passes 4,480 frames /
46,688,256 masks; intrinsic classification passes 8,192 frames / 5,431,296
masks on native/WASM/ASan. The new depth classification and 108 actual queue
state cases pass on all three platforms. Both browsers pass 234 viewer tests,
18 benchmark rows in sequential off/2x/4x passes, cancellation, sample-mode
switching and the three-helper default on nine reported processors.

Canonical source builds match measured JS/WASM byte-for-byte:
WASM f58faf1775bf1c59075c9afa7fcf7a0a6cb5fac2dafffa1c9ebffefbcacd0247.
All geometry, model assets, depth/color/texture arithmetic and image tolerances
remain unchanged. Initial private fixture includes/helper declarations, an
ASan target-list error and the wrong Firefox Python environment are corrected;
their failed logs remain saved. Firefox's known mozprofile destructor message
occurs after passed checks with exit zero. Evidence and publication bindings:
build/diagnostics/depth-replay-specialized/validation.json, canonical module
proof, build/diagnostics/depth-replay-specialized-consumption/, and fresh
depth-replay-specialized{-recheck,-ms2,-ms0}-audit-* files.


### Strict hierarchical rejection reused across material passes

The separate 4x capture root now distinguishes ordinary LESS rejection from
strict occlusion by every fully written 4x4 depth cell. Only a conservative
lower bound strictly greater than every cell maximum publishes a hidden bit.
A LESS rejection at equality remains an unsupported early return, so later
LEQUAL/EQUAL surfaces remain available. The existing 2e-6 bound, clamping,
finite-depth guards, stencil fallback, caller-owned publication tickets and
monotonic depth epochs are unchanged. The ordinary 2x/4x roots retain their
original depth predicate. No extra payload, coordinator or worker-bin growth.

A separate instrument of the new source reports BMW 38,482.09 skipped bin
references from 58,522.77 considered per frame (65.76%), versus 12,002.01
skipped in f58faf17. It observes 7.99 valid depth publications/frame; T80
still has zero capture publications and zero replay consumers. All 100 model
hashes and four raw frames per model match f58faf17. These are logical counts,
with perturbed scheduling, rather than cache/DRAM transactions or FPS evidence.

Two fresh guarded 4x audits, each three complete AB/BA pairs with 80 warm-up
and 100 measured frames per round, improve paired BMW time by 1.340% and
2.233%. All six independent BMW pairs improve. Candidate medians are
28.996 / 28.676 FPS, 34.487 / 34.872 ms. T80 remains at 67.679 / 67.089 FPS,
but paired time regresses 1.248% / 1.243%. Retained under the user's explicit
BMW priority. The BMW 30 FPS target remains unmet.

Fresh 2x audits give BMW 27.825 / 27.477 FPS with +0.338% / +1.958% paired
time, and T80 70.738 / 70.092 FPS with +1.565% / -1.656%. The off audit gives
BMW 33.559 FPS (+1.412%) and T80 87.997 FPS (-0.400%). These small regressions
are preserved in the report. All 15 pairs pass the local guard on attempt one;
no builds or profiles run during timing. The guard cannot prove that the
Windows host has no load. Changes use per-pair geometric crossover ratios,
not ratios of the pooled medians used for FPS. Viewer benchmarks performed
concurrently with correctness work establish UI behavior only, not performance.

Fresh gates: 741 native tests plus the single native benchmark; 21
ASan/UBSan/leak contracts; 240 WASM/Mesa comparisons; 234 exact control images
in each off/2x/4x mode; both models with 100 hashes and four raw frames per
mode. Renderer/queue/triangle/default-pool bundles pass 51/135/54/18; strict
clamp/sampler/shader/DOT3, additive writer, cube and scanline oracles pass
again. HZ passes 131,072 tracked writes, 1,048,576 numeric bounds and 1,536
exact HZ-on/off frame/query pairs on native/WASM/ASan, with additional strict
capture and clamped-equality assertions. Depth replay now tests both the
unaligned 47x31 fallback and fully written 128x32 HZ cells: 216 actual queued
state/sample-plane cases on each platform. Intrinsic-cache replay passes
84 cases per platform. Chromium and Firefox each pass 234 viewer tests,
18 sequential off/2x/4x benchmark rows, cancellation and MSAA switching.
One initial private HZ fixture used 48 pixels, whose 32 bins are unaligned;
it correctly failed the active-HZ assertion. The fixture was corrected to
128 pixels; its failed log remains saved. Existing unrelated display-list
sanitizer-build warnings and the post-success Firefox mozprofile destructor
message remain visible in logs.

Canonical JS/WASM match the timed frozen candidate byte-for-byte:
WASM 031038cfba1043eb5560de8016611b86910125ca8ffda4b78efa08536d95eddb.
Assets, vertex counts, texture/depth arithmetic and image tolerances are
unchanged. Evidence: build/diagnostics/depth-replay-hz/{validation.json,
publication-proof.json}, depth-replay-hz-consumption/, frozen controls, and
build/perf/tigerlake-20261004/depth-replay-hz{-ms0,-ms2}-audit-*.

### Depth-filtered vertex preparation rejected

The accepted HZ replay leaves many vertices unused in later material passes.
Two fresh variants skip their transforms and attributes, first zeroing complete
vertices and then zeroing only compact output. The first instrument observes
25,668.35 skipped vertices from 42,914.69 eligible inputs/frame, but neither
variant provides a reproducible BMW gain with 4x MSAA. The first changes paired
BMW time by +0.067% / -0.546%; the second regresses +1.786% / +0.797%.
Both 2x audits regress for both variants. The compact-output variant improves
off by 1.403%, a mode-specific gain that does not justify its other costs.

Each variant passes 741 native tests plus the benchmark, 21 sanitizer contracts,
240 WASM/Mesa images, 234 exact control images in every sample mode, and both
models' 100 hashes/four raw frames per mode. One contaminated 2x attempt was
discarded and repeated; its guard decision is preserved. Source patches,
complete accepted crossover samples, guard decisions, identities, regression
scope and reproduction commands are now tracked in
[the experiment package](depth-visible-vertices/README.md). The public
`tools/wasm_research_compare.py` runs and verifies this comparison protocol.
`tools/wasm_perf.cjs` now waits for readback on every off frame too, matching
the private driver used in these measurements. Short off/2x/4x self-comparisons
verify the public tool; their loaded timings are not performance evidence.

The logical savings do not establish that preparation is on the frame's
critical path. The next isolated cube-target trial ports only the previously
promising packet sampler kernels onto current HZ source, preserving accepted
RGBA filtering and depth replay. It needs fresh measurements against current
031038cf; historical cube gains do not demonstrate a current gain.

### Coherent cube packets retained on the HZ renderer

The fresh cube-target variant preserves accepted scalar RGBA filtering while
projecting pixels on a common cube face together through the SIMD 2D sampler.
Mixed faces and exceptional states retain the scalar fallback outside the
ordinary 2D kernel. All six BMW 4x pairs improve; the two audits reduce paired
time by 0.939% / 2.384%, at 29.481 / 29.432 FPS. T80 changes -0.104% / +0.786%.
BMW off changes -0.392%; BMW 2x changes +1.360% / -0.032%, and T80 2x
+1.952% / +0.303%. Retained with these costs under BMW priority.

All fifteen pairs pass the local guard on their first attempt. Full fresh gates
pass 742 native tests plus the benchmark, 22 sanitizer contracts, 240 WASM/Mesa
images, 234 exact control images per mode and both models' 100 hashes/four raw
frames per mode. Worker/renderer and numeric bundles, HZ/depth/epoch contracts
and both browser UIs pass. The new 262,144-packet oracle passes native/WASM/ASan.
An initial strict native shader oracle linked the external cube kernel with
production fast-math flags; it now compiles that source with the same strict
flags as its reference. Production flags and image tolerances remain unchanged;
failed setup/oracle logs remain saved. Canonical JS/WASM match the measured
candidate f08378ee byte-for-byte. Published methods, accepted raw measurements,
guard decisions and bound checks: [cube-packet package](cube-packets/README.md).

### Two-sample hierarchical depth: shared helpers not retained

Extending the conservative 4x4-cell depth table to actual 2x storage improves
BMW paired 2x time by 9.272% / 9.669% and T80 by 5.308% / 4.474%. BMW 4x,
however, regresses by 2.313% / 1.023%. The source remains an unretained trial;
a successor separates the 2x/4x helpers at compile time to investigate this
cost. This is a hypothesis about specialization, not a demonstrated cause of
the regression.

The trial passes 742 native tests plus the benchmark, 22 sanitizer contracts,
240 WASM/Mesa images, 234 exact control images in each sample mode, both
models' 100 hashes/four raw frames per mode and separate actual 2x/4x HZ
sample-plane/query contracts on native/WASM/ASan. The reproducible source
patch, all fifteen accepted pairs and validation scope are in
[the experiment package](hz2-basic/README.md).

### Two-sample hierarchical depth with static specialization retained

Separate 2x/4x state, writer and occlusion helpers retain constant sample
indexing and coverage masks in the hot kernels. BMW 2x improves
9.843% / 10.789% and T80 6.047% / 5.034%; all six BMW 2x pairs improve.
BMW 4x changes -0.153% / +0.227%, with three faster and three slower pairs.
That supports adoption for the large 2x gain, without claiming a 4x speedup
or statistical equivalence. BMW off changes -0.589%, T80 off +1.478%.
Two-sample depth capture/replay remains disabled.

All fifteen pairs pass the unchanged guard on the first attempt. Full gates
pass 742 native tests plus the benchmark, 22 sanitizer contracts, 240
WASM/Mesa images, 234 exact control images per mode and both models'
100 hashes/four raw frames per mode. Combined actual 2x/4x HZ sample-plane
and query checks pass on native/WASM/ASan. The expanded public contract
also checks both allocation-prefix overflow boundaries on 32-bit WASM.
Both browser UIs pass 234 tests, 18 sequential benchmark rows, cancellation
and sample switching. Canonical JS/WASM match the measured candidate
902bcf8c byte-for-byte. Source patch, complete raw comparisons and gate
bindings are in [the retained experiment package](hz2-static/README.md).

### Warmed raster profiles and rejected row-span HZ

[Module-bound BMW profiles](raster-profile-20261005/README.md) preserve raw
CDP samples for off and 4x, matching symbol maps, an outlined diagnostic patch,
image-equivalence checks and complete summaries. The public
`tools/wasm_profile_summary.py` verifies the profiled module's hash and retains
all worker profiles. Samples include waiting/preemption and inlined work;
they cannot establish cycles, cache misses or a hardware-limit percentage.

Strict HZ rejection of row spans in partially visible triangles reduces
logical raster candidates, but all six BMW 4x pairs are slower. Paired audit
changes are +2.821% / +3.148%, so the production renderer remains unchanged.
The trial passes 743 native tests plus the benchmark, 23 sanitizer contracts,
240 WASM/Mesa images, 234 exact controls in each sample mode, both models'
100 hashes/four raw frames per mode and an observed-skip sample-plane contract.
[The rejected trial package](hz4-span/README.md) publishes source, all fifteen
guarded pairs, regression bindings and separate logical-counter observations.

The [outer-span-loop successor](hz4-span-loop/README.md) removes the per-pixel
cell/alignment test but also fails to improve BMW: paired 4x time changes
+3.563% / +3.660%, with all six pairs slower. Its independent source patch,
fifteen first-attempt guarded pairs and full fresh regression evidence are
published. These two trials share the accepted reference; separate audits
do not directly measure their difference. Neither enters production.

### Coverage-edge reuse retained

The [four-sample edge-reuse variant](msaa-edge-reuse/README.md) subtracts
top-left bias from existing coverage vectors before depth interpolation,
preserving exact coefficients and the packed/wide fallbacks. BMW paired
4x time improves 1.813% / 1.019% / 0.853% in two initial audits and one
predeclared confirmation audit; seven of nine pairs improve. T80 is mixed
(-2.057% / +0.983% / -1.338%), retained under BMW priority. No 2x speedup
or statistical equivalence claim follows from its mixed measurements.

All eighteen pairs pass the unchanged guard on their first attempt. Full
fresh checks pass 743 native tests plus the benchmark, 23 sanitizer contracts,
240 WASM/Mesa images, 234 exact controls per mode, both models' 100 hashes/four
raw frames per mode and all 22 standalone WASM contracts. The new actual-kernel
observer verifies 12,431,040 coefficient lanes and 62,251,008 sample masks on
native/WASM, with matching results and sanitizer coverage. Both browser UIs
pass; canonical JS/WASM match the measured `58132377` candidate byte-for-byte.
The package publishes source, all raw comparisons, gate bindings, matching
symbol maps and scoped static code-generation observations.
