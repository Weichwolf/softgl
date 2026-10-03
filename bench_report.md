# SoftGL Benchmark Report

## Calling-thread raster participation — under evaluation, 2026-10-03

Large raster batches (at least 4096 triangle-bin records) let the calling
thread claim work from the existing exclusive bin queue before waiting for
all render workers. Smaller batches retain worker-only dispatch. Bin ownership,
query merging, shading, geometry, worker counts and arithmetic remain unchanged.
The raster TLS pointer is cleared before direct drawing resumes.

New case `233_large_query_handoffs` checks large masked, scissored, rejected and
read-only-depth query batches, then a direct point and an empty query. Six
full 32-bit counters match Mesa exactly at unchanged zero tolerances. The
unmodified renderer is calibrated first: 720 native checks and 239 WASM images
pass; the preceding 238 RGBA hashes match the prior control. Candidate checks
also pass all 720 native, 239 identical WASM images and three ASan/UBSan contracts.

The candidate is frozen under `build/controls/main-raster-candidate` against
`build/controls/main-raster-control`. Matched performance audits are pending.
Acceptance requires two complete BMW gains exceeding 2%, two Tank Performance
and both full 15-scene Compliance audits without repeated relevant slowdowns;
fixed detail and disabled budget feedback keep quality constant. No performance
gain is claimed while evaluation is pending.

Foreign DD2 render benchmarks were observed alongside compiler activity.
The quiet-host guard now also detects these known benchmark processes and
stamps each monitor with its guard hash. All pre-upgrade attempts and one
completed pair are archived but excluded; every acceptance pair restarts under
the stronger monitor. The frozen comparison is waiting for quiet-host time.
For the live preview, the exact gated 233-case control module, wrapper and model
pack are restored. Its renderer sources match the prior approved control;
720 native and three sanitizer checks pass again. All 239 control image checks
pass. Previous 232-case Chromium/Firefox GUI checks are historical evidence;
the expanded 233-case UI catalog has not been retested in both browsers.


The frozen candidate now also passes twelve F31 RGBA/geometry views and all
32 byte-identical PPMs, projection refinement and adaptive detail recovery.
Chromium and Firefox each pass the 233-case preview catalog, six benchmark
scenes and cancellation with eight workers. GUI timings remain excluded from
throughput claims. Firefox records a script-timeout warning after Marionette
stops listening at forced exit; all live checks finish beforehand and both
browser/checker processes exit successfully. Its raw log is retained.

The preview checker now fingerprints WASM bytes from the checked server,
rather than `build/wasm`. This is verified by checking the frozen candidate
while the local build remains the different control module. The Linux monitor
is retained as `tools/wasm_quiet_audit.py`, with three seconds of quiet polling,
existing compiler/test exclusions and detection of foreign process CPU use
of at least 0.10 cores per 0.5-second interval. Its own benchmark descendants
are excluded and CPU deltas require the same process birth identity. A
controlled fixture detects unlisted foreign work, ignores owned/idle work and
PID reuse, and terminates its owned parent/grandchild after the five-second
escalation delay while leaving an independent neighbor alive. No valid pairs
precede this CPU-monitor upgrade; the restarted comparison is waiting for
quiet time. The live preview remains the exact approved-renderer control.

After the same external-load blocker persisted across three consecutive goal
turns, the owned waiting coordinator and monitor are stopped. No complete
accepted BMW pairs exist under the current CPU monitor. Functional evidence,
frozen inputs and the checkpointed dispatcher are preserved for resumption;
throughput acceptance remains unproven. The goal is blocked on an external
quiet measurement window, and no performance gain is claimed.

## Sized float vertex attribute fetch — rejected, 2026-10-03

The rejected float loop adds bookkeeping for short attribute vectors. This
trial instead copies exactly 8, 12 or 16 bytes for two, three or four requested
GL_FLOAT components. Other component counts retain the float loop fallback;
source addressing, strides, padding and every non-float conversion remain
unchanged. A three-component array does not require a readable fourth element.
No geometry, material, texture or GL arithmetic is approximated.

Only `libsoftgl/src/pipeline.c` differs from the same frozen control.
Candidate WASM disassembly shows a single 128-bit load/store for four
components and bounded 64-bit/32-bit loads for three, bypassing the component
loop. Disassembly is retained under `build/checks/vertex-fetch/`.

**717 native checks, 238 WASM images and three sanitizer checks pass.**
All control RGBA hashes and tolerance settings are identical. All twelve F31
RGBA/geometry views and 32 PPMs are preserved, with passing adaptive detail
recovery. Chromium and Firefox pass 232 cases, six benchmarks and cancellation
with eight workers. The complete first eight-round BMW audit measures **+0.86%** paired render time. It fails the gain gate, so subsequent acceptance audits are skipped. All four successful quiet-host AB/BA pairs are retained; the refactor is reverted.
After restoring the exact control module and source, all 717 native checks,
238 WASM images and three sanitizer checks pass again. The byte-identical
module, wrapper, model pack and web sources retain their prior passing
Chromium/Firefox controls. No worker wake or vertex-fetch trial is retained. Both complete BMW
audits must improve by more than 2%; a failed first gain gate rejects early.
Two Tank Performance and both full 14-scene Compliance audits remain required
for acceptance. No gain is claimed.

## Float vertex attribute fetch — rejected, 2026-10-03

The warmed control profile attributes 265 self samples across six render
workers to attribute fetching. Control WASM disassembly places its type
jump table inside the component loop. The trial adds a separate GL_FLOAT
copy loop, preserving source addressing, strides, component counts, padding
and every existing non-float conversion. No VBO content, job partitioning,
material, texture, geometric detail or GL arithmetic is changed.

Only `libsoftgl/src/pipeline.c` differs from the frozen control. Candidate
and control disassembly are retained under `build/checks/vertex-fetch/`;
the candidate bypasses the per-component type jump table for float arrays.
The diagnostic profile's timings are excluded from throughput acceptance.

**717 native checks, 238 WASM images and three sanitizer checks pass.**
All 238 control RGBA hashes and tolerance settings are identical. Twelve F31
RGBA/geometry views and all 32 PPMs match; budget pressure and detail recovery
pass. Chromium and Firefox pass 232 cases, six benchmarks and cancellation
with eight workers. Chromium first exceeded the unchanged 120-second benchmark
timeout while other local functional jobs ran; an unchanged standalone retry
passes. Both logs are retained and their timings are excluded from throughput
claims. The first complete eight-round BMW audit measures **+11.14%** paired render time and fails the gain requirement. The waiting second audit has no successful quiet pairs and is cancelled; no second result is claimed. The refactor is reverted, and all four successful first-run AB/BA pairs are retained.
The candidate module and source manifest are frozen under
`build/controls/float-fetch-candidate`; the control remains
`build/controls/combiner-operands-control`. No gain is claimed.

## Atomic WASM worker wake — rejected, 2026-10-03

A separate warmed F31 profile uses the restored control module, 60 warm-up
and 20 sampled frames at fixed 8-pixel detail. Main-thread self samples include
755 in raster completion and 424 in vertex completion; these include waiting,
not shader CPU work. Across six render workers, 177 self samples occur in
mutex unlock called from their job loop. Raw and symbol-mapped diagnostics
are retained under `build/perf/operand-reverted-warmed-profile*`; their timing
is excluded from throughput acceptance.

The trial changes only the WASM worker wake: workers wait on the atomic job
generation and main advances/notifies it after publishing immutable job state.
The wait checks the expected generation atomically, so a dispatch before sleep
is not lost. Shutdown advances/notifies before joining. Native condition waits,
completion counting, job partitioning, GL state, geometry and texture arithmetic
remain unchanged. Emscripten's existing 32-bit wait/notify wrappers are used;
blocking waits occur only in worker threads.

