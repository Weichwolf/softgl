# Deferred visibility for genuine MSAA

Status: adaptive-v1 accepted after three quiet balanced AB/BA blocks for all
four assets and OFF/2×/4×. Bistro 2× frame time falls 43.26% (FPS +76.25%);
Bistro 4× falls 37.30% (FPS +59.49%). Other asset/mode controls span -2.44%
to +1.24%; these small changes are not claimed as independent gains.
The globally enabled variants remain private because BMW/T-80 regress.
User now requires libsoftgl MSAA to approach GLimpSW performance, with native
and WASM SIMD128 only. Baseline is the accepted `8085056` renderer; performance
work remains native 640×360, all four common assets/cameras and four total threads.
See the [genuine MSAA comparison](../renderer-msaa4-comparison/README.md):
GLimpSW has no native MSAA path, so its OFF time is a distinct target reference.

## Concrete bottleneck and trial

The previous production `scene_state_supported` rejected all multisample contexts. OFF gains
from late visible-vertex preparation, scene-wide opaque visibility and final
material shading are therefore unavailable in MSAA. The existing MSAA raster
already shades once per triangle/pixel and copies that result to passing samples;
simply suggesting pixel-frequency shading does not remove this bottleneck.

The private implementation extends opaque/masked scene geometry to 2×/4× coverage and per-sample
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

Actual sample metadata is a 32-bit winner, 32-bit list entry, 16-bit material,
8-bit shading point and 8-bit shade mask: 12 bytes/sample, or 11,059,200 bytes
at 4×. Sample and resolved-row color/depth rollback snapshots together cost
9,216,000 bytes. Task capacity is 92,364 native bytes. The stable-list variant
reuses the color snapshot only after the final rollback gate; it adds no buffer.
Actual WASM contracts use four-byte pointers and a 268,435,456-byte heap.
This small contract heap is distinct from the full-asset/browser peak recorded below.
Reuse/bound buffers, include retained
geometry and asset storage in the full WASM ≤4 GiB check, and keep all owning
records alive through shading. Independent bins must never write the same
sample concurrently.

Compare full RGBA, depth, stencil, sample color/depth/stencil at several orbits
and worker counts, including cutout overlap, partial coverage, equal-depth ties,
clipped/tiny triangles, alpha rejection, ordinary draw mixing and rollback.
Use native ASAN/UBSAN, actual WASM contracts/browser model loads, native ISA
audit and balanced OFF/2×/4× timings. Commit/push and refresh live WASM only
after a reproducible gain and the applicable quality/memory gates pass.

## Implemented variants and evidence

Every version freezes `6d3658c` independently. Source arrays, ordinary MSAA
sample positions, original 1/256-pixel edges, draw-time depth-passing masks and
the original chosen shading point are retained. Quantized OFF triangles are
not used for MSAA. The existing center-only producer rejection had to be
disabled for MSAA: a tiny triangle can miss the center and hit sample zero.
Alpha/cutout rejection happens before committing sample depth/winners.
Geometry packet references remain compact, but MSAA triangle rasterization
initially uses the original prepared kernel. Transparent passes and the public
sample resolve remain the production implementations.

1. **first**: scalar sample metadata writes, per-pixel winner/point grouping,
   ordinary material list construction. Raw evidence is in [validation/first](validation/first/).
2. **packed-dense**: SIMD128 full/partial capture stores, full-group color
   broadcast, sample-index shifts, cheap empty/uniform grouping and an in-place
   dense material bucket permutation. Partial color groups write only their
   owned samples; a vector read/modify/write of other groups would race.
3. **packed-stable-specialized-v2**: preserve row order in material buckets,
   using the retired color snapshot as scratch. A dedicated scene MSAA kernel
   specializes GL_LESS/no stencil/no sample-coverage state, caches framebuffer
   fields and omits unused opaque shading-edge work. Captured material alpha
   state is read explicitly; it must not come from the producer's final context.
4. **vector-v1**: exact scaled coverage recurrence in SIMD128, with raw low-bit
   reconstruction before depth interpolation. This is not vertex quantization.
   Large/unproved triangles retain the specialized exact kernel.
5. **adaptive-v1**: the first scalar implementation with an optional triangle
   count hint. Before any MSAA allocation/copy, scenes below two input triangles
   per framebuffer pixel retain forward rendering. Higher-density scenes use
   deferred MSAA. The wrapper passes the real pack triangle count; no asset
   names, missing geometry, altered cameras or fewer samples are involved.
   The coefficient is a heuristic motivated by these four workloads, not a
   proved universal performance rule. Plain explicit scene begin still works.

First and packed-dense each pass 216 independent native full-plane hashes,
162 canonical position pairs, 486 mesh commands, controlled tiny MSAA coverage,
12 full sample rollback checks and actual WASM comparisons against an independent
platform baseline (216 hashes). Audited counters prove genuine per-sample writes
and shared shading, not an OFF fallback. Native and WASM audit counts differ
slightly because of pre-existing platform floating-point differences; each
platform's independent baseline hashes match.

