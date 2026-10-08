# Primitive-coherent coarse material shading

Status: inline and outlined variants not adopted; independent Sponza
confirmation gives only -2.02% frame time for noticeable shading differences.

Keep full 640×360 depth, coverage and primitive visibility, but shade an aligned
2×2 quad once at its center only when all four pixels belong to exactly the same
winning primitive and an opaque, unmasked material. Copy that color to the four
fine pixels. Primitive/material boundaries, incomplete quads, alpha masks and
transparent draws retain fine shading. This explicitly approximates texture,
lighting and reflection frequency; it can blur texture details inside large
triangles and must be inspected, even though geometry stays at full resolution.
MSAA currently retains the earlier renderer.

Original C11 integration in accepted libsoftgl 3495913: use spare pixel-material
bits to mark representatives/skipped members; bucket only representatives and
fine pixels. Keep SIMD128 material packets and the existing vertex attributes,
scene storage budgets and draw ordering. No new image buffer, reduced asset,
previous image cache or wider ISA. The softgl_scene_coarse_shading API explicitly
opts into the approximation; ordinary GL calls keep their current shading.

Primary source: Microsoft's
[VRS specification](https://microsoft.github.io/DirectX-Specs/d3d/VariableRateShading.html)
and [overview](https://learn.microsoft.com/en-us/windows/win32/direct3d12/vrs).
They separate fine geometry/depth/coverage from coarse shader invocations.
This is an original CPU prototype inspired by that principle, not Direct3D or
an implementation of its complete hardware/API specification.
Local source: [scene material resolve](../../libsoftgl/src/scene_visibility.c)
and [accepted scene frontend](../scene-position-visibility/README.md).

The user allows GLimpSW-like rendering differences in the current goal. Native
comparison therefore checks exact depth/stencil/sample planes and documents RGB
changes separately, without changing legacy Mesa comparison tolerances.
No gain, universal material correctness or actual WASM validation is claimed yet.
Prepare/build with Clang 22.1.8, then run check_quality.py --samples 0 and
resident_trial.py --pairs 1 --samples 0 using all four unchanged shared assets.

Evidence: [inline](inline/README.md), [outlined](outlined/README.md),
[independent confirmation](confirmation/README.md). The outlined helper retains
the original fine shader body, places coarse/fine representatives in separate
material runs and grows the task bound to account for both runs. Each variant
has 36 exact coverage comparisons, with documented RGB changes. The ordinary
geometry contracts pass for the outlined library; no independent enabled-coarse
color oracle or full adoption gates were run for this unsuccessful design.

Inspected worst-mean views: Sponza angle270 and Bistro angle90, both 640×360.
No missing surfaces were seen, but floor/curtain/masonry details become blockier.
Worst mean RGB error over nine views: BMW 0.1063, T-80 0.1024, Sponza 3.2554,
Bistro 4.2115 bytes/channel; max errors 226/113/90/161. This is a real visible
quality change, not byte-rounding noise. Native metadata/coverage stays at the
same resolution, but the frequency reduction does not establish a broad
complete-frame advantage worth adoption. No production/WASM change.