The candidate passes all **717 native checks, 238 WASM images and three
sanitizer checks**. Every control RGBA hash and tolerance is identical.
Twelve F31 RGBA/geometry views and all 32 PPMs are identical; adaptive detail
recovery passes. Chromium and Firefox pass all 232 cases, six benchmarks and
cancellation with eight workers. Two complete matched BMW audits measure **+6.36% / +1.59%** paired render time. No gain is confirmed, so the wake refactor is reverted and remaining acceptance audits are skipped. All eight successful quiet-host pairs remain retained.
Candidate/control modules and source manifests are frozen under
`build/controls/atomic-wake-candidate` and
`build/controls/combiner-operands-control`. No gain is claimed.

## Consumed combiner operands — rejected, 2026-10-03

The trial generic combiner resolved only arguments consumed by REPLACE,
MODULATE and the other operations; INTERPOLATE still uses all three.
Sources are read directly without four-channel temporary copies. DOT3_RGBA
continues to override alpha; arithmetic order, scaling, clamping and active
stages remain unchanged. A warmed earlier profile identifies generic combining
as shading work; its contaminated throughput timing is excluded.

New case 232 covers color/alpha operands and their inverses, all eight RGB
operations, independent alpha, crossbar, ignored operands, PREVIOUS stages
and blending. It passes on the unchanged combiner first with max delta 1,
zero bad pixels. Existing tolerances are unchanged. **717 native checks and
238 WASM comparisons pass; all 238 control image hashes are preserved.**
Twelve fixed-quality F31 RGBA/geometry views and all 32 PPMs match the
approved guard-refinement renderer; budget pressure and detail recovery pass.
Sanitizers pass worker/LOD contracts and the added case. Chromium and Firefox
pass 232 viewer cases, six benchmarks and cancellation with eight workers;
UI timings are excluded from throughput claims.

Frozen identical-catalog modules and manifests are under
`build/controls/combiner-operands-{candidate,control}`. Acceptance requires two
complete fixed-detail BMW gains and two full audits of fourteen Compliance
scenes, including the added operand-channel case, with the existing protocol
and repeated-5% slowdown gate. Two complete BMW audits measure **+0.35% /
−0.68%** paired render time, with identical geometry, six workers, six warm-up
and twelve timed frames across eight rounds. No benefit is confirmed; subsequent
acceptance audits are skipped and the renderer refactor is reverted.
The additional operand-channel test is retained. After the revert, all 717 native
checks, 238 WASM images, three sanitizer checks and both browser checks pass.
The restored WASM module is byte-identical to the pre-experiment control.

## Order-sensitive depth sorting — correctness repair, 2026-10-03

The inherited front-to-back sorting predicate also ran during occlusion queries
and with depth writes disabled. A native public-GL probe returns 2,275 instead
of 4,550 samples and the wrong color across all 2,275 pixels, with one, three
and eight workers. An isolated predicate repair restores every expected result.
The registered worker contract and new Mesa comparison case 231 fail before
this repair; sorting now retains submission order for those states.

**714/714 native checks, 237/237 WASM comparisons and sanitizer contracts pass.**
Case 231 requires exact pixels with no bad-pixel allowance; all preceding
thresholds are unchanged. Every preceding WASM image hash is preserved. All
twelve fixed-quality F31 RGBA views, geometry statistics and four bounded-budget
RGB views match the accepted queue module exactly. The added guards are a
correctness repair, with no claimed performance gain. Matched overhead audits
are recorded separately from queue acceptance. Chromium and Firefox pass all
231 viewer cases, six benchmark scenes and cancellation with eight workers;
UI timings are excluded from throughput claims. Two complete fixed-detail BMW
comparisons against the identical 231-case control measure **+0.5% / +1.5%**
paired render time. The first predicate layout fails the overhead gate on
linear fog: **+7.5% / +9.0%** across two complete ten-round comparisons.
All completed raw pairs remain retained. The correctness fix stays in place;
a revised ordering of the same guards is under evaluation, with no claimed
gain. Disassembly shows that depth-disabled rendering skips the extra guards,
so the fog slowdown is not yet attributed to those additional loads.
The reordered predicate passes all 714 native and 237 WASM checks, with
all 237 image hashes preserved, twelve identical F31 RGBA/geometry views,
32 identical PPMs and passing sanitizers. Chromium and Firefox again pass
231 cases, six benchmarks and cancellation with eight workers. New matched
audits start with both full linear-fog comparisons: **−2.3% / −11.4%**
paired render time against the same control, retaining all ten rounds,
80 warm-up and 240 timed frames. The previous slowdown is absent in both
refinement audits. Both complete BMW audits measure **−1.3% / −0.7%** paired render time,
with identical fixed-detail geometry and the unchanged eight-round protocol.
The reordered sorting guards pass all matched overhead gates. Two complete BMW and two Tank Performance audits, plus two full thirteen-scene Compliance audits, show no repeated slowdown of 5% or more. Every completed raw pair is retained. This accepts the equivalent GL correctness repair, with no additional performance gain claimed.

## Shared raster queue — accepted, 2026-10-03

A CPU recording after cold preparation and 60 warm-up frames shows more
shading work on the center raster workers than on the outer workers. Its
throughput timing was affected by other host activity and is excluded from
performance claims. The trial partitions the framebuffer into four independent
X-range bins per worker, with a shared work queue and a column lookup for
producer binning. Reported worker counts and vertex partitions are unchanged.

Two complete independent eight-round matched BMW audits measure
**101.155 / 103.413 ms**, **−8.4% / −7.0%** paired render time against the
accepted control. Both use fixed eight-pixel geometry, identical geometry
statistics, six workers, six warm-up and twelve timed frames. All four AB/BA
pairs per audit are retained, including an initially slower pair; no outlier
removal is used. Comparisons interrupted by compiler activity are excluded.
Two ten-round Tank Performance audits measure **8.621 / 8.461 ms**,
**−13.3% / −12.3%**, with identical geometry, six workers, 80 warm-up and 240
timed frames. Two complete audits also cover thirteen Compliance scenes; each
retains ten rounds, 80 warm-up and 240 timed frames, six workers, and five
independent complete AB/BA pairs. No scene has a repeated slowdown of 5% or more.

The trial passes **711/711 native checks and 236/236 WASM comparisons** at the
original tolerances. The added worker contract covers tiny and odd widths,
additive writes and query reuse with one, three and eight workers; it also
passed on the control. AddressSanitizer/UBSan and leak detection pass both
worker and LOD contracts. All twelve fixed-quality F31 RGBA views, geometry
statistics and four final bounded-budget RGB views match the control exactly.
Chromium and Firefox pass all 230 viewer cases, six benchmark scenes and
cancellation with eight workers; UI timings are excluded from throughput claims.
The controller restores detail with headroom. Other scenes have 27 changed
image hashes after changing stripe boundaries; all pass their existing Mesa
tolerances. All throughput gates pass. Paired Compliance render-time changes:

| Scene | Run 1 | Run 2 |
| --- | ---: | ---: |
| 100_showcase | -6.5% | -10.2% |
| 70_heightfield | -4.8% | -6.3% |
| 217_dot3_multipass_fog | -11.2% | -18.3% |
| 202_shadow_volume | -15.2% | -14.8% |
| 209_particles_additive | -21.3% | -20.6% |
| 98_city_block | -14.9% | -14.6% |
| 57_icosphere_lit | -22.9% | -17.7% |
| 94_lit_textured_sphere | -27.2% | -26.3% |
| 72_fog_linear | -33.8% | -26.5% |
| 73_fog_exp | -26.6% | -31.5% |
| 74_fog_colored | -26.9% | -29.8% |
| 230_combiner_sampling_dependencies | -44.5% | -38.0% |
| tank | -7.2% | -14.6% |

## Geometry cut reuse — rejected, 2026-10-03

