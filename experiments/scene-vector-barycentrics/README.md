# Exact bounded SIMD barycentric conversion

Status: not adopted; 36 exact views and three geometry contracts pass,
but BMW/Sponza/Bistro screening regresses.

Visibility takes 40–48% of joined wall time in the accepted renderer. The
coverage kernel already tests four int32 quotient edges, but barycentric setup
still converts eight int64 values individually to float. This prototype uses
two SIMD128 signed-int32-to-float conversions where an exact bounding-box guard
proves the full unbiased edge values fit int32. Larger triangles and legacy
viewports retain the original int64 conversion. Float multiply/add grouping,
top-left tests, depth comparison, alpha tests and final shading are unchanged.
No asset, geometry, memory-layout, shading-rate or ISA-width change is intended.

For fixed-point triangle spans X and Y, the bound
`2 * (X + 1024) * (Y + 256) <= INT32_MAX` covers both products of
every edge evaluated inside the bounding rectangle, including the three
inactive lanes after its last active X. The existing coordinate guard also
bounds delta multiples. Both signed integer conversions round the same exact
integer once to float; no quotient/remainder float reconstruction is used.

Sources: original C11 modification of accepted
[scene visibility](../../libsoftgl/src/scene_visibility.c) at 3495913,
[SIMD coverage](../scene-simd-coverage/README.md), and the new
[phase accounting](../scene-phase-accounting/README.md).
This independent variant does not include the one-pixel scalar kernel.

Prepare/build with Clang 22.1.8 Release using this folder's CMakeLists.txt.
Run check_quality.py --samples 0 and resident_trial.py --pairs 1 --samples 0;
stronger correctness/performance/adoption gates depend on screening evidence.

[Native screening](screening/README.md): frame-time +3.21/-4.06/+1.13/+6.84%
for BMW/T-80/Sponza/Bistro. Extra guard/setup and hot-loop branching do not
establish a broad complete-frame gain. No production or live WASM change.
