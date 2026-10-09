# Optional 2×2 coarse material shading

Status: V5 adopted as an optional native/WASM render path; ordinary shading remains the default. The original direct-scatter candidates were slower than the previous coarse reference and were discarded.

At 640×360, the final path selects representatives within each current-frame 2×2 cell, shares their complete material color, prepares vertex attributes only for representative triangles, and copies colors back into the original physical sample layout. Selection joins before attribute preparation; shading joins before copying. Four-sample full-pixel stores use SIMD128. This is current-frame reuse: no old-frame colors, motion vectors or temporal reconstruction are implemented. Every frame computes current lighting.

The representative rule requires the same captured material and depth difference ≤0.002. It is a heuristic, not proof that two samples belong to the same surface. Visibility, alpha-test acceptance, resolved depth and actual OFF/2×/4× depth/stencil planes retain their original rate. Final color, including alpha, is approximate. Fine textures and normal-map lighting visibly become blockier; this is not a ≤1/255 error optimization or an antialiasing improvement.

## Measured native behavior

Final V5 against the unchanged ordinary renderer at commit `814b4e0`, original packs/cameras, automatic mesh LOD disabled, 640×360, caller plus three helpers, clang 22 and SSE4.1/SIMD128 only. Three balanced AB/BA blocks per configuration; six timings per variant, 60 warm-up and 30 measured orbit frames per request. Figures are FPS changes calculated from median frame times, not frame-time percentages.

| Scene | MSAA off | MSAA 2× | MSAA 4× | 4× full → coarse |
| --- | ---: | ---: | ---: | ---: |
| Bistro | +15.83% | +13.93% | +15.92% | 54.318 → 46.859 ms |
| Sponza | +0.60% | +15.70% | +20.87% | 37.447 → 30.980 ms |
| BMW F31 | +3.89% | +0.28% | −2.23% | 17.507 → 17.906 ms |
| T-80 | +6.85% | +20.20% | +14.65% | 14.398 → 12.558 ms |

Sponza OFF and BMW 2× are effectively unchanged. Sponza OFF also has substantial within-run timing drift. Bistro/Sponza 4× win in every paired direction. A final campaign stopped after ten completed configurations when foreign CPU exceeded the existing 0.1-core limit; its original receipt and rejected attempts are retained. A separate three-block campaign completed T-80 2×/4×, yielding 144 selected final measurements across all twelve configurations. No work ran at higher render resolutions. A separate disabled-path control yielded Bistro −0.24% and Sponza −3.45% frame time, with Sponza warm-up drift; no default-path speedup is claimed.

Earlier V4 independently reproduced the priority gains (+15.64% Bistro and +18.58% Sponza FPS at 4×). V1 linked scatter and V2 physical footprint masks had screening trials against both ordinary shading and the earlier coarse implementation; their inconsistent/slower scatter behavior motivated retaining a joined copy phase. V3 compact color storage was built and contract-tested but has no performance campaign. V4 moved representative selection ahead of attribute construction; V5 removes unused diagnostic shading modes and publishes one boolean opt-in API.

## Quality, contracts and browser

Native receipts retain 612 paired views across the candidates. Final V5 has 108 original/coarse pairs, 108 byte-identical RGBA pairs against the earlier coarse-color implementation, and 108 byte-identical disabled/default RGBA pairs. Actual resolved and sample depth/stencil remain byte-identical in all these pairs. Worst per-view mean RGB-channel errors for original/coarse 4× are Bistro 7.95/255, Sponza 5.46/255, BMW 1.74/255 and T-80 0.73/255; local maximum differences reach 191, 132, 250 and 119 respectively. Inspect the retained comparison PNGs rather than interpreting these averages as perceptual guarantees.

The public opt-in `softgl_scene_coarse_shading(GL_TRUE)` applies to canonical opaque scene meshes after batch begin and resets at every new begin. The existing canonical callback contract requires a pure program preserving UV0/UV2 and alpha on all vertices. Ordinary geometry, transparent forward draws and general OpenGL tests retain their existing path. Three bounded 32-bit arrays use 10.547 MiB at 640×360/4× rather than the earlier coarse implementation's 28.125 MiB. Allocation happens before raster writes, has a 64 MiB cap, and falls back to ordinary shading on failure.

The new root `scene_coarse_contract` exercises 216 paired frames, both one/three helper configurations, OFF/2×/4×, all physical planes, opt-in reset, six cap fallbacks and twelve rollback events. Equivalent actual ASan/UBSan and SIMD128-WASM/Node contracts passed. All 760 production native CTests pass, including the new coarse contract, without changing reference-image tolerances. V2's discarded footprint implementation additionally checks all 65,808 physical sample-mask patterns. Native compiled libraries and drivers are scanned for AVX instructions and YMM/ZMM registers.

The browser exposes **Shading → Full / Coarse 2×2 (approximate)**. Full and Original meshes remain the defaults. Coarse shading can be combined with the previously accepted automatic meshes; combined native gains have not been measured. The actual browser gate exercises four assets × OFF/2×/4× × Original/Automatic meshes × Full/Coarse shading, with three helpers, nine exported RGBA frames per configuration, and memory below the WASM 4 GiB limit. General test selection still works. Browser performance is not inferred from native timings.

No new Mesa/GLimpSW comparison is claimed here. GLimpSW still has no equivalent MSAA path in the comparison harness; these gains do not achieve the goal of surpassing GLimpSW.

## Sources and reproduction

The starting point is the local [codec-like shading experiment](../scene-codec-luma-chroma/README.md), particularly `codec_select.inc`, `codec_types.h`, `codec_fine.inc`, and the original [scene material shader](../../libsoftgl/src/scene_visibility.c). The multi-rate shading reference is [Adaptive Multi-Rate Shading, SIGGRAPH 2014](https://graphics.cs.cmu.edu/projects/multirate/). Scheduling, compact storage and representative-only attribute preparation are our CPU implementation choices; the native numbers above are our measurements, not upstream paper claims.

`prepare.py` freezes the legacy generator and prepares V1–V4; `prepare_clean.py --baseline 814b4e0 --output-root <fresh-root>` prepares V5. Configure its `recipe/` using clang 22, `CMakeLists-clean.txt`, `SCENE_REPO` and `SCENE_TRIAL_ROOT`. The unchanged resident and quality drivers are archived with their original receipts. `contract_clean.py` runs ASan/UBSan or actual SIMD128-WASM contracts; `prepare_browser.py`, `browser_gate.cjs` and `browser_quality.py` prepare and inspect an isolated viewer. `archive.py` captures actual source patches, original recipes, compiler flags, image receipts and ISA scans without binaries/build directories; `verify.py` reconstructs those sources and recomputes measurement medians.
