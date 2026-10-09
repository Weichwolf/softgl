# Sparse current samples with temporal antialiasing reconstruction

Status: queued alternative render path; unimplemented and unmeasured. Distinct
from caching shading while retaining genuine current-frame 4× MSAA coverage.

## Sources

- Yang et al., [Amortized Supersampling](https://www.leiy.cc/publications/AMSS/AMSS.pdf),
  SIGGRAPH Asia 2009: reuse samples across frames rather than gathering all
  supersamples anew in each frame.
- Yang, Liu and Salvi, [A Survey of Temporal Antialiasing Techniques](https://www.leiy.cc/publications/TAA/TemporalAA.pdf),
  Eurographics 2020: sample accumulation, history validation and reconstruction.
- Yang and Bowles, [Bidirectional Iterative Reprojection](https://www.leiy.cc/publications/BiReproj_SIGG12/bireproj-sigg12.pdf),
  SIGGRAPH 2012 course: keyframes, iterative image reprojection and disocclusion
  handling. Bidirectional interpolation using a future frame adds latency;
  test it separately from causal reuse of past frames.

## Proposed variants

1. Render one current sample per pixel with a controlled subpixel jitter,
   current depth/material identity and camera/object motion. Reproject and
   accumulate valid history. Refresh newly visible areas and reset history on
   cuts, resize or incompatible changes. Test 2× plus history as another point
   on the quality/time curve. Neither is equivalent to genuine current 4× MSAA.
2. Reuse shading history with current coverage first, then test reuse of stable
   visibility tiles to reduce raster work as well. Repair uncertain regions
   with fresh scene rendering. Include repair and all validation in timing.
3. Test codec-like keyframe intervals and incremental reconstruction. Begin
   with causal history; future-keyframe interpolation is a separate mode whose
   presentation FPS, fresh-render rate and input latency are all reported.

Use an actual integration opt-in, separate color/depth history and an explicit
scene-change epoch plus state validation. Check surface identity, not only
depth proximity. Preserve responsive transparency/highlights through fresh
evaluation or faster refresh. Partial unsupported draws must either invalidate
the relevant history or use the normal renderer. Allocation failure and invalid
history fall back before writes; cap history storage and measure total WASM
heap below 4 GiB. Native and WASM kernels use SIMD128 exclusively.

## Quality and timing

The user accepts video-like softness and some temporal artifacts for substantial
speed gains, so byte equality or a universal one-byte threshold is not required
for this optional mode. Compare moving sequences against a fresh reference at
every pose: slow/fast motion, still frames, starts/stops, cuts, thin objects,
cutouts, animations, dynamic lighting and disocclusions. Track response lag,
ghosting, detail convergence and reset/refresh spikes as well as image error.

Run original four scenes/cameras, 640×360 and four total threads. Preserve
identical tested poses and output delivery in native AB/BA. Show ordinary
OFF/2×/4× and temporal modes distinctly alongside Mesa and GLimpSW; the latter
has no native MSAA. Do not convert repeated old frames into claimed fresh-render
FPS. Expose the alternative in the browser for motion inspection after a real
implementation passes safety/material/geometry checks. Default GL tests keep
their original paths and tolerances. Commit/push accepted gains and update WASM.

The user's incremental-image proposal is tracked separately in
[motion-compensated residuals](../scene-motion-compensated-residual/README.md):
transport valid surface history by geometric motion and compute selected current
corrections. Its acceptance target includes no persistent ghost trails and
fresh disocclusion repair; geometric velocity alone is insufficient for all
lighting, transparency and reflection changes.
