# Stable parallel scene-bin construction

Status: private native trial pending.

The accepted position frontend visits every prepared primitive twice on the
caller to count and then fill stripe references. Move counting into independent
geometry tasks. A short caller prefix over task totals allocates disjoint
segments, then workers fill the references in parallel. Original task/primitive
order is preserved in every stripe, including exact GL_LESS depth ties.
No geometry epoch, BVH, image approximation or setup expansion is introduced.

Source: libsoftgl geometry.inc and geometry_types.inc at d481c90;
[accepted whole-scene frontend](../scene-position-visibility/README.md) and
its [current CPU samples](../scene-hierarchical-depth/profiles/README.md).
The prefix partition is an original application of standard counting-sort
construction to existing scene tasks. SIMD128/WASM source compatibility and
the 16-MiB reference budget remain unchanged; task metadata grows by two
32-bin uint32 arrays (4 MiB at the existing 16384-task maximum).

Run prepare.py, configure/build this folder with Clang 22.1.8 and Release,
then check_quality.py and resident_trial.py. All timing work is 640×360.
