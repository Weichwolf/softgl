# SIMD128 triangle packets through visibility

Status: accepted combined SIMD128 triangle packets and mask16 bin references;
production, live WASM and native/WASM correctness gates updated.
User explicitly requested this family; both native and WASM must use SIMD128.

Batch four independent triangles for quantized setup and keep compact
structure-of-arrays packet data through bin emission and raster dispatch.
Unlike the earlier setup-only trial, target the complete producer/consumer
interface and avoid returning to oversized sg_vert triples for each triangle.
Retain scalar clipping and partial-packet fallbacks. Separate packet setup,
compact storage and bin masks to measure their individual costs, then combine
selected variants. Check per-lane winding, integer bounds, degeneracy,
subpixel precision, coverage/depth/materials and clipping contracts. No AVX
intrinsics, hardware gather or SIMD wider than four 32-bit lanes.

## Sources

Locally inspected `~/Git/GLimpSW`, revision
`2f915606d50b70fef8859ef29adc9d53f9aee887` (same reference used by benchmarks).
Borrow the organization principle, not upstream AVX512 implementation code.

- [Rasterizer.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [Rasterizer.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp)

## Acceptance

Start from the accepted SIMD128-only production baseline. All measurements
remain native 640×360 with four total threads, identical prepared assets and
cameras for BMW/T-80/Sponza/Bistro. Run repeated balanced off/2×/4× controls,
full-frame RGBA/depth/stencil/sample checks, meaningful boundary/rollback
contracts, sanitizers and actual WASM SIMD128/browser/heap checks before
adoption. Approximations are permitted but must be measured and documented;
no missing geometry or broken materials. Individual and combined variants
remain distinct receipts. No speedup forecast is an experimental result.

## Implemented combined packet variant

Freeze SIMD128-only `da8ab07`, reuse the isolated mask16 bin representation,
and add four-triangle sidecars. Each 160-byte packet stores three signed
16-bit XY pairs, three Z/inverse-W pairs and an eligibility mask in SoA form.
The extra cost is 40 bytes per emitted primitive plus existing 24-byte records;
all sidecar capacity is charged to the original 128 MiB geometry budget.
This is a measured storage tradeoff, not a promised saving. Every frame
rebuilds packets for the current camera after original clipping/bin preparation.

Raster consumers process mask bits in original order. SIMD128 computes four
integer areas and rectangles together. Eligible opaque lanes enter the
quantized raster kernel without reconstructing sg_vert triples or rereading
original positions. Cutouts construct UV-only vertices for their unchanged
alpha sampler. Out-of-range positions and unquantized scenes retain the
accepted scalar interface. Winning records retain original primitive pointers,
int64 interpolation edges and full-precision Z/W/material attributes.

All 36 shared-asset off views have exact full RGBA/depth/stencil/sample planes.
Independent accepted-baseline, candidate and instrumented contract binaries
produce the same 216 full-plane hashes; 16 rollback checks pass. Actual audit
counts: 2,156 produced triangles, 580 packets, 7,080 calls, 5,406 direct lanes,
5,406 fallback lanes, 6,846 partial and 234 full-mask calls. The whole native
candidate archive passes the SIMD128/no-AVX instruction audit. Private audit
atomics are absent from performance binaries. Actual WASM and completed adoption results follow below.

The first audit wrapper failed compilation because the included quantized
fixture defines its own main macro. The preparer now generates an entry-name
adaptation of the unchanged root fixture and includes it explicitly; the
corrected audited/native/baseline frame hashes above are compared separately.
The original test thresholds and root test sources remain unchanged.

Actual WASM/SIMD128 executes the new packet path and passes the 216-pair,
16-rollback contract with the same dispatch counts above, four-byte pointers
and measured 268,435,456-byte heap. This is the isolated Node contract; it does
not claim full-asset browser memory or native-vs-WASM pixel identity. Original
Emscripten pthread/memory-growth note is retained in the log. Evidence:
[screening checks](screening/checks.json), [actual WASM](screening/wasm.txt).

Initial balanced OFF screen (one block, not adoption evidence): BMW −4.68%,
T-80 −4.83%, Sponza −6.96%, Bistro −7.24% frame time, with exact angle-160
images. The independent OFF/2×/4× runs and completed adoption checks follow below.
All raw timing attempts are retained in [receipt.json](screening/receipt.json).

## Accepted result

Three independent balanced AB/BA blocks per model/mode, 144 accepted timing
requests and 32 rejected attempts retained. OFF frame time: BMW −5.158%,
T-80 −6.943%, Sponza −7.881%, Bistro −9.389%. MSAA uses the original fallback;
measured controls range from −0.195% to +1.098%, including Bistro 2× +1.060%
and 4× +1.098%. Accept this small measured control cost for the repeatable OFF
gain; do not describe MSAA as faster or perfectly unchanged. All four OFF
models remain substantially slower than GLimpSW.

756 native tests pass; 108 independent full RGBA/depth/stencil/sample-plane
pairs and 288 resident/fresh-context pairs are exact. ASan/UBSan/leak checks
pass the 2,024-pair compatibility fixture and the 216-pair instrumented packet
fixture. Independent actual WASM baseline and packet binaries produce the
same 216 full-plane hashes. Twelve actual localhost:8000 model/MSAA cases
pass, peak shared heap 2,807,169,024 bytes (under 4 GiB). Current build,
ignored wasm/ snapshot and served JS/WASM bytes match. The native production
archive is byte-identical to the independently timed candidate archive and
passes the full instruction audit: only SIMD128, no AVX/YMM/ZMM.

Raw timing, source/binary hashes and all adoption receipts are in
[validation/checks.json](validation/checks.json). The isolated mask-only trial
remains rejected; this accepted gain belongs to the combined variant.
