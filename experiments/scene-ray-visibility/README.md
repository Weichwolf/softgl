# Static-geometry BVH visibility

Status: full-frame individual-ray and SIMD128 four-ray implementations rejected
after native screening; both produce 36 exact off-mode paired images. Four BVH
group-culling raster variants also have exact images but no broad accepted gain.
Production source and live WASM remain unchanged.

Hypothesis: for these static prepared models, trace primary camera rays through
a persistent object-space bounding-volume hierarchy, then feed their winning
triangles into libsoftgl's existing material resolve. This could avoid the
per-frame transformation, clipping, bin storage and raster setup of invisible
triangles. It must still render every frame for the current camera; no finished
image or previous-frame depth is reusable as the benchmark result.

This investigation follows the rejected
[per-bin depth summaries](../scene-hierarchical-depth/README.md). The accepted
renderer remains rolling SIMD128 coverage; no new production source is changed.

Source: [TinyBVH](https://github.com/jbikker/tinybvh), cloned locally to
`/home/cosmo/Git/tinybvh`, revision `4b8509fd26b29801c8f79386cf8a1ce5713070fb`.
The MIT-licensed C++14 header is a research/probe dependency, not an adopted
dependency of the C11 renderer. Inspect `tiny_bvh_base.h` for the 32-byte binary
BVH, binned SAH, custom intersection callback and watertight triangle tests;
`tiny_bvh_x86_float.h` contains native wide traversal implementations.
Its advertised WASM support does not establish that the native AVX2 traversal
maps to SIMD128. The actual build probes distinguish scalar portability from
the native SIMD implementation.

Reproduce `python3 experiments/scene-ray-visibility/probe.py` after cloning and
checking out the pinned revision. The probes use the upstream 8192-random-
triangle, one-ray example, C++17 and disabled built-in builder threads. Native
uses AVX2/FMA; WASM is compiled with `-msimd128` but explicitly selects TinyBVH's
scalar algorithm. Both build and run without compiler warnings. Random
sequences differ between C libraries, so their hit IDs do not constitute an
image comparison. [Actual commands, source hashes and output](probes/README.md).
Initial C++14/default-thread probes failed; they are not successful evidence.

Implemented private frontends use the same prepared packs, camera, full material
resolve and caller plus three helpers. Complete frames are measured after
loading the immutable assets, with 15 warm-up and 30 measured renders. No
finished image or depth from a previous frame is used to answer a request.

[Individual rays](cached-scalar/README.md) use the pinned TinyBVH C++ bridge;
[four-ray packets](packet/README.md) use an original C11 binned-SAH builder and
SIMD128 traversal. Both retain the renderer's exact fixed-point coverage,
clipping, alpha tests, depth arithmetic and shader. Their vertex savings do not
offset traversal costs: complete-frame screening is slower on all four assets.
The new raster variant uses world-space BVH/stripe frustum tests before lazy
vertex transforms and normal SIMD rasterization. It resolves attributes only
for final visible records, with source-order tie handling.

Raster screens: [frustum only](raster-frustum/README.md),
[group occlusion](raster-hz/README.md),
[inherited frustum masks](raster-planes/README.md),
[larger leaves](raster-leaf32/README.md). Occlusion improves the Bistro prototype
from roughly 71 to 45–46 ms, but accepted libsoftgl also takes about 44–46 ms.
Sponza still regresses by 15–20%; initial BMW/T-80 improvements are not repeated
adoption proofs. All six versions have 36 exact paired off-mode images each.
The [native geometry contract](contracts/README.md) exercises epochs, mutations,
late rollback and existing MSAA/orthographic fallbacks. A
[Bistro CPU profile](raster-planes/profile/README.md) locates the remaining work
primarily in triangle preparation/rasterization rather than tree traversal.

Native reproduction (Clang 22.1.8):

```sh
python3 experiments/scene-ray-visibility/prepare.py --baseline d481c90 --backend packet
cmake -S experiments/scene-ray-visibility -B build/scene-ray-visibility/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/scene-ray-visibility/native -j4
build/python/bin/python experiments/scene-ray-visibility/check_quality.py --samples 0
python3 experiments/scene-ray-visibility/resident_trial.py --pairs 1 --samples 0
```

Use `--backend scalar` for individual rays or `--backend raster --occlusion` for
the current group-culling variant, and set `-DSCENE_BVH_LEAF_SIZE=4` or `32` during
CMake configuration. Omitting `--occlusion` tests frustum-only traversal with
the current inherited-mask implementation; the earlier tested variants have
their frozen raster source in their evidence folders. Native asset quality and
screening have only covered MSAA off; the separate contract tests 2×/4× fallbacks.
No sanitizer or full browser validation is claimed. The upstream WASM probe
above tests a different, small example and does not validate these frontends.

Integration requirements: explicit immutable-geometry/revision ownership so a
cached BVH cannot hide between-frame mesh edits; current near/far clipping and
backface/double-sided rules; alpha-cutout testing before accepting the closest
hit; unchanged ordered blended passes; complete material attributes for every
hit; bounded memory below the shared WASM 4 GiB limit. Test all four assets and
nine camera poses for geometry/material changes, retain the existing MSAA
fallback, and preserve the C11/SSE4.1/SIMD128 implementation paths. A native
acceleration experiment does not by itself satisfy those requirements.
