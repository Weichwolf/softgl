# Dynamic error budgets and calibrated quality profiles

Status: offline calibration prototype; runtime controller/profile selection
unimplemented, speedup unmeasured. User proposes dynamic MSE minimization and
optimized profiles. Scope is optional scene rendering, C11/SIMD128, 640×360,
four total threads, original assets/cameras. Ordinary GL tests retain defaults.

## Sources

- Yang et al., [Content and Motion Adaptive Shading](https://www.leiy.cc/publications/nas/nas-pacmcgit.pdf),
  I3D 2019: content/motion estimates choose shading rates.
- Wang et al., [Image Quality Assessment: From Error Visibility to Structural Similarity](https://www.cns.nyu.edu/~lcv/ssim/),
  IEEE TIP 2004: explains why squared error alone does not capture perceived
  structural quality. Use MSE with additional edge/temporal assessment.
- Schied et al., [Spatiotemporal Variance-Guided Filtering](https://research.nvidia.com/labs/rtr/publication/schied2017spatiotemporal/),
  HPG 2017: temporal statistics guide reconstruction of noisy path-traced
  illumination. Reprojection mismatch/bias in our raster cache is a different
  error source; low measured variance does not certify a correct history.
- [FLIP implementation](https://github.com/NVlabs/flip): used offline by the
  [luma/chroma experiment](../scene-codec-luma-chroma/README.md), not inside
  the timed renderer or as a guarantee about temporal quality.

## Proposed controller

Minimize estimated distortion within a complete frame-time budget, or minimize
frame cost subject to an estimated quality budget. These are separate profile
choices. MSE is a cheap signal; a mathematically global minimum cannot be
claimed without the full reference and real costs of every alternative.

For small tile/surface groups keep estimates of distortion, execution cost,
age and confidence for full shading, coarse lighting, coarse chroma and history
reuse. Schedule upgrades with high expected error reduction per added cost.
Use bounded buckets rather than per-fragment sorting; measure classifier and
queue overhead. Keep luminance/chroma and material-boundary penalties separate.
Do not average empty background into the only quality criterion or let global
MSE hide a small severe artifact. Add local outliers and motion-aligned temporal
error, plus fresh evaluation at new visibility or invalid history.

Rotate sparse fine-shaded validation probes over current visible surfaces.
Compare candidate and full shading at the same current sample and state; old
image differences also contain legitimate scene changes. Uniform samples can
estimate mean error, but sparse probes can miss rare colored edges. Supplement
them with geometry/material boundary probes and high-uncertainty refresh.
Probe cost is part of rendering; evaluating a complete reference every frame
would discard the intended savings. Confidence, exploration and hysteresis
must prevent stale policies from repeatedly declaring their own output good.

Provide profiles such as Quality, Balanced and Speed only after measuring
actual time/quality curves. Calibrate shared rate/refinement/history settings
on multiple cameras, then validate withheld poses and moving sequences; do not
key profiles to benchmark names or specialize image contents. Native and WASM
may use separately measured cost weights but share SIMD128 algorithms and
quality semantics. Reset on incompatible state; make adaptation deterministic
for native comparisons. No controller can guarantee zero ghosting simply from
a low MSE or a geometric velocity vector.

## Offline calibration

`mse_probe.py` consumes the existing 72 static filtered quality proxies. It
reports encoded RGB MSE/RMSE, linear RGB MSE, foreground-only errors using the
original physical sample depths, local 8×8 errors, and simulated sparse probes
at 4/64 and 16/64 pixels per tile over sixteen fixed seeds. The 8-byte tile-RMSE
threshold measures missed outliers for this diagnostic; it is not a user
acceptance limit. Pixels are already fully rendered, so neither sampling cost
nor runtime MSE control nor temporal stability is measured. The simulated
uniform probes are a calibration baseline, not the finished runtime sampler.

```sh
build/python/bin/python experiments/scene-error-budget-profiles/mse_probe.py \
  --quality tmp/scene-codec-luma-chroma/v2-quality-proxy-cxx17 \
  --reference tmp/scene-msaa-grid-reduction/v1-quality \
  --output tmp/scene-error-budget-profiles/new-mse-probe
```

Retain all seeds/errors and source identities in per-experiment validation;
inspect outlier regions in motion before adopting any setting. After real
integration, require repeated native AB/BA, genuine OFF/2×/4× comparisons and
separately labeled temporal modes, browser memory below 4 GiB and actual WASM
inspection. Commit/push each accepted gain and update the live viewer.

## V1 calibration findings

All 72 candidate images were assessed using both probe densities and sixteen
seeds: 2,304 simulated sampling cases. Fine luma/coarse chroma has pooled encoded
RGB RMSE of 2.815 bytes in Bistro and 2.231 in Sponza; coarse RGB gives 14.335
and 7.146. Foreground-only assessment exposes the empty-background bias in the
small scenes: BMW fine luma/coarse chroma is 1.313 bytes over the whole image
versus 2.610 over covered pixels; T-80 is 0.539 versus 1.264. Foreground RMSE
equally averages per-pose foreground MSE before taking the square root.

Four random pixels per 8×8 tile consume 6.25% of pixel locations in this
simulation. Mean absolute relative error in the global MSE estimate is about
3.71% for Bistro fine luma/coarse chroma and 1.88% for Sponza. Yet about
50.6%/50.7% of actual tiles above the diagnostic 8-byte RMS threshold are
classified below it. Sixteen pixels per tile reduce this miss rate to about
31.5%/27.1%, while probing 25% of pixels. These are means over fixed seeds and
eligible poses, not renderer time costs or probabilities for arbitrary scenes.
T-80 fine luma/coarse chroma has no above-threshold tiles in these images.

Conclusion for the runtime design: sparse global MSE feedback alone is not
enough to enforce local quality. Combine it with boundary/uncertainty probes,
local confidence and fresh repair. The profile/controller itself remains
unimplemented, and motion/ghosting has not been tested. Detailed records and
all seed estimates are retained in [validation](validation/receipt.json).
