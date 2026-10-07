# Parallel ordered triangle preparation (2026-10-04)

The existing three workers plus caller also prepare triangle descriptors.
Each disjoint 128-triangle slice computes the original float area/culling,
fixed-point conservative bounds, bin range and depth key. A 28-byte descriptor
records the result; the caller appends bins in original primitive order and
processes clipped triangles through the existing path. The retained scratch
is capped at 8,192 records (224KiB), with at most 448KiB during allocation
growth. Work boundaries start on separate 64-byte cache lines. Queue workers
finish claimed raster bins before taking the finite geometry stage; ordinary
idle pools share the same stage. Small/ineligible jobs, two-sided lighting,
user clip planes and existing single-draw asynchronous raster epochs keep
their prior path. Position/bin cache qualification and ownership are unchanged.

Candidate 0a9df7ee versus f72016fd improves all six BMW four-sample pairs;
the independent quiet three-pair audits give -0.88/-0.37% frame time. T80
improves five of six (-1.29/-0.97%), with one +0.26%. Two-sample controls
improve all three pairs for both models (BMW -0.83%, T80 -2.43%); off-MSAA
BMW improves all three (-2.27%), while T80 is mixed (-0.69%, including one
+6.52% outlier). All twelve complete AB/BA pairs pass the unchanged activity
guard on attempt one, 640x360, three workers plus caller, 80 warm-up and
100 timed frames per arm with resolve/readback every frame. The two-sample
lit icosphere is mixed (+1.50%); no stable gain is claimed. Four-sample
medians are BMW 24.23/24.17 FPS, T80 62.83/62.95 FPS; BMW >30 FPS remains open.

Separate counters preserve 100 model hashes and four raw frames each.
BMW prepares 51,894 triangles through eight stage jobs per frame, all ready,
with 39.93% mean worker participation; T80 prepares 17,424 through three
jobs, 57.30% worker participation, with clipped/rejected counts varying by
angle. These are scheduling diagnostics, not cache counters or acceptance
timings. Evidence: build/diagnostics/parallel-triangle-stage-counts/
frame-equivalence-4.json. The native isolated build initially lacked wrapper
source links; its failed configuration and empty CTest run are not accepted
as tests. After adding the sources, all sixteen preliminary contracts pass.
Preexisting warnings in unchanged dlist.c/evaluators.c are recorded separately.

A new triangle_stage contract compares large staged draws with the original
serial producer using <=512-triangle draws, preserving the exact primitive
order and bin layout. Its 54 whole-frame/sample-plane hashes cover u8/u16/u32
indices, 1,023/1,024/1,152/8,192/8,193-triangle boundaries, winding, culling,
clipping, an older queued draw, off/2x/4x and 1/3/8 workers. It passes native,
sanitized and WASM builds and checks retained scratch capacity. Final gates:
738 native checks, seventeen ASan/UBSan/leak contracts, 240 Mesa and exact
baseline images, 234 exact images per MSAA mode, all rotating model frames,
51 WASM renderer + 135 queue + 54 triangle + eighteen default-pool contracts,
strict numeric/writer checks and both browser previews. Canonical JS/WASM
are identical to the measured frozen module. Validation/publication:
build/diagnostics/parallel-triangle-stage/validation.json and publication-proof.json.
Timings: build/perf/tigerlake-20261004/parallel-triangle-stage*-summary.json.

Ordered opaque visibility trials against `0a9df7ee` are rejected. A separate
four-sample diagnostic records successful shader color writes and final
distinct primitive owners per pixel, including mixed sample owners at edges.
BMW averages 158,827 shader writes, 142,120 surviving primitive/pixel pairs
within individual draws, and 104,079 across compatible opaque queue segments.
The corresponding 10.52%/34.47% redundancy is a logical upper bound for that
queue scope, not a whole-frame speedup or a cache-miss measurement. T80 does
not use this path. Evidence: build/diagnostics/opaque-visibility-counts/.

Private prototypes preserve the original post-depth-test coverage mask for
each primitive/pixel, so deferred shading retains the original shading point
even when later primitives overwrite some samples. Same-bin order and queue
ownership are preserved; alpha, blending, stencil, queries and incompatible
sample/color states retain the ordinary path. Four variants all preserve
100 rotating model hashes and four exact frames per model at 640x360/4x.
Each timed variant has three complete quiet AB/BA pairs, three workers plus
caller, 80 warm-up and 100 timed frames per arm, resolving every frame:

| Private trial | BMW frame-time change | T80 frame-time change |
| --- | --- | --- |
| Visibility followed by another triangle scan | +11.09% | -0.73% |
| Sparse surviving-fragment lists | +1.20% | -0.63% |
| Sparse lists, gathered batches, 4 MiB queue | +7.38% | -0.64% |
| Sparse lists, SIMD depth/owner writes, 2 MiB queue | +0.66% | -0.70% |

