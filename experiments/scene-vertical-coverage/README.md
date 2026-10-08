# Vertical SIMD128 coverage for narrow triangles

Status: held; outlined off gains are small and Bistro2 control regressions remain. Baseline `05195fe`.

The accepted quantized coverage kernel tests four neighboring X samples per
row. A one-pixel-wide bounding box leaves at most one live lane even when it
spans many rows. This trial uses four neighboring Y samples per column for
bounding boxes at most three pixels wide and at least four rows high.
Other triangles keep the original horizontal kernel. Both use SIMD128;
the separate optional native-wide material shader is unchanged.

The vertical helper is dispatched after the same integer setup and bounds
checks. It advances integer edges by Y rather than X, gathers depth with
runtime framebuffer stride, and commits only passing lanes. Near the bottom
framebuffer boundary, its scalar live-mask fallback avoids invalid reads.
All pixels retain their original integer edge, top-left bias, float depth,
alpha and record calculations. Triangle order is preserved; writes within
one triangle visit columns first. No cross-pixel blend/stencil operations
are eligible in this scene path. Legacy triangles and MSAA retain their
accepted paths. No image, asset, format or camera reduction is introduced.

`prepare.py --maximum-width N --minimum-height N` freezes both variants;
`--outline` retains a separate helper instead of letting Clang inline it.
all performance remains native 640×360, same four packs/cameras and four
threads. `vertical_contract.c` independently checks rectangles of widths
1–6 and heights 1–65 at stripe/framebuffer boundaries against the accepted
horizontal quantized path, with helpers 1/3/8. Instrumented calls and actual
writes prove execution rather than relying on a build flag. Adoption requires
repeated all-mode AB/BA, full native/sanitizer/context and actual WASM/browser
gates in addition to asset image comparisons.

## Sources

Original C11 extension of the accepted bounded 16.4 producer in
[scene_visibility.c](../../libsoftgl/src/scene_visibility.c) at `05195fe`.
[Rolling SIMD coverage](../scene-simd-coverage/README.md) provides the original
integer packet arithmetic. The prior
[single-pixel experiment](../scene-single-pixel/README.md) concerned one-sample
triangles, rather than vertically packing multiple samples. No upstream code
is copied. [Current phase clocks](../scene-current-phase-accounting/README.md)
locate visibility cost but do not predict savings or establish adoption.

## Initial findings and boundary proof

One balanced AB/BA block per model, 60 warm-up/30 measured frames, native
640×360/off, caller plus three helpers. Frame-time changes BMW/T-80/Sponza/Bistro:
inline -0.98/-2.45/+5.92/-0.97%; outlined -2.31/+0.51/-4.05/-1.67%.
These are screens; the outlined variant needs independent repeat confirmation.
Both initial binaries' frozen source and hashes are retained.

The first 36 asset views preserve RGBA/depth/stencil/sample planes exactly.
The 2,024-frame native wide contract passes, including six rollbacks.
The new rectangle fixture passes 8,568 paired frames both natively and in
actual WASM/SIMD128: 12,046 vertical calls and 109,675 passing writes.
Helpers 1/3/8, widths 1–6, heights 1–65 and stripe/framebuffer ends cover
vertical dispatch, the old horizontal path and four-row tails. WASM uses
256 MiB heap and four-byte pointers. The depth/stencil comparison is exact;
RGBA retains the existing one-unit contract. Known geometric masks are
independently checked for every pixel. An unchanged-baseline build of this
fixture also passes all 8,568 pairs, with zero vertical calls.

The first fixture inspected asynchronous forward depth before joining, then
a synchronized probe compared the existing 16.4 path with forward 16.8
interpolation. The unchanged baseline reproduces alpha 151 versus 153 for
a one-by-three rectangle and a depth-rounding discrepancy. These are not
vertical-kernel failures. The corrected fixture uses constant material
payloads and the same quantization on both sides, selecting the reference
horizontal kernel through an audit-only switch. Strict comparison thresholds
are preserved; original textured asset views separately compare against the
frozen accepted renderer. Test-only state/API/counters are compiled out of
performance and production builds. Emscripten's standard pthread/growing-memory
diagnostic is preserved in its log.

[Inline screen](inline-screening/summary.json),
[outlined screen](outline-screening/summary.json),
[actual WASM contract](outline-screening/wasm.txt).

## Independent off-mode confirmation

Three balanced blocks per asset, 48 accepted quiet attempts and four rejected
attempts retained (one block exceeded the foreign-load gate), 60 warm-up/30
measured frames, same compiled executable as the initial outlined screen.
Frame-time changes BMW/T-80/Sponza/Bistro +0.53/-2.15/-3.36/-1.17%.
All 36 current candidate/reference views have exact full RGBA hashes and
depth/stencil/sample planes. [Confirmation receipt](confirmation/receipt.json)
and [summary](confirmation/summary.json) retain individual samples.
The MSAA2/4 confirmation and independent Bistro2 recheck have completed;
no all-mode adoption is claimed. Sanitizer, context-reuse, native-suite and live-browser gates remain.
Production and live preview are still the accepted renderer.

Adoption recipes prepared: `sanitize.sh` runs the actual renderer contracts
with Clang 19 Address/UndefinedBehavior/leak sanitizers and the accepted math
flags; it has not yet been executed. `check_resident.py` requires a complete
108-view receipt at `validation/quality.json`, then checks off/2×/4×/off context
reuse against that fresh-context oracle. Its complete oracle is deliberately
not supplied by the current 36-view off-only receipt. These are pending gates.

## MSAA controls and integer bounds

Three balanced blocks per asset at 2×/4×; 96 accepted quiet attempts.
Frame-time changes BMW -0.75/-0.32%, T-80 -0.82/-0.30%, Sponza -0.42/-1.91%,
Bistro +2.37/+1.29%. The vertical kernel is disabled at MSAA. The Bistro2
independent recheck is +1.43% (121.49 to 123.22 ms), with wide timing
variation despite the process-load filter. This does not establish a stable
regression mechanism or an all-mode gain. Adoption remains held. Symbol inspection
shows identical sizes for the existing MSAA raster functions but their entry
addresses move by 0x1d70 bytes in the candidate. This observation does not
prove layout causes the timing difference; host effects remain possible.
`prepare.py --cold` tests a separate helper with Clang's `cold,noinline`
attributes, rather than adding explicit padding or changing old MSAA math.
That variant is pending. All original raw samples remain in
[MSAA receipt](confirmation/msaa-receipt.json).

The vertical recurrence retains the original 16.4 bounds gate. Integer vertex
coordinates are in [-16,10256] × [-16,5776]. Columns tested are 0–639; rows
including inactive lanes and the final unused four-row increment are 0–366.
Thus raw absolute edge magnitude is bounded by
`10272*5880 + 5792*10248 = 119755776`. The -1 top-left bias remains safe.
Even the conservative intermediate bound for `area-a-d`, using twice the
coordinate-range product for area and two edge bounds, is below 359 million.
Explicit scalar origin/step products and sums and all vector increments stay
well within int32; no int64-to-float reconstruction or new precision loss is
introduced. This bound includes the inactive bottom tail before its stores
are masked and depth reads switch to the live-lane scalar path.

[Independent Bistro2 recheck](confirmation/bistro2-recheck-summary.json) and
[all recheck attempts](confirmation/bistro2-recheck-receipt.json) retain the
three balanced blocks without post-hoc sample removal.
