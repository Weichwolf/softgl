# 4x4 pixel blocks and matching visibility storage

Status: queued architecture experiment, not measured or adopted.
User explicitly requested this family; both native and WASM must use SIMD128.

Use four SIMD128 operations for a 4x4 block and a matching tiled depth/winner
scratch layout. Do not merely replace a horizontal four-lane loop with sixteen
scalar stores. Keep the public framebuffer bottom-origin/row-major, explicitly
charge scratch initialization and final conversion to the frame timer, and
preserve ordinary GL/transparent/MSAA fallback. Separate tiled storage, block
coverage and conservative full-block accept/reject variants before combining.
Check partial blocks, framebuffer/bin boundaries, depth/alpha tests, integer
recurrences and state rollback. Multiples of 4 may use a fast path; tails must
have a general safe path. No fixed scene/asset specialization.

## Sources

Locally inspected `~/Git/GLimpSW`, revision
`2f915606d50b70fef8859ef29adc9d53f9aee887` (same reference used by benchmarks).
Borrow the organization principle, not upstream AVX512 implementation code.

- [Rasterizer.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [Texture.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Texture.h)

## Acceptance

Start from the accepted SIMD128-only production baseline. All measurements
remain native 640×360 with four total threads, identical prepared assets and
cameras for BMW/T-80/Sponza/Bistro. Run repeated balanced off/2×/4× controls,
full-frame RGBA/depth/stencil/sample checks, meaningful boundary/rollback
contracts, sanitizers and actual WASM SIMD128/browser/heap checks before
adoption. Approximations are permitted but must be measured and documented;
no missing geometry or broken materials. Individual and combined variants
remain distinct receipts. No speedup forecast is an experimental result.
