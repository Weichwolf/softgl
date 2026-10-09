# Temporal scene reconstruction and selective MSAA refresh

Status: native texture-space material memoization measured and not adopted;
reverse reprojection and reduced-visibility reconstruction remain queued.
The optional material cache also runs in SIMD128 WASM fixtures, but no speedup
or browser mode has been adopted. Benchmark resolution stays 640×360, with
original packs/cameras and four total threads.

## User-authorized quality trade-off

The user explicitly permits accumulated small rounding errors when the final
image remains close, then permits larger temporal reconstruction artifacts,
video-like softness and compression-like artifacts when substantial speed is
gained on complex scenes. A one-byte-per-channel error is a useful target for
ordinary numeric approximations, not a blanket veto on this temporal experiment.
Report spatial error, worst affected areas, temporal instability and subjective
motion quality separately. Do not accept persistent missing geometry or broken
materials, and do not hide changed shading or AA behind a claim of exact output.
Softness can reduce perceived aliasing; whether it improves these scenes is a
testable preference, not a guaranteed property of reprojection.

Keep the ordinary OpenGL path and existing correctness gates intact. Enable
history through an explicit optional scene integration setting, initially
only for the recognized scene pipeline. Selection must depend on supported
state, measured cost and valid history, never model names or fixed image sizes.
Unsupported draws and state changes use the normal renderer. Opting into this
mode does not weaken unrelated tests or their pixel tolerances.

## Research and what it actually establishes