Both pass **108 paired asset views**: four models × nine angles × OFF/2×/4×.
Depth, stencil, sample depth and sample stencil are byte-identical in every view;
all 36 OFF RGB images are exact. MSAA RGB differs slightly: worst mean absolute
channel error 0.003664/255; the largest single-channel delta is 109 at one BMW2
chrome edge, with three pixels over 8 and one over 32 in that view. The worst
Sponza4 mean view has no pixels over 32. The actual cause of the rare bright
pixel has not been proven. Tolerances were not loosened. All 108 candidate RGB
outputs also match between these two implementations.

The corrected specialized variant passes those 216 native and actual WASM
hashes, 162 position pairs and 108 asset planes, with candidate RGB identical
to the first variant. It adds **18 legacy/deferred mixed-alpha full-plane
pairs** in native and actual WASM, plus the tiny/sample rollback checks.
All three actual native archives pass the instruction audit: XMM/SIMD128 and
zero AVX instructions or YMM/ZMM references. Full native regression/sanitizer,
resident-oracle, full-asset WASM memory and live-browser gates have not been
claimed for these private variants.

Vector-v1 and adaptive-v1 also pass 216 independent native and actual WASM
hashes, 162 canonical pairs and 108 asset views, plus the tiny/mixed-alpha/
rollback audit. Vector dispatch is actually exercised: 24,995 fast triangles,
14,514,073 tested pixels and 28,511,522 depth-passing samples in the native
fixture (WASM +32 depth-passing samples). Its sample buffers/coverage and all
108 candidate RGB views match the first implementation. Adaptive selection
keeps **90/108** RGB views exact to production: all BMW/T-80/Sponza modes and
Bistro OFF; only the 18 Bistro2/4 views retain the documented deferred color
differences. Native/WASM hint tests check the exact density boundary and no
scene-storage allocation on rejection. All five archives are SIMD128-only.

## Native screening

Each screen has one balanced quiet AB/BA block per asset/mode, two times per
variant, 60 warm-up and 30 complete timed orbit frames, real four-thread
640×360 rendering with the same packs/cameras. First and packed-dense each
retain 48 accepted runs and zero rejected attempts. These are **screens**, not
three-block gain confirmation. OFF noise is not a new optimization claim.

| Frame-time change against production | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| First OFF | -2.12% | -2.76% | +1.79% | -4.69% |
| First 2× | +27.31% | +21.43% | -7.17% | -42.71% |
| First 4× | +42.19% | +33.90% | +7.03% | -35.63% |
| Packed-dense OFF | -0.74% | -0.39% | -5.50% | -2.96% |
| Packed-dense 2× | +39.95% | +30.47% | +0.57% | -33.52% |
| Packed-dense 4× | +39.30% | +21.50% | -2.76% | -33.76% |
| Stable-specialized OFF | -1.03% | +10.64% | -2.71% | -3.07% |
| Stable-specialized 2× | +48.68% | +35.87% | -2.12% | -31.86% |
| Stable-specialized 4× | +59.13% | +39.61% | +8.07% | -27.43% |
| Exact vector 4× only | +25.01% | +18.03% | -3.39% | -41.66% |

Fewer scalar stores and fewer list iterations do not establish an overall gain.
The dense bucket permutation also changes spatial ordering, motivating the
stable-list follow-up. No asset-name switch or reduction in samples is used.
Production now uses adaptive-v1; the globally enabled screening variants were not adopted.

Stable-specialized retains 48 accepted runs, zero rejected attempts; vector's
4×-only screen retains 16 accepted runs, zero rejected. Their frozen evidence
is under [validation](validation/). Timings from different screens must not be
subtracted as if collected under identical clock/cache/host conditions. There
is no accepted broad gain in these globally enabled variants. The independent
[forward scaled-coverage trial](../msaa-scaled-coverage/README.md) isolates that
kernel from deferred architecture costs and has its own mixed screen.

## Accepted adaptive confirmation

Evidence: [validation/adaptive-v1](validation/adaptive-v1/). Three balanced AB/BA
blocks per asset/mode retain 144 accepted runs and all four rejected attempts.
Each run has 60 warm-up/30 measured complete orbit frames, 640×360 and four total
threads. Production archive SHA256 equals the frozen measured candidate:
`5767f0344b785073b4b62f7da0774c3031952712ef73befb4949b438b5665f9a`.

| Frame-time change | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| OFF | -1.45% | +1.24% | +0.15% | -1.79% |
| 2× | -0.88% | -2.44% | +0.78% | -43.26% |
| 4× | -0.98% | +0.23% | -0.81% | -37.30% |

Bistro 4× changes from 120.665 to 75.658 ms/frame, or 8.29 to 13.22 FPS.
Bistro 2× changes from 110.623 to 62.763 ms/frame. Complex-scene gains have
higher priority than small controls on simple scenes, per user instruction.
The next requested milestone is another 2× Bistro4 FPS gain, approximately
26.4 FPS / 37.8 ms on this workload; it has not been achieved. All four assets
remain optimization targets. The prior GLimpSW OFF comparison (~6 ms Bistro)
is still far faster and must not be relabeled as genuine 4× MSAA.

