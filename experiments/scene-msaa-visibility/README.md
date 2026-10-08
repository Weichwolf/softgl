# Deferred visibility for genuine MSAA

Status: architecture trial planned; no implementation or performance claim.
User now requires libsoftgl MSAA to approach GLimpSW performance, with native
and WASM SIMD128 only. Baseline is the accepted `8085056` renderer; performance
work remains native 640×360, all four common assets/cameras and four total threads.
See the [genuine MSAA comparison](../renderer-msaa4-comparison/README.md):
GLimpSW has no native MSAA path, so its OFF time is a distinct target reference.

## Concrete bottleneck and trial

`scene_state_supported` currently rejects all multisample contexts. OFF gains
from late visible-vertex preparation, scene-wide opaque visibility and final
material shading are therefore unavailable in MSAA. The existing MSAA raster
already shades once per triangle/pixel and copies that result to passing samples;
simply suggesting pixel-frequency shading does not remove this bottleneck.

Extend captured opaque/masked scene geometry to 2×/4× coverage and per-sample
depth/winning-primitive records, then shade only surviving winners. Preserve
ordinary MSAA framebuffer storage, transparent draw order and public resolve.
Unsupported state retains the current path. Group equal winning primitive and
shading-point tags within a pixel so an interior pixel normally needs one shade;
an edge with several visible primitives may need several. Never copy the center
winner to all samples: that would remove true multisample coverage.

The existing shader point depends on the depth-passing sample mask at draw time:
full mask uses pixel center, partial mask uses its first sample. Final visibility
alone cannot reconstruct that point after later occlusion. Store a small tag
with each winning sample (center or selected sample), or explicitly document and
validate a deliberate centroid approximation. Alpha/cutout tests must use the
same accepted point before depth/winner writes; no missing material silhouettes.
Keep sample coverage and depth separate from shading frequency.

All four 4× sample positions are exact multiples of 1/16 pixel and match Mesa's
queried pattern. That does not prove 1/16-quantized triangle vertices reproduce
the old 1/256-pixel coverage. Begin with the existing integer MSAA edges as an
independent oracle, then separately measure any canonical-quantization variant.
Packet setup/bin masks and meshlet geometry preparation may be reusable without
making that approximation mandatory.

## Memory and correctness gates

At 640×360, one 32-bit winner plus one-byte shading tag per sample costs
4,608,000 bytes for 4× (before allocator/metadata). Full color/depth rollback
snapshots of four samples cost another 7,372,800 bytes. These are proposed
buffer sizes, not measured browser peaks. Reuse/bound buffers, include retained
geometry and asset storage in the full WASM ≤4 GiB check, and keep all owning
records alive through shading. Independent bins must never write the same
sample concurrently.

Compare full RGBA, depth, stencil, sample color/depth/stencil at several orbits
and worker counts, including cutout overlap, partial coverage, equal-depth ties,
clipped/tiny triangles, alpha rejection, ordinary draw mixing and rollback.
Use native ASAN/UBSAN, actual WASM contracts/browser model loads, native ISA
audit and balanced OFF/2×/4× timings. Commit/push and refresh live WASM only
after a reproducible gain and the applicable quality/memory gates pass.

## Sources

- Local current implementations: `libsoftgl/src/scene_visibility.c`,
  `geometry.inc`, `raster_msaa_impl.h`, `multisample.h`, `multisample.c`;
  existing visibility, packet and MSAA contracts under `tests/`.
- [GLimpSW visibility shading and resolve](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp)
- [GLimpSW raster interface](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [Khronos multisample storage/resolve semantics](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_framebuffer_object.txt)
