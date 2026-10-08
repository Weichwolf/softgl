# Static groups before scene position transforms

Status: frustum, cone and unique-reference screens not adopted. Each has 36
exact off views and a passing 162-frame geometry epoch contract; no broad gain.

The accepted scene frontend transforms a mesh's complete indexed vertex span
before triangle clipping/culling. This original C11 trial caches object-space
AABBs for ordered groups of 64 triangles, classifies groups once per frame and
marks only surviving groups' vertices before the SIMD128 transform callback.
Geometry construction skips rejected groups, then retains the accepted ordered
bin/raster/material pipeline. Four-vertex transform chunks containing any live
vertex still transform all four lanes; scalar matrix fallback skips each dead
vertex. The existing joined atomic ready bytes carry transient vertex-use marks
before being reset for the later lazy attribute phase; no new per-vertex bitmap.

Cache ownership is explicit: softgl_scene_static_groups(nonzero_epoch) promises
immutable positions and indices until the epoch changes. The viewer's static
pack upload opts in; ordinary calls without an epoch retain the original path.
Pointer/count/span/stride changes also rebuild entries. Bound/live arrays are bounded to
8 MiB, plus fixed metadata for 4096 material entries; cache/eligibility failures use the original frontend. Geometry edits must
advance the epoch. No previous-frame image/depth answers any new frame.

This differs from the rejected BVH raster frontend: no per-stripe tree traversal
or repeated lazy triangle setup. Global filtering reduces work before the
accepted shared position and bin stages. Whole-mesh inside/outside gates avoid
group work for simple frustum cases.

Optional --cones also builds a conservative normal cone per group. For supported
positive-determinant affine perspective/culling states it tests the bounding
sphere against that cone, with extra rounding margins; ambiguous, double-sided,
mirrored and nonperspective cases keep frustum-only culling. This is a separate
variant, not an asserted gain. Normals are bounded around their averaged axis;
the original clipping, final facing and fixed-point coverage still run for all
surviving triangles. Surface shading and assets are unchanged.

Sources:

- Accepted [cluster AABB filter](../../libsoftgl/src/cluster_cull.h) at 3495913:
  double plane construction and conservative float-transform error margins.
- Accepted [scene geometry frontend](../../libsoftgl/src/geometry.inc) and
  [static cluster experiment](../static-cluster-culling/README.md).
- Normal-cone sphere test documented by meshoptimizer v1.3, commit
  9e1f07b159d3cb777f1c67ed31fc11fd117986f4,
  [meshoptimizer.h](https://github.com/zeux/meshoptimizer/blob/9e1f07b159d3cb777f1c67ed31fc11fd117986f4/src/meshoptimizer.h)
  and local tools/third_party/meshoptimizer/meshletutils.cpp. No meshoptimizer
  runtime code or C++ dependency is linked into this prototype.
- Existing [geometry epoch contract](../scene-ray-visibility/contracts/README.md)
  adapted to this explicit group API, including mutation and late rollback.

Reproduce prepare.py (frustum) or prepare.py --cones, configure/build this folder
with Clang 22.1.8 Release, then check_quality.py --samples 0 and
resident_trial.py --pairs 1 --samples 0 at 640×360. Both variants retain the
accepted one-pass transparent wrapper. Further gates depend on initial evidence.

Variants and evidence: [frustum](frustum/README.md), [cones](cones/README.md),
[unique references](unique/README.md). Frustum screening gives Sponza +7.53%,
while cone screening gives +1.93%; BMW/Bistro changes remain small and mixed.
Unique references (--unique, without cones) cache each group's distinct vertex
indices to avoid repeatedly marking triangle corners. Sponza initially gives
-7.20%, but BMW/T-80 give +3.19/+2.43% and Bistro -0.74%; one block and varying
baselines do not prove a gain. No variant is a production candidate yet.

The angle160 census rejects 835/4106 Sponza and 2844/10126 Bistro groups in the
frustum variant, reducing referenced vertices by 21.8%/29.8%. BMW and T-80 reject
none. Cones reject only 72/4 additional Sponza/Bistro groups and none in BMW/T-80,
so this grouping has little additional cone-culling opportunity. Fewer vertices
did not yield a broad complete-frame gain after classification, atomic marking
and cache lookup costs. Shared source/asset geometry and RGB remain unchanged.
