# Approximate interior depth order with original 4× coverage

Status: native approximate screen rejected; no useful gain, no adoption.

For opaque canonical triangles, classify fully covered pixels directly using
one center depth, without collecting a packet. The previous full pixel retains
its center depth in an unused winner slot. Partial coverage, mixed old winners,
alpha materials and unsupported state retain the exact original sample path.
All four original coverage locations remain; this is not a reduced sample
count or rendering resolution. Full-pixel depth ordering is approximate near
intersecting surfaces and nearly equal depths. Track that limitation explicitly.

Pending physical depths retain an upper bound for Hi-Z; original distinct
sample depths are reconstructed from the chosen winner before partial updates,
ordinary reads and final grouping. Final sample depths target the selected
original geometry, but the selected winner can differ from the parent. No
mesh/texture changes, temporal history or additional persistent buffer.

The proposal removes the measured gathering/interval-classification overhead
of [packet depth bounds](../scene-msaa-packet-depth-bounds/README.md). It combines
that experiment's lossless pending representation with approximate full-pixel
ordering, using the [original MSAA implementation](../../libsoftgl/src/scene_visibility.c)
and [uniform metadata](../scene-msaa-uniform-metadata/README.md). This is an own
proposal, not a claim that an upstream algorithm already proved it correct.

Use unchanged 640×360 packs/cameras, four total native threads and SIMD128.
Measure all four scenes; any useful screen needs repeated off/2×/4× AB/BA,
quantified image/winner/depth changes and visible review, independent alpha,
partial-coverage/rollback contracts, sanitizer and actual WASM/browser gates
before product adoption, commit/push and live refresh. Keep strict existing
test tolerances; retain failures rather than redefining them as passes.

## Native observations

Measured V2 is frozen on engine `52aff7bda7d29f5af511b2938b02647d4025e7c1`.
An initial V1 generator assertion matched a nested condition twice; it did not
produce a source manifest and was not timed. The corrected V2 recipe and its
actual binaries define the evidence below.

One quiet complete AB/BA screening block per original scene, Clang 22.1.8,
640×360, four total threads, 60 warmup/30 orbit frames and real resolved
readback: Bistro +6.55%, Sponza +3.10%, BMW +9.36%, T-80 +2.87% frame time.
T-80's first baseline observation is notably slower than its second; this is
a short screen, not a gain claim. Every accepted/rejected raw observation is
retained. Native library and timed driver pass the actual SIMD128-only ISA
audit. The four unchanged independent measured-library material, position,
mixed-MSAA and serial/worker coverage fixtures also pass.

Thirty-six original-model 4× views at nine angles preserve covered-depth
masks and stencil. They change depth winners and RGB near intersections:

| Scene | Worst mean RGB error /255 | Pixels above 8/255, worst view | Largest local RGB error /255 | Maximum depth error |
| --- | ---: | ---: | ---: | ---: |
| Bistro | 0.076162 | 0.2960% | 137 | 0.00013983 |
| Sponza | 0.015632 | 0.07378% | 67 | 0.00008351 |
| BMW | 0.018154 | 0.05078% | 127 | 0.00196296 |
| T-80 | 0.005331 | 0.01519% | 87 | 0.00122553 |

These are RGB/depth assessments, not exact RGBA comparisons or subjective
quality validation. Sample-alpha was not separately measured. The reused
exploratory depth budget (2e−6) fails and stays failed; no test tolerance was
loosened. Small global RGB means do not imply a ≤1/255 local error. Coverage
equality in these finite views also does not prove arbitrary far-plane or
intersecting geometry correct. No off/2× model sweep, repeated full acceptance
timing, sanitizer, actual WASM or browser adoption gate was run after this
failed screen. Engine and live preview retain the accepted parent behavior.

The closed archive retains frozen recipes/sources, raw timings, independent
contract fixtures and the approximate assessment with its exact reference
receipt. Verify with `python3 experiments/scene-msaa-centroid-order/verify.py`.
