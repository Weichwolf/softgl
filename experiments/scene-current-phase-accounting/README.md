# Current accepted renderer: joined phase accounting

Status: diagnostic completed. Frozen production baseline `91ab0d1`, including
quantized coverage and optional native SIMD512 material resolve. No gain claim.

This reuses the joined-scope clocks from
[scene-phase-accounting](../scene-phase-accounting/README.md), without replacing
its historical evidence. Four shared packs and standard cameras, 640×360/off,
caller plus three helpers, 60 warm-up and 120 measured current-camera frames
per scene. Timed diagnostic frames sweep in three-degree steps; they are not
the uninstrumented 30-frame AB/BA acceptance protocol. Imports and JSON output
are outside the timer. Clocks include callback work and waits, so their elapsed
phase shares are not removable CPU costs or a sum of individual worker costs.

All 480 frames recorded and all four final angle160 RGB images match a separately
built uninstrumented baseline byte-for-byte. Reference files come from
`scene-quantized-row-spans/check_quality.py --samples 0`; its baseline is the
same `91ab0d1`, without that experiment's candidate changes. The receipt records
reference image hashes, binary/source/driver hashes, cameras,
asset hashes, every measured phase and observed foreign CPU load.

| Phase share, mean complete-frame time | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| Visibility | 40.75% | 47.52% | 39.54% | 43.27% |
| Triangle preparation | 6.33% | 7.67% | 9.08% | 13.06% |
| Position transforms | 2.58% | 4.71% | 3.85% | 8.76% |
| Winning attributes | 7.75% | 12.35% | 13.63% | 6.95% |
| Material shading | 11.53% | 15.45% | 24.49% | 18.80% |
| Outside joined scene scopes | 25.01% | 2.81% | 0.90% | 2.94% |

BMW's outside remainder includes transparent passes and wrapper work. On
Sponza, removing all shading would still leave roughly three quarters of this
measured frame. A strategy for the remaining several-fold GLimpSW gap must
therefore address geometry/visibility and other phases as well. This is an
inference from elapsed scopes, not a measured speedup prediction. Rejected
scalar/vector barycentrics and row spans do not demonstrate that broader
packet setup, tiling or hierarchical visibility algorithms cannot improve.

Reproduce after generating the above uninstrumented reference views:

```sh
python3 experiments/scene-current-phase-accounting/prepare.py
cmake -S experiments/scene-current-phase-accounting \
  -B build/scene-current-phase-accounting/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-current-phase-accounting/native -j4
python3 experiments/scene-current-phase-accounting/run.py
```

Sources: accepted [scene_visibility.c](../../libsoftgl/src/scene_visibility.c),
[geometry.inc](../../libsoftgl/src/geometry.inc),
[complete-frame comparison driver](../glimpsw-mesa-comparison/softgl_bmw.c),
and the earlier [joined-scope diagnostic](../scene-phase-accounting/README.md).
No production change or new WASM performance claim.

[Full receipt](validation/receipt.json), [phase summary](validation/summary.json).
