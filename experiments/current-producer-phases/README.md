# Current D4 caller and packed-vertex phase diagnostic

This diagnostic measures the currently accepted D4 renderer; it claims no speedup.
BMW is the primary workload. Its cache replay takes 0.186624–0.302156 mean caller
wall ms/frame across two audits of all modes, while actual packed-vertex writes
take 0.848093–0.917542 ms/frame. Exact index-range scanning is only
0.095039–0.113242 ms/frame. Optimizing replay or scanning again has a smaller
observed scope than packing; these are instrumented wall scopes, not removable
frame-time estimates or hardware-ceiling percentages.

BMW packs exactly 83,746 transformed vertices into 5,076,400 logical output bytes
in ten ordered draws in every one of its 600 observed frames. No clipped vertices
are packed in those ten draws. This does not say the whole model/API needs no
clipping or that every input vertex is unique. Requested ranges across all
parallel draws total 92,206 items/frame; packed output is a subset. All eighteen
logical counters match at every corresponding angle in the two audits (600
paired scene/mode/angle comparisons, 1200 observed frames). All six original quiet
guards pass on their first attempt. Times remain distributions, not deterministic
counts or useful-CPU measurements.

The caller's BMW queue-reservation wall scope is much larger, 11.291047–17.516072
ms/frame. It includes actual raster helping and waiting for slots/budget, so it
cannot be removed by optimizing queue metadata. Transform and triangle preparation
also include caller work and worker-stage completion; they do not isolate floating
point arithmetic. Submission's packing scope excludes allocation, reservation,
texture preparation, snapshots and publication. Nested scopes are already included
in stream_submit and must not be added again.

**Next architecture trial:** produce ordered-draw packed vertices during the
existing geometry slices while their full vertices are still locally hot, then
transfer ownership to an immutable queue slot after the existing reserve/order
checks. Retain full vertices for existing triangle preparation and clipping;
pack any newly clipped vertices at submission. Initially scope this to the exact
recognized ordered packed path, retaining the existing raw, large/unrecognized
and failure paths (raw publication already swaps ownership without packing). There is no reason to discard full vertex
fields or change interpolation just to attempt this transfer.

This proposed design still needs concrete buffer ownership, immutable queued
draw lifetimes, allocation failure handling, exact active-unit/layout validation
and the existing byte-budget enforcement. Moving writes into shared geometry
work can delay raster workers or increase live storage; eliminating the final
pass does not guarantee faster frames. Worker and queued geometry claims use 128 items; the initial caller tail
and serial fallback can be larger. Bound local packing chunks where needed,
preserving existing stage boundaries. Measure resulting cache locality and total
all-mode frame times rather than
claiming cache hits or a saved 0.9ms. No prepacking, ownership swap, new layout,
geometry simplification or optimization from this proposal is implemented here.
A real candidate must pass independent payload/lifetime/budget contracts, full
fidelity gates and predeclared repeated off/2x/4x comparisons before adoption.


