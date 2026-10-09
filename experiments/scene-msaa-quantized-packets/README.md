# SIMD128 quantized packets with genuine four-sample visibility

Status: inlined/outlined variants not adopted; guarded variant under test.

Extend our accepted 160-byte, four-triangle 16.4 SoA packets to explicit
four-sample MSAA scene capture. Reuse packed coordinates, depth/reciprocal W,
areas and stripe-clamped bounds instead of rebuilding full-precision vertices
and entering general int64 raster setup for every reference. A signed-int32
SIMD128 kernel tests the four original MSAA positions and computes four real
depths per pixel. Retain actual depth/color sample planes, alpha acceptance,
uniform winner metadata, draw order, budgets and original fallback.

This is an intentional geometry/interpolation approximation: truncating each
screen coordinate to 1/16 pixel can change coverage, winners, depth, UVs and
color near edges. It is not an exact-Mesa claim, supersampling replacement,
asset reduction or wide native SIMD. The existing exact 16.8 MSAA path stays
the default. A separate explicit scene opt-in enables the experiment; OFF/2×
keep their algorithms. Quantized geometry filtering must use the same rounded
coordinates as rasterization, so original empty-sample tests cannot falsely
remove triangles which would cover a sample after quantization.

Existing sample positions (6,2), (14,6), (2,10), (10,14) on the sixteen-unit
pixel grid stay distinct. Bounded coordinates prove raw areas/edges fit int32.
Stored winner edges scale by 256 and inverse area by 1/256, making them
compatible with the existing 16.8 sample-point shader. Unsupported ranges
retain the original kernel. All allocations remain within existing budgets.

Unlike the rejected [full-precision MSAA packet](../scene-msaa-triangle-packets/README.md)
variant, this reuses the original compact packet and uses int32 sample-edge
arithmetic. Compare separately against an independent general int64 kernel
rasterizing the same rounded vertices, including sample colors/depths, clipping,
cutouts, stripe/tail boundaries, admission and rollback. Also quantify and
visually inspect changes against the accepted unrounded renderer for all four
models. Require native/WASM SIMD128, sanitizer, reuse and repeated all-mode
timing before any adoption; no existing test tolerance should be loosened.

Sources: our [accepted quantized visibility](../scene-quantized-visibility/README.md),
[SoA triangle packets](../scene-triangle-packets/README.md),
[small exact MSAA kernel](../scene-msaa-small-triangles/README.md),
and pinned local GLimpSW `2f915606d50b70fef8859ef29adc9d53f9aee887`
[Rasterizer.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp).
GLimpSW uses four fractional coordinate bits with its own rounding and has no
genuine MSAA path. Its code and benchmark ratios are not copied or claimed
as evidence for this CPU SIMD128 implementation.

## Inlined variant results

Frozen baseline `7d67a8e`; native SIMD128 only. The first balanced Bistro4
screen showed −5.57% frame time. A complete three-block, 144-run quiet
OFF/2×/4× comparison reduced that to **−2.94% time / +3.02% FPS**, from
60.4207 to 58.6470 ms. All three Bistro4 blocks favor the candidate, but
T-80 OFF regresses +4.81%; a separate three-block control repeat reproduces
the regression at +10.73%. BMW4's initial +2.03% cost does not reproduce
(−0.06% in the separate repeat). Bistro OFF/2× cost +1.01/+0.89% in the
complete comparison. Preserve both series; do not select the favorable one.
The inlined variant remains private because the T-80 cost is unacceptable.

Native and actual WASM each match 216 enabled/default cases plus 576
small/clipped/boundary/cutout cases against the general int64 kernel for
identically rounded vertices. Unchanged native defaults match 216+576
original-baseline hashes. All 108 model views have finite resolved depths
and unchanged stencil; 99 are exact original results. Bistro4's nine views
change fine coverage/interpolation: worst mean channel error 3.019/255,
maximum channel error 182, up to 10.96% of pixels differing by more than 8,
and at most one changed covered pixel per view. Paired Bistro views at
0/90/160/225 degrees were visually inspected: no missing major geometry or
broken materials seen; fine texture/edge differences remain. The rounded
reference matches all 36 four-sample model views exactly. All 288
resident/fresh-context comparisons and five ASan/UBSan/leak fixtures pass.

The first enabled small fixture deliberately retained the original strict
`.18`-pixel assertion and failed: quantizing its vertices moves sample zero
outside the triangle. The separate V2 policy fixture requires exactly zero
4× samples for that analytically specified triangle, preserves exactly one
2× sample, checks all four interior samples independently, and compares all
sample planes against the rounded general-kernel reference. The original
default test and its tolerance were never changed. Tiny geometric details
can disappear under this explicit approximation; the image audit above does
not prove all possible geometry is preserved.

[Inlined receipts](validation/inlined-v1/metadata.json) retain source/library,
asset/camera/binary hashes, both timing series, all-plane fixtures, failed
first assertion, quality diagnostics, sanitizer and actual WASM outputs.

## Outlined variant

`prepare.py --outline-msaa` applies only `noinline` to the new four-sample
kernel. Test whether isolating its code removes collateral instruction/cache
cost in OFF rendering while retaining the Bistro4 gain. This is a separately
frozen variant; the inlined timings do not validate its performance.

The outlined screen showed Bistro4 −2.85% time and T-80 OFF −2.50%, but the
three-block repeat again regressed T-80 OFF by **+6.75%**. The all-model repeat
was deliberately terminated with SIGTERM (exit 143) after this reproduced cost;
it contains 104 raw runs and eight complete three-block subsets, and is **not**
a complete all-model confirmation. Native/WASM 216+576 hashes, 108 original
views, 36 rounded-reference views, 288 resident pairs, six sanitizer fixtures
and the new actual-WASM opt-in/reset/sample-gradient/rollback test pass. All
108 image-pair diagnostics reproduce the inlined variant exactly.
[Outlined receipts](validation/outlined-v2/metadata.json) retain the partial
timings and termination reason; no production or live WASM change was made.

## Guarded variant

`prepare.py --outline-msaa --guard-quantization` short-circuits the new coordinate
range loop when MSAA quantization is disabled. The prior source evaluated all
three vertices' bounds even for OFF/2×, although the result stayed false.
This guard preserves the Boolean range decision and all quantized coordinates;
it must be measured independently. Initial native 216+576 rounded-reference
hashes and the opt-in/reset/real-gradient/full-sample rollback fixture pass;
remaining image, native/WASM, sanitizer, repeated timing and browser gates are
pending. Do not use either prior variant's measurements as its speedup.

The guarded screen gives Bistro4 −1.50% time; a three-block T-80 OFF control
gives −3.02% overall time, with substantial run variation. The earlier
large OFF regression does not recur in that control; this is not a claim of
a stable T-80 speedup. [Guarded receipts](validation/guarded-v3/metadata.json)
retain these results and pending gates.

An additional `--outline-msaa --outer-guard --split-quantization` variant
checks the range once outside the loop and separates the coordinate-conversion
loops, retaining finite-coordinate validation in both. Its first preparation
was rejected by an exact source-anchor check; corrected variant `outer-guard-v4b`
builds and passes the native 216+576 reference hashes and public policy fixture.
Its Bistro4 screen remains small (−1.46% time); no adoption or confirmed gain.
