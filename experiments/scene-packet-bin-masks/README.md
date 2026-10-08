# Compact packet identifiers and bin masks

Status: queued architecture experiment, not measured or adopted.
User explicitly requested this family; both native and WASM must use SIMD128.

Group sixteen consecutive emitted primitives into a logical packet (bitmask
only, not SIMD512). Replace individual uint32 triangle references with one
uint64 original packet-base identifier plus uint16 active-triangle mask per
bin. Process mask bits in ascending order so current opaque/alpha semantics
and depth ties remain. Retain all clipping-generated primitives. Build packet
counts inline during append and emit exactly the prefix-reserved references.
Keep the existing 16 MiB reference budget and allocation rollback. This first
variant changes reference representation without expanding triangle records,
changing pixel layout or requiring meshlets. Measure reference counts/bytes,
producer and raster costs; a smaller reference list alone is not adoption.

## Sources

Locally inspected `~/Git/GLimpSW`, revision
`2f915606d50b70fef8859ef29adc9d53f9aee887` (same reference used by benchmarks).
Borrow the organization principle, not upstream AVX512 implementation code.

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
