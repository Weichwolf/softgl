# Unused-alpha elision in classified DOT3 sampling

Rejected under BMW priority. Without MSAA all six BMW pairs are slower;
audit geometric means change +1.505%/+1.411%. BMW 2x changes
+0.775%/-0.398%; 4x changes +0.397%/+0.959%. T-80 2x/4x audit means improve,
but that does not justify the BMW regressions. The accepted D4 renderer,
prepared geometry, live viewer and compact FPS report remain unchanged.

## Mechanism

The existing complete-state classifier recognizes three DOT3 chains. Kind1
consumes unit0 RGB, unit2 RGBA and unit3 RGB; kind2 consumes unit0/unit2 RGB;
kind3 consumes unit0 RGB. Only kind1/unit2 needs sampled texture alpha.
The candidate adds an internal sample_alpha parameter. The nearest/float-linear
2D sampler returns 1 for unused alpha before extracting/filtering that component.
Integer filtering and all original wrappers retain full RGBA. Constants, cube,
1D/3D and scalar fallbacks retain their original full-component implementation.
RGB operation grouping, texture gathers/storage/lifetime, final alpha, every
combiner clamp, depth/MSAA ordering, geometry and worker coordination stay exact.
Only frag_packet.h and the independent pixel_packet.c oracle change.

An initial private generator used an incorrect fixture comparison anchor.
failed-generator-anchor/ retains its actual source, written header draft and
exit-1 receipt. No candidate was compiled or rendered from that draft. The
corrected generator reconstructed fresh source before the actual build/gates.

## Bound producer and static diagnostics

All 20 library translation units are freshly compiled. Nineteen are identical
to D4; only rasterizer.c.o changes. The archive binds the source patch, source
hashes, objects, all 259 link inputs, commands and actual producer module hash.
All six bound raster roots grow by 138–226 WASM bytes. Their declared SIMD
local counts stay 31/31/27/27/35/35; each has one additional i32 local.
Whole-root mask/shift/shuffle/conversion/add site counts stay unchanged, with
one extra f32x4.mul site each. An elided channel is a conditional execution
path, so static site counts do not quantify its dynamic savings.

Selected alpha-store byte excerpts are retained with explicit limits: the
reference excerpt contains nested operations/stores, while the candidate
excerpt isolates a nearest-alpha store. They are not comparable isolated
linear-alpha costs or a proof of complete control flow. The whole raster-root
WAT and its symbol/module bindings are retained. Full module WAT/binaries are
excluded. None of these observations measures V8 native instructions, spills,
cache behavior or a hardware ceiling. Branch and body growth do not establish
the cause of the measured regressions.

## Complete fidelity gates

744 native tests + Bench 1, 24 ASan/UBSan/leak contracts, 23 WASM contracts,
240 unchanged-tolerance Mesa comparisons and 234 exact test images in each
sample mode pass. Both models match 100 dual hashes and four full byte frames
per mode. The extended independent scalar oracle passes 1,325,788 exact
consumed-alpha component comparisons on native and WASM, alongside the existing
331,447 sampler and 128,054 shader comparisons. The MSAA edge oracle passes
4480 frames, 62,251,008 sample masks and 12,431,040 coefficient lanes. Direct
logs bind post-depth/DOT3 query, replay, queue and index checks. No new native
warning line relative to D4.

## Predeclared repeated measurements

Two audits for each off/2x/4x mode, three crossover AB/BA pairs per audit,
two rounds per pair, 80 warmup and 100 measured rotating frames at 640x360.
BMW/T-80 use three helpers plus the caller and resolve/readback every frame.
All 18 planned comparisons complete, all on the first quiet-guard attempt.
The unchanged foreign-CPU threshold is 0.10 cores; raw guard observations are
retained. The guard does not prove absence of unobservable Windows host load.
Negative relative frame-time change is faster. Audit values below are geometric
means of all three raw crossover ratios, recomputed by analyze-timings.py;
the driver also retains its separately defined median summaries.

| Scene | Samples | Audit 1 | Audit 2 | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | +1.504764% | +1.410565% | 0/6 |
| bmw | 2 | +0.774500% | -0.397791% | 3/3 |
| bmw | 4 | +0.396812% | +0.959420% | 2/4 |
| tank | 0 | -0.190131% | +0.303967% | 2/4 |
| tank | 2 | -0.852127% | -0.892294% | 4/2 |
| tank | 4 | -0.352401% | -1.006632% | 4/2 |

## Reproduction

```sh
python3 experiments/dot3-sampler-alpha/verify_artifacts.py
python3 experiments/dot3-sampler-alpha/reproduce-candidate.py --prepare-only
python3 experiments/dot3-sampler-alpha/reproduce-candidate.py --work build/diagnostics/dot3-sampler-alpha-fresh
```

The source reconstruction was executed with --prepare-only; both changed-source
hashes match. recipe-check/ retains that receipt. The fresh producer/full-gate
branch is provided but not executed. The original isolated producer, full gates
and all 18 comparisons above were executed. Full reproduction requires the
baseline Git revision, Emscripten 3.1.69, matching local canonical WASM case
catalog, frozen D4 build/model packs, Linux OSMesa, CMake/C compiler and
Playwright/Chromium. Recorded scripts expose these local prerequisites.
Other toolchains and paths can change identities. Scratch remains below build/;
the recipes do not overwrite the production source or the live server assets.

The archive verifier checks artifact/fixture/log hashes, source reconstruction,
recorded complete gates, bound static sites and all 18 guarded comparisons.
It does not rerun rendering or infer a performance ceiling. The
[next research note](next-research.md) examines streaming the classified chain
instead of sampling all units before combining; that candidate is unbuilt.
