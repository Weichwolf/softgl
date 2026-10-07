# Exact geometric fragment stream census

2026-10-07. **Diagnostic only. No renderer adoption or speed claim.** Implements
the first measurement from [fragment geometry replay](../fragment-geometry-replay/README.md).
Research baseline `5ae6437554fe5988bd005d8523b6d0a82148b8cd`; accepted D4 WASM
`d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`.
Private diagnostic WASM
`f738045013ff2ff3301511cb09e8e9c408d2695034212c7c1a9e67cf2c71f15c`.

## What changed

The caller captures original triangle/bin references immediately after geometry
cache store and after the existing conservative depth filtering on cache replay,
before submission transfers ownership. Each reference records its original
normalized vertex indices, fixed-point screen coordinates, bin bounds and
position in the bin. Draw records retain raster settings and the cache slot.
Collection never runs on pixel/worker paths; it is inactive until explicitly
reset. It does not change renderer arithmetic, sorting, layouts or queue ownership.

After the draw and RGBA readback clock has ended, a private codec scans the
original bounds, produces geometric masks and encodes actual row-run payloads.
Off uses the original 2x2 quad origins and four pixel bits; 2x/4x uses one pixel
cell with its geometric sample bits and original sample locations. A run contains
an eight-byte little-endian `(y, first_x, cell_count, reserved)` header followed
by packed four-bit masks. Omitted cells decode as zero. The codec decodes the
bytes immediately and checks every original mask, including empty row holes.
For every decoded cell it also checks exact recovery of the two raw integer
interpolation edges for every lane, including lanes outside the mask and values
outside signed 32-bit range. Floating point interpolation planes are not reused.

Byte estimates add four bytes per original reference for an offset table and
48 bytes per nonempty reference for a proposed geometry header. **Those headers
and a persistent renderer cache are not implemented.** The measured run payload
is implemented; total proposed wire bytes exclude draw/cache/bin metadata,
allocation padding/alignment and lifetime management. Explicit-event estimates
use 24 bytes per decoded cell under the same header/offset assumptions.

The diagnostic allocates 7,340,032 bytes of raw reference storage plus 12,288
bytes of draw storage on the caller, only when enabled, and frees them explicitly.
The limits are 131,072 references and 128 draws per observed frame. Overflow is
a sticky error that invalidates the capture rather than dropping records. These
observer allocations are not a proposed production memory budget.

## Findings

Six fixed guarded captures cover BMW and T-80 at 640x360, three helpers plus the
computing caller, MSAA off/2x/4x, 80 warmup frames and 100 rotating frames each.
The second audit reverses mode and scene order. All 1,200 observed frame hashes
match the accepted D4 reference. Both audits agree on all 100 frames for each
scene/mode: codec counters, draw metadata, raw record hashes and match counts.

BMW has 23 observed stores and 23 replays per frame. Every replay reference is
an ordered subsequence of that frame's source references with the same geometry
and coverage settings: no missing source, unmatched reference or coverage-state
change occurs. Eight draws per frame change the eligibility predicate
`sg_pool_sort_safe`. The stored `sortStateChanges` field measures this eligibility
change, **not actual sorting or the final submitted bin traversal**. The collector
observes the bins before submission. A future cache must preserve the actual
replay order independently of any legal first-pass sorting.

Mean geometric data per BMW frame; byte counts are decimal, not MiB:

| MSAA | Store references | Replay references | Replay covered cells | Store wire estimate | Replay wire estimate | Maximum replay wire estimate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| off | 51,602.02 | 17,392.82 | 71,117.62 quads | 2,690,952.86 B | 1,184,571.24 B | 1,339,715 B |
| 2x | 73,949.02 | 23,371.41 | 167,903.15 pixels | 4,109,603.36 B | 1,632,213.17 B | 1,799,190 B |
| 4x | 73,949.02 | 26,214.59 | 213,326.18 pixels | 4,750,807.39 B | 1,955,922.83 B | 2,125,440 B |

The full store estimate exceeds 4 MiB in 44/100 BMW 2x frames and all 100 BMW 4x
frames. Every replay estimate is below 4 MiB. These are sums across a frame,
not measured peak live allocations, and the renderer's existing 4 MiB geometry
cache already contains other data. They do not authorize another implicit 4 MiB
allocation. The maximum raw-reference count is 104,381, below the declared limit.

T-80 has zero observed geometry replays in every captured frame/mode; storing its
fragment streams provides no demonstrated reuse. Its store estimates average
489,699.38 / 757,673.56 / 857,612.07 bytes for off/2x/4x respectively.
All statistics and per-frame ranges are in [analysis.json](analysis.json).

The measurements support a **bounded per-reference prototype that preferentially
retains conservatively replayable geometry**, with explicit fallback and budget
accounting. They do not establish a removable percentage of raster work or a
double-digit gain. Avoid full-frame storage of every first-pass fragment.
Replay masks remain geometric: later LESS/LEQUAL/EQUAL tests, depth values, MSAA
post-depth masks/centroids and current UV/color attributes must still be evaluated.
First-pass LESS ties cannot be discarded merely because they failed depth.
Existing strict-hidden classification may retire work only while its depth-epoch
and state proof remains valid. HZ-skipped regions need that proof or an explicit
fallback; sorting, cache misses, budget exhaustion, API barriers and recycled
packed vertices need equally explicit handling.

