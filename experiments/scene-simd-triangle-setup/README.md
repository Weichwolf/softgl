# Four independent canonical triangle setup lanes

Status: held; no production change. 36 off views have exact RGB and all
coverage planes. The existing 216-pair quantized/16-rollback contract passes.
A new 240-frame ordinary-GL/deferred contract exercises mixed winding, all
cull faces, clipping, tiny/degenerate triangles and 3/4/5/93/96-triangle commands
with helpers 1/3/8; baseline and candidate produce identical full-plane hashes.

Initial off screening: BMW/T-80/Sponza/Bistro -0.52/-8.79/+3.65/-2.00%.
Independent three-block off confirmation: -1.18/-4.15/-1.78/-2.95%.
A separate three-block all-mode run gives off -0.82/-2.06/+3.50/-2.99%, while
unchanged MSAA controls fluctuate (BMW2 -15.72%, BMW4 -9.05%, Sponza2 -5.70%).
Several individual timings vary by over 30% despite low recorded foreign CPU.
These controls and contradictory Sponza results invalidate a broad gain claim;
quiet-process filtering alone does not rule out all timing disturbances.
Full attempts are retained without deleting inconvenient results. Further
stable measurements are needed before sanitizer/full-suite/WASM adoption.

Batch four unclipped input triangles in the accepted parallel canonical
geometry stage. Transpose indexed aligned NDC vectors, calculate float winding
and facing in four independent SIMD128 lanes, quantize accepted 16.8 coordinates,
and calculate bounds with signed vector min/max. Keep exact 64-bit fixed area
and the accepted one-pixel top-left prefilter per surviving lane. Surviving
lanes use the unchanged ordered allocation/record-emission tail, shared with
scalar clipped/tail paths. Unsupported ranges or any clipped lane keep the
complete original scalar group. No geometry cache, assets, shading, precision,
primitive ordering, or wider instruction set changes.

This implements the batching principle proposed in
[SIMD triangle setup](../simd-triangle-setup/README.md), applied to the newer
canonical scene geometry rather than the ordinary GL descriptor producer.
Primary sources: [GLimpSW Rasterizer.cpp, pinned 2f915606](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp),
locally inspected DrawMeshletST/GatherPos and packet setup; and the original
C11 accepted d5e79c7 [geometry.inc](../../libsoftgl/src/geometry.inc).
No upstream implementation code is copied and no upstream speedup is assumed.

Prepare/build Clang22 Release using this folder. check_quality.py --samples 0
compares all four shared packs at nine angles, 640×360 and four total threads.
resident_trial.py --pairs 1 --samples 0 is initial balanced screening only.
Promising results need independent off/2/4 repeats, descriptor/culling/clipping
contracts, sanitizers and actual WASM validation before adoption.