An internal cache reused complete cuts for identical matrix, viewport and
error inputs. Two independent eight-round quiet-host BMW comparisons changed
paired render time by **+0.57% / +0.78%**. They use the same fixed eight-pixel
detail, six warm-up and twelve timed frames, and six render workers. Complete
two-round AB/BA pairs are checkpointed with fresh browsers. No gain was established,
so the renderer change was reverted to the byte-identical accepted module.

The candidate passed **710 native checks, 236 unchanged WASM images**, twelve
byte-identical fixed-quality RGBA views and four identical bounded-budget RGB
views. AddressSanitizer/UBSan and leak detection passed. Additional contracts
for material colors and matrix-driven refinement are retained and pass after
rollback. Partial subsequent audits are recorded, without acceptance claims.

## Unused texture sampling — accepted, 2026-10-02–03

The generic combiner previously sampled every active texture, including white
textures in stages that use only PREVIOUS or CONSTANT. Dependencies are now
collected once per render batch, including cross-unit and alpha sources.
Ignored operands and DOT3_RGBA's overridden alpha do not cause sampling;
every active combiner stage still executes. Single-unit fast paths are unchanged.

Two independent quiet-host eight-round page-crossover BMW comparisons measured
**112.561 / 112.851 ms**, **−8.3% / −7.0%** against the exact control. Both use
the same fixed eight-pixel geometry cut, same asset and six render workers;
geometry statistics match for every sample. Six warm-up and twelve timed
frames follow cold preparation. These isolate sampling savings, not LOD gains.

**710/710 native checks and 236/236 WASM comparisons pass.** Every candidate
image matches the control byte for byte, including new case 230 for crossbar,
alpha and ignored combiner operands. Every preceding image hash is preserved.
AddressSanitizer/UBSan and leak detection pass the LOD contract and case 230.
Twelve fixed-quality F31 views also match the control byte for byte in RGBA,
with identical geometry statistics; four final bounded-budget RGB views match.
The budget controller recovers detail when given headroom. Chromium and Firefox
pass all 230 viewer cases, six benchmark scenes, cancellation and eight workers
with this candidate module. Viewer timings are excluded from throughput claims.
Two independent complete audits cover the twelve prior representative scenes
plus case 230. Each scene uses ten AB/BA crossover rounds, 80 warm-up and 240
timed frames, six render workers and Compliance mode. Long comparisons
checkpoint five complete two-round pairs, restarting browsers between pairs;
raw pairs are retained and the same median-of-five-geometric-pairs estimator
is used. Completed quiet-host comparisons are checkpointed; interrupted
attempts are excluded. No scene has a repeated slowdown of 5% or more.
Changes below refer to paired render time:

| Scene | Run 1 | Run 2 |
| --- | ---: | ---: |
| 100_showcase | -3.7% | +1.2% |
| 70_heightfield | -1.4% | -1.9% |
| 217_dot3_multipass_fog | +0.9% | +1.8% |
| 202_shadow_volume | +2.2% | -0.7% |
| 209_particles_additive | +0.0% | -0.6% |
| 98_city_block | +1.9% | +1.4% |
| 57_icosphere_lit | -3.9% | +0.2% |
| 94_lit_textured_sphere | -2.1% | -1.5% |
| 72_fog_linear | +3.8% | -8.6% |
| 73_fog_exp | +2.7% | +0.4% |
| 74_fog_colored | -7.0% | -2.4% |
| 230_combiner_sampling_dependencies | -16.8% | -16.9% |
| tank | -0.5% | +2.1% |

## Adaptive frame-budget policy — 2026-10-02

Compliance remains the default and preserves full submitted geometry. The
explicitly enabled Performance mode now targets **33.333 ms / 30 FPS** without
changing application VBOs, EBOs or OpenGL draw calls. A smoothed completed-frame
measurement increases simplification above budget and recovers detail with
15% headroom. Changes occur between frames; browser idle time, delayed reads
and cold hierarchy preparation are excluded. Cuts remain consistent across
both material passes.

Automatic estimated error is bounded to **0.125–8 pixels**, protecting hard
normal edges, UV/color seams and fold lines. An unbounded trial reached roughly
32k triangles per material pass but visibly distorted the car's panels; it
was rejected. The bounded policy retains about **123–129k triangles per pass**
from the complete 939,641-triangle asset. At the available geometry/quality
limit the UI reports the limit; **30 FPS is not yet achieved**. The fixed-error
API supports 0.125–128 pixels and disables feedback for reproducible experiments.

The bounded-policy module (`f7b081c6…`) passed **707/707** native checks before
case 230 was added, including cache ownership,
invalidation, cancellation, exact fallbacks, hard-crease lighting, budget
pressure/recovery, hysteresis, idle-time exclusion and the minimum-cut limit.
AddressSanitizer/UBSan and leak detection pass the same contract. Compliance
passes **235/235** unchanged Mesa/WASM comparisons, retaining every prior image
hash. Twelve fixed-quality views and four bounded-budget views were compared
separately; their approximate appearance does not change regression tolerances.

Chromium and Firefox passed the bounded-policy module control check: all 229
views, six benchmark scenes, cancellation during preparation/benchmarking and
eight reported render workers. Preview/controller timings are diagnostics,
not throughput acceptance evidence. Repeated unrelated compiler/test activity
interrupted the proposed matched audits; those attempts were excluded. The
remaining checks are two complete default-mode overhead audits and two warmed
adaptive-vs-Compliance audits. Raw logs, images and source manifests are retained
under `build/`; evidence is recorded in `tests/bench/wasm_results.json`.

## Initial fixed one-pixel mode (historical) — 2026-10-02

The user explicitly authorized an approximate internal mode. **Compliance
remains the context default** and renders the complete submitted geometry.
Applications opt into Performance once; their VBOs, EBOs and GL draw calls
remain unchanged. SoftGL snapshots eligible indexed static-VBO draws, builds
a protected cluster hierarchy on one background worker, selects a complete
hierarchy cut using projected error, and transforms only the selected vertices.
The pinned meshoptimizer v1.3 subset is MIT-licensed. No shaders or newer GL
rendering calls were added. The asset itself still contains all 939,641 triangles.

At a fixed **one-pixel estimated error** in module `5d95d605…`, two independent eight-round
page-crossover audits measured **180.425 / 176.346 ms** at 640×360, six render
workers: **−34.4% / −36.8%** against Compliance in the **same WASM binary**.
Each sample uses six warm-up and twelve timed frames. Both material passes
submit 1,879,282 original triangles; Performance draws about 580–600k total.
Preparation takes approximately **2.4–2.7 seconds once per context**, runs in
the background, and is excluded from steady-state timing. Full detail renders
until the hierarchy becomes available. **30 FPS is still not reached.**

The initial fixed-mode native suite passed **707/707**, including the new cache contract;
the same contract passes AddressSanitizer/UBSan with leak detection. It checks
buffer ownership, writable mapping, subdata, deletion/name reuse, refinement,
mode reversal, exact queried draws and special-case fallbacks. Compliance
passes **235/235 unchanged Mesa/WASM comparisons**, with every image hash
identical to the preceding full-detail engine audit.

An initial twelve-angle browser appearance check with eight render workers
measured mean RGB deltas of **0.181–0.533 byte values** over the complete frame.
About **0.13–0.36%** of pixels differed by more than 16 in a channel. These
describe explicitly approximate output, not changed regression tolerances.
Switching back to Compliance reproduced each original image byte for byte;
all six hierarchy builds were reused and the event loop ran during preparation.
These timings and appearance measurements describe the initial fixed mode,
not the current adaptive policy. The initial default-mode overhead audit was
interrupted by unrelated compiler activity; it is not acceptance evidence.

## SIMD UV conversion: completed full-scene audit — 2026-10-02

