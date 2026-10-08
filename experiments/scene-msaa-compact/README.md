# Compact exact MSAA sample metadata

Status: three exact native variants screened against `da48afd`; no adoption.
Bistro results are small/mixed, not a confirmed complex-scene gain.

The accepted deferred MSAA path stores a 32-bit winner, byte shading-point and
16-bit material for every passing sample. The separate small arrays may cause
adjacent X-stripe workers to write the same cache line. Compress the winner and
original draw-time point into one word and derive material once for each final
visible group. This is a bandwidth/layout experiment; false-sharing cost has
not been measured directly or proven to dominate.

A shared 128 MiB triangle-record allocation budget bounds every per-bin index
below 2^19 on native and WASM. C11 static assertions check the actual native/WASM
record size and the <=32-bin limit. Bits 0…18 encode the index, 19…23 the bin,
24…26 the exact original sample/center point (0…4). UINT32_MAX is unambiguously
empty. No capacity cap is lowered and no geometry is discarded to fit the word.
OFF continues to use its ordinary IDs/material plane; every consumer decodes
the new internal ID width consistently. No public GL or framebuffer ABI changes.

During capture, write only actual passing sample depth and the combined label;
retain cutout tests before writes and current-frame conservative occlusion.
At grouping, equal complete labels share one shade, read the immutable triangle
material once, and write material metadata only for the representative sample.
Remove the point array (921,600 bytes at 640×360/4×) and its allocation/free.
Rollback snapshots, sample positions, shading weights and final resolve stay
unchanged. Total metadata is now 11 bytes/sample rather than 12.

Optional private follow-ups:
- `--packed-stores`: one SIMD128 depth/winner store for full 4× coverage, two-word
  stores for full 2×; partial coverage writes exactly its own passing samples.
- `--align64`: align winner and sample depth to cache lines. This is memory
  alignment only, not SIMD wider than 128 bits. With 20-pixel bins, 4× boundaries
  then align to 64 bytes; 2× bin boundaries still alternate half-cache lines.

Test exact independent native planes, canonical/mixed-alpha/tiny/rollback paths,
108 paired asset views, then quiet native AB/BA 640×360/four threads. Selected
variants need three-block all-four OFF/2×/4× confirmation, SIMD128 ISA audit,
sanitzer/native suite, actual WASM contracts/context reuse and live <=4 GiB
browser checks before commit/push and live refresh. Prefer gains on complex
Bistro over tiny controls; all four scenes remain targets.

```sh
python3 experiments/scene-msaa-compact/prepare.py --output-root build/scene-msaa-compact/scalar-v1
cmake -S experiments/scene-msaa-compact -B build/scene-msaa-compact/scalar-v1/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-msaa-compact/scalar-v1" \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-compact/scalar-v1/native -j4
```

The first guarded generator stopped before compilation because a replacement
matched both the destructor and reallocation cleanup. Its partial source and
failure log were retained; a distinct destructor replacement fixes generation.
No failed/partial build is timed. Frozen variant folders must not be overwritten.

Sources: our own current [triangle record, sample capture and grouping](../../libsoftgl/src/scene_visibility.c)
and [current-frame MSAA occlusion](../scene-msaa-occlusion/README.md). The bit
layout follows those actual allocation/index bounds; no upstream implementation
is copied and no upstream performance claim substitutes for measurement here.

## Actual native evidence

Scalar-v1 passes 216 independent hashes, 162 canonical pairs, mixed alpha,
6 ordinary draws after near-occluder rollback and 108 exact paired asset views.
Packed and packed64 each pass 216 native hashes, canonical/rollback controls
and 288 resident/fresh-context plane comparisons against the scalar view oracle:
all four models × nine angles × OFF/2×/4×/OFF. Exact RGBA, depth, stencil and
sample-depth/stencil hashes agree. [Receipts](validation/).

| One-block Bistro screen, frame-time change | 2× | 4× |
| --- | ---: | ---: |
| Scalar | +0.93% | -1.16% |
| Packed stores | +1.30% | +0.97% |
| Packed + 64-byte alignment | +2.99% | -2.05% |

Each screen retains 8 accepted runs/zero rejected, one quiet AB/BA block per
mode, 60 warm-up/30 orbit frames, 640×360/four threads. No three-block gain,
WASM/browser/adoption claim is made. Removing writes does not establish a large
speedup: material lookup now reads the larger scattered triangle records.
That motivates the separate [compact triangle snapshot trial](../scene-compact-triangles/README.md).
The accepted production/server remain `da48afd`.
