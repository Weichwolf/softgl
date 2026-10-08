# Once-per-frame prepared scene primitives

Status: neither tested storage layout adopted; no broad full-frame gain.

The accepted whole-scene frontend already computes snapped triangle area and
bounds to prepare per-stripe reference lists. Each stripe later computes the
same edges, bounds and reciprocal area again. This trial retains that exact
current-frame setup in the primitive descriptor and shares it between stripes.
The hypothesis follows the [BVH profile](../scene-ray-visibility/raster-planes/profile/README.md)
and its [setup-reuse trial](../scene-ray-visibility/README.md), but introduces
no BVH or immutable-geometry API. Every frame transforms and prepares geometry
for the current camera. No image or previous depth is reused.

Source: accepted libsoftgl `geometry.inc`, `geometry_types.inc` and
`scene_visibility.c` at revision d481c9033584c9bae1b833326650ef188fb588d0;
[exact rolling SIMD coverage](../scene-simd-coverage/README.md).
Clipping, draw order, material shading, alpha tests and int64 barycentrics
remain the same. The descriptor grows from 24 to 96 bytes, so full-frame gains
must repay the larger memory traffic. Existing 128 MiB geometry budgets remain
in force and unsupported commands retain their current fallback.

Run `prepare.py`, configure this folder with Clang 22.1.8, then build and run
`check_quality.py --samples 0` and `resident_trial.py --pairs 1 --samples 0`.
All native performance work is restricted to 640×360 with the four common assets.
No full-suite, MSAA asset, browser or sanitizer validation is claimed.

| Layout | BMW | T-80 | Sponza | Bistro |
| --- | --- | --- | --- | --- |
| [packed96](packed96/README.md) | -1.32% | -7.10% | -2.76% | +4.56% |
| [sidecar](sidecar/README.md) | +4.15% | -1.37% | +8.77% | -1.95% |

These are one balanced AB/BA block per asset at 640×360/off. Each layout has
36 exact RGB/depth/stencil/sample-plane pairs. The 56-byte sidecar retains
24-byte bin metadata and passed the existing 162-frame positions and
372-frame coverage contracts with 6 and 12 fallback/rollback checks. Larger
setup storage did not repay its memory and producer cost across the assets.
