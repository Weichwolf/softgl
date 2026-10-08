# Exact admitted-state MSAA kernel with current-frame occlusion

Status: native exactness validated; four-only variant not adopted after the
user-requested fresh repeat against accepted `da48afd`.

Combine the existing admitted-state 2×/4× raster specialization and exact
SIMD128 four-sample recurrence with the accepted current-frame depth hierarchy.
The earlier specialization removed the hierarchy query; explicitly restore
that conservative test before both kernels, retain real accepted sample-depth
updates, and invalidate the hierarchy after failed-capture rollback. Use the
captured material's alpha state rather than the context's final draw state.

The four-sample vector path retains each vertex's original 1/256-pixel position.
Represent each biased edge as `floor(E/256)` plus its low eight bits. SIMD128
updates the four sample edges, restoring the exact raw edge before the original
float depth conversion. Area/span and rectangle-range checks select this path;
unproved cases fall back to the original exact specialized scalar kernel.
Coverage, per-sample depth, alpha sampling point and deferred winner capture
retain their original semantics. No metadata/triangle-compaction change is
mixed into this variant, and native instructions remain limited to SIMD128.

Validate independent native full-plane, canonical, mixed-alpha, tiny and
ordinary-draw-after-rollback fixtures; audited vector dispatch and hierarchy
updates/rejections/rollback; then 108 exact paired asset views. Screen Bistro
quietly at 640×360, four total threads, 60 warm-up/30 orbit frames and AB/BA.
Any selected gain additionally requires repeated all-four OFF/2×/4× controls,
native suite, sanitizer, actual WASM contracts/context reuse and live browser
checks below 4 GiB before adoption, commit/push and live WASM refresh.

```sh
python3 experiments/scene-msaa-exact-kernel/prepare.py --vector
cmake -S experiments/scene-msaa-exact-kernel -B build/scene-msaa-exact-kernel/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-exact-kernel/native -j4
```

Use a separate build with `SOFTGL_MSAA_VISIBILITY_AUDIT=ON` for `msaa_contract`.
Choose a fresh `--output-root` when generating another frozen variant. Preserve
previous source/binary identities and attempted measurements.

Sources: our own [original specialization](../scene-msaa-visibility/specialize.py),
[exact SIMD128 edge recurrence](../scene-msaa-visibility/vector_raster.inc),
[accepted current-frame hierarchy](../scene-msaa-occlusion/README.md), and
[ordinary rollback regression](../../tests/scene_msaa.c). This combines local
implementation work; no external benchmark substitutes for measurements here.

## First vector trial

216 independent native full-plane hashes, canonical/mixed-alpha and ordinary
draws after failed near-occluder rollback pass. Actual audited dispatch records
22,463 vector triangles; hierarchy updates, rejections and all 12 rollback
invalidations remain active. All 108 paired common-asset views have identical
RGBA/depth/stencil/sample planes. ISA audit finds no AVX/YMM/ZMM.
[Frozen first-trial evidence](validation/vector-v1/).

One quiet AB/BA block per Bistro mode retains 12 accepted/zero rejected runs.
Frame-time change is OFF −0.86%, 2× +3.04%, 4× −5.30% (74.951→70.975 ms).
This screen alone establishes no gain. The fresh `--vector --four-only` variant
keeps 2× on its original kernel and tests all four models × OFF/2×/4× in three
balanced blocks. No full-suite/sanitizer/WASM/browser/adoption claim is made
before those gates actually run.

The first four-only three-block series is retained under
[interfered evidence](validation/four-only-v1-interfered/), explicitly excluded
from performance acceptance: the user reported a concurrent workload and asked
for a fresh measurement. All 144 accepted/4 quiet-gate-rejected original attempts
remain recorded; the guest foreign-CPU gate did not detect that external load.
An untimed baseline scene-stat diagnostic completes all 819 requested renders
(nine trials × 90 orbit/warm-up frames plus nine final views) through deferred
scene end, with maximum triangle allocation 79,953,920 bytes. It establishes
that this diagnostic did not fall back, not that the disturbed timing is valid.
The fresh repeat uses the identical frozen binaries, 640×360/four threads,
OFF/2×/4×, 60 warm-up/30 orbit frames and three balanced blocks per asset/mode.

## Fresh repeat after user-reported interference ended

[Repeat receipts](validation/four-only-v1-repeat/) retain **144 accepted and
24 quiet-gate-rejected attempts**, all four scenes and OFF/2×/4×. Frame-time
changes against the accepted renderer:

| Mode | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| OFF | −0.96% | +3.62% | −4.11% | +1.17% |
| 2× | −0.89% | −0.46% | −1.83% | +3.30% |
| 4× | −0.32% | +0.12% | −2.08% | −2.53% |

Bistro4: **74.551→72.665 ms, 13.414→13.762 FPS (+2.60%)**. The original
approximately 5% screen is not reproduced at that size. Bistro2 changes
59.516→61.479 ms, a regression. This does not meet the next twofold Bistro FPS
target and is not adopted. Other assets' MSAA hints select their original
forward renderer; these small changes do not establish algorithmic gains.
No production/native full-suite/sanitizer/WASM/browser/adoption claim is made;
production and the live WASM server remain `da48afd`.

The prepared `--vector --four-only --outline-dispatch` follow-up leaves the
ordinary raster entry point unchanged in source and moves canonical 4× setup
to a separate helper. Its quality/performance are unmeasured. It tests whether
adding scene conditions to shared setup contributes to the observed 2× cost;
the current evidence does not establish that cause. The independent
[large-range fixture](large_contract.c) additionally checks actual scalar
fallback and its full-plane results rather than assuming the vector guard is
exercised by the smaller ordinary fixture. Six large-triangle opaque/cutout
cases with 1/3/8 helpers have exact independent baseline/candidate full-plane
hashes; the instrumented candidate proves actual vector range rejection and
scalar fallback. Those outputs are retained with the fresh-repeat evidence.
