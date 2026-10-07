# Scene visibility followed by full material packets

Status: proposed after accepted material fusion; no implementation or speedup
claim yet. Current baseline 4b58896, only 640x360, same assets/cameras/threads.

The next architecture hypothesis is one opaque scene submission with a single
visibility phase, followed by material buckets of visible pixels. Four independent
pixels sharing a material can fill each SIMD128 shading packet even when they
belong to different triangles. This differs from shading packets confined to
one triangle and from deferring each individual GL draw independently. Fusing
diffuse and specular made the viewer's opaque shader homogeneous enough to try
this without preserving two separate material passes.

Prototype scope: retain normal/albedo/cube/specular/clearcoat contributions;
transform positions and clip compact position/barycentric records before
preparing attributes. Resolve only winning opaque/masked surfaces, then use the
existing ordered transparent path. Masked candidates still need albedo alpha
before accepting a depth winner. Start with MSAA off; 2x/4x retain the accepted
fused path until sample visibility is implemented. Benchmark all three modes
to detect overhead or regressions. Primitive IDs and allocation bounds must
preserve every triangle; reserve bounded scratch storage before writing the
framebuffer so unsupported states/allocation failure can take the existing path.
Keep 128-bit SIMD and the WASM memory ceiling.

This is a scene-wide opt-in material renderer, not a retry of the earlier
generic per-draw deferred queues. Those negative trials remain relevant; their
results do not establish a gain for this hypothesis. The new
[profiles](../native-cpu-profiles/current-4b/receipt.json) point to raster/shader
work and synchronization; they do not predict a particular percentage saving.
Collect visibility, shade-count and packet-occupancy evidence alongside native
AB/BA measurements and multi-angle depth/image checks before adopting anything.

Sources: [accepted fused shader](../fused-material-pass/README.md),
[earlier visibility experiments](../visibility-buffer-architecture/README.md),
[packet occupancy diagnostic](../packet-lane-occupancy/README.md), and local
[GLimpSW visibility/material resolve](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp).
The existing forward renderer and its scalar/packet samplers remain the
independent rendering oracle.