All **757 native CTest cases pass**, including the new scene MSAA contract.
Native production ISA audit finds 62,113 XMM references, zero AVX instructions
and zero YMM/ZMM references. **288 resident/fresh-context full-plane comparisons**
pass, including switching OFF/2×/4×/OFF. Full quality comparisons retain the
original tolerances; coverage/depth/stencil/sample planes are exact in 108/108,
RGB exact in 90/108. Only Bistro MSAA changes: worst mean channel errors
0.001261 (2×) / 0.002075 (4×), maximum channel differences 25 / 36.
ASAN/UBSAN with leak checking pass the SIMD128 compatibility fixture (2,024
pairs), 216 independent quantized pairs, 18 mixed-alpha sample pairs, tiny
coverage, hint-boundary and 12 genuine post-capture/sample rollback checks.
The live localhost:8000 browser passes all 12 model/mode cases with real
640×360 framebuffers, actual 0/2/4 sample counts, shared WASM memory and no JS
errors. The observed maximum heap is **2,845,048,832 bytes (2.65 GiB)**,
including full Bistro assets and the new metadata. Bistro2/4 screenshots were
visually inspected: material surfaces and geometry remain intact. Served JS
and WASM exactly match local build bytes; COOP/COEP headers are present.
The Emscripten pthread+memory-growth configuration notice is unchanged;
no C compiler warnings or sanitizer errors were found.

## Current hardware profiles

Debian perf works without sudo using explicit user-only events. Eight 4×
recordings profile the production baseline and packed-dense candidate over
60 warm-up/120 orbit frames after asset import, including newly created worker
threads. Zero lost samples were reported. Profiled times are not benchmark
acceptance results. BMW candidate sampled cycle shares: MSAA raster 42.41%,
resolve 10.74%, sample capture 6.43%, scene end 4.79%. T-80 raster is 41.68%;
Bistro raster 33.96%, resolve 19.95%, capture 8.16%, scene end 5.03%.
This motivates a smaller admitted-state raster kernel, not just metadata edits.

The first DWARF recording successfully wrote 5,606 samples but its runner
mistakenly treated perf's intentional SIGINT exit status as a failure. The
driver exited, the raw recording was readable, and no acceptance timing came
from it. The corrected lightweight recorder accepts 0/SIGINT only and verifies
every saved recording with `perf report`; full eight-recording receipts are
separate. PCM permission/reference-counter findings are documented in
[the resource audit](../glimpsw-resource-audit/README.md).

## Initial failures retained

- Generator accidentally made OFF rollback restoration recursive. The owned
  first fixture was terminated with SIGTERM (143); its buffered log was empty.
  The generator was fixed before the first passing or timed build.
- Original center-only tiny culling failed BMW2 sample depth. The unchanged
  strict quality comparator caught it; corrected culling then passed all 108.
- Audit fixture macro nesting initially failed to compile. A separately named
  fixture include fixes the conflict; no failed build was timed.
- The first specialized kernel used context alpha state for a saved masked
  material. Sponza2 failed with a 0.00830 maximum depth error; mixed-material
  state was corrected and 18 regression pairs added. That binary was not timed.

## Reproduction

```sh
python3 experiments/scene-msaa-visibility/prepare.py
cmake -S experiments/scene-msaa-visibility -B build/scene-msaa-visibility/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-visibility/native -j4
build/scene-msaa-visibility/native/quantized_baseline
build/scene-msaa-visibility/native/quantized_candidate
build/scene-msaa-visibility/native/position_contract
bash experiments/scene-msaa-visibility/wasm_contract.sh
python3 experiments/scene-msaa-visibility/resident_trial.py --pairs 1 --samples 0,2,4
```

For the packed-dense variant add `--output-root PATH --packed-stores
--dense-groups`; the corrected specialized variant additionally uses
`--stable-groups --specialized-raster`. Configure `-DSCENE_TRIAL_ROOT=ABSOLUTE_PATH`
to keep each frozen tree/binary independent. Configure a separate audit build
with `-DSOFTGL_MSAA_VISIBILITY_AUDIT=ON` and run `msaa_contract`.
The WASM script accepts that absolute trial root as its sole argument.
Use `scene-meshlets-soa/check_quality.py --root PATH --samples 0,2,4` with the
Pillow/numpy environment. The performance resident runner accepts explicit binary/source/
wrapper/output paths; its full receipt records exact arguments and hashes.
`profile.py --root PATH --output PATH` performs the separate user-only recording.
`check_resident.py --root PATH --oracle RECEIPT` verifies context reuse;
`browser-smoke.cjs` verifies the live server and archives Bistro MSAA screenshots.
Vector follow-up also adds `--vector-raster`; adaptive-v1 uses only
`--adaptive --output-root PATH` against the original scalar variant.

## Sources

- Local current implementations: `libsoftgl/src/scene_visibility.c`,
  `geometry.inc`, `raster_msaa_impl.h`, `multisample.h`, `multisample.c`;
  existing visibility, packet and MSAA contracts under `tests/`.
- [GLimpSW visibility shading and resolve](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp)
- [GLimpSW raster interface](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [Khronos multisample storage/resolve semantics](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_framebuffer_object.txt)
