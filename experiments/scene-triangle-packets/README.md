# SIMD128 triangle packets through visibility

Status: queued architecture experiment, not measured or adopted.
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