BMW is slower in all twelve pairs; T80 is outside the new path, so its small
mixed changes are not attributed to this architecture. Full native/Mesa and
WASM compliance gates were not rerun for rejected prototypes. Production,
live assets, geometry and tolerances remain unchanged. Raw trials and proof:
build/perf/tigerlake-20261004/opaque-deferred-*-audit-1-summary.json and
build/diagnostics/opaque-visibility-counts/trials.json.

Separate untimed batch counters show that a gathered 2 MiB queue forms only
two-draw groups, saving 16,988 shader calls per frame. A 4 MiB queue adds
three-draw groups and saves 25,053; neither forms four-draw groups in the
measured model sequence. Both counter modules preserve the model images.
More saved shading does not by itself offset visibility, scheduling and
storage costs. Counter evidence: build/diagnostics/opaque-deferred-batched-counts/
and build/diagnostics/opaque-deferred-batched-4m-counts/frame-equivalence-4.json.


Conservative incremental MSAA scanlines against `0a9df7ee` reduce raster work
without changing the coverage predicates. Three floating-point edge
intersections are initialized per triangle and advanced once per row. They
only propose excluded left/right tails: exact signed 64-bit edge extrema
must prove each tail has no covered sample. Rounding or accumulated drift
can therefore only leave extra work. Pixel/sample order, post-Z shading
points, depth/query semantics and shader arithmetic remain unchanged. The
shared template applies to both 2x and 4x; ordinary non-MSAA is unchanged.
Spans are enabled only for bounding boxes at least eight pixels wide and
64 pixels in area. No new retained allocation or worker coordination.

Untimed counters on the previous production module show BMW visits
2,840,601 bounding-box pixels versus 641,674 covered pixels per frame;
T80 visits 1,022,817 versus 215,722. Whole-triangle HZ has already run at
that point. Counters preserve 100 rotating frame hashes and four exact
frames per model. These are logical operations, not cache-miss counters.
Evidence: build/diagnostics/current-a99c3ad-raster-counts/.

The incremental candidate `36aa8414` has two independent 4x audits,
three complete quiet AB/BA pairs each, resolving every frame at 640x360,
three workers plus caller, 80 warm-up and 100 measured frames per arm:

| Scene | 4x frame-time change, audit 1 / 2 | FPS, audit 1 / 2 |
| --- | --- | --- |
| BMW | -1.12% / -0.04% | 24.50 / 24.29 |
| T80 | -3.19% / -4.07% | 64.59 / 64.36 |

T80 improves in all six pairs. BMW's initial gain does not reproduce in
the confirmation audit, so no reliable 4x BMW speedup is claimed and its
30 FPS target remains unmet. Three-pair 2x audit: BMW -1.87%, T80 -2.67%.
Without MSAA: BMW -0.83%, T80 +0.68%, mixed pairs; no algorithmic change
or reliable speedup is claimed for that path. A per-row multiplication
prototype and a tighter sample-aware bounding-box variant were also
image-exact, but did not provide a clearer two-model improvement.
Raw data: build/perf/tigerlake-20261004/msaa-incremental-spans*-summary.json;
validation: build/diagnostics/msaa-incremental-spans/validation.json.

Three private tiled level-zero 2D texture layouts are rejected. Canonical
texture storage and mipmap semantics are preserved; optional aligned
64-byte tiles serve packet sampling, with paired loads only when physical
addresses are adjacent. Upload builds the cache; mutation joins pending
work before invalidation; allocation failure uses canonical storage.

| Tile trial | BMW time | T80 time | Exact channel comparisons |
| --- | --- | --- | --- |
| 4x4 RGBA8 | -0.06% | +1.67% | 4,834,816 |
| 8x2 RGBA8 | -0.68% | +1.88% | 5,729,792 |
| 8x2 shared float scalar/packet sampling | +0.15% | +1.92% | 11,158,016 |

Each trial has three quiet AB/BA pairs and exact model frames; no full
compliance rerun after the performance rejection. The scalar-sharing trial
also compares actual scalar sampling against a canonical texture clone.
Evidence: build/diagnostics/texture-tile{4,8x2,8x2-float}/validation.json.

A separate current-module CPU profile outlines packet, unit, 2D and scalar
shader boundaries; the emitted WASM verifies those calls remain outlined.
Across 300 frames, BMW MSAA raster self samples total 22.71 s across caller
and three workers, versus 1.37 s in packet shading and 0.42 s in packet 2D
sampling; cube sampling totals 4.09 s. T80 raster totals 6.62 s, packet 2D
0.79 s. Sampling can include waiting/preemption and outlining changes code
generation, so these are diagnostic locations, not CPU busy time or an
acceptance benchmark. Logical HZ counters show BMW performs 10,755 cell
refreshes and rejects 73,323 of 155,291 valid triangle-bound queries per
frame. Evidence: build/diagnostics/current-a99c3ad-shader-profile/ and
build/diagnostics/current-a99c3ad-hz-counts/.