- Bruce Walter, George Drettakis and Steven Parker, *Interactive Rendering
  using the Render Cache*, Rendering Techniques 1999:
  [publisher](https://doi.org/10.2312/egwr/egwr99/019-030),
  [authors](https://www-sop.inria.fr/reves/Basilic/1999/WDP99/).
  Reprojects cached samples and prioritizes new sampling to produce approximate
  interactive views, including a software-only implementation. It is relevant
  to this CPU renderer, but establishes no speedup for our raster pipeline.
- Diego Nehab, Pedro V. Sander, Jason Lawrence, Natalya Tatarchuk and
  John R. Isidoro, *Accelerating Real-Time Shading with Reverse Reprojection
  Caching*, Graphics Hardware 2007:
  [authors' paper page](https://pixl.cs.princeton.edu/pubs/Nehab_2007_ARS/index.php).
  Reuses surface shading across frames and discusses cache refresh policies.
  Reusing shading does not by itself remove current-frame visibility work.
- Jonathan Ragan-Kelley, Jaakko Lehtinen, Jiawen Chen, Michael Doggett and
  Frédo Durand, *Decoupled Sampling for Graphics Pipelines*, TOG 30(3),
  presented at SIGGRAPH 2011:
  [authors' page](https://people.csail.mit.edu/jrk/decoupledsampling/).
  Separates visibility samples from shading samples, with adaptive shading
  rates and a memoization buffer. The published architectural performance
  estimates use an instrumented simulator, not our native renderer.
- Lei Yang, Shiqiu Liu and Marco Salvi, *A Survey of Temporal Antialiasing
  Techniques*, Computer Graphics Forum 39(2), 2020:
  [publisher](https://onlinelibrary.wiley.com/doi/10.1111/cgf.14018),
  [authors' PDF](https://www.leiy.cc/publications/TAA/TemporalAA.pdf).
  Covers temporal accumulation, history validation and reconstruction artifacts.
  TAA averaging alone is not evidence of lower render time or a worst-case
  one-byte error bound.

## Proposed softgl adaptation

Start with a visibility-preserving shading cache, then test more aggressive
sample/tile refresh separately:

1. Keep genuine current-frame 4× sample coverage and depth initially. Store a
   bounded history of surface/material identity, depth, shading and previous
   transform. Reverse-project current visible surface points into history;
   re-evaluate only invalid, newly visible or changed shading. Depth agreement
   alone is insufficient: coincident unrelated surfaces must not share history.
2. Separate cached diffuse texture/light contributions from view-dependent
   reflections and transparency. Initially refresh the latter normally. This
   avoids wasting the cache whenever the camera moves, while retaining the
   appearance of glass, glossy surfaces and environment maps.
3. Use adaptive per-tile refresh instead of a rigid whole-image keyframe rate.
   Rotate newly shaded regions across frames. Increase refresh at motion,
   disocclusions, material changes and high contrast; reuse smooth stable
   interiors longer. Cap history age and invalidate all history on a camera
   cut, resize or incompatible state. Refresh caps limit history lifetime but
   do not prove that intervening images satisfy a numeric error bound.
4. If current visibility remains expensive, prototype partial MSAA coverage
   refresh with reprojected per-sample depth/ownership and fresh rasterization
   of uncertain tiles. Include hole detection and selective repair in timing.
   This is approximate current visibility and must be labeled accordingly.
   It is a separate candidate from genuine current-frame 4× coverage with
   cached shading; do not claim equivalent MSAA semantics.

These are our proposed combinations for softgl, informed by the sources above;
no claim that the underlying research techniques are new is intended. Useful
reuse, validation cost, memory footprint and refresh spikes remain unknown.

## Acceptance and fair comparison

Use sequences, not isolated screenshots. Include slow/fast camera motion,
camera cuts, starts/stops, animated geometry, changed textures/lights, cutout
foliage, thin edges, glossy/translucent materials and disocclusions. Render a
fresh reference at every tested pose in a separate quality run. Compare the
combined production optimizations, not each change only in isolation; track
pixel errors over time and inspect native/browser clips at normal playback.

Keep pose progression, frame count, assets, output resolution, completion and
RGBA delivery identical across timed candidates. Show temporal reconstruction
and ordinary 4× MSAA results separately alongside Mesa/GLimpSW; GLimpSW has no
native MSAA path. Count fresh frames, reused pixels/samples, repaired tiles,
history resets and memory. Include all cache maintenance, repair and keyframe
work; report medians and refresh/p95/p99 spikes. Do not count repeated old
frames or interpolation-only presentation as fresh-render FPS. Run repeated
native AB/BA without concurrent builds/profilers, prioritizing Bistro > Sponza
> BMW F31 > T-80.

Adoption needs a substantial reproducible gain, acceptable motion quality,
unchanged generic correctness tests, native SIMD128/ASan checks and actual
SIMD128 WASM/browser validation with total memory below 4 GiB. Commit/push each
accepted improvement and update the live WASM viewer afterward.

## Related experiments and order

First test [spatial multi-rate lighting/luma/chroma](../scene-codec-luma-chroma/README.md)
with fresh coverage, then add validated history to its expensive lighting
stage. [Sparse temporal sample reconstruction](../scene-temporal-sample-reconstruction/README.md)
is a distinct path that can also reduce current visibility/MSAA work. Its
keyframe/interpolation variant explicitly accounts for latency and fresh-frame
rate. [Perceptual frequency budgets](../scene-perceptual-frequency-budget/README.md)
control refinement; [motion/focus sampling](../scene-shutter-budget/README.md)
tests useful softness from reduced work. Screen-space reprojection and partial
sample refresh remain unimplemented; texture-space material history below
is a distinct actual trial.

Current [hardware sampling](../scene-alpha-plane/README.md) shows substantial
raster and frontend work as well as shading. Its approximately 26% self-cycle
share in `scene_resolve` is not a removable wall-time fraction. Nevertheless,
it cautions against assuming shading reuse alone can erase the full gap to
GLimpSW. Remeasure joined scopes on each new architecture; pursue reduced
visibility sampling separately if it remains a major cost. Keep the first
genuine-coverage path useful without making it the limit of the experiment.

## Actual texture-space material history

`prepare.py` freezes baseline `661fa63` into private C11 libraries and viewers.
It preserves the ordinary hot shader and resolver bodies byte-for-byte in
source. An optional shader memoizes filtered two-dimensional normal-map and
albedo RGBA values by texture-storage identity and quantized current UV.
Current primary/light and half vectors, diffuse/specular arithmetic and
environment sampling remain fresh. It stores neither previous final RGB nor
screen coordinates, and does not reproject an image or accumulate rounded
image deltas. It tests the user's cached-base-material/relighting idea
separately from screen-space history and motion reconstruction.

Per-worker direct-mapped tables are bounded and owned exclusively during a
joined shader dispatch. Colliding entries produce fresh samples. Unsupported
dimensions or allocation failure use the ordinary sampler. One-texel
constant textures retain the original shortcut. The cache is opt-in per
capture; omitting the API on a subsequent capture restores ordinary shading.
Current geometry, depth, alpha tests, winners, sample masks and MSAA coverage
are unchanged. Geometry/front-end cost is not reduced by this cache.

V2 uses 32,768 entries per callback slot and eight UV bins per source texel
(a 1/8-texel cell). Its initial invalidation hooks covered public texture
entry points, not internal display-list replay; it was never deployed.
V4 corrects that limitation: all thirteen actual upload/subupload/copy,
parameter and deletion functions advance a context texture epoch, including
display-list execution. Validation occurs at the mode request and again
before joined shading. Texture storage must remain valid until the joined
capture completes, as in the existing scene pipeline.

V4 enlarges each table to 131,072 entries and offers 1/8-, 1/2- and 4-texel
cells. Its exact-key diagnostic uses raw float UV bits. Mode changes and
texture epochs clear the tables. Records hold original float sampler results,
not additional 8-bit rounded colors. Values are sampled freshly at the first
encountered UV within a cell; this is **not** an averaged or band-limited
texture reconstruction. Entry eviction and worker assignment affect which
UV is retained. Approximate normal/albedo errors can alter current specular
response even though the lighting calculation is fresh.

The final V5 guard adds the eight effective nearest/linear and repeat/clamp
sampler states to aligned texture-address keys, using the otherwise unused
low three address bits. Unaligned storage falls back to fresh sampling.
This prevents captured draws with differing sampler settings from sharing
incompatible values. V5 is fixture-validated, not performance-measured;
the screen results below remain those of frozen V2 and V4.

Four-thread native draws allocate 4 MiB for V2 and 16 MiB for V4. With the
configured maximum of eight helpers plus caller, V4 is bounded at 36 MiB.
This is cache storage, not total browser memory; full-asset browser memory
has not been validated for the optional mode. Cache allocation and clearing
within rendering are included in measured frame time; asset load remains
outside the resident trial as for baseline.

## Measurements and decision

The first two screens prioritize Bistro/Sponza with genuine 4× MSAA,
original assets/textures/cameras, 640×360 and four total threads. Each uses
60 warm-up and 30 measured orbit frames per request and one AB/BA block per
scene. Sixteen selected records have no rejected-load blocks. These are
screening results, not accepted reproducible speedup claims.

| Scene | Fine V2 cache: frame time change | Coarse V4 cache: frame time change | Coarse V4 baseline → candidate |
| --- | ---: | ---: | ---: |
| Bistro | +2.97% | +7.03% | 55.092 → 58.962 ms |
| Sponza | +23.56% | +19.92% | 44.611 → 53.499 ms |

Both Bistro directions regress in V4: baseline 55.094/55.089 ms, candidate
59.328/58.597 ms. Sponza's baseline varies greatly, 51.194/38.028 ms, so its
aggregate regression magnitude is uncertain; both directions still regress.
The larger/coarser cache does not show a useful complete-frame gain. Probe,
hash, memory and partial-packet sampling costs are included; a hit count is
not time saved. Capacity and quantization were changed together, so this
screen does not isolate the contribution of either change.

Three quality campaigns compare nine successive poses per scene: V2 fine,
V4 coarse and V4 disabled control, 54 paired original-model views in total.
Current resolved depth, all actual 4× sample depths and stencils are exactly
equal. The disabled control is also exactly equal in RGBA. Fine V2 shows
about 0.1–0.2% cache hits and worst image-average RGB byte errors of
0.000026/0.000111 for Bistro/Sponza. Coarse V4 records 22.3–36.0% and
43.9–55.1% hits, with worst image-average RGB byte errors 0.24450/1.44643.
These rates are for the quality pose sequence, **not** the timed orbit.
They include both within-frame and previous-frame reuse; temporal hits have
not been separated from spatial hits.

Actual native images at 160° were inspected for both scenes. Bistro changes
subtly, while Sponza's blue banner becomes noticeably mottled and loses fine
texture detail. The method does not deliver the proposed soft prefiltering.
Static means do not establish motion quality or absence of temporal artifacts;
no native/browser clip or speed-dependent sequence-quality audit was run.
Larger permitted image errors are not the veto: measured frame time is worse,
and the coarse first-sample reconstruction also needs a better filter.

Enabled ASan/UBSan fixtures with clang 19 and actual SIMD128/pthread WASM
fixtures each compare 360 frames per V4/V5 version at OFF/2×/4× with one or
three helpers: 1,440 pairs in total.
They exercise all modes, changing lighting/poses, alpha tests, genuine cache
hits, six display-list texture edits, default-mode reset and rollback. Depth
and stencil remain exact; disabled and raw-UV exact-key modes also preserve
sample colors exactly. V5 additionally tests different captured nearest/linear
samplers within one frame. Each run records over twelve million cache hits.
The sanitizer compiler differs only because the installed clang 22 sanitizer
runtimes are unavailable; all native performance binaries use clang 22.
These fixtures prove neither full-model WASM performance nor browser quality.

Decision: do not adopt this scalar hash-cache design or spend a full four-model
OFF/2×/4× repeat campaign on its current regressions. No new Mesa/GLimpSW
comparison was run. V1 and V3 are build-only intermediate revisions, not timed
candidates; V2 and V4 measured sources are frozen separately. Better sampling
rates, a prefiltered representation and actual visibility reduction remain
the useful architectural directions. The reverse-reprojection goal and the
GLimpSW performance target are still open.

## Retained sources and reproduction

[Native validation](native-validation/artifacts.json) retains both exact
source patches, recipes, source/archive hashes, generated compiler flags,
unchanged runner receipts, command logs and native SIMD128 scans. The verifier
reconstructs both measured trees and the fixture-only V5 tree from their
pinned baseline and checks
the ordinary shader/resolve bodies and all retained checks. Generated images,
executables, caches and WASM binaries are excluded from Git.

```sh
build/python/bin/python experiments/scene-temporal-shading-reuse/prepare.py \
  --output-root build/scene-temporal-shading-reuse/fresh
cmake -S experiments/scene-temporal-shading-reuse \
  -B build/scene-temporal-shading-reuse/fresh/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-temporal-shading-reuse/fresh" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-temporal-shading-reuse/fresh/native -j4
build/python/bin/python experiments/scene-temporal-shading-reuse/verify_native.py
```

Use the retained per-version recipe/patch for historical parameters. Current
variants are `candidate` (1/8 texel), `coarse` (1/2 texel), `coarsest` (4 texels),
`exact` (raw UV key), `control` (disabled) and `baseline` (production library).
The private `softgl_scene_material_cache()` and diagnostic hit-count API are
not part of the production library or browser viewer.
