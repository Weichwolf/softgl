# Accepted renderer phase wall-time accounting

Status: diagnostic completed on all four shared scenes; 480 recorded frames
and four final angle160 RGB images exactly match the uninstrumented baseline.

Freeze accepted 3495913 and add monotonic clocks around joined whole-scene
scopes: begin/backup, command capture/flush, geometry allocation, positions,
triangle preparation, reference prefix, parallel reference fill, visibility,
winning attributes, material bucketing and final shading. A native driver records
complete-frame render/readback time and derives the remainder outside those
scopes, including wrapper setup and transparent draws. All callbacks include
the caller's useful work, helpers and join/wait time; these are elapsed wall
scopes, not CPU utilization or proven removable costs. Scope percentages use
means so they add to the complete-frame mean, retaining outliers.

Run all four unchanged shared packs/cameras at 640×360/off, three helpers plus
caller, 15 warm-up and 120 current-camera complete frames. Imports, preparation
and per-frame JSON printing are outside the frame timer. Clocks and driver alter
the executable, so these timings cannot substitute for quiet uninstrumented
AB/BA performance evidence. Check each final angle160 RGB image against the
uninstrumented accepted baseline; preserve every frame and source/binary hash.

Source: original instrumentation of accepted
[scene visibility](../../libsoftgl/src/scene_visibility.c),
[geometry callbacks](../../libsoftgl/src/geometry.inc) and the
[complete-frame comparison driver](../glimpsw-mesa-comparison/softgl_bmw.c).
No production renderer, asset, shading approximation or live WASM change.

```sh
python3 experiments/scene-phase-accounting/prepare.py
cmake -S experiments/scene-phase-accounting -B build/scene-phase-accounting/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/scene-phase-accounting/native -j4
python3 experiments/scene-phase-accounting/run.py
```

The final-image oracle in run.py is the accepted uninstrumented baseline from
the coarse-shading experiment's paired image tool; regenerate that baseline
with its check_quality.py --samples 0 before running if private output is absent.

[Recorded frames/provenance](validation/receipt.json), [phase summary](validation/summary.json).
All four runs have monitored foreign load below 0.083 logical CPU. Mean frame
shares: visibility BMW/T-80/Sponza/Bistro 44.2/47.7/40.4/41.8%; position transforms
2.4/4.2/3.4/7.8%; material shading 12.1/20.6/31.8/24.1%. BMW's remainder outside
the scene scopes is 23.4%, including transparent passes and wrapper setup;
that remainder is 0.9–2.8% on the other assets. These are scope wall times, not
an assertion that any complete scope can be removed. Visibility kernels have
more headroom than position-only culling; shading-only approximation has a
limited complete-frame ceiling before its own classification/copy overhead.
