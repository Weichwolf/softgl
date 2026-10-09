# Codec-like luma/chroma and multi-rate material shading

Status: priority prototype; architecture specified, offline quality proxy
evaluated, renderer integration and speedup unmeasured. Optional scene mode; ordinary GL
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
build/python/bin/python experiments/scene-codec-luma-chroma/quality_probe.py \
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
[temporal reconstruction](../scene-temporal-sample-reconstruction/README.md),
[motion/focus budget](../scene-shutter-budget/README.md).
