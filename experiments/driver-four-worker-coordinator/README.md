# Four workers with a separate driver coordinator

Status: useful negative finding; neither prototype is adopted.

Baseline: `eaa773b` (the full revision is in `summary.json`). The current renderer
uses three pthread helpers and a caller that also computes. This trial gives four
helpers the parallel vertex, preparation, raster and internal scene jobs; the
caller publishes jobs and joins them. Only driver-owned data crosses the existing
synchronization boundaries. The GL interface is unchanged.

The first prototype keeps spinning joins. Three balanced process-level rounds
showed 15–21% lower FPS. A second prototype adds a completion condition variable
for ordinary joined jobs, with the last worker notifying the coordinator.
Queued vertex-progress waits and a nested preparation join still spin; small
serial fallbacks remain on the caller. This is not a fully sleeping pipeline.

The stronger second check links renamed baseline and candidate libraries into
one native executable. It alternates A/B and B/A per frame and orbit block, with
12 warmup and 72 measured frames per model. Both use the same prepared assets,
cameras, 640×360, SIMD128 and true 4× MSAA. Timing includes rendering, worker
completion and resolved framebuffer access; loading and image export are outside
the interval. Results below are paired geometric-mean FPS changes, alongside
arithmetic mean complete-frame times.

| Scene | Baseline ms | Coordinator ms | FPS change |
| --- | ---: | ---: | ---: |
| Bistro | 48.825 | 51.768 | −5.47% |
| Sponza | 32.431 | 33.727 | −3.87% |
| BMW F31 | 15.761 | 17.359 | −9.41% |
| T-80 | 10.405 | 11.872 | −12.24% |

All twelve exported RGBA views are byte-identical. This experiment establishes
no performance gain. On this WSL machine with four logical CPUs, delegating the
caller's work costs more than it saves, even after replacing several spinning
joins. That conclusion is specific to these two schedules and this machine;
it does not rule out a different coordinator pipeline or more physical cores.

`coordinator.patch` and `coordinator-sleep.patch` are separate complete patches
against the recorded baseline, rather than cumulative patches. Extract the
baseline's `libsoftgl/` into an ignored build directory, apply one with
`git apply`, copy this directory's `CMakeLists.txt` to the extraction root and
configure a Release build with Clang 22. The existing library CMake enforces
SSE4.1 and disables AVX. `native_pair.c` documents the comparison arguments:
pack, measured frames, warmup frames, image prefix, candidate helpers, baseline
helpers and sample count. Candidate helpers are four and baseline helpers three.
The second library/model object needs global symbols renamed with a
`baseline_` prefix before linking, as in the earlier
[standard GL comparison](../standard-gl-integration/native_pair.c).
Raw per-frame receipts and image hashes are retained here; binaries are ignored.

Sources: the baseline [worker implementation](https://github.com/Weichwolf/softgl/blob/eaa773b/libsoftgl/src/workers.c)
and [queued geometry dispatch](https://github.com/Weichwolf/softgl/blob/eaa773b/libsoftgl/src/workers_queue_raw.inc).
[Emscripten's pthread documentation](https://emscripten.org/docs/porting/pthreads.html#blocking-on-the-main-browser-thread)
explains why a native condition-wait experiment cannot be assumed to provide
the same waiting behavior on the browser main thread. This prototype was not
published to the WASM viewer.
