# Compact packet identifiers and bin masks

Status: isolated mask16 variant not adopted after initial native screening.
Combined packet variants remain open. Frozen SIMD128-only baseline `da8ab07`.
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

## Initial correctness evidence

36 actual shared-asset off views have exact RGBA/depth/stencil/sample planes.
The ordered-bin oracle passes 54 pairs and six allocation/late-program rollback
checks. Its random/distributed geometry did not generate any fully populated
16-bit mask, so an initial assertion demanding that coverage failed. This was
a fixture-coverage failure, not an image discrepancy. Add a tiny co-located
coplanar geometry case against the ordinary GL oracle to exercise complete
masks and depth ties. The corrected audited contract passes 55 pairs:
216,224 original references become 65,605 packet references, including 384
full masks. These are fixture counts, not full-scene performance savings.
Audit atomics are compiled out of performance binaries. The actual native
candidate archive also passes the no-AVX/no-YMM/ZMM instruction audit.

Sources and first logs are in [screening](screening/). Initial speed tests use
one balanced off-mode block per scene; only independent repeated all-mode
measurements and complete native/WASM gates can establish a gain. No current
production library or browser pipeline is replaced by this private prototype.

## First native screen: isolated representation is insufficient

One balanced AB/BA block per scene, 60 warm/30 measured frames, same assets,
standard cameras, 640×360/off and four threads. Frame-time changes
BMW/T-80/Sponza/Bistro -0.03/-1.18/+2.69/+0.63%. This initial screen does not
justify isolated adoption or a broad gain; no additional full-suite/WASM gates
are run for this variant. All raw accepted attempts are retained. Packed
references alone still reconstruct and set up each triangle independently.
The next architecture variant should combine packet references with the
producer/consumer triangle packet data, rather than infer success from reduced
fixture reference counts. Four-lane masks with bounded 32-bit encoding are a
separate storage tradeoff, not silently substituted into these measurements.
