# Lossless full-pixel MSAA visibility metadata

Status: private prototype; no performance or production adoption claim.

Own adaptation: when all depth-passing samples belong to a triangle, store
winner, material and shading point only in the first sample slot. Use a free
high bit of the existing shade mask as a transient uniform marker. A partial
overwrite expands the previous metadata before updating the passing samples.
Final grouping reads a uniform winner directly and emits the same full sample
mask as before. Alpha acceptance precedes every mutation. Each worker keeps
its existing stripe ownership; draw order is unchanged.

All actual depth and color sample planes remain fully materialized. No depth
quantization, additional buffer, approximate surface merging or sampling-rate
change is proposed. Initial mask clearing and partial expansion cost may
outweigh reduced metadata writes and grouping comparisons; measure before
adoption. Independent full-plane controls must include full-to-partial and
partial-to-full overwrites, different materials, cutouts, clipping, rollback,
resident reuse, native SIMD128 and actual WASM SIMD128.

Related research: Kerzner and Salvi,
[Streaming G-Buffer Compression for Multi-Sample Anti-Aliasing, HPG 2014](https://diglib.eg.org/items/d79f4546-4a7c-4119-8570-523381fcd841).
That paper proposes lossy G-buffer compression on a GPU; this prototype uses
exact primitive identity and compresses only our CPU visibility metadata.
Its reported GPU gains do not predict our CPU frame time. Implementation is
our own and uses the existing [scene capture and grouping](../../libsoftgl/src/scene_visibility.c).

`prepare.py` freezes accepted `84041db` and an independent baseline under a
new build root; frozen roots are never overwritten.

Initial native controls: 216 original and 576 small/boundary/clip/overlap/alpha
full-plane hashes match the frozen baseline exactly. The reused 60-frame
packet fixture includes a full foreground pixel followed by a genuine single
nearer sample, across both sample counts, multiple worker counts and stripe
boundaries. All 60 hashes are exact. Untimed counters: 36,651 uniform writes,
93 expansions before partial overwrite, 36,558 uniform final groups. The
first audit compare raced the still-running baseline fixture and failed on a
missing output file; no image mismatch occurred. After the producer joined,
the same archived outputs compare exactly and the admission/rollback control
passes. Performance and actual WASM controls remain pending.

Native disassembly of the initial prototype exposes a `memset` call for every
pixel during grouping because the sample count is dynamic. The next frozen
`direct-clear-v2` variant (`--direct-clear`) uses defined two-/four-byte copies
for the supported sample counts; other counts retain the general clear.
This is specialization on the MSAA format, not on framebuffer dimensions.
It has not yet been built or measured. The initial frozen sources and proof
are retained under [validation](validation/).

First quiet balanced screen, Bistro 640×360/four threads, 60 warmup/30 orbit
frames including readback: 2× 53.593411 → 53.167195 ms (-0.80% frame time); 4× 62.988057 → 62.092006 ms (-1.42% frame time); all final RGB images exact. This is one screen against `84041db`, not a
confirmed gain or a comparison against the newly selected packet renderer.
Full repetition, all-model quality/reuse, sanitizer and actual WASM gates are
still required. The next test should use the accepted packet renderer as its
baseline and measure combined behavior. No production compression is enabled.
