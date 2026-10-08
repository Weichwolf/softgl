# Synchronized scene phase wall time

Status: private native diagnostic against accepted `da48afd`; no speed claim.

User-only perf cycle samples identify hot functions across threads, but their
shares do not identify synchronized frame latency. Privately wrap actual worker
callbacks and serial phases with monotonic wall-clock spans: positions,
triangle/cull/clip preparation, compact reference generation, raster/capture,
visibility marking, MSAA grouping, winning attributes, shading-list construction
and final material shading. Separately record model setup/clear, command capture,
transparent submission and real framebuffer resolve/copy. Each synchronized
callback span includes waiting for all participating workers. Do not add CPU
percentages to wall-time fractions or treat instrumented timings as gain proof.

Freeze source, preserve full raw logs and report warm-up and measured orbit
frames separately at native 640×360/four threads. Cross-check actual rendered
planes against the uninstrumented current renderer before relying on diagnosis.
No change to production or the live WASM build is intended. The optimization
goal retains SIMD128 native/WASM, MSAA and all four common assets.

Sources: our own [worker callback stages](../../libsoftgl/src/geometry.inc),
[capture/grouping/material resolve](../../libsoftgl/src/scene_visibility.c),
[model submission](../../wasm/model_wrap.c) and
[resident native driver](../scene-material-visibility/resident_trial.c).

Completed diagnostic: 60 warm-up and 30 measured orbit frames, Bistro 4×,
640×360, four total threads. The final rendered RGBA/depth/stencil/sample-depth/
sample-stencil hashes equal the uninstrumented accepted `da48afd` renderer.
This checks the final view, not every intermediate frame's planes.

Mean measured synchronized wall time, in milliseconds:

| Phase | ms |
| --- | ---: |
| Model setup/clear, scene begin, command capture | 2.30 |
| Positions | 3.07 |
| Triangle preparation/culling/clipping | 4.36 |
| Bin references | 0.67 |
| Rasterization/depth/visibility capture | 32.38 |
| Visibility initialization | 0.01 |
| MSAA grouping | 5.71 |
| Winning vertex attributes | 2.20 |
| Shading-list construction | 2.99 |
| Material shading | 16.82 |
| Transparent submission | 0.32 |
| Actual resolve/readback | 1.32 |
| Other measured overhead | 0.32 |
| Total | 72.49 |

The uninstrumented diagnostic run averages 70.18 ms; instrumentation is not free.
These observations locate work and are not an optimization AB/BA comparison.
Fresh `perf cycles:u` samples on the accepted baseline attribute 26.24% of CPU
samples to `sg_raster_triangle_msaa4`, 20.98% to `scene_resolve`, and 14.08% to
`sg_scene_visibility_msaa_packet`. Their CPU shares cannot replace the joined
wall-time figures above. Profiler timings are excluded from acceptance.

[Validation](validation/) retains raw phase logs, the 90 parsed frames,
binary/source digests and the two independent CPU-profile reports.
Next experiment: [parallel MSAA grouping/lists](../scene-msaa-parallel-groups/README.md),
targeting 8.71 ms of serial work without reducing real sample count.

## Current accepted baseline, 84041db

The generator now accepts `--baseline` and `--output-root`; CMake accepts
`SCENE_PHASE_ROOT`. Its old default stays `da48afd` to reproduce the historical
diagnostic. A separate frozen `build/scene-phase-profile/current-84041db`
instruments the current parallel grouping code as well as the other stages.

Quiet native AB/BA uses the same resident assets/camera, 640×360, four total
threads, 60 warmup and 30 orbit frames per request. Four runs are accepted,
each below 0.1 foreign CPU core. The two instrumented requests contain 120
warmup and 60 measured frames. All final RGBA/depth/stencil/MSAA planes equal
the independent uninstrumented accepted renderer. This is a final-view check,
not per-frame equality through the full orbit.

Mean measured synchronized wall time in the instrumented build:

| Phase | ms |
| --- | ---: |
| Model setup, scene begin, command capture | 2.45 |
| Positions | 3.34 |
| Triangle preparation/culling/clipping | 5.43 |
| Bin references | 0.56 |
| Rasterization/depth/visibility capture | 28.32 |
| Visibility initialization | 0.01 |
| MSAA grouping | 1.96 |
| Winning vertex attributes | 2.31 |
| Shading-list construction | 1.09 |
| Material shading | 17.44 |
| Transparent submission | 0.36 |
| Actual resolve/readback | 1.49 |
| Other overhead | 0.34 |
| Total | 65.08 |

Uninstrumented median is 62.213822 ms versus 65.093304 ms instrumented
(+4.63% time). Diagnose the dominant stages; do not present instrumented wall
figures as uninstrumented frame latency or as an optimization gain. The initial
standalone diagnostic overlapped another untimed audit and is archived but
excluded from the figures above. The quiet runner/raw logs, parsed 180 frames
and source identities are retained under [current validation](validation/current-84041db/).

Raster/capture and shading remain dominant. The new
[compact packet-occlusion trial](../scene-msaa-packet-occlusion/README.md)
tries to avoid individual raster setup for whole hidden groups. Lazy cluster
processing and less redundant shading remain separate architecture candidates.