Two matched ten-round page-crossover audits (80 warm-up, 240 timed frames)
confirmed the UV conversion change with the current BMW engine and asset.
The control differs only at the four conversion calls. Tank improved by
**11.7% / 4.8%**, showcase by **22.7% / 23.9%**, and the lit textured sphere
by **30.6% / 30.9%**. Other paired changes were small or favorable; particles
were **+2.9% / +2.2%**, below the relevant-regression threshold used here.
Both runs passed **235/235 unchanged Mesa/WASM comparisons** and retained every
prior image hash. Raw paired samples and the exact control patch are recorded
under `optimizationStages.wasmUVTruncation` in `tests/bench/wasm_results.json`.

## BMW F31: full-detail OpenGL 1.5 rendering — 2026-10-02

The prepared F31 uses VBOs, DOT3 combiners, two lighting passes, alpha blending
and GGX-filtered studio cube maps driven by the authored material parameters.
It retains every one of the **939,641 triangles**, original texture dimensions,
UVs and normals. The attributed source archive is in `assets/bmw/`.

The target is **30 FPS / 33.3 ms per frame**, and is **not reached**. The current
full-detail BMW measured **249.004 and 244.579 ms** on this host. These are
headless Chromium render measurements, not a claim about the user's Firefox.

### Measured changes and correctness

A separate named WASM profile showed substantial main-thread triangle work
and texture shading on the central raster workers. Scalar texture combiners
previously shaded hidden fragments before rejecting them at the depth test.
The new rejection applies only when stencil is disabled, preserving stencil
operations and the final fragment order. Opaque BMW alpha testing is disabled.
Parallel vertex transforms now classify the frustum once per source vertex;
indexed draws resolve element-buffer storage once rather than per index.

The early-depth focused comparison measured **−26.2%** BMW render time. A
subsequent vertex/index comparison measured **−5.1%**. These are separate stages;
percentages and absolute times from different runs are not added together.

Offline preparation then merged opaque material draws: **258 → 41 parts**.
Only **73 bitidentical complete vertex records** were welded; there is no
approximate simplification or LOD. Ordered expanded triangle-attribute hashes
and material/texture payload hashes match the original. With the **same WASM
binary** and separate original/prepared packs, two independent eight-round
crossover runs measured **−23.2% and −23.3%** BMW frame time. Each used six
warm-up frames and twelve timed frames per sample at 640×360, six render workers.
Asset loading and context creation are outside the timer.

The suite passes **706/706 native checks** and **235/235 WASM/Mesa comparisons**
(229 regular cases plus three Tank and three BMW views). Every image hash
matches between both full runs and the batched asset run; all 234 images from
the earlier BMW baseline are unchanged. Existing tolerances are unchanged.
Case 229 encodes exact query counts for all eight depth functions, alpha
rejection and stencil depth-fail operations using the scalar texture path.

### Other-scene performance confirmation

Matched 229-case control and candidate catalogs use Emscripten 3.1.69, `-O2`,
SIMD128, pthreads, Chromium 154.0.8037.92, and the i5-10400 host reporting six
processors. Each full run uses ten page-crossover AB/BA rounds, eighty warm-up
frames and 240 timed frames. Values are paired render-time changes; negative
means faster. Short focused samples alone do not establish tiny-scene changes.

| Scene | Full run 1 | Full run 2 |
|---|---:|---:|
| `tank` | -5.9% | -5.1% |
| `100_showcase` | +4.9% | +0.0% |
| `70_heightfield` | +0.8% | +2.9% |
| `217_dot3_multipass_fog` | -2.5% | +0.9% |
| `202_shadow_volume` | +4.9% | +2.6% |
| `209_particles_additive` | +2.5% | -2.7% |
| `98_city_block` | -2.4% | -1.9% |
| `57_icosphere_lit` | -4.2% | +2.5% |
| `94_lit_textured_sphere` | -2.5% | +1.6% |
| `72_fog_linear` | -3.4% | -0.8% |
| `73_fog_exp` | -1.2% | +1.0% |
| `74_fog_colored` | -0.5% | +1.4% |

Showcase's +4.9% did not repeat (+0.0%). No relevant repeated slowdown was
found in these runs. Raw samples, image checks, source/pack hashes and a control
reconstruction patch are stored in `tests/bench/wasm_results.json`.

### Reproduction, preview and next work

```sh
python3 tools/pack_gltf.py assets/bmw/source.zip
cmake -S . -B build/native -DCMAKE_BUILD_TYPE=Release
cmake --build build/native -j4
ctest --test-dir build/native -C Bench --output-on-failure -j1
emcmake cmake -S wasm -B build/wasm
cmake --build build/wasm -j4
node tools/wasm_perf.cjs --scenes bmw --rounds 8 --warmup 6 --frames 12 \
  --output build/perf/bmw.json
```

For an asset comparison, retain the control module and its `bmw.pack` in the
reference build directory. The driver serves that pack separately and records
both asset hashes. `--preserve-parts` reproduces the unbatched input layout.
Use the JSON's `bmwEarlyDepthAndVertexFetch.controlPatchFromCandidate` to
reconstruct the matched engine control in an isolated source tree.

The preview has BMW/Tank/test switching, a cancellable benchmark that yields
between frames, eight prestarted pthread slots, and automatic use of the
reported processor count up to eight. Serve `build/wasm/` using `wasm/serve.sh`;
Chromium 154 and Firefox 153.4 passed BMW/Tank/test switching, all 229 test
controls, six benchmark scenes, cancellation and eight reported render workers.
These functional checks are separate from the scientific performance runs.
LAN threading requires HTTPS as well as COOP/COEP. All generated directories
are under `build/`. Historical directories are in `build/archive/`; old paths
below describe the original measurements and are not active CMake builds.

Next candidates are conservative rejection of triangles covering no pixel
centers, parallel primitive preparation, and improved raster distribution.
The subsequent internal approximate LOD stage is documented above; the
full-detail measurements in this section retain the original geometry.
The SIMD UV truncation has a 10,526,340-lane equivalence proof and is now
confirmed by two matched full-scene audits documented above.

## WASM SIMD color conversion — 2026-10-02

The retained WASM renderer quantizes quad colors using SIMD
`f32x4.nearest` followed by saturating integer conversion. This replaces
Emscripten's SSE-compatible `_mm_cvtps_epi32`, which calls scalar `lrint`
for each lane. Nearest-even rounding, clamping and byte packing remain the
same. Native SSE and the non-SSE WASM branch retain their previous code.

### Evidence and correctness

The preceding renderer's profile showed scalar `lrint` samples on the
busy raster workers. Inspection of Emscripten 3.1.69's
`compat/emmintrin.h` confirmed the calls. Named diagnostic WASM disassembly
shows `sg_raster_triangle_tile_prepared` changing from **32 to 16 `lrint`
call sites**, with **four `f32x4.nearest` operations** for color conversion.
The remaining calls come from texture-coordinate/fraction truncation.
Profiling/disassembly builds are separate from timed production binaries.

That stage passed **691/691 native checks**, including the benchmark,
and **230/230 browser Mesa comparisons** in both full runs. Every image
hash matches the control and each other; existing tolerances are unchanged.
Case 226 requires exact query counts for large indexed/array draws,
nonzero source ranges, mixed clipped/shared pools, points, depth rejection,
and masked/logic-op writes. Case 227 exercises constant/interpolated RGBA
near byte-rounding boundaries, blending and color masks. Its Mesa comparison
permits one LSB with zero bad pixels; its browser image hash is identical
to the prior implementation. Blend alpha uses exact byte values to isolate
color conversion from intermediate alpha quantization.

### Browser measurements

Control and candidate use the same **227-case** catalog, compiler flags,
640×360 framebuffer and six workers. Each independent full run uses ten
crossover rounds, 100 warm-up frames and 240 timed frames. Negative means
less render time; paired changes use five geometric two-round blocks.