Research snapshot `ef69281d978dee56088c3450da664baec21f360d`; accepted `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; private diagnostic `1a84076f732c776635e878fd0a73fb505133c7b5bad43d7cfb71adc34e77c3cd`. Production and live preview retain accepted D4.

## Phase observations

Two quiet guarded audits per scene/mode: 640x360, three helpers plus caller,
80 warmup then 100 rotating measured frames with resolve/readback each frame.
Audit1 visits off/2x/4x; audit2 visits 4x/2x/off. All attempts use the unchanged
quiet guard (.10 foreign CPU cores) and remain archived. These are diagnostic
observations, not performance acceptance comparisons.

The nine outer phase durations are non-overlapping on the caller. Four disjoint
submit subphases are already included in stream_submit; do not add them again.
For every one of 1200 raw frames, independent checks require the outer sum to fit
inside draw+resolve and the nested sum to fit inside stream_submit (only 1e-9ms
floating subtraction allowance). Clocks include preemption/joins/mutex waits and
diagnostic costs. Workers can rasterize concurrently. Wall times are neither
exclusive CPU costs nor removable frame costs or an uninstrumented FPS ceiling.

Outer phases, mean wall ms/frame, audit1 / audit2:

| Scene | MSAA | lookup | index_scan | normal_cache | compact_transform | triangle_prepare | triangle_emit | geometry_store | geometry_replay | stream_submit |
|---|---|---|---|---|---|---|---|---|---|---|
| BMW F31 | off | 0.082051 / 0.077314 | 0.095039 / 0.097773 | 0.031785 / 0.028970 | 3.568130 / 3.518589 | 2.411890 / 2.414741 | 1.522820 / 1.366682 | 0.152043 / 0.148718 | 0.187979 / 0.186624 | 13.241973 / 13.422996 |
| BMW F31 | 2x | 0.086018 / 0.080649 | 0.099961 / 0.110293 | 0.030203 / 0.028774 | 3.281538 / 3.437520 | 2.065220 / 2.054956 | 1.506497 / 1.505110 | 0.211130 / 0.212446 | 0.274102 / 0.276470 | 16.422319 / 16.355708 |
| BMW F31 | 4x | 0.091365 / 0.089688 | 0.108291 / 0.113242 | 0.030061 / 0.030027 | 3.535745 / 3.557195 | 2.235923 / 2.147666 | 1.551912 / 1.821526 | 0.215730 / 0.214705 | 0.290415 / 0.302156 | 19.489763 / 18.957891 |
| T-80 | off | 0.022676 / 0.022283 | 0.048831 / 0.053113 | 0.007051 / 0.006841 | 4.508306 / 4.419351 | 0.467026 / 0.506436 | 2.413376 / 2.429292 | 0.027078 / 0.026899 | 0.000000 / 0.000000 | 3.335261 / 3.392544 |
| T-80 | 2x | 0.026958 / 0.024150 | 0.058376 / 0.056926 | 0.006160 / 0.006609 | 4.615222 / 4.520281 | 0.519587 / 0.496821 | 2.430144 / 2.403125 | 0.037639 / 0.035994 | 0.000000 / 0.000000 | 4.610098 / 4.637705 |
| T-80 | 4x | 0.026094 / 0.025349 | 0.058926 / 0.101638 | 0.007449 / 0.007903 | 4.672336 / 4.652058 | 0.606165 / 0.510896 | 2.508557 / 2.463582 | 0.036665 / 0.037839 | 0.000000 / 0.000000 | 5.373386 / 5.426096 |

Disjoint submit subphases, mean wall ms/frame, audit1 / audit2:

| Scene | MSAA | packed_vertex_write | queue_reserve | stream_finish_previous | submit_texture_prepare |
|---|---|---|---|---|---|
| BMW F31 | off | 0.848093 / 0.869348 | 11.291047 / 11.463955 | 0.000847 / 0.000657 | 0.089519 / 0.083555 |
| BMW F31 | 2x | 0.875156 / 0.866101 | 14.536013 / 14.522593 | 0.000811 / 0.001055 | 0.086965 / 0.087358 |
| BMW F31 | 4x | 0.917542 / 0.890154 | 17.516072 / 17.039460 | 0.000747 / 0.000647 | 0.097397 / 0.090557 |
| T-80 | off | 0.453750 / 0.473162 | 0.000000 / 0.000000 | 2.643979 / 2.683342 | 0.006362 / 0.006421 |
| T-80 | 2x | 0.509099 / 0.512747 | 0.000000 / 0.000000 | 3.854224 / 3.875615 | 0.008237 / 0.007952 |
| T-80 | 4x | 0.504211 / 0.528311 | 0.000000 / 0.000000 | 4.619141 / 4.640000 | 0.007854 / 0.008342 |

packed_vertex_write brackets only the two actual transformed/clipped source writes;
allocation, layout, sampler preparation, queue selection, state capture and
publication remain outside that scope. queue_reserve covers the complete slot/
budget loop, including retirement, mutexes, caller raster helping and waiting.
stream_finish_previous brackets only finish calls in submission paths, including
joins/helping; it is not all frame polling. submit_texture_prepare brackets actual
sampler preparation in ordered, large-packed and ordinary submission paths.
Unmeasured submit residue includes layout/allocation, snapshots, ownership swaps,
publication and instrumentation overhead. No per-triangle, per-record or per-spin
counter/timer is added. Cached replay counters use per-bin sums; emitted-record
counts use sums before/after a triangle batch. The four-file patch changes no
renderer arithmetic, geometry, framebuffer layout, synchronization or ordering.

Logical counts, mean/frame, audit1 / audit2:

| Scene | MSAA | parallel_draws | geometry_hits | geometry_entries | indices_scanned | vertices_requested | prepared_batches | prepared_triangles | unprepared_triangles | emitted_bin_records | replay_input_bin_records | replay_output_bin_records | packed_draws | packed_vertices | packed_bytes | packed_ordered_draws | packed_large_draws | packed_transformed_vertices | packed_clipped_vertices |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| bmw | off | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 8133.00 / 8133.00 | 51602.02 / 51602.02 | 37856.62 / 37856.62 | 17392.82 / 17392.82 | 10.00 / 10.00 | 83746.00 / 83746.00 | 5076400.00 / 5076400.00 | 10.00 / 10.00 | 0.00 / 0.00 | 83746.00 / 83746.00 | 0.00 / 0.00 |
| bmw | 2x | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 8133.00 / 8133.00 | 73949.02 / 73949.02 | 60973.00 / 60973.00 | 23371.41 / 23371.41 | 10.00 / 10.00 | 83746.00 / 83746.00 | 5076400.00 / 5076400.00 | 10.00 / 10.00 | 0.00 / 0.00 | 83746.00 / 83746.00 | 0.00 / 0.00 |
| bmw | 4x | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 8133.00 / 8133.00 | 73949.02 / 73949.02 | 64696.68 / 64696.68 | 26214.59 / 26214.59 | 10.00 / 10.00 | 83746.00 / 83746.00 | 5076400.00 / 5076400.00 | 10.00 / 10.00 | 0.00 / 0.00 | 83746.00 / 83746.00 | 0.00 / 0.00 |
| tank | off | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 27089.00 / 27089.00 | 20819.31 / 20819.31 | 0.00 / 0.00 | 0.00 / 0.00 | 3.23 / 3.23 | 42030.43 / 42030.43 | 2689947.52 / 2689947.52 | 0.00 / 0.00 | 3.23 / 3.23 | 40984.90 / 40984.90 | 1045.53 / 1045.53 |
| tank | 2x | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 27089.00 / 27089.00 | 28100.62 / 28100.62 | 0.00 / 0.00 | 0.00 / 0.00 | 3.25 / 3.25 | 42229.41 / 42229.41 | 2702682.24 / 2702682.24 | 0.00 / 0.00 | 3.25 / 3.25 | 41022.90 / 41022.90 | 1206.51 / 1206.51 |
| tank | 4x | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 27089.00 / 27089.00 | 28100.62 / 28100.62 | 0.00 / 0.00 | 0.00 / 0.00 | 3.25 / 3.25 | 42229.41 / 42229.41 | 2702682.24 / 2702682.24 | 0.00 / 0.00 | 3.25 / 3.25 | 41022.90 / 41022.90 | 1206.51 / 1206.51 |

Requested transformed vertices are ranges, not actual cache misses or computed
vertices. Packed vertex bytes are logical output records, excluding source reads,
cache-line traffic, DRAM transactions and bin duplication. Counters partition
packed draws into ordered/large and packed vertices into transformed/clipped.
The analysis retains every phase/counter distribution, not just means.

## Actual producer and fidelity

The executed producer recompiles workers.c and pipeline.c (including the edited
queue include), reuses eighteen accepted D4 library objects, and records twenty
actual library objects plus 259 ordered link inputs. Both disabled caller objects,
JS and WASM match accepted D4 byte-for-byte. Compile/link commands, actual object/
source/fixture/module identities and matching symbol maps are bound. The source
patch reconstructs independently from archived originals. The private observer's
reversible edits recover the tracked benchmark exactly; benchmark and quiet guard
are unchanged. Frame clocks surround draw+resolve; diagnostic metadata reads occur
afterward. The diagnostic can alter compiler/JIT layouts and schedules.

Before observations, all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts,
23 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact controls per mode,
100 matching dual model frame hashes and four byte-exact representative frames
per model/mode pass. Native/WASM edge observers pass 4480 frames, 62,251,008 sample
masks and 12,431,040 coefficient lanes. Existing post-depth-store, DOT3 query,
quantization, index-range and depth replay contracts pass with direct stdout.
No tolerance changes. Native reference comparisons use working Linux OSMesa.
The original creator stdout retains an obsolete grow-counter label from its
template. Actual generated sources and the eighteen-counter schema contain no
bin-grow/per-record counters; only that creator summary wording was corrected.

## Reproduction and limits

Portable retained-evidence checks:

```sh
python3 experiments/current-producer-phases/verify_artifacts.py
```

Fresh source/native regression build recipe:

```sh
python3 experiments/current-producer-phases/reproduce-diagnostic.py
```

The fresh recipe is supplied, not executed for this archive. The original
incremental producer, full fidelity gates and six guarded observations are
executed. Fresh builds need Emscripten, native CMake/OSMesa dependencies and the
bound BMW pack. Different paths/toolchains can change binary identities. Output
stays under build/. Original full WASM/sanitizer/image/observation drivers retain
staging paths and need adaptation to a fresh tree. Run all-mode WASM fidelity
before new observations or performance claims. The portable verifier checks
retained receipts/raw arithmetic and does not rerun rendering/browser tests.
Generated binaries and build directories are excluded from publication.
