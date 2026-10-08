# Meshlets with structure-of-arrays positions

Status: queued architecture experiment, not measured or adopted.
User explicitly requested this family; both native and WASM must use SIMD128.

Create bounded geometry groups (up to 64 vertices/128 triangles), explicit local
indices and separate X/Y/Z arrays. Transform four contiguous positions per
SIMD128 vector, then feed clipping, triangle packets and visibility. Keep
original geometry and original attributes; group order must not drop triangles.
Use immutable source ownership/revisions for preprocessing reuse. Arbitrary
mutable client arrays must be rebuilt or rejected to the ordinary fallback.
Measure preprocessing separately from per-frame rendering and charge any
per-frame repacking to the frame timer. First compare reordered and original
geometry coverage, index bounds, clipped/tiny triangles, duplicate vertices,
material/alpha boundaries and mutable-buffer invalidation. Meshlet frustum
culling is an additional independent variant, not assumed active upstream.

## Sources

Locally inspected `~/Git/GLimpSW`, revision
`2f915606d50b70fef8859ef29adc9d53f9aee887` (same reference used by benchmarks).
Borrow the organization principle, not upstream AVX512 implementation code.

- [Scene.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Scene.h)
- [Scene.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Scene.cpp)
- [Shading.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp)

## Acceptance

Start from the accepted SIMD128-only production baseline. All measurements
remain native 640×360 with four total threads, identical prepared assets and
cameras for BMW/T-80/Sponza/Bistro. Run repeated balanced off/2×/4× controls,
full-frame RGBA/depth/stencil/sample checks, meaningful boundary/rollback
contracts, sanitizers and actual WASM SIMD128/browser/heap checks before
adoption. Approximations are permitted but must be measured and documented;
no missing geometry or broken materials. Individual and combined variants
remain distinct receipts. No speedup forecast is an experimental result.
