# 4x4 pixel blocks and matching visibility storage

Status: first standalone storage/block-coverage variant implemented and rejected
by initial native timing. Correctness passes native and actual WASM. Not adopted;
combined/direct-address variants remain open.
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

## First implemented standalone variant

Freeze `da8ab07` to isolate this family from the subsequent accepted packet
variant. Store depth, winner and material in SoA scratch arrays, each ordered
by 4×4 tiles with four contiguous lanes per row. Before deferred geometry,
convert the current row-major depth/winner/material planes into tiles; after
joined raster work, convert back for final shading and public framebuffer
access. Both conversions, allocation and traversal are inside frame timing.
The extra scratch is ten bytes per padded pixel. Preserve mixed legacy draws,
ordinary depth ties, cutouts, unsupported-state rollback and MSAA fallback.

Four SIMD128 rows cover each block. Conservative integer edge extrema reject
empty blocks and accept full blocks; partial blocks retain exact lane tests.
Unaligned stripe borders use scalar owned-lane accesses so vector loads never
race another stripe. Generic unclipped/fallback triangles use mapped storage
without changing their coverage or interpolation math.

216 independent native baseline/candidate/instrumented full-plane hashes and
16 rollbacks match. All 36 shared-asset OFF views have exact full RGBA/depth/
stencil/sample planes. Actual WASM/SIMD128 matches the independent baseline's
216 hashes, with four-byte pointers and 268,435,456-byte heap. Native and WASM
audit counts match: 152 tiled frames, 812,216 examined blocks, 411,150 rejected
and 307,859 fully covered blocks. The actual performance archive passes the
SIMD128/no-AVX audit. Counters are absent from performance binaries.

Initial one-block balanced OFF screen: BMW +27.05%, T-80 +64.75%, Sponza
+27.86%, Bistro +14.62% frame time. Reject this standalone prototype; retain
all attempts in [screening/receipt.json](screening/receipt.json). This does
not prove tiled rasterization intrinsically slower: repeated mapped-address
work, scratch conversion, stripe-border sharing and extra partial-block work
need separate direct-address and packet/2D-bin variants. Sanitizers, full
regression suite and full-asset browser memory are not claimed for this rejected
variant. The accepted production/WASM packet renderer remains unchanged.
