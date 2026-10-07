# Cull static geometry clusters before vertex preparation

Status: adopted native renderer change. At 640x360, three balanced AB/BA
pairs per scene/mode yield six timings per variant: 144 accepted measurements.
One four-run block was rejected for foreign CPU load and repeated; all attempts
remain in [receipt.json](receipt.json). [Results](timings.json) retain medians,
raw timings and pair changes. Tested angle-160 RGB images are byte-identical
for every model/mode. Imports/encoding are excluded; complete frames and
retained image copies are timed, with 15 warmup and 30 rotating/swaying frames.
Configured budget is three helpers plus caller.

| Scene | Off | 2x | 4x |
| --- | ---: | ---: | ---: |
| BMW | +0.56% | -0.04% | +0.83% |
| T-80 | -0.50% | -0.65% | +0.43% |
| Sponza | -13.13% | -12.27% | -11.38% |
| Bistro | -19.29% | -18.83% | -17.50% |

Values are frame-time changes; negative means faster. Car/tank changes below
1% are reported as mixed, not claimed gains. Every accepted Sponza/Bistro
pair is faster in every mode. This still trails Mesa for both interior scenes
and GLimpSW for all four under its different shader pipeline.

Validation: 744 existing native tests on the isolated exact renderer sources,
plus the newly registered 72-frame color/depth/stencil/sample/query contract
on the production build and ASan/UBSan. The contract includes indexed colors
and UVs in separate client storage. [Checks](checks.json) record coverage.
WASM SIMD128/pthread compile passed; the live viewer loads all four scenes at off/2x/4x in Chromium, without page
errors. [Browser checks](browser-checks.json) bind the served module hashes.


Reference: GLimpSW `MeshletCuller::CullMeshlets` in
[Shading.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp),
whose reviewed revision/hash is in [sources.json](sources.json).
This original C11 implementation caches object-space AABBs for ordered groups
of 64 triangles in static position/index buffers. It rejects fully invisible
groups conservatively, preserves the remaining triangle order, maps surviving
vertices to dense local indices, and prepares only those vertices. Dense storage
also avoids packing unused holes in the original vertex range. It works with ordinary GL draws without scene
names, offline meshlet assets or SIMD wider than 128 bits. Buffer revisions and
attribute keys invalidate bounds. A whole-draw bound avoids group scans for fully
inside/outside draws; partial remapping needs at least 1/8 of groups rejected. Bounds and each scratch allocation are capped
at 8 MiB; unsupported formats, ambiguous bounds and allocation failures use the
original path. Filtering bypasses existing geometry-bin and position-page replay, a possible cost.

The dedicated contract checks 72 paired frames against the unfiltered route,
including all color/depth/stencil/sample planes and queries, buffer replacements,
subdata, mapped writes, ID reuse, clipping boundaries, blending and MSAA off/2x/4x.

```sh
python3 experiments/static-cluster-culling/prepare.py
cmake -S experiments/static-cluster-culling -B build/static-cluster-culling/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/static-cluster-culling/native -j4
build/static-cluster-culling/native/cluster_contract
python3 experiments/static-cluster-culling/run_trial.py --pairs 3 --samples 0,2,4 \
  --output tmp/static-cluster-culling/validation
```

Preparation uses the frozen pre-candidate `fbfbf82` library. Raw images, build
trees and binaries remain private under `tmp/` and `build/`.

The superseded first implementation retained sparse holes in the original
vertex range. It passed its earlier image/contracts but still dispatched and
packed the entire range; unused freshly allocated holes could be read by the packer. It is an
intermediate diagnostic, not an adoption candidate. The adopted dense variant
removes holes and empty vertex jobs; its evidence is separate.
