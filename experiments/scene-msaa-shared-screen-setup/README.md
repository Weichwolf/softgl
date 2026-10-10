# Share screen setup between the two 4× MSAA kernels

Status: held exact native prototype. Independent fixtures and 108 views match, but no useful BMW/Bistro gain appears in the screen.

The accepted dispatch first tries the small-triangle kernel. A larger box then
falls through to the rebased kernel, which repeats coordinate-range checks,
six float-to-subpixel conversions and bounding-box selection. Prepare those
values once, choose the kernel from the original unclipped box and pass a
small stack record into it. Preserve the original edge loops, barycentric
depth arithmetic, coverage, masking, Hi-Z and metadata stores.

Use the same signed-64 area for the larger kernel; the small-box range proof
allows an exact int32 cast for the original small kernel. Retain unsupported
and masked fallbacks. No new persistent geometry layout, cached coefficients,
approximated depth, texture filtering, history or additional SIMD width.

Sources: own C11 refactoring of the current
[small/rebased dispatch](../../libsoftgl/src/scene_visibility.c), informed by
[native BMW cycle samples](../scene-msaa-batched-hiz/README.md) and the
[pure affine-depth screen](../scene-msaa-opaque-affine-depth/README.md).
The affine screen changes rounding and does not establish a useful BMW gain;
this trial keeps the original arithmetic and removes repeated setup instead.

Require original material/position/MSAA/worker contracts, all-four-scene
native views and repeated OFF/2×/4× 640×360 AB/BA with four total threads.
Any adoption requires actual SIMD128 WASM/sanitizer/browser gates, commit/push
and live module refresh. No gain is implied by the removed source operations.

## Exact native result

The four original material/position/MSAA/worker contract families pass;
108 original-model views (nine angles × four scenes × OFF/2×/4×) retain
identical exported RGBA, resolved depth/stencil and physical sample depth/
stencil. Actual library/timed-driver ISA audits find SIMD128 only. No
original arithmetic or comparator tolerance is changed.

Uninstrumented Clang 22.1.8/SIMD128, original packs/cameras, 640×360, caller
plus three helpers, 60 warm-up/30 orbit frames, one balanced AB/BA block:

| Scene | Control → candidate 4× ms | Frame-time change |
| --- | ---: | ---: |
| bistro | 48.1848 → 48.1944 | +0.02% |
| sponza | 33.2926 → 41.6959 | +25.24% |
| bmw | 16.2360 → 16.2980 | +0.38% |
| t80 | 11.5175 → 11.5366 | +0.17% |

Bistro/BMW remain flat; removing repeated setup does not establish a gain.
Sponza’s ~41.7 ms candidate versus ~33.3 ms controls resembles the launch-
scope discrepancy observed in previous unrelated trials. Retain the whole
block without inferring a proven fixed 25.24% setup cost. The T-80 controls
also range 12.10 → 10.93 ms. No repeat, sanitizer, actual WASM/browser
validation or adoption is claimed after the failed performance screen.

`validation/` binds complete frozen sources/recipes, actual library and
driver identities, ISA/default fixtures, 108 exact views and raw screen.
Generated renderer binaries and large frame planes stay local.
