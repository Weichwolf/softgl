# Codec-like luma/chroma and multi-rate material shading

Status: private native prototypes measured; coarse full shading has repeated
Bistro/Sponza gains, but is visibly blocky and not adopted. Optional scene mode; ordinary GL
tests retain the default renderer. C11/SIMD128 in native and WASM, four total
threads, original packs/cameras, 640×360 only.

## Sources

- [AV1 specification](https://github.com/AOMediaCodec/av1-spec), pinned locally
  at `5e04f3f75e73a5898d7616c47c52f032144b8f80`: chroma subsampling and
  chroma-from-luma prediction. This is a codec reference, not a rendering
  speedup result. Local clone: `~/Git/av1-spec`.
- He, Gu and Fatahalian, [Adaptive Multi-Rate Shading](https://graphics.cs.cmu.edu/projects/multirate/),
  SIGGRAPH 2014: components of shading are evaluated at different spatial rates.
  [Author-hosted PDF](https://pal.cs.ucr.edu/papers/2014/SIGGRAPH14/multirate.pdf).
- Clarberg et al., [AMFS](https://fileadmin.cs.lth.se/graphics/research/papers/2014/amfs/),
  SIGGRAPH 2014: adaptive shading reuse across triangles in parametric patches.
  Our imported meshes have no subdivision-patch parameterization; importing
  the hardware architecture directly would not establish a CPU gain.

## Proposed renderer experiment

The current `scene_shade_packet` evaluates normal/DOT3, albedo, environment,
specular and final color for each visible shading group. Fine luma cannot be
assumed to cost one-third of RGB: the texture fetches, lighting and nonlinear
clamps are shared costs. A post-render RGB-to-YCbCr filter saves no shader work.

Split actual evaluation into a fine material stage and a coarse lighting stage:

1. Keep current coverage, alpha rejection and depth at their original sample
   rate first. On 2×2 cells, choose valid representatives separately for each
   visible material/surface. Start with strict primitive identity, then test
   more permissive surface/depth/normal continuity as an explicit variant.
2. Evaluate normal-dependent diffuse/specular and environment lookup only at
   representatives. Cache intermediate lighting rather than only final RGB.
   Repack representatives into full four-lane SIMD128 packets; sparse masked
   packets can otherwise consume nearly the original computation.
3. Evaluate albedo and UV interpolation at fine rate. Compose a fine luma
   estimate using coarse lighting, then reconstruct color with coarser chroma.
   Compare this with coarse lighting plus full fine RGB: the latter may cost
   little more and preserve colored edges better. Keep alpha independent.
4. Add edge-aware chroma reconstruction and optional temporal reuse only after
   measuring their own overhead. Use 2×2 first, then adaptive 4×4 regions.
   Geometry/material boundaries and abrupt shading changes request finer work.

This is our proposed CPU adaptation. It is not an AV1 encoder, a literal
implementation of AMFS, or a guaranteed fixed 4:2:0 grid: boundary refinement
may require additional samples. Use explicit full-range color conversion and
pixel-center/chroma-siting conventions. The displayed renderer RGB is treated
as encoded display values for the first offline probe; this does not change
the engine's lighting color-space semantics.

## Measurement and implementation gates

The offline probe compares box-filtered/coarse chroma with coarse full RGB on
the existing original model renders. It is a quality proxy only: all input
pixels were already rendered, so it cannot prove a shader saving or FPS gain.
Report channel error, luma error, clipping, FLIP at stated viewing assumptions,
and images at their actual 640×360 size. Motion must be checked separately.

Renderer timing includes representative selection, packet compaction, cached
intermediate storage, fine sampling and reconstruction. Keep a bounded scratch
allocation with fallback before state mutation; measure browser total memory
below 4 GiB. Do not introduce shared cross-worker writes without joined phases.
Compare native OFF/2×/4× repeatedly in AB/BA, prioritizing Bistro > Sponza > BMW
> T-80. Compare the combined production changes, including temporal history.

Expose an optional browser choice with actual native/WASM output before
adoption. Report genuine 4× coverage distinctly from the later temporal-AA
alternative. Preserve generic correctness, material/geometry checks and
SIMD128/ASan gates. Commit/push accepted gains and update live WASM.

## Offline proxy results

Two post-render quality proxies were evaluated on four original scenes, nine
poses each, genuine input 4× MSAA, 640×360. Each of the 72 candidate images was
evaluated with LDR-FLIP at 60 and 90 pixels/degree: 144 image comparisons plus
four evaluator controls. Identical black inputs return zero; black versus
white returns a positive difference. The upstream FLIP clone is clean and
pinned; the C++17 offline helper uses SSE4.1 and explicitly disables AVX.
This C++ helper does not migrate the C11 renderer or enter WASM runtime code.

| Scene | Fine Y/coarse chroma: mean channel error, bytes | Coarse RGB: mean channel error, bytes | Fine Y/coarse chroma: mean FLIP at 60 PPD | Coarse RGB: mean FLIP at 60 PPD |
| --- | ---: | ---: | ---: | ---: |
| Bistro | 1.249 | 9.068 | 0.01568 | 0.08588 |
| Sponza | 1.119 | 4.380 | 0.01074 | 0.04392 |
| BMW F31 | 0.161 | 1.661 | 0.00322 | 0.02138 |
| T-80 | 0.098 | 0.542 | 0.00135 | 0.00766 |

Numbers average nine whole-frame images equally; scene backgrounds remain in
the images. Neither these averages nor FLIP establish an invisibility bound.
Worst individual channel errors for fine Y/coarse chroma are 123/66/103/19
bytes respectively. Fine nominal luma also changes slightly after RGB gamut
clipping and 8-bit rounding. Colored boundaries therefore need refinement or
surface-aware reconstruction rather than unconditional subsampling.

Visual inspection of Bistro angle160: fine luma retains masonry, railings and
sign lettering much better than coarse RGB; coarse RGB noticeably softens
them. Both are static filtered images, not evidence about motion, missing
geometry, a runtime shader implementation or an FPS gain. The next native
prototype should compare coarse lighting with fine RGB against coarse lighting
with fine luma/coarse chroma. Fine RGB may be almost as cheap once lighting and
texture fetches dominate. Coarse scheduling and fine scheduling should be
separate joined phases with compact four-lane tasks.

Run the reproducible probe with the repository Python environment containing
NumPy/Pillow and the clean pinned FLIP clone:

```sh
.venv/bin/python experiments/scene-codec-luma-chroma/quality_probe.py \
  --reference tmp/scene-msaa-grid-reduction/v1-quality \
  --output tmp/scene-codec-luma-chroma/new-quality-proxy
```

The output directory must be fresh. Full image/error maps stay in ignored
`tmp/`; source identities, per-image metrics, controls and raw stdout/stderr
are retained in [validation](validation/receipt.json). The first C++14 build
failed in upstream color-map construction; its diagnostic/recipe is retained,
and the successful C++17 attempt uses a separate output directory. No upstream
source was modified. The black/white control also exposed accumulation error
in the upstream single-precision mean (0.968518, exceeding its 0.967385 maximum).
The final adapter sums the unchanged FLIP error map in double precision and
retains the upstream mean for comparison. Every final mean is checked against
NumPy's double-precision sum; the first completed recipe/receipt is retained
separately. Verify retained bytes and tested local source identities
with `python3 experiments/scene-codec-luma-chroma/verify_archive.py`.

Related experiments: [perceptual budget](../scene-perceptual-frequency-budget/README.md),
[temporal reconstruction](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-temporal-sample-reconstruction/README.md),
[motion/focus budget](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-shutter-budget/README.md).

## Actual renderer prototypes

These are C11 renderer implementations, separate from the offline filtered
images above. They retain current geometry, alpha rejection, depth and genuine
OFF/2×/4× sample coverage. There is no temporal reuse or fine-luma/coarse-chroma
renderer yet. Representatives are chosen in 2×2 cells inside owned worker
stripes, compacted into four-lane packets, then joined before reconstruction.
The prototype has a 64-MiB scratch cap and allocation fallback before raster
writes; the latest 640×360 4× scratch is 28.125 MiB.

- V1: coarse normal-dependent lighting/environment, fine albedo/RGB/alpha;
  reuse requires the same primitive.
- V2: also reuse across primitives of the same material whose normalized
  depths differ by at most 0.002. This is a heuristic, not proof of surface
  continuity. Diagnostic mode 3 selects every group independently, and mode 0
  disables the experiment.
- V3: coarse complete shading, copying representative final RGBA into the
  current fine groups. Final alpha is also approximated; the existing fine
  alpha-test coverage remains unchanged.
- V4: the same choices with dedicated coarse/fine/copy kernels and callbacks.
  The ordinary packet shader and resolver are unchanged in source, avoiding
  a mode/phase branch in each ordinary packet. This is not a guarantee that
  the entire linked binary has unchanged performance.

V1/V2 screens do not support adoption: Bistro 4× frame time rises 1.77/2.72%,
Sponza 4× rises 13.42/17.89%. Fewer expensive lighting groups do not compensate
for fine-stage interpolation, scheduling, cache accesses and reconstruction.
V2's representatives are about 21.8% of Bistro's original 4× shading groups
and 18.9% of Sponza's, aggregated over nine poses. These are work counts, not
elapsed-time fractions. V3's first screen improves Bistro 4× by 11.26% and
Sponza 4× by 13.66%, but regresses BMW 4× by 5.57%.

V4 repeats use native clang 22.1.8, SSE4.1 only, the unchanged original packs
and cameras, 640×360, caller plus three helpers, 60 warm-up and 30 orbit
frames per request. Three complete AB/BA blocks per scene/mode yield 144
selected runs; 28 rejected runs remain in the receipt. Entire blocks with
foreign CPU load above 0.1 cores are rejected, never individual fast/slow runs.
This monitoring does not eliminate hypervisor/frequency drift: Sponza OFF
baseline requests range from 19.7 to 29.3 ms. Per-block results are retained.

| Scene | OFF frame-time change | 2× change | 4× baseline → candidate, ms | 4× change |
| --- | ---: | ---: | ---: | ---: |
| Bistro | −12.58% | −11.68% | 54.699 → 49.279 | −9.91% |
| Sponza | −7.43% | −9.53% | 37.728 → 33.118 | −12.22% |
| BMW F31 | −2.25% | −1.02% | 17.299 → 17.847 | +3.16% |
| T-80 | −14.63% | −10.62% | 14.297 → 12.582 | −12.00% |

Bistro and Sponza improve in each of their three 4× blocks; BMW 4× regresses
in each. The T-80 OFF direction is mixed across blocks. Negative percentages
mean lower frame time; these are not FPS percentages. The candidate remains
far from GLimpSW performance; no new three-renderer comparison or accepted
production gain is claimed.

## Native quality and execution checks

Across V1–V4, 810 paired model views compare RGBA, resolved/sample depth and
stencils. All measured depth/stencil planes remain byte-identical. V4 has 108
coarse, 108 disabled-control and 54 complex-scene lighting pairs; its disabled
control is RGBA-exact in every view. V4's coarse images exactly reproduce
V3's, and its Bistro/Sponza lighting images exactly reproduce V2's.
The model driver does not dump sample color. V2's no-reuse identity diagnostic
is RGBA-exact in 72 of 108 model pairs; forcing deferred rendering for BMW/T-80
MSAA accounts for small changes in the other views and is explicitly distinct
from representative reuse.

Actual native images were evaluated with LDR-FLIP at 60 pixels/degree for
angle160 in all scenes/modes. Bistro/Sponza 4× mean FLIP is 0.02380/0.01173
for V1, 0.06483/0.03232 for V2 and 0.10808/0.06779 for V3/V4.
These are whole-frame static metrics, not invisibility bounds. Visual
inspection of Bistro 4× shows blocky masonry, lettering and foliage. The
nearest representative is visibly different from the smooth offline
box/bilinear proxy. A softer reconstruction, prefiltered material evaluation
and moving-image validation remain outstanding; a one-byte maximum is not an
acceptance requirement for this optional perceptual path.

V4's enabled fixture checks 540 paired frames across all five choices,
OFF/2×/4× and one/three helpers, including clipping, culling, alpha tests,
mode reset and rollback. It runs both with ASan/UBSan and as an actual
SIMD128 pthread WASM module. Depth/stencils and disabled-mode color/sample
color are exact against its full-shading control. Sanitizers use Debian
clang 19; the first clang 22 link failed because its ASan runtime archives
are absent, and that diagnostic is retained. Performance remains clang 22.
WASM fixtures do not validate full-model browser memory, motion quality or
browser performance. The optional path is not deployed in the viewer.

Frozen recipes, reconstructible patches and receipts are in
[native-validation](native-validation/artifacts.json). Full images and maps
remain in ignored `tmp/`. Reproduce V4 into a fresh root:

```sh
.venv/bin/python experiments/scene-codec-luma-chroma/prepare_renderer.py \
  --output-root build/scene-codec-luma-chroma/new-specialized
cmake -S experiments/scene-codec-luma-chroma \
  -B build/scene-codec-luma-chroma/new-specialized/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-codec-luma-chroma/new-specialized"
cmake --build build/scene-codec-luma-chroma/new-specialized/native -j4
```

Use the retained `resident_diagnostic.py` command in the timing receipt for
AB/BA measurements. `contract.py --root <root> --output <fresh-directory>`
accepts `--cc /usr/bin/clang-19` for sanitizers or `--wasm` for SIMD128 WASM.
Verify retained bytes and reconstructed candidates using
`python3 experiments/scene-codec-luma-chroma/verify_native.py`.
