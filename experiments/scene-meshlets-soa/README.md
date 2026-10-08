# Meshlets with structure-of-arrays positions

Status: first owned-meshlet/local-transform/scalar-packet-emission variant tested;
no broad OFF gain, not adopted. Combined SIMD128 packet emission/conservative
clip bounds passes selected native/WASM correctness; performance still unmeasured.
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
any per-frame rebuilding/queue handoffs to the frame timer. The implementations
below exercise this design; neither is adopted.

## First implemented scalar-emission variant

Freeze accepted packet renderer `8085056`. An owned immutable handle copies
geometry into sequential ≤64-vertex/128-triangle groups, local byte indices,
three aligned position planes, original indices and owned UVs. Matrix/program
state is captured each frame. The model wrapper constructs handles once at
load; active captures retain ownership until end/rollback, even if the caller
releases the handle immediately. Arbitrary client arrays retain the old path.
MSAA/unquantized/unsupported state rejects the handle path to the existing
fallback. No upstream implementation code or AVX instructions are copied.

A worker processes eight consecutive groups per task. Each group's four-lane
position loads, transform, clipping and packet emission run together with
only 64 clip/NDC positions in local scratch. Winning primitive/clip data stays
alive through deferred attributes. This first variant emits scalar packed XY,
Z/W packet fields per triangle; consumer setup/raster remains SIMD128. The
legacy global position allocation is retained for mixed-command compatibility,
but these owned-group commands do not write/reread that whole-scene array.

All 36 shared-asset OFF views have exact RGBA/depth/stencil/sample planes.
216 native baseline/owned-input fixture hashes and 16 rollbacks match. The
fixture poisons/frees caller geometry and releases its handle before scene end.
Actual WASM matches all 216 accepted packet-renderer hashes, with four-byte
pointers and 268,435,456-byte heap. Native and WASM actual counts agree: 1,320
handles built, 2,640 groups built, 21,120 local vertices transformed, 440 groups
processed, 224 captured handles and 2,156 packet triangles emitted. Actual
native archive passes the SIMD128/no-AVX audit.

The inherited rollback fixture deliberately supplies invalid array-size
metadata to check rejection before reads. The first ownership-test adapter
copied that declared size and crashed; it now delegates those deliberate
legacy admission cases before copying. Constructor span budget is also checked
before source access. Corrected native/WASM fixture results above are retained
separately from the first failed attempt. The census initially missed the
workers/atomic header; the corrected build and unchanged original thresholds
are recorded.

Independent preprocessing census reconstructs original triangle order,
positions and UV bits for all source parts (including transparent parts; model
renderer retains opaque/masked handles only). One cold creation pass costs
BMW/T-80/Sponza/Bistro 12.97/8.69/50.78/124.84 ms. Owned capacity totals are
4.34/2.61/11.23/44.69 MB; groups 1,241/839/3,438/13,618 and local vertices
77,589/53,252/218,752/856,374. These are preprocessing costs and allocated
capacities, not frame gains or full browser peaks. Full cold asset-load wall
times are additionally retained in timing receipts.

First one-block balanced OFF screen: +1.54/+3.92/+4.73/+2.21% frame time;
no broad gain, so do not adopt this scalar-emission variant. All raw timing
attempts and native/WASM/census proofs are in
[scalar-emission/checks.json](scalar-emission/checks.json). Full suite,
sanitizers and full-asset browser gates are not claimed for this variant.
Combined producer/bound implementation below has no timing claim yet.
Production/live WASM remains `8085056`.

## Combined SIMD128 emission and conservative clip bounds

`prepare.py --packet-simd --clip-bounds --output-root PATH` creates an independent
variant from the same `8085056` baseline. `SCENE_TRIAL_ROOT`, runner source/wrapper
arguments and WASM script root arguments keep variant builds/receipts separate.

Triangle append retains four triangles in aligned task scratch, transposes their
screen X/Y/Z/W and emits four-lane SIMD128 packed XY/full-float Z/W packets.
Partial packets duplicate initialized lanes and mask inactive triangles. The
consumer is unchanged. The scratch costs 192 additional bytes per task; no
whole-scene transformed-position reread is introduced.

Owned meshlets/parents also retain unquantized source-position bounds. Only the
existing fast affine-modelview/centered-perspective case uses conservative float
interval classification, with the same multiply/add grouping as actual position
transformation and no FMA. Nonfinite or unsupported matrices remain unknown.
Proven outside groups skip transform/emission; proven inside groups still
transform vertices but skip outcodes. Unknown groups retain clipping. Parent
bounds are classified once per eight-group task, then group bounds as needed.

All 36 OFF asset views have exact full RGBA/depth/stencil/sample planes. Each of
216 native hashes matches the independent native baseline, and each of 216 WASM
hashes matches the independent WASM baseline. Twelve pre-existing baseline hashes
differ across platforms; cross-platform bit identity is not asserted. A controlled
fully-inside pair compares owned and ordinary inputs with exact full planes.
Native/WASM counts agree: 604 SIMD packets, 40 culled groups, six proven inside
groups, 8,736 fast-transformed vertices. WASM pointers are four bytes, heap 256 MiB
in this small contract. This is not a full-asset browser heap result.

The initial combined fixture passed all 216 comparisons but its assertion that
an inside group was exercised failed: the broad inherited geometry provided none.
The dedicated inside geometry now exercises the branch; thresholds were not
loosened. Both first failed attempts and corrected native/WASM runs remain in
[combined-validation](combined-validation/checks.json). No combined performance,
full-suite/sanitizer or full-asset browser result is claimed. The new user MSAA
comparison takes priority before further OFF-only screening.
