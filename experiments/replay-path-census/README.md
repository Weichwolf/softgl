# Current D4 cache-replay path census

BMW executes 23 cache replays/frame. Complete-bin copies account for 7.472167% of replay input off, 10.125646% at 2x and 9.542854% at 4x; the remaining input passes through the captured depth-visibility filter. Every matching-angle counter row agrees across both audits. T-80 has zero cache replays in its 600 observed frames. All six quiet guards pass on the first attempt. Publication already swaps bin ownership, so there is no second publication copy to remove. The observations support evaluating visibility selection next; they establish no FPS gain or hardware limit.

Research snapshot `d1e7a8e2656b7236c8bd689da7cf85841ab8d552`; accepted reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; diagnostic `fb5dae9c5d3fe4f1568d2b6692d6c3286acb212e2a28461aff2557416433fab9`. No runtime optimization is adopted.

## Ownership audit and question

Both ordered queue and raw/packed async publication already swap complete bin
ownership between producer and draw slot. There is no second triangle-copy step
at publication to remove. Vertex packing is a separate operation. The precise
source anchors and original source hashes are in `ownership-audit.json`.

Geometry-cache replay still has two paths: a memcpy of each complete nonempty
bin, or stable per-record selection through the captured hidden-bit bitmap.
Coverage retirement may compact the cache's triangle array/offsets and write a
new bitmap tail. Epoch/key invalidation and replacement may reuse the same
entry's storage. Borrowing that storage needs lifetime and immutability control;
a pointer swap alone cannot preserve asynchronous snapshot safety.

The preceding producer diagnostic used old 7cc and combined replay input/output
counts. This new current-D4 census distinguishes filtered and complete-copy bins
before designing a borrowing or deferred filtering architecture. Neither the old
phase wall times nor these logical counts are removable CPU-time measurements.

## Observations

Two quiet guarded audits per scene/mode, 640x360, three helpers plus caller,
80 warmup plus 100 rotating measured frames with resolve/readback each frame.
Audit 1 uses off/2x/4x; audit 2 reverses the modes. Eight caller TLS integer counters
are incremented at actual replay branch sites. There is no timer or counter per
triangle, no renderer-state/layout or rendering-arithmetic change. Reset/read and
metadata construction sit outside each observed draw+resolve frame clock.

The table gives means/frame, audit 1 / audit 2. Whole-bin fraction divides complete
copy-path input records by all replay input records. Byte totals in analysis.json
multiply copied record counts by 16; they are not physical cache/DRAM transactions. These are duplicated bin records,
not counts of unique model triangles.

| Scene | MSAA | Replay calls | Filter input records | Filter output records | Whole-bin copied records | Whole-bin fraction of input |
|---|---|---|---|---|---|---|
| BMW F31 | off | 23.00 / 23.00 | 35027.91 / 35027.91 | 14564.11 / 14564.11 | 2828.71 / 2828.71 | 7.472167% / 7.472167% |
| BMW F31 | 2x | 23.00 / 23.00 | 54799.09 / 54799.09 | 17197.50 / 17197.50 | 6173.91 / 6173.91 | 10.125646% / 10.125646% |
| BMW F31 | 4x | 23.00 / 23.00 | 58522.77 / 58522.77 | 20040.68 / 20040.68 | 6173.91 / 6173.91 | 9.542854% / 9.542854% |
| T-80 | off | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | — / — |
| T-80 | 2x | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | — / — |
| T-80 | 4x | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | 0.00 / 0.00 | — / — |

`runs/` retains all 1200 raw scene frames and every quiet-guard attempt. The original
.10 foreign CPU-core threshold remains unchanged. The private benchmark edits
are exactly reversible to the tracked original; no benchmark/guard changes enter
production. Independently checked per-frame identities require input=filtered
input+whole-copied records, filtered output<=filtered input and all bin categories
summing to replay calls times actual 12/32 bins. Every count is a nonnegative exact
integer below 2^53. BMW replay activity must be present; current T-80 replay counts
are all zero. Reader bounds (-1 and 8) return zero for every observed frame.

Instrumentation can change schedules and when coverage retirement publishes a
bitmap, so path eligibility describes these diagnostic observations. The retained
outer frame times and overall benchmark times include observer effects. They do
not establish an uninstrumented speedup, saved frame cost, bottleneck percentage,
cache behavior or a hardware ceiling. Any new implementation needs fresh paired
comparisons and full fidelity gates against the accepted D4 module.

## Actual producer and correctness

The incremental producer reuses nineteen accepted D4 library objects and compiles
only workers.c in disabled/instrumented variants. There are twenty library objects
and 259 ordered actual link inputs. Disabled JS/WASM are byte-identical to accepted
D4; actual identity hashes and the successful producer receipt are retained.
Instrumented exports add only the private reset/read functions. The two-file patch,
source/object/link identities and executed commands are archived. Generated binary
modules/build directories are excluded.

The first producer attempt incorrectly routed the unchanged pipeline.c.o to the
private work directory inherited from a two-unit recipe. It terminated before
linking or correctness gates. Routing was corrected to reuse the accepted D4
pipeline object; diagnostic source/counter sites did not change. The original
script, failed attempt and corrected recipe are retained in `build-correction.json`.

Before observations, all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts,
23 WASM contracts, 240 WASM/Mesa images, 234 byte-exact test images each mode,
100 matching dual hashes and four byte-exact frames per model/mode pass. Full
native/WASM edge checks retain 4480 frames/62,251,008 sample masks/12,431,040 float lanes.
Existing index-range, post-depth stores, DOT3-query and depth replay contracts pass.
No pixel tolerance changes; the native reference uses working Linux OSMesa.

## Reproduction

Portable archive/source/raw-arithmetic verification:

```sh
python3 experiments/replay-path-census/verify_artifacts.py
```

A fresh full-source rebuild recipe is supplied:

```sh
python3 experiments/replay-path-census/reproduce-diagnostic.py
```

This fresh recipe was not executed for this archive. The original incremental
producer, complete gates and guarded observations were executed. The fresh recipe
needs Emscripten, CMake/native OSMesa dependencies and the bound BMW pack. Output
stays under build/. Paths/toolchains may change binary identities. Full sanitizer,
WASM/image and guarded observation scripts describe the original staging paths
and need adaptation for a new tree. Repeat complete WASM fidelity before observing
new builds. The portable verifier checks retained receipts and raw arithmetic;
it does not rebuild binaries or rerun browser/rendering tests.
