# Near-first order of canonical geometry packets

Status: enabled near-first variant validated and screened privately against
accepted `da48afd`; not adopted. Opaque-first asset performance is unmeasured.

Explicit scene opt-in permits a stable near-first bucket order of the existing
16-triangle bin references. Cache each primitive's minimum transformed depth;
select the minimum of the live primitives in a reference and map the current
bin's depth range to 256 buckets. An independent `--opaque-first` variant
partitions opaque before cutout references, then orders by depth. No previous
frame visibility is reused and sorting itself removes no geometry. The aim is
earlier useful sample depth and hierarchy bounds, reducing overdraw and hidden
triangle work before fine rasterization and alpha sampling.

Every begin resets the opt-in. Ordinary OpenGL and legacy scene captures retain
their order. Canonical scene reordering can change equal-depth winners and the
depth-passing mask used for MSAA shading/alpha sampling; validate and quantify
those image changes. Do not call altered images exact or hide test failures.
The primitive field and per-bin scratch count against the existing 128 MiB
geometry and 16 MiB reference budgets. Failed allocation restores/replays the
scene through the existing fallback. Native and WASM remain SIMD128 only.

Run unchanged native contracts, then quantify all-four OFF/2×/4× camera views,
sample/depth coverage and material/silhouette effects before timing at 640×360,
four total threads. No gain or adoption is claimed. A selected gain needs
repeated AB/BA, the native suite, sanitizer and actual WASM/browser gates.

Sources: our own [geometry packet reference lists](../../libsoftgl/src/geometry.inc),
[current-frame MSAA hierarchy](../scene-msaa-occlusion/README.md), and
[cluster occlusion research plan](../scene-meshlet-occlusion/README.md).
The subsequently reviewed [A4 section 5.3.1](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf)
likewise sorts opaque triangle sequences by conservative depth for early rejection.
This local traversal experiment copies no upstream implementation and makes
no external performance claim.

The unchanged, order-disabled native path passes 216 independent hashes,
162 canonical pairs and ordinary draws after failed near-occluder rollback.
The compiled archive has no AVX/YMM/ZMM instructions. These
[disabled-path receipts](validation/) establish no correctness or speed claim
for the enabled reordering option; asset views and enabled-order controls are
documented below separately.

The enabled-order fixture now passes 99 near-first/opaque-first paired cases:
far-first uniform opaque geometry, clipping, immutable always-pass/always-reject
cutouts, 1/3/8 helpers and post-capture rollback. Depth/stencil/sample-depth/
sample-stencil are byte exact; this fixture permits at most one channel step
for reordered uniform shading. Existing ordinary-renderer tolerances are unchanged.

The 108 independent all-four OFF/2×/4× camera pairs retain exactly the same
resolved and sample coverage: no missing or added covered pixel/sample.
Stencil/sample-stencil stay byte exact. OFF depth is exact and RGB changes are
sparse equal-depth winner differences. BMW/T-80/Sponza MSAA stay on the unchanged
forward route and are exact. Bistro MSAA can change winning depth and alpha/shading
points even though sample coverage remains identical:

| Bistro mode | Worst mean channel error (0–255) | Maximum channel error | Largest changed-sample-depth fraction |
| --- | ---: | ---: | ---: |
| 2× | 0.1242 | 116 | 0.0373% |
| 4× | 0.2011 | 110 | 0.0608% |

The angle-160 Bistro 4× pair was visually inspected with no obvious missing major
geometry or broken materials. This is not a proof that every view is perceptually
equivalent. Actual sample-depth arrays and per-view errors were measured; do not
describe this trial as all-plane exact.

One quiet AB/BA screen per mode (12 accepted, zero rejected runs), 60 warm-up/30
measured orbit frames, 640×360/four threads:

| Bistro | Baseline ms | Near-first ms | Frame-time change |
| --- | ---: | ---: | ---: |
| OFF | 34.141 | 33.841 | −0.88% |
| 2× | 58.328 | 56.258 | −3.55% |
| 4× | 71.765 | 68.111 | −5.09% |

This is preliminary screening, not repeated all-four acceptance. Sanitizer,
enabled WASM/browser and remaining quality review are pending. The new optional
audit counters for actually moved references are prepared but were not enabled
in this frozen timing variant. Receipts and completed fixture logs are in
[validation](validation/).
