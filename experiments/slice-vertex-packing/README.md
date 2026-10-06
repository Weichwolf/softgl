# Packing raster vertices inside geometry slices

Rejected. BMW off (+0.628277%/-0.580383%), 2x (+0.233556%/-0.037711%) and 4x (-0.979528%/+0.708239%) show opposite audit directions; faster/slower pairs are 4/2, 2/4 and 3/3. There is no reproducible primary-scene benefit. T-80 controls are also mixed; its 2x second-audit benefit (-1.763500%) does not repeat in the first (+0.126377%). All correctness gates pass and all eighteen quiet comparisons pass on their first attempt. Keep the accepted D4 renderer/live preview unchanged. This is a failure to demonstrate benefit, not proof that packing locality or architecture cannot improve further.

Research baseline `74b9923fdaa79f6bc0d8f9c62741fe19d60dff3f`; accepted reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`, candidate `d285f7701b4a9e9c5f89f4e115748da669f60743c4afd510eadec62c35b738bb`.

## Hypothesis and implementation

The current D4 caller diagnostic observed ten ordered packed BMW draws per frame,
83,746 transformed vertices and 5,076,400 logical output bytes. Late packing took
0.848–0.918 caller wall ms/frame, including observer overhead and preemption.
This does not establish removable CPU time, actual cache/DRAM traffic or a ceiling.
The trial moves eligible ordered-draw packing into the existing geometry stage.
Queued claims remain 128 vertices; larger initial worker/caller partitions and
serial slices pack in bounded 128-vertex chunks. No ownership partition, worker
count, stage join, atomics or geometry/fragment arithmetic changes.

An extra caller-owned packed output shares the unchanged 2MiB aggregate ordered
queue vertex capacity. Early preparation never waits for or reserves a raster
slot. It borrows only an idle matching-capacity buffer or allocates within the
budget, reclaiming only idle storage if needed. Pending payloads stay immutable.
After the original geometry join and queue reservation, exact matching layout,
count, units and capacity allow a buffer ownership swap. Projection includes any
old target packed buffer retained by the caller. Otherwise the original late
packing path runs. Clipped vertices are always appended late; full transformed
vertices remain available for clipping and triangle preparation. Empty draws,
oversized clipped geometry, queue-size failures and ordinary/raw fallback free
unsubmitted packed output. Readiness resets before transform allocation failures.
The 2MiB bound concerns ordered queue vertex buffers plus this caller-owned output,
not framebuffer, producer full vertices, cache, texture or total process memory.

Additional early sampler preparation, layout checks, allocator/idle-buffer work,
chunk dispatch and displacement of raster work can offset saved late packing.
This combined scheduling/locality/ownership trial does not isolate these costs.
T-80 retains its large packed path, while shared worker dispatch/layout can still
change static code/JIT layout. Source includes no production timing/counters or
geometry simplification. All twenty WASM library units were freshly compiled;
nineteen object files match D4 exactly and only workers.c.o differs. The linker
binds 259 ordered inputs and the actual module/source/object identities. Static
WASM body/hash observations include function-index changes and imply no JIT,
register, cache or dynamic cycle facts.

The original unbuilt draft and its source/patch identities are retained under
draft-before-lifecycle/. Lifecycle cleanup was added before any compilation or
comparison. The test-only slice_prepack fixture includes actual worker source,
intercepts aligned allocations only in that translation unit, and proves failed
allocation fallback, full pending-budget refusal, idle-only reclamation/borrowing,
nonzero-origin transform partitions/tails, exact packed fields, actual buffer
adoption, late clipped append and empty-draw cleanup in all three modes. Its
included original queue/eager fixture also checks real 1/3/8-worker rendering.
Production binaries contain no allocator injection. Existing contracts additionally
exercise clipping, layout/state changes, source reuse and mutation/destruction.

The first WASM fixture link failed because the included queue fixture replaced
the command-line main/export macro. Saving and restoring it fixes the test;
runtime source and production module remain unchanged. Original successful
native/sanitizer/image/edge receipts, old fixture and failed link are retained
under fixture-before-main-restore/.

Final-fixture native and sanitizer gates were repeated successfully. Archiving
accidentally moved unchanged browser scripts; those missing-module attempts are
retained under attempt-before-harness-restore/ and
attempt-before-model-harness-restore/. Exact scripts were restored and completed
native/sanitizer receipts bound before resuming outstanding WASM checks. A resume
iterator also shadowed the experiment name and produced a nonexistent model
build path; attempt-before-route-fix/ retains that failure and driver. Renaming
the iterator fixes the route. Script closure and actual candidate path/hash are
now checked before resumed execution. All final gates complete before timings.

## Complete comparisons

Two audits per off/2x/4x mode, three AB/BA page-crossover pairs per audit, two
rounds per pair, 80 warmup and 100 rotating measured frames at 640x360, three
helpers plus caller, BMW/T-80, resolve/readback each frame. All eighteen pairs
compare the frozen D4 reference. Benchmark/quiet guard remain unchanged; the
foreign CPU threshold stays .10 cores and every attempted run is retained.
Changes below are frame-time percentages; negative is faster.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
| BMW F31 | off | +0.628277% | -0.580383% | 4/2 |
| BMW F31 | 2x | +0.233556% | -0.037711% | 2/4 |
| BMW F31 | 4x | -0.979528% | +0.708239% | 3/3 |
| T-80 | off | -0.180434% | +0.026237% | 2/4 |
| T-80 | 2x | +0.126377% | -1.763500% | 5/1 |
| T-80 | 4x | -0.418068% | +0.109045% | 4/2 |

## Fidelity and reproduction

Before timing, all 745 native tests plus Bench 1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images, 234 exact test controls per mode,
100 equal dual frame hashes plus four exact representative frames per model/mode
pass. Edge observers check 4480 frames, 62,251,008 masks and 12,431,040 coefficient
lanes. Post-depth stores, DOT3 query scenes, RGBA conversion, unsigned index
ranges and actual depth-replay API/sample-plane contracts retain direct stdout.
No pixel tolerance changes. Native image references use Linux OSMesa/llvmpipe.

Portable retained-evidence verification:

```sh
python3 experiments/slice-vertex-packing/verify_artifacts.py
```

Fresh full source/native regression build recipe:

```sh
python3 experiments/slice-vertex-packing/reproduce-candidate.py
```

The fresh reproduction recipe is supplied, not executed for this archive. The
actual full-library producer, native/sanitizer/WASM gates and all 18 comparisons
were executed. Original scripts retain staging paths and need adaptation to a
fresh tree. Rebuilds need Emscripten, CMake/OSMesa and the bound BMW pack; different
paths/toolchains can change binary identities. Output stays below build/.
The verifier checks retained receipts, checksum closure, patch reconstruction
and raw arithmetic; it does not rerun browsers, authenticate observations or
establish a hardware ceiling. Repeat complete fidelity and paired measurements
before adopting a fresh rebuild. Generated binaries/build trees are excluded.
