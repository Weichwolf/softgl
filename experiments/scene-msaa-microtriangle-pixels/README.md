# Four-triangle, four-sample micro-pixel rasterization

Status: held after two native screening trials; no reproducible useful gain established and no production change.

Use the existing sixteen-byte four-triangle occlusion packet to admit compact opaque groups before extra setup. Prepare original 16.8 fixed-point coordinates and raw edges in four SIMD128 triangle lanes, evaluate four actual MSAA sample positions together, then transpose the depths into four samples per triangle. Commit triangles in their original order with a fresh depth read for each lane. Retain the original winner, sample shading point, full geometry, material, depth expression/clamping and exact top-left predicate. No neighboring-pixel shading, mesh LOD, temporal reuse or additional packet/geometry allocation.

The first variant admits groups occupying at most two by two pixels after framebuffer/bin clipping. At borders, original admitted vertices may extend one pixel outside the viewport; even those raw differences and every sample edge remain safely within signed 32 bits. Masked materials and larger/unproved groups retain the accepted renderer. The existing group Hi-Z query runs before the new kernel, and actual winning samples still update Hi-Z after each commit.

This is different from the rejected [full-precision triangle setup packet](../scene-msaa-triangle-packets/README.md): that allocated 304-byte packets and still rasterized one triangle at a time. This proposal executes the inner coverage/depth arithmetic across four triangles without storing another geometric packet. Sources: own proposal based on [current four-triangle packet dispatch](../../libsoftgl/src/geometry.inc), [existing MSAA winner storage](../../libsoftgl/src/scene_visibility.c), and [the accepted compact occlusion packets](../scene-msaa-packet-occlusion/README.md).

V1 admits two-by-two bounds. V2 expands to four-by-four bounds, precomputes the sample offsets and skips depth arithmetic when all coverage lanes are empty. These bounds select a raster kernel only; neither version merges pixel colors or reduces resolution. Both are frozen against `2d00a545b8da3b8c5305958b5ff076618349ec90` and benchmarked with caller plus three helpers, actual 4× samples, sixty warm-up frames and thirty rotating measured frames per request. One complete AB/BA block per asset is screening, not performance acceptance.

| Scene | V1 frame-time change | V2 frame-time change | V1 admitted groups | V2 admitted groups |
|---|---:|---:|---:|---:|
| BMW | −2.86% | +1.03% | 0.32% | 4.92% |
| Bistro | −0.39% | −1.20% | 1.28% | 7.65% |
| Sponza | −5.73% | +1.19% | 2.89% | 17.46% |
| T-80 | −2.65% | +0.004% | 1.97% | 14.83% |

Group fractions are a separate, instrumented two-frame census, never timing evidence. The apparent V1 Sponza gain includes a slow baseline request (38.57 versus 32.94 ms); it is not a repeatable optimization claim. V2 Bistro's individual forward/reverse directions disagree. The narrow version reaches very few groups, while expanding it adds four-triangle work to a renderer already filling SIMD128 with four samples of one triangle. These trials do not isolate that explanation experimentally; their measurements justify holding the proposal, not adopting it.

The separate independent legacy-versus-grouped contract passes 396 V1 and 594 expanded V2 full-plane pairs, including depth ties, overlapping triangles, short tails, masks, framebuffer edges, clipping and large-bounds fallback. Both measured libraries pass the native SIMD128/no-AVX ISA audit. The angle-160 screenshot hashes are exact in the screens. Full 108-view original-asset quality, sanitizers, WASM/browser and off/2× performance gates were not run: neither screen established a reason to proceed. Retain both frozen source/recipe manifests, raw accepted and rejected timings and the census receipts under `validation/` so the unsuccessful work is reviewable.