| Scene | Paired change, full run 1 | Paired change, full run 2 |
|---|---:|---:|
| `100_showcase` | -16.5% | -14.9% |
| `202_shadow_volume` | -16.4% | -16.8% |
| `209_particles_additive` | +1.1% | -0.3% |
| `98_city_block` | -1.5% | -5.6% |
| `57_icosphere_lit` | -44.2% | -46.5% |
| `70_heightfield` | -28.9% | -27.8% |
| `217_dot3_multipass_fog` | -7.1% | +4.5% |
| `94_lit_textured_sphere` | -16.6% | -28.1% |
| `72_fog_linear` | -30.8% | -34.0% |
| `73_fog_exp` | -28.6% | -27.2% |
| `74_fog_colored` | -30.0% | -37.2% |
| `tank` | -9.3% | -8.2% |

Tank render time improved by **9.3% and 8.2%**, additionally to prior stages.
Showcase improved by 16.5%/14.9%, Heightfield by 28.9%/27.8%, and the lit
icosphere by 44.2%/46.5%. No aggregate speedup is inferred by adding
percentages from separate stages. The variable host load changed absolute
timings substantially; the comparisons interleave both variants.

DOT3/Fog's +4.5% in the second full run required follow-up. Fourteen
crossover rounds with 200 warm-up and 500 timed frames measured **−2.0%**;
the slowdown did not reproduce. No relevant repeated slowdown was found
across the twelve scenes. Raw samples, hashes, profile metadata, codegen
counts, the control patch and image checks are stored in
`tests/bench/wasm_results.json`.

### Reproduction and next work

```sh
ctest --test-dir build-linux -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --reference-build build-wasm-rounding-control --crossover \
  --rounds 10 --warmup 100 --frames 240 \
  --output build-wasm-perf/current.json
```

To reconstruct the exact control, copy the current renderer, tests and
WASM build sources into an ignored source directory and apply
`optimizationStages.wasmNearestEvenColor.controlPatchFromCandidate` from
the JSON. This patch restores only `simd.h`; the recorded control tree hash
matches the preceding retained renderer. Build with the same flags and
retain both `softgl.js` and `softgl.wasm`. The reconstruction example in
the following stage uses the same process; select `wasmNearestEvenColor`
and separate output directories for this stage.

Next, inspect the remaining SSE-compatible `_mm_cvttps_epi32` conversions,
which also call `lrint` before scalar truncation. Add negative and large
texture-coordinate coverage before replacing them with equivalent SIMD
truncation. Raster distribution and quieter-host/Firefox checks remain
further candidates. Earlier stages below retain their historical catalogs.

## Referencing transformed vertices from bins — 2026-10-02

The retained renderer now references the immutable transformed vertex array
from worker bins for eligible, fully inside filled triangles. It avoids
copying three complete vertices into `vpool` for each triangle. A bit in the
first source index selects the array, preserving 16-byte bin entries and
existing depth-sort keys. Clipped/general triangles still use copied
vertices. Every draw drains its bins before another transform can replace
the shared data.

### Evidence and validation

A new CPU profile of the preceding query-correct renderer sampled about
51% of main-thread time in raster completion waiting, 24% in indexed draw
processing, 9% in binning, and 5% in cached-triangle processing. Raster work
still concentrated in two central stripes. These weighted stack samples
include waiting and setup; they guided the copying experiment, not a CPU
cycle or speedup estimate.

The native suite at this stage passed **685/685**, including the benchmark.
Two independent full browser runs pass **228/228** Mesa comparisons.
All 228 image hashes match the control and each other. Existing tolerances
are unchanged. New case 225 covers all three index types, nonzero array
starts/source-index ranges, transformed-array growth between draws,
mixed clipped/inside geometry, reversed winding, and sorted/unsorted bins.

The control retains the preceding projection and query fixes, with the
same **225-case** catalog and flags. Full runs used crossover, ten rounds,
100 warm-up frames and 240 timed frames; each reported change uses five
geometric two-round blocks. Negative means less render time.

| Scene | Paired change, full run 1 | Paired change, full run 2 |
|---|---:|---:|
| `100_showcase` | -0.3% | +0.7% |
| `202_shadow_volume` | -0.8% | -0.1% |
| `209_particles_additive` | +2.1% | -0.8% |
| `98_city_block` | -0.0% | -1.8% |
| `57_icosphere_lit` | -2.5% | +0.9% |
| `70_heightfield` | -3.6% | -5.3% |
| `217_dot3_multipass_fog` | +0.4% | +0.7% |
| `94_lit_textured_sphere` | -1.7% | -1.1% |
| `72_fog_linear` | +2.4% | -0.3% |
| `73_fog_exp` | -1.3% | +5.5% |
| `74_fog_colored` | -2.3% | +0.8% |
| `tank` | -2.9% | -4.2% |

Tank improved by **2.9% and 4.2%** in the full runs. A longer focused run
with fourteen rounds, 100 warm-up and 300 timed frames measured **−6.7%**.
A same-binary Tank control measured **−0.1%**. These runs support an
additional Tank gain of roughly 3–7% under the measured conditions; no
aggregate gain is inferred by adding percentages from separate stages.

Heightfield repeatedly showed lower medians (−3.6%, −5.3%, −5.9% long),
but its identical-binary control differed by +6.9% on the busy host. A
precise Heightfield gain remains uncertain. Fog EXP's +5.5% in one full
run did not reproduce in the long check (−0.9%). No relevant repeated
slowdown was found across the twelve measured scenes.

Every Tank sample in the two full and two focused comparisons recorded
**96,665,600 versus 115,998,720 bytes** of module linear memory after
rendering: **92.2 versus 110.6 MiB, 16.7% smaller**. This includes worker
stacks and earlier scenes on that page, and is neither live-allocation
size nor browser process RSS. The driver reads it outside the timer.
Raw timings, calibration, profile metadata, source/binary hashes, the
control patch and all image checks are in `tests/bench/wasm_results.json`.

### Reproduction and next experiments

```sh
ctest --test-dir build-linux -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --reference-build build-wasm-bin-control --crossover \
  --rounds 10 --warmup 100 --frames 240 \
  --output build-wasm-perf/current.json
```

The JSON stage `transformedBinReferences` stores
`controlPatchFromCandidate`: applying it to a copy of this stage's renderer
reconstructs the exact control. Its whole-renderer SHA-256 was verified;
compiler flags, the test catalog, projection and query fixes otherwise match.
For a fresh control source tree:

```sh
python3 - <<'PYREPRO'
import json, pathlib, shutil, subprocess
data = json.loads(pathlib.Path('tests/bench/wasm_results.json').read_text())
stage = data['optimizationStages']['transformedBinReferences']
dst = pathlib.Path('build-wasm-bin-repro-source')
for name in ('libsoftgl', 'tests'):
    shutil.copytree(name, dst / name, dirs_exist_ok=True)
(dst / 'wasm').mkdir(parents=True, exist_ok=True)
for name in ('CMakeLists.txt', 'dispatch.c.in', 'bench_wrap.c',
             'tank_wrap.c', 'sdl_viewer.c'):
    shutil.copy2(pathlib.Path('wasm') / name, dst / 'wasm' / name)
subprocess.run(['patch', '--batch', '-p1', '-d', str(dst)],
               input=stage['controlPatchFromCandidate'].encode(), check=True)
PYREPRO
emcmake cmake -S build-wasm-bin-repro-source/wasm -B build-wasm-bin-repro
cmake --build build-wasm-bin-repro -j4
```

Use this fresh build with `--reference-build build-wasm-bin-repro`.
Profile the retained renderer again before selecting another change.
Raster distribution, per-vertex frustum outcodes, index-buffer resolution,
and passing source indices without pointer subtraction remain candidates.
Odd framebuffer dimensions and other worker partitions need more coverage
before changing the tile layout. Historical stages below used their stated
earlier test catalogs; pair them with matching native reference catalogs.

