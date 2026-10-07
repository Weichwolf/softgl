# Defer eligible opaque shading until visibility is known

Status: native census complete; no rendering candidate or gain yet.
All four angle-160 RGB reference images are byte-identical.
[Receipt](receipt.json) binds source/binary/pack hashes and all 30 frame counts.

Primary architecture reference: [GLimpSW implementation notes](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md#raster-pipeline)
and [visibility/resolve shaders](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp).
GLimpSW stores surface IDs, then shades the resulting visible surfaces. SoftGL
must retain GL ordering, equal-depth ownership and observable fragment effects.

First measure an optimistic opportunity bound: count actual successful opaque
color writes per pixel across each native frame, without enabling queries or
changing the renderer's sorting/shading routes. Two hooks in a private renderer
copy observe the scalar and post-depth stores used by these four model scenes.
Eligibility: MSAA off, depth LESS with writes enabled, all color channels enabled,
no alpha/stencil/blend/logic/query effects. Production sources stay unchanged.

`opaqueWrites - uniqueOpaquePixels` counts duplicate eligible writes. Some may
be separated by incompatible draws; the census deliberately ignores these
barriers, so it is an upper opportunity bound, not an implementation or predicted
speedup. It excludes additive specular passes and alpha-tested materials.
Confirm native image identity against the production driver before interpreting
counts. Profiles and census must agree on where substantial work can be removed.

```sh
python3 experiments/deferred-opaque-visibility/prepare_census.py
cmake -S build/native-visibility-census -B build/native-visibility-census/build \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/native-visibility-census/build -j4
# Set SOFTGL_CAMERA from assets/models.json for Sponza/Bistro.
build/native-visibility-census/build/census \
  build/assets/bmw.pack 1920 1080 4 0 15 30 tmp/bmw-census.ppm
```


| Scene | Duplicate eligible opaque writes / all eligible opaque writes |
| --- | ---: |
| BMW | 32.612% |
| T-80 | 45.296% |
| Sponza | 55.300% |
| Bistro | 41.760% |

Measured natively at 1920x1080, four configured threads, MSAA off, 15 warmup
and 30 rotating/swaying frames. These are optimistic eligible-shading work
bounds, **not frame-time reductions**. Next: quantify compatible opaque batches,
then retain immutable draw/texture/vertex ownership and defer shading within
such a batch. Resolve before observable reads, mutations or incompatible states.
Keep exact depth/ownership rules and the general path for all other states.