The independent full-frame scanline oracle checks 4,480 actual renderings
and 46,688,256 exact sample masks in native SSE4.1 and WASM: thin/wide/tall
triangles, negative and large coordinates, both MSAA modes, and disabled
multisampling. It does not duplicate the optimized intersection algorithm.
Full gates: 738 native tests plus benchmark_fp6, 18 sanitizer contracts,
240 Mesa images, 240 exact previous-production images, 234 exact images
at each of 2x/4x, model hashes/bytes in all three modes, 51 WASM renderer,
135 queue, 54 triangle, eighteen default-pool and strict numeric/writer
contracts. Canonical JS/WASM match the timed frozen module exactly.
Both Chromium and Firefox pass 234 viewer scenes, all eighteen benchmark
rows in off/2x/4x order, cancellation and MSAA restoration with three workers.
Firefox exits successfully; its Python mozprofile destructor logs a cleanup
ImportError after the passed result during interpreter shutdown.


Exact four-sample coverage SIMD against `36aa8414` is accepted.
A per-triangle i64 bound proves that all three raw sample edges across the
entire clipped bounding rectangle fit signed 32 bits, with a one-unit margin
for the top-left bias. Extreme origins or spans take the original i64 path.
The checked origin and dimension cap keep the bound arithmetic inside i64.
Packed additions deliberately wrap modulo 2^32: proved final sample sums fit
signed i32, so their signs are exact even when a base/offset cast wraps.
Four lanes now test the actual four samples of one pixel with three vector
adds, two ORs and one sign mask. All geometry, sample locations, shading
points, depth expressions and float interpolation remain unchanged. Native
SSE4.1 and standard WASM SIMD128 use the same predicates; no extra retained
allocation, threading or texture storage. Only the 4x coverage path changes.

Two independent three-pair quiet AB/BA audits at 640x360, three workers plus
caller, 80 warm-up and 100 measured frames per arm, resolving every frame:

| Scene | Frame-time change, audit 1 / 2 | FPS, audit 1 / 2 |
| --- | --- | --- |
| BMW | -8.94% / -7.71% | 26.51 / 26.38 |
| T80 | -5.50% / -5.86% | 68.03 / 67.80 |

Both improve in all six pairs; BMW remains below 30 FPS. Additional three-pair
2x audits give BMW -0.39%, T80 -0.97%; without MSAA -1.21%/-1.97%. Those
paths have no algorithm change, so these small differences are not claimed
as SIMD-coverage gains. Raw timings: build/perf/tigerlake-20261004/
msaa-sample-coverage32*-summary.json. Frozen module: `69e0b1d3`.

Two preceding private row-level hierarchical-depth trials are rejected.
They use the existing conservative vertex-depth lower bound to skip aligned
four-pixel segments inside partly visible triangles. Stencil or unsupported
depth functions retain the ordinary path. An untimed diagnostic shows BMW
checks 73,426 groups, skipping 100,827 pixels; T80 checks 30,030, skipping
25,529. These are logical operations, not hardware cache misses.

| Private trial | BMW time | T80 time |
| --- | --- | --- |
| Probe each aligned segment | +2.83% | +2.93% |
| Reuse proved hidden cells across four rows | +1.47% | +1.21% |

Each has three quiet AB/BA pairs, 100 exact model hashes and four exact
frames per model, and the 1,536-frame HZ-on/off depth/query oracle. BMW is
slower in all six pairs; no full compliance rerun after rejection. Evidence:
build/diagnostics/msaa-cell-span-depth{,-cached,-counts}/validation.json.
Both remain private. A source-only experiment postponing ordinary non-MSAA
setup was prepared but not built or timed; no performance claim is made.

The independent full-frame oracle now includes positive, screen-crossing
triangles around the signed-32 dispatch boundaries (180/181 and 16383/16384
pixel extents). Native SSE4.1 and WASM check 4,480 frames and 46,688,256 exact
sample masks. Full runtime gates pass: 738 native tests plus benchmark_fp6,
18 ASan/UBSan/leak contracts, 240 unchanged-tolerance Mesa images, 240 exact
baseline hashes, all 234 images in each of 2x/4x, both rotating models in
0/2/4 samples, 51 WASM renderer, 135 queue, 54 triangle, eighteen pool and
strict sampler/combiner/byte-writer contracts. The regular canonical JS/WASM
match the measured frozen module exactly. Final browser/publication evidence:
build/diagnostics/msaa-sample-coverage32/validation.json and publication-proof.json.
Both Chromium and Firefox pass 234 viewer scenes, all eighteen benchmark
rows in off/2x/4x order, cancellation and MSAA restoration with three workers.
Firefox exits successfully; its Python mozprofile destructor logs a cleanup
ImportError after the passed result during interpreter shutdown.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