## Parallel occlusion-query accumulation — 2026-10-02

Raster workers now count surviving samples in their own bins. The calling
thread merges those counters after the existing completion barrier, avoiding
shared writes and per-pixel atomics. Direct points and lines still update
query objects on the calling thread. Counting occurs before color logic
operations and color masks, so fragments count even without a color change.

Case 224 encodes twelve complete query results into exact-color panels:
full coverage, eight overdraw layers, depth/alpha/stencil/scissor rejection,
masked logic operations, an additional direct point, ANY_SAMPLES_PASSED,
query reuse and multiple submission boundaries. It permits **zero channel
delta and zero bad pixels**. Before the fix it failed in native and WASM;
the identical-catalog WASM control mismatched 154,080 pixels. Existing
case 196's historical permissive tolerance was retained, and its encoded
count now matches Mesa byte-for-byte.

The suite at this stage passed **682/682 native checks**, including the benchmark,
and **227/227 browser Mesa comparisons** in both independent full runs.
Every browser image hash is identical between those runs. Compared with
the previous renderer, only the query images (196 and new 224) change;
the other 225 hashes are identical. Existing tolerances are unchanged.

The control is the previously accepted renderer with the same **224-case**
catalog and flags. It passes the existing comparisons but fails the new
exact query case; the timing comparison below uses twelve ordinary scenes
without active queries. Each full run uses crossover, ten rounds,
100 warm-up frames and 240 timed frames. Negative means less render time.

| Scene | Paired change, full run 1 | Paired change, full run 2 |
|---|---:|---:|
| `100_showcase` | +0.7% | -2.8% |
| `202_shadow_volume` | -0.8% | +2.1% |
| `209_particles_additive` | +1.2% | -0.9% |
| `98_city_block` | -1.9% | -2.7% |
| `57_icosphere_lit` | +0.5% | -7.1% |
| `70_heightfield` | +0.2% | -0.8% |
| `217_dot3_multipass_fog` | +0.9% | +0.3% |
| `94_lit_textured_sphere` | +0.3% | +0.1% |
| `72_fog_linear` | +1.1% | -5.3% |
| `73_fog_exp` | +3.3% | -7.3% |
| `74_fog_colored` | -0.9% | +0.5% |
| `tank` | -0.9% | -0.2% |

No relevant repeated slowdown was found. Small differences remain within
observed measurement variability; no performance gain is claimed for this
correctness fix. The projected-vertex optimization below remains retained.
Raw samples, hashes, pre-fix failure evidence and exact query results are
stored in `tests/bench/wasm_results.json`.

```sh
ctest --test-dir build-linux -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --reference-build build-wasm-query-control --crossover \
  --rounds 10 --warmup 100 --frames 240 \
  --output build-wasm-perf/current.json
```

Reproduce this control with the current sources and tests, restore
`fragment_write.c` and `workers.h` from `bdc11e9`, and use `workers.c` from
the prior texture-preparation stage (remove only local query counting and
merging from the current file). Keep the accepted `pipeline.c` unchanged.
Both timing binaries use the same 224-case catalog. Next, profile this
renderer before selecting another optimization.

## Projected-vertex reuse and measurement controls — 2026-10-02

The current renderer also projects vertices during the parallel transform
and reuses their screen coordinates for fully inside, filled triangles.
Binning reads the immutable transformed pool directly, avoiding three
additional complete vertex copies per triangle. Frustum crossings, user
clip planes, wireframe/points, and two-sided lighting use the general path.
The nonparallel triangle implementation was retained after a broader
refactor failed to establish a reliable performance benefit.

### Evidence and methodology

A separate Chromium CPU profile with WASM function names sampled the main
thread and all eight pool workers. About 62% of weighted main-thread
samples were in indexed draw processing, 18% in parallel-transform waiting,
and 9% in triangle completion. Worker raster activity concentrated in two
central stripes. These sampled stack times include waiting and setup;
they diagnose candidate work rather than measure a renderer speedup.

An identical-binary control on a busy host exposed misleading differences
in the original two-page comparison (Showcase +16.2%, Tank +6.6%). The
new `--crossover` protocol swaps browser pages and module loading order
every round and foregrounds each page before timing. Two consecutive
round ratios are combined geometrically before taking their median.
It requires an even round count. The identical-binary crossover control
measured +2.2% Showcase, −3.7% colored fog, and +2.9% Tank: small changes
are still uncertain, and longer scene-specific checks remain necessary.
The earlier stage's table below records its original method and conditions.

The accepted variant was compared with the previously accepted renderer
using identical **223-case** catalogs and compiler flags. Two independent
full runs each used ten rounds, 100 warm-up frames and 240 timed frames.
Negative changes mean less render time; paired changes use five crossover
blocks. Raw samples, binary hashes, calibration, profile summaries and
image checks are stored in `tests/bench/wasm_results.json`.

| Scene | Paired change, full run 1 | Paired change, full run 2 |
|---|---:|---:|
| `100_showcase` | -0.8% | -1.1% |
| `202_shadow_volume` | +3.5% | +0.1% |
| `209_particles_additive` | +2.3% | -0.8% |
| `98_city_block` | +0.3% | -0.3% |
| `57_icosphere_lit` | +0.0% | +0.9% |
| `70_heightfield` | -4.6% | -4.2% |
| `217_dot3_multipass_fog` | -1.9% | -2.6% |
| `94_lit_textured_sphere` | -0.7% | -2.7% |
| `72_fog_linear` | -1.8% | +1.9% |
| `73_fog_exp` | -0.0% | +1.4% |
| `74_fog_colored` | +4.1% | -0.9% |
| `tank` | -9.9% | -10.3% |

Tank render time improved by **9.9% and 10.3%**, additionally to the earlier
stage. Small positive changes in other scenes did not repeat consistently.
A longer focused check of Showcase and colored fog, using fourteen
rounds, 200 warm-up and 500 timed frames, gave +0.5% and 0.0% respectively.
No relevant repeated slowdown was found across the twelve measured scenes.
No aggregate speedup is inferred by adding percentages from separate stages.

### Correctness and remaining work

The native suite at this stage passed **679/679**, including the benchmark.
Both full browser runs passed **226/226** Mesa comparisons with unchanged
existing tolerances. Case 223 covers shared indexed vertices, expanded
arrays, viewport/matrix changes, clipped geometry, wireframe and back-face
lighting. Hashes for 225 of 226 browser images match the previous renderer.

Case 196 (occlusion samples) varies even between runs of the identical
control binary. Its existing tolerance permits a whole mismatching frame,
so a green comparison does not verify its encoded query count. This prompted the parallel query fix and exact regression documented above;
existing tolerances remain unchanged.

```sh
ctest --test-dir build-linux -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --reference-build build-wasm-stage1 --crossover \
  --rounds 10 --warmup 100 --frames 240 \
  --output build-wasm-perf/current.json
```

To reproduce this stage's control, copy the current renderer and test
sources into an ignored build-source directory, restore only `pipeline.c`
from `git show bdc11e9:libsoftgl/src/pipeline.c`, copy the current WASM
CMake/dispatch/bench/Tank/viewer sources beside them, and build identically.
The accepted renderer was not changed during the two confirmation runs.

The query fix is documented above; profile the resulting renderer again. Repeated index-buffer
resolution and unused fields copied into raster bins are candidates to
measure; odd framebuffer sizes and other worker partitions need additional
image coverage. Performance measurements on a quieter host would improve
sensitivity to small changes.

## First WASM optimization stage — 2026-10-02

The first optimization stage kept three changes: LINEAR/REPEAT texturing uses the
existing MODULATE/REPLACE fast paths with fog; each worker prepares texture
state once per nonempty bin; SIMD pixel pairs stay inside their worker's
stripe and framebuffer, with scalar shading at the right boundary.
Fog still runs after texturing and before alpha testing/blending.

### Environment and method

