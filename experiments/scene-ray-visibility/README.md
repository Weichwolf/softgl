# Static-geometry BVH visibility

Status: native AVX2 and WASM scalar-algorithm upstream build/runtime probes
passed; no implemented scene renderer or accepted performance gain.

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

Before implementing a renderer, measure primary-ray visibility with the same
prepared packs and current camera transforms at 640×360, caller plus three
helpers. Such visibility-only timings are diagnostic and cannot be compared
as complete-frame wins against GLimpSW or Mesa. Full-frame comparisons remain
mandatory for adoption.

Integration requirements: explicit immutable-geometry/revision ownership so a
cached BVH cannot hide between-frame mesh edits; current near/far clipping and
backface/double-sided rules; alpha-cutout testing before accepting the closest
hit; unchanged ordered blended passes; complete material attributes for every
hit; bounded memory below the shared WASM 4 GiB limit. Test all four assets and
nine camera poses for geometry/material changes, retain the existing MSAA
fallback, and preserve the C11/SSE4.1/SIMD128 implementation paths. A native
acceleration experiment does not by itself satisfy those requirements.
