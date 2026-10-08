# Near-first order of canonical geometry packets

Status: compiled privately against accepted `da48afd`; opt-in quality and
performance remain unmeasured.

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
This local traversal experiment copies no upstream implementation and makes
no external performance claim.

The unchanged, order-disabled native path passes 216 independent hashes,
162 canonical pairs and ordinary draws after failed near-occluder rollback.
The compiled archive has no AVX/YMM/ZMM instructions. These
[disabled-path receipts](validation/) establish no correctness or speed claim
for the enabled reordering option; asset views and enabled-order controls are
the next required work.