Debian Linux, Intel i5-10400, Chromium 154.0.8037.92, Playwright 1.63.0,
Emscripten 3.1.69, `-O2 -msimd128 -pthread`, 640×360, six render workers.
The control uses renderer sources from `bdc11e9` with the **same
222-case test catalog at this stage**, wrappers, exports, and compiler flags as the
candidate. Context setup and Tank asset loading are excluded; ordinary
scenes time their complete `run_test`, including per-frame setup.
Framebuffer reads wait for all worker rendering to finish.

Each full run uses nine rounds, 60 warm-up frames and 120 timed frames per
sample. Reference and candidate alternate AB/BA order within each scene,
and scene order rotates each round. Two independent full runs were made.
The host had variable background load; small differences need longer,
focused checks. Changes below are median paired candidate/reference ratios,
not ratios of the two aggregate medians. Negative means less render time.
Raw samples, binary hashes, metadata, and image checks are in
[`tests/bench/wasm_results.json`](tests/bench/wasm_results.json).

| Scene | Control median ms, run 1 | Candidate median ms, run 1 | Paired change, run 1 | Paired change, run 2 |
|---|---:|---:|---:|---:|
| `100_showcase` | 7.096 | 4.179 | -41.4% | -40.0% |
| `202_shadow_volume` | 1.542 | 1.609 | +1.8% | -1.4% |
| `209_particles_additive` | 3.106 | 3.240 | -2.2% | -6.5% |
| `98_city_block` | 2.183 | 2.108 | -1.2% | +14.4% |
| `57_icosphere_lit` | 0.802 | 0.600 | -23.7% | -17.1% |
| `70_heightfield` | 3.822 | 3.288 | -14.4% | -11.3% |
| `217_dot3_multipass_fog` | 3.490 | 3.328 | -4.1% | -5.7% |
| `94_lit_textured_sphere` | 2.771 | 2.284 | -18.5% | -18.5% |
| `72_fog_linear` | 0.606 | 0.443 | -27.2% | -5.8% |
| `73_fog_exp` | 0.665 | 0.569 | -17.3% | -13.6% |
| `74_fog_colored` | 0.671 | 0.496 | -19.2% | -18.4% |
| `tank` | 17.979 | 16.784 | -6.0% | -9.4% |

The city result in run 2 required follow-up. Two focused runs, each with
13 rounds, 200 warm-up frames and 500 timed frames, measured **−0.5% and
−1.9%**. The short-run slowdown did not reproduce. No city speedup is
claimed. Showcase reduced render time by about 40%; Tank improved by 6–9%.
These are renderer timings, excluding display upload and browser painting.

### Correctness and reproduction

The native suite passed **676/676** checks, including its benchmark:
222 cases and three Tank views, each rendered by Mesa and SoftGL and
compared. Both full candidate browser runs passed **225/225** Mesa image
comparisons; the control also passed 225/225. Existing tolerances were
unchanged. New cases cover normal-matrix batch changes, textured fog,
texture-state transitions, and additive layers at worker boundaries.
The worker-boundary case requires zero differing pixels with zero channel
tolerance. Native reference: OSMesa/llvmpipe 25.0.7, LLVM 19.1.7; GCC 14.2.0.

```sh
npm ci --prefix tools
ctest --test-dir build-linux -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --reference-build build-wasm-control \
  --rounds 9 --warmup 60 --frames 120 \
  --output build-wasm-perf/current.json
node tools/wasm_perf.cjs --reference-build build-wasm-control --bench-only \
  --scenes 98_city_block --rounds 13 --warmup 200 --frames 500 \
  --output build-wasm-perf/city.json
```

To reproduce the control, extract `git archive bdc11e9 libsoftgl` into an
ignored build-source directory, copy the current `tests/` and the WASM
CMake/dispatch/bench/Tank/viewer sources beside it, and build its `wasm/`
with the same Emscripten configuration. Preserve both `softgl.js` and
`softgl.wasm`. The driver rejects different test counts or worker counts.
Run the full image gate before using `--bench-only` for a binary.

### Experiments and next steps

An immediate-mode normal-matrix cache was reverted because initial timings
did not establish a reliable gain. Early comparisons with unequal test
catalogs are excluded from performance claims. The isolated fog change,
with equal 220-case catalogs, improved Showcase by 32.5%; the table above
covers the final combined changes with equal 222-case catalogs.

Next, profile Tank in Chromium to choose the next hotspot. Per-vertex
lighting and transformation of unused indices are candidates to measure.
Extend image checks to odd framebuffer sizes and other worker partitions,
and repeat representative timings in Firefox and on a quieter host.

## Archived FP-6 report

The following measurements describe the earlier implementation and its
original environment. They are historical, not validation of this build.

Final benchmark for the fixed-point backend (FP-1..5) plus the SIMD quad
fragment stage (FP-3). Methodology + targets described below.

### Hardware / environment

| Thing              | Value                                          |
|--------------------|------------------------------------------------|
| CPU                | Intel i5-1135G7 (Tiger Lake, 4C/8T, Turbo 4.2) |
| OS                 | Windows 10 IoT Enterprise LTSC 2021 (19044)    |
| Compiler           | GCC/UCRT64 MSYS2, `-O2 -march=native`          |
| SIMD               | SSE2 baseline, AVX2 available                  |
| Reference GL       | Mesa `opengl32.dll` / `libgallium_wgl.dll` (llvmpipe) |
| Framebuffer        | 640 × 360 RGBA8 + D24 + S8                     |
| WASM toolchain     | Emscripten via MSYS2 UCRT64, `-O2 -msimd128`   |

Everything runs single-threaded on one core. No GPU ever touched.

### Methodology

1. Each scene is rendered `N` times into a fresh `softgl_ctx` per backend;
   a single warm-up frame is discarded.
2. Three backends:
   - **float**: `SOFTGL_BACKEND_SCALAR_FLOAT` (reference path, FP math).
   - **fixed**: `SOFTGL_BACKEND_FIXED`, SIMD quad fragment stage (FP-3).
   - **fixed_noSIMD**: same source built with `SG_DISABLE_SIMD`, scalar
     fixed-point fragment loop (FP-2/FP-4 code paths).
3. Five runs per (scene, backend); minimum reported. Variance over the
   five runs is ≤ 2 % for all fill-dominated scenes and ≤ 8 % for the
   sub-millisecond `sphere_lit`.
4. Timing source: `QueryPerformanceCounter` on Windows (µs-resolution).
5. Iteration counts scaled so every measurement is at least ~50 ms of
   wall-clock, keeping QPC granularity noise < 1 %.

Binaries:
- `build/bench/bench_scenes.exe` — float and fixed(+SIMD) columns.
- `build/bench/bench_scenes_noSIMD.exe` — fixed_noSIMD column.

Source: `tests/bench/bench_scenes.c` + renamed test-case objects per
scene (`showcase/shadow/particles/city/sphere_lit` share source with
their CTest counterparts via `-Drun_test=sg_bench_scene_<tag>`).

### Native results (i5-1135G7, min of 5 runs)

Legend: **ms/frame** smaller is better. **fps** = 1000 / ms.
Speedup = float / fixed(SIMD). Fill-% column is the fraction of the
640×360 framebuffer the scene actually covers per frame (visual estimate
from reference image).

