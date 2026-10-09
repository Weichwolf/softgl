# Representative-only coarse shading stream

Status: V3 adopted inside the optional Coarse 2×2 path. Full remains the default. The shader and the accepted approximation remain unchanged; this is a reduction in group/list/copy work, not additional color sharing.

The adopted [2×2 coarse shader](../scene-coarse-direct-scatter/README.md) previously material-sorted every fine shading group, compacted a smaller representative list, shaded that list and copied colors through the fine material lists. The new path constructs physical MSAA masks and representatives together, counts and material-sorts only representatives, and copies colors through disjoint screen stripes. Selection joins before attributes and prefix/list construction; shading joins before the copy. The representative order, material/depth rule, physical coverage and current-frame lighting remain the same.

Source: our scheduling adaptation of the local accepted `scene_coarse_select`, `scene_coarse_tasks`, `scene_coarse_copy` and `scene_msaa_groups`/`scene_msaa_list` functions in [scene_visibility.c](../../libsoftgl/src/scene_visibility.c). No upstream paper performance claim is used for these measurements.

## Native measurements

Against accepted Coarse at `af9e996`, clang 22, native SSE4.1/SIMD128 only, original four packs/cameras, 640×360, automatic mesh LOD disabled and four total threads (caller plus three helpers). Each configuration has three balanced AB/BA blocks, six timings per variant, 60 warm-up and 30 measured orbit frames per request. All 144 selected final measurements satisfy the existing ≤0.1 foreign-core gate. The unchanged resident driver includes render, finish/readback and output copy.

| Scene | OFF FPS gain | 2× FPS gain | 4× FPS gain | 4× old Coarse → new Coarse |
| --- | ---: | ---: | ---: | ---: |
| Bistro | +7.10% | +2.95% | +6.41% | 46.761 → 43.943 ms |
| Sponza | +16.45% | +6.43% | +9.59% | 32.688 → 29.828 ms |
| BMW F31 | +5.56% | +3.04% | +3.86% | 17.800 → 17.138 ms |
| T-80 | +13.53% | +4.17% | +0.66% | 12.308 → 12.227 ms |

T-80 4× is effectively unchanged. These gains are additional to the previous Coarse path; multiplying separate historical runs does not establish a measured total gain against Full. A separate three-block disabled/Full control has Bistro +1.19% frame time and Sponza −0.53%; no ordinary-path speedup is claimed. Its 108 image pairs are byte-identical. The small Bistro Full slowdown remains a limitation of this adoption.

V1 removes full fine-list sorting/compaction/copy dispatch but retains the old physical group producer. Its two-scene 4× screening has Bistro −3.02% and Sponza +2.30% frame time, so it was not adopted. V2 fuses the physical groups and cell selection and passes its contract and 108 image pairs, but has no timing campaign: disassembly showed per-pixel dynamic `memset` calls. V3 uses fixed two/four-byte mask clearing for established sample counts, retaining the generic fallback. Its screening and complete repeated campaign support adoption.

The initial V1 build exposed an untyped worker-pool dereference and its first contract exposed missing OFF-mode histogram allocation. Both were fixed before successful contracts, quality and timing campaigns. Original build failures remain in the logs; they are not successful validation evidence.

## Correctness, memory and browser

Four native quality campaigns retain 432 paired views: V1, V2 and V3 against accepted Coarse, plus V3 Full against accepted Full. All exported RGBA, resolved depth, actual sample depth and stencil/sample-stencil planes are byte-identical. The old coarse color error relative to ordinary shading is neither increased nor eliminated.

Each variant passes the production coarse contract with 216 paired frames, OFF/2×/4×, one/three helpers, six allocation-cap checks, reset and twelve rollback events. V3 additionally passes actual ASan/UBSan and SIMD128-WASM/Node contracts. A separate private reference fixture compares the fused producer against the original physical-group callbacks plus V1's independently retained selection. Its 216 pairs are exact for all physical color/depth/stencil planes, including every sample color; downstream representative list/shading/copy are shared in that fixture. The fixture validates grouping/selection parity, rather than claiming an independent implementation of the entire old renderer. Both sanitizer and actual WASM versions pass.

All 760 production native CTests pass without changing pixel tolerances. The new browser module passes all four assets × OFF/2×/4× × Original/Automatic meshes × Full/Coarse (48 configurations, 432 actual exported frames). Across original meshes, all 216 Full/Coarse browser views are byte-identical to the previous actual module. The separate browser gate tests three helpers, ordinary test selection and total heap below 4 GiB. Peak measured heap is 2,856,583,168 bytes. Automatic-mesh combinations are functionally checked; their combined native gains are unmeasured.

The three color-sharing arrays still use 10.547 MiB at 640×360/4× and retain their 64 MiB cap. OFF-mode opt-in additionally allocates a 512 KiB per-bin/material histogram that MSAA already had; allocation fails before raster writes and retains ordinary shading. Per-bin fine-group diagnostic counts add 128 bytes to the internal coarse storage. No previous-frame images or lighting are cached.

Native libraries and actual drivers are scanned for AVX instructions and YMM/ZMM registers. Browser module/UI hashes and a real localhost smoke check bind the deployed files to the validated module. No new Mesa/GLimpSW comparison is claimed; surpassing GLimpSW remains unachieved.

## Reproduction

`prepare.py --baseline af9e996 --output-root <fresh-root>` freezes V1. Add `--fused-groups` for V2 and `--fixed-mask-store` for V3. Configure its frozen `recipe/` with clang 22, `SCENE_REPO` and `SCENE_TRIAL_ROOT`; native baseline/candidate are both Coarse, and `baseline_control`/`control` select Full. Frozen recipes and compiler flags retain the actual variants.

The unchanged resident and quality drivers are retained under `native-validation/drivers`. `contract.py` runs the frozen production fixture with ASan/UBSan or actual WASM; `--physical-reference` adds the old-group/selection physical-plane oracle. `prepare_browser.py` builds an isolated viewer using the existing UI; the previous accepted browser gate is reused. `compare_browser.py` validates actual original-mesh browser pixels against the accepted module. `archive.py` retains actual sources, recipes, measurements and ISA scans without binaries/build directories; `verify.py` reconstructs source identities and recomputes measurement medians.