## Validation and boundaries

- All 745 native correctness tests and the native benchmark contract passed
  using Linux OSMesa, not WGL; 25 ASan/UBSan contracts passed with leak checking.
- Actual WASM ran 24 standalone contracts, including the new codec/collector
  fixture. The independent full-frame oracle checks 2,304 cases, 894,930 decoded
  cells and 5,577,200 exact raw-edge lanes, including 2,259,840 wide values, on
  native and WASM. Active versus inactive collection retains exact color,
  depth and stencil planes for real cache miss/replay/scissor draws in all modes.
  The fixture's stdout calls the base draw "sorted"; its assertions directly
  check sorting eligibility and do not prove an actual sorting operation.
- Existing depth replay, MSAA post-depth writes, queue/state and integer-edge
  contracts passed; the edge gate checks 4,480 frames, 62,251,008 exact sample
  masks and 12,431,040 coefficient lanes.
- All 234 rendering cases match D4 exactly separately for off/2x/4x; 240 Mesa
  comparisons retain the original tolerances. BMW/T-80 each match all 100 D4
  frame hashes plus four representative complete RGBA frames per mode.
- All 20 enabled and 20 disabled library objects were freshly compiled. The
  disabled objects and JS/WASM match D4 byte for byte. Only `workers.c.o` changes
  when enabled. All 259 actual link inputs are bound by hash; the existing 239
  test/viewer objects were reused explicitly. No new native warning is introduced.
- Quiet captures preserve the original `.10` foreign-core threshold. One 4x
  attempt was stopped for foreign CPU load after 5.7 seconds; its original log
  and monitor are retained, and no completed result or raw snapshot existed.
  Six accepted captures retain 48 compressed numeric
  reference snapshots at frames 0/25/50/75 and their raw/compressed SHA-256 hashes.
  A separate four-frame smoke capture is exploratory, without the quiet guard;
  its initially warm cache can legitimately lack a source in that frame's trace.

The source patches and gates test a diagnostic codec, **not an integrated stream
renderer**. Counts include cache-store/replay geometry only, omit uncached draws,
and precede actual raster HZ/depth rejection. Bounding-box cells are a full codec
scan, not observations of executed renderer edge tests. Every mask is geometric,
even though the replay reference list has already been conservatively filtered.
The frame clock includes collection overhead, and the enclosing loop includes
expensive trace analysis. None of the recorded milliseconds or FPS are acceptance
timings. No CPU-time ceiling or whole-frame gain can be inferred from them.

## Sources and reproduction

William R. Mark and Kekoa Proudfoot, *The F-Buffer: A Rasterization-Order FIFO
Buffer for Multi-Pass Rendering*, Graphics Hardware 2001, pp. 57–63:
[publisher PDF](https://diglib.eg.org/bitstream/handle/10.2312/EGGH.EGGH01.057-063/057-063.pdf?isAllowed=n&sequence=1).
Section 5.2 discusses a single-rasterization storage variant; its section 6 Mesa
demo rerasterizes every pass and stores intermediate colors. This diagnostic is
our internal geometric-mask adaptation, not their implementation or speed result.
[The research brief](../fragment-geometry-replay/README.md) and its
[source receipts](../fragment-geometry-replay/sources.json) record the reviewed
paper and SoftGL identities. No copyrighted PDF or generated executable/module
is committed; compressed `.records.gz` files contain numeric observation data.

From the repository root:

```sh
python3 experiments/fragment-stream-census/verify_artifacts.py
python3 experiments/fragment-stream-census/analyze-observations.py --check
python3 experiments/fragment-stream-census/reproduce-diagnostic.py --prepare-only \
  --work build/diagnostics/fragment-stream-census-fresh-check
```

The fresh source reconstruction was executed and all five changed-source hashes
passed; [recipe-check](recipe-check/reproduction-receipt.json) expressly records
that it did not repeat the renderer build, full gates or observations.
The original diagnostic producer, all original gates and all six captures were
executed; their commands and results are archived here.

To repeat the full build/gates and optionally the six observations, choose a new
work directory and omit `--prepare-only`, adding `--observe` for captures. The
supplied full reproduction branch requires the frozen D4 control, the original
239-object canonical catalog under `build/checks/msaa-wasm`, the original BMW
pack, Emscripten/Node/Playwright/Chromium and Linux OSMesa. It verifies the source
and module identities. Observations additionally require a clean pushed master
and the unchanged D4 preview with COOP/COEP on port 8000. The supplied fresh full
recipe has not itself been rerun; do not confuse it with the executed original
producer and gates. The reproduction modifies only its new private work/control
directories. A production prototype still needs all fidelity gates and repeated
quiet AB/BA timing under the [validation protocol](../validation-protocol/README.md).