| Scene       | Iters | Float (ms) | Fixed+SIMD (ms) | Fixed noSIMD (ms) | SIMD speedup vs float | SIMD speedup vs scalar FP | Fixed fps |
|-------------|------:|-----------:|----------------:|------------------:|----------------------:|--------------------------:|----------:|
| fullquad    |   300 |       3.94 |            1.46 |              3.87 |                2.70× |                     2.65× |     685   |
| tess        |    50 |       2.97 |            2.87 |              2.91 |                1.03× |                     1.01× |     348   |
| overdraw    |    50 |     125.69 |           46.53 |            123.24 |                2.70× |                     2.65× |      21.5 |
| blend       |    50 |     125.81 |           45.86 |            119.03 |                2.74× |                     2.60× |      21.8 |
| **showcase**|    50 |       5.85 |            5.50 |              5.77 |                1.06× |                     1.05× | **181.8** |
| shadow      |    50 |       1.76 |            1.28 |              1.62 |                1.37× |                     1.27× |     781   |
| particles   |    50 |       3.48 |            3.59 |              3.42 |                0.97× |                     0.95× |     278   |
| city        |    50 |       2.08 |            1.95 |              2.12 |                1.07× |                     1.08× |     512   |
| sphere_lit  |    80 |       0.76 |            0.31 |              0.74 |                2.47× |                     2.42× |    3225   |

### Interpretation

#### Who wins, who doesn't

- **Fill-dominated scenes (fullquad / overdraw / blend / sphere_lit)**:
  the SIMD path nets **2.5–2.7×** over the float scalar and **2.4–2.6×**
  over the scalar fixed-point path. That is the full benefit of processing
  four fragments per iteration in the `__m128i` attribute interpolation
  loop (FP-3). Almost all time is spent inside the per-fragment inner
  loops; triangle setup is negligible.

- **Geometry-bound scenes (tess)**: only 1.03×. The ~55 k micro-triangles
  push the bottleneck into setup/clip/interpolator init, none of which the
  SIMD path improves. The fragment loop is typed correctly, but triangles
  of ~3 pixels don't amortize setup.

- **Real-world mixed scenes (showcase / city)**: 1.05–1.07× — dominated
  by texture sampling + lighting per-vertex. Our lighting is still scalar
  floating-point (per-vertex in `lighting.c`), so fixed-point wins only
  inside the fragment stage, which is a minority of the frame time. The
  texture lookup path (bilinear bytes → float normalize) is also scalar.

- **shadow**: 1.37×. Multi-pass (ambient + shadow-volume stencil + lit);
  the lit pass is a full-screen blend which is where SIMD earns its keep.
  Stencil-only passes with `glColorMask(0,0,0,0)` skip the fragment
  shader, so the SIMD-free stencil-volume rasterizer dominates.

- **particles**: 0.97× — essentially a regression of ~3 %. 100 small
  additive-blended sprites (16×16 px each ⇒ ~25 k covered fragments
  total) have very few fragments per quad; the fixed-point setup overhead
  (per-triangle attribute encoding) costs more than the SIMD loop saves.
  Acceptable given the absolute number (3.5 ms).

#### Pixel fill-rate estimate

Peak measurable: **fullquad** = 640 × 360 = 230 400 pixels / 1.46 ms =
**158 M pixels/s** with the fixed+SIMD backend, single-threaded.

For reference, **overdraw** (32× full-screen) = 32 × 230 400 / 46.53 ms =
**158 M pixels/s** — same number, confirming the inner loop is the
bottleneck and setup overhead is amortized.

**blend** (24× with source-over alpha) = 24 × 230 400 / 45.86 ms =
**121 M pixels/s** (slower because each fragment does the blend
multiply-add).

These numbers say the raster stage has ~6.3 ns/pixel head-room. On a
1135G7 at 4.2 GHz that is ~26 cycles/pixel, consistent with
interpolate-5-varyings + depth test + byte-pack inside a SIMD loop
processing 4 fragments per iteration.

### 60-fps target check

- **Showcase** @ 640×360 target ≤ 16.6 ms/frame: **5.50 ms (fixed+SIMD) →
  pass at 3× budget** (181 fps).
- **All** non-overdraw scenes are under 6 ms. The `overdraw` and `blend`
  synthetic scenes (24–32 full-screen quads) are the only ones slower
  than 60 fps, and they are intentionally pathological.

The 60-fps native target is met with considerable headroom.

### WASM results

The WASM build exports `sg_bench_run_slot(slot, iters, backend)` via
Emscripten. The browser page probes WASM-SIMD via
`WebAssembly.validate()` on a hand-crafted module containing
`v128.const` + `i32x4.all_true` and displays the result in the status
line. If SIMD is unavailable, the fixed-point scalar path still runs
(FP-2/FP-4), matching the native `fixed_noSIMD` column.

#### Node.js (V8 11+, same UCRT64 host, iters=5)

Run via `node wasm/verify_bench.mjs`. Single-run numbers, not min-of-N
— enough for order-of-magnitude validation of the WASM path.

| Scene      | Float (ms) | Fixed (ms) | Fixed fps | Native fixed (ms) | WASM / Native |
|------------|-----------:|-----------:|----------:|------------------:|--------------:|
| showcase   |      9.40  |      9.20  |      109  |             5.50  |         0.60× |
| shadow     |      2.54  |      1.97  |      508  |             1.28  |         0.65× |
| particles  |      5.10  |      5.05  |      198  |             3.59  |         0.71× |
| city       |      2.82  |      2.86  |      350  |             1.95  |         0.68× |
| sphere_lit |      1.23  |      0.72  |     1389  |             0.31  |         0.43× |

V8's WASM JIT delivers ~60–70 % of native on the fill-dominated slots,
dropping to 43 % on the setup-heavy `sphere_lit`. All five slots clear
the 30-fps WASM-desktop target with at least 3× headroom.

#### Interactive browser bench

Loading `wasm/index.html` and clicking **Run Benchmark** runs 3 rounds
per (slot, backend) at iters=20, minimum-reported, and logs the output
into the `<pre id="bench-out">` area. The SIMD capability string appears
in the status line (`WASM SIMD support: yes|no`).

On Chrome/Edge desktop we expect numbers within ±15 % of the Node
values above, since both share V8. Firefox is similar; Safari's WASM
JIT is currently ~20 % slower, still clear of target.

#### Xbox Edge caveats

Edge on Xbox Series X|S is Chromium-based; Chromium ≥ 120 supports
WASM-SIMD on that hardware. Reality check: the Xbox CPU is a Zen 2
derivative clocked ~3.8 GHz (lower IPC than Tiger Lake for scalar, but
roughly on par with SIMD per-cycle). Expect ~0.8–1.0× the
Chromium/Windows-desktop WASM numbers on Xbox. 20 fps target
(≤ 50 ms/frame) is not at risk for any FP-6 scene.

If SIMD is *not* enabled on Xbox Edge (e.g. older build), the
fixed-point scalar path takes over automatically. On showcase/city/
sphere_lit the scalar and SIMD paths are within ~5 % anyway (geometry-
bound); the risk scenes there are fullquad/overdraw/blend which are
not in the production workload.

### Bench targets — summary

| Target                                       | Status |
|----------------------------------------------|--------|
| Native showcase ≥ 60 fps (≤ 16.6 ms)         | pass (5.50 ms, 181 fps) |
| Native all FP-6 slots ≥ 60 fps               | pass |
| WASM desktop showcase ≥ 30 fps (≤ 33.3 ms)   | pass (9.2 ms Node V8, 109 fps) |
| Xbox Edge showcase ≥ 20 fps (≤ 50 ms)        | expected pass (Xbox CPU ≈ 0.8–1.0× desktop WASM) |
| 1296 / 1296 CTest green                      | pass |
| Fixed+SIMD vs float speedup ≥ 2× on fill     | pass (2.7×) |

### Where next

If we wanted to close the 30 % gap on `showcase/city`, the biggest
remaining hotspot is the **per-vertex lighting pipeline** (`lighting.c`)
which is pure scalar float. Vectorising that plus the
texture-sample → float-normalize step would move mixed scenes from
1.05× to ~1.5×, putting showcase near 300 fps native. Second-largest
leverage is **triangle setup** for geometry-heavy scenes like `tess` —
batched SIMD edge-equation setup over 4 triangles at a time. Neither
is needed to hit the 60/30/20 fps targets that this project defined.
