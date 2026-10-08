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
