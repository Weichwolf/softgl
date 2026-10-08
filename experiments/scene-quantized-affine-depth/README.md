# Two weighted vertex differences for quantized depth

Status: private trial; no adoption claim. Frozen baseline `05195fe`.

The current bounded 16.4 kernel reconstructs depth as
`b0*z0 + b1*z1 + (1-b0-b1)*z2`. This experiment uses
`b0*(z0-z2) + b1*(z1-z2) + z2`, saving one vector multiplication and the
third barycentric construction on opaque packets. Alpha packets still compute
the original third weight for unchanged perspective texture/color sampling.
Integer coverage, snapping, winner records, shade interpolation and material
resolve are unchanged. Legacy/int64 and MSAA paths retain their old arithmetic.

This algebraically equivalent expression changes floating depth rounding;
bit-exact depth is not assumed. No floating edge-plane recurrence is used:
every packet reconstructs the same two integer edge values as the baseline.
The earlier [sample depth planes](../sample-depth-planes/README.md) included
recurrence and sample-raster variants; this changes the current quantized
scene kernel only. Small depth ties can select a different visible material
and must be assessed rather than hidden by a color tolerance change.

Screen with the shared four packs/cameras at native 640×360, four total threads.
`check_quality.py --allow-depth-rounding` explicitly requires exactly equal
covered-depth masks, stencil and sample planes, finite depth and absolute depth
difference at most 2e-6, while preserving measured RGB deltas. Default comparison
still requires byte-exact depth. Any adoption requires repeat off/2×/4× AB/BA,
independent depth arithmetic bounds and enabled/rollback contracts, actual
SIMD128/WASM execution, native suite, sanitizers and live asset browser checks.

## Sources

Original C11 arithmetic refactoring of accepted
[scene_visibility.c](../../libsoftgl/src/scene_visibility.c) at `05195fe`.
[Quantized visibility](../scene-quantized-visibility/README.md) supplies the
bounded integer producer. [Current phase scopes](../scene-current-phase-accounting/README.md)
locate visibility cost without proving a speedup. No external code is copied.

## Screening evidence

One balanced AB/BA block per asset, 60 warm-up and 30 measured frames,
640×360/off, caller plus three helpers. BMW/T-80/Sponza/Bistro frame-time
changes -4.47/+0.28/-1.37/+0.71%. These are mixed screening observations,
not an accepted gain. Independent off-mode confirmation is scheduled after
the vertical prototype's MSAA run so performance jobs stay sequential.

All 36 covered-depth masks and stencil/sample planes match. Absolute depth
error is at most 1.1920928955078125e-7. RGB differences are sparse depth-tie
choices: worst fraction of pixels changing by more than one channel unit
BMW/T-80/Sponza/Bistro 0.00217/0.01042/0.00130/0.02300%; maximum channel
differences 64/45/42/230. Geometry masks remain exact, but color is not exact.
No acceptance of those visual changes is claimed from coverage alone.

The independent numeric contract checks four million weighted depth cases
against double-precision barycentrics with ASan/UBSan, including vertex depths
zero/one. Maximum old/new difference 1.78814e-7, maximum double-oracle errors
1.81976e-7 (old) and 1.81578e-7 (new). This is empirical numerical evidence,
not a proof for every floating-point input. Renderer/WASM/browser, all-mode
performance and adoption gates remain pending.

[Screening receipt](screening/receipt.json), [summary](screening/summary.json),
[quality](screening/quality.json), [numeric contract](screening/oracle.txt).
