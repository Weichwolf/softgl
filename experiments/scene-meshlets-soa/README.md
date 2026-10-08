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

## Bounded working-set variant

The upstream raster pipeline limits a batch to 384 triangle packets and keeps
its meshlet positions local. Our current renderer transforms and stores an
entire scene before reading its indexed positions again in later joined
phases. In addition to SoA input loads, test batches that transform, prepare
and rasterize geometry while position/packet data is still local. Charge
additional joins/queues and retained winning descriptors to the frame cost.
Do not overwrite primitive pointers/clip data still needed by deferred
attributes. A pipelined variant needs exclusive bin ownership or explicit
batch publication/retirement; simply launching overlapping writes is invalid.
Source: [GLimpSW bounded BinBatch/scoreboard](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp).
No cache-speedup claim is measured yet.

## Concrete immutable meshlet interface under consideration

Build an owned immutable geometry handle once at model load, just as the
comparison GLimpSW driver constructs meshlets outside frame timing. Preserve
original triangle order initially; greedy groups stop at 64 distinct vertices
or 128 triangles. Store three contiguous float position planes, local byte
indices and original attribute indices. Copy input geometry into the handle
and give it explicit create/destroy lifetime; never infer immutability from
a raw client-array pointer or reuse changing arrays silently. Matrix/state
capture remains per frame, with ordinary GL/MSAA fallback.

Transform a group's four-vertex SIMD128 loads and perform clipping/triangle
packet emission in the same worker task, keeping only its small transformed
position scratch live. Emit packet positions during triangle append instead
of writing the whole scene's 32-byte clip/NDC position array and rereading it
after a joined phase. Keep original attribute indices and clipped interpolation
bases alive through final shading. Bound handle/scratch storage and charge
any per-frame rebuilding/queue handoffs to the frame timer. This is a design
for the requested meshlet trial, not implemented or measured yet.
