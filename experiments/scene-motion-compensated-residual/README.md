# Motion-compensated image corrections with selective fresh shading

Status: proposed optional path; unimplemented/unmeasured. User requests
incremental image changes to reduce flicker, with velocity-dependent handling
and no ghost trails. This is a design and validation target, not an established
artifact-free implementation.

## Sources

- Yang and Bowles, [Bidirectional Iterative Reprojection](https://www.leiy.cc/publications/BiReproj_SIGG12/bireproj-sigg12.pdf),
  SIGGRAPH 2012 course: iterative reprojection, keyframes and disocclusion
  handling. Causal past-frame reuse is separate from future-frame interpolation.
- Yang, Liu and Salvi, [Temporal Antialiasing Survey](https://www.leiy.cc/publications/TAA/TemporalAA.pdf),
  Eurographics 2020: validates history, accumulates samples and discusses blur
  and ghosting. Validation has to follow current surfaces.
- [AV1 specification](https://github.com/AOMediaCodec/av1-spec), locally pinned
  at `5e04f3f75e73a5898d7616c47c52f032144b8f80`: inter prediction with
  motion compensation plus residual reconstruction. Codec motion estimation
  is not required when renderer transforms provide geometric motion.

## Proposed renderer adaptation

Let P be the previous valid surface image warped to the current camera/object
pose. The displayed image is P plus a reconstructed current correction R.
Computing R as the difference between a completely freshly rendered current
image and P saves no work. Instead, compute fresh lighting/material corrections
only at selected current surface samples and reconstruct the rest using
validated predicted values, coarse probes and confidence/refresh budgets.
This changes the producer, not just the final presentation filter.

Use previous and current camera/object transforms to obtain surface motion;
never average histories at fixed screen coordinates. Keep surface/material
identity and current depth/coverage. Reject history at cuts, changed state,
depth/ownership disagreement, invalid motion, newly exposed surfaces and failed
visibility. Newly revealed background and moving silhouettes receive current
fresh shading before presentation. Allocation failures use the ordinary path.
Separate transparent/view-dependent materials and moving-light corrections:
their image changes are not completely described by geometric motion.

Represent corrections at more than one rate: fresh broad luma/light changes,
coarser chroma, selectively refreshed fine detail. Transport detail with its
surface and damp only the uncertain high-frequency residual, not the object's
position or strong legitimate color changes. Avoid a long whole-image EMA:
it can reduce flicker while introducing response lag and ghost trails. Use
confidence and fresh probes to shorten history where reconstruction disagrees.
Neighborhood clipping is a guard, not proof that the correct surface was used.

Keep predictor/history and display state explicit. Store a bounded float or
adequate-precision history and quantize once on delivery, rather than endlessly
adding rounded 8-bit deltas. Periodic fresh anchors limit drift; keyframe and
repair costs, spikes and memory remain part of performance. Corrective probes
may force early refresh even before a nominal keyframe interval expires.

## Acceptance and relation to other paths

Compare motion-aligned error against a current fresh reference at every pose.
Inspect trailing contours, foreground occlusion, disocclusion, start/stop lag,
camera cuts, thin foliage, glossy highlights and independent object/light
motion. Report local residual/outlier errors and temporal sequences, not only
global MSE. Reject visible persistent trails or broken material/geometry output
even if average error is low. Motion vectors alone cannot guarantee the result;
the reset, rejection and selective repair paths must actually be exercised.

Test C11/SIMD128 native and WASM, 640×360, four total threads and original packs.
Begin with genuine current coverage plus cheaper shading corrections; reduced
current samples are a distinct later [temporal-AA path](../scene-temporal-sample-reconstruction/README.md).
The [error-budget controller](../scene-error-budget-profiles/README.md) can
choose refresh and refinement, and [multi-rate shading](../scene-codec-luma-chroma/README.md)
provides the spatial component. Present a separate optional browser mode with
current-pose output; do not claim reused/interpolated presentation frames as
fully fresh render FPS. Timing includes motion/validation/probes/repair/output.
Require repeated AB/BA and browser memory below 4 GiB before adoption, then
commit/push and update live WASM.
