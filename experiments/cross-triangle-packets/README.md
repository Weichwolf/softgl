# Ordered fragment packets across triangles

Integrated experiment, 2026-10-07, against accepted D4 at research baseline
`19fd1d8d508505229f2424f8d4e947e64c6338f4`. Final decision follows the complete
fidelity gates and eighteen fixed quiet crossover pairs.

## Hypothesis and sources

Collect four surviving contributions from different triangles, shade them with
four independent interpolation inputs, then write their results in the original
order. Target partial off packets and scalar MSAA triangle tails. Keep existing
full packets. This can increase useful SIMD work at the cost of attribute copies,
extra dispatch and buffering. Occupancy alone is not a renderer speedup.

The [original research brief](../cross-triangle-fragment-packets/README.md) and its
[source receipts](../cross-triangle-fragment-packets/sources.json) bind these primary
references:

- Fatahalian et al., *Reducing Shading on GPUs using Quad-Fragment Merging*,
  [SIGGRAPH 2010](https://graphics.stanford.edu/papers/fragmerging/). Buffering
  motivates this experiment; their merged shading inputs and image-quality
  trade-offs are not adopted.
- Burns and Hunt, *The Visibility Buffer*, [JCGT 2013, section 3.3](https://jcgt.org/published/0002/02/04/paper.pdf).
  Its SIMD redistribution motivates packing; final-visibility shading does not
  replace SoftGL's current sample locations.
- CPU renderer [GLimpSW](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md),
  reviewed locally at that revision. Its gather/scatter discussion also identifies
  overhead and conflicting writes; its AVX512 code and altered filtering are
  not transplanted.

The [D4 census](../packet-lane-occupancy/README.md) finds 48.672125% live lanes in
BMW off's counted shader packets. MSAA's counted full packets are already full;
scalar triangle tails were outside that counter. Neither observation measures
CPU utilization or predicts a double-digit whole-frame gain. Earlier
[within-triangle packing](../off-pixel-packing/README.md) was rejected; this
variant has independent triangle inputs per lane.

## Implementation boundary

The eleven-file patch adds one bounded FIFO to each rendering thread. It is
active only within a single immutable queued draw/bin, for recognized DOT3
chains with depth writes, stencil, logic operations, queries, fog and stipple
disabled. Alpha/sample tests, color masks and blending retain the original
writers and order. Generic draws and synchronous paths retain their fallback.

Copy the attributes actually consumed by the shader, the original integer
edges, inverse area, current post-depth mask/depths and destination coordinates.
Each lane owns its three vertices' shader inputs. Packed decode-cache pointers
never survive collection. Keep current MSAA centroids rather than first-pass
centroids. Flush four collected contributions, older partial contributions before
an original full packet, and everything at bin/job completion. Multiple
contributions at a pixel are all written in their original order.

Depth writes are excluded because a delayed depth write could change a later
triangle's test. No geometry is reordered, shaded contributions merged or
samples dropped. The scratch is 1,040 bytes per rendering thread plus one global
four-byte internal test-enable flag; no heap or geometry-queue expansion.

The native rasterizer's text is 252,390 bytes versus D4's 231,430. There is one
outlined flush/kernel. The earlier forced-inline generation grew to 451,122
bytes and was superseded before timing. These sizes describe code generation,
not a measured speed change. `codegen.json` and symbol/size logs bind them.

Ordinary native and WASM CMake targets enable the same feature. The instrumented
MSAA object target inherits the production target's feature definitions. The
earlier default-build attempt failed before testing because this inheritance was
missing; its patch, metadata and build log remain archived. Renderer function
bodies did not change to fix that integration failure.

## Correctness and measurement

The new strict shader fixture checks 659,712 exact scalar comparisons across
six shader classes, all fifteen live masks, distinct lane vertices/UVs/W,
nonpositive W, integer edges above 32 bits and poisoned inactive lanes. Direct
raster checks compare all framebuffer planes bytewise in 36 cases and prove
eighteen actual deferred tiny-triangle stages. Queued raw-DOT3, packed-DOT3 and
generic fallback sequences compare 288 complete-plane/query hash signatures.
A separate production-compiler fixture runs the raster/API checks against the
ordinary optimized library. Hash signatures are not bytewise plane comparisons.

Full gates require 746 native tests plus the benchmark contract using Linux
OSMesa, 26 GCC ASan/UBSan contracts and 24 standalone WASM contracts. Rendering
cases compare 234 D4 image hashes separately for off/2x/4x, retain the original
240 Mesa comparison tolerances, and compare both models' 100 frame hashes and
four representative complete RGBA frames per mode. The edge oracle covers
4,480 frames, 62,251,008 sample masks and 12,431,040 coefficient lanes.

Freshly compile all twenty enabled and twenty disabled WASM library objects,
binding all 259 actual link inputs; reuse the other 239 catalog/viewer objects
explicitly. Disabled objects and JS/WASM must equal D4 bytewise. Only workers
and rasterizer objects differ in this candidate. Fresh native/sanitizer objects,
compiler flags and build receipts are recorded separately.

Predeclare eighteen comparisons: off/2x/4x, two audits of three pairs each,
BMW and T-80, two-round AB/BA, 80 warmup and 100 rotating/resolved frames,
640x360, three helpers plus the computing caller. Retain every attempt and the
unchanged 0.10-core foreign-CPU guard. Do not tune or stop on a favorable pair.
`analysis.json` recomputes ratios; `uncertainty.json` gives descriptive paired-log
Student-t intervals with df 5. Independence/normality are assumptions.

## Results

Positive values mean more frame time. Audit means use three fixed pair ratios; intervals are descriptive, not a guarantee.

| Scene | MSAA | Audit 1 | Audit 2 | Six-pair mean | 95% interval | Faster/slower |
| --- | --- | ---: | ---: | ---: | --- | --- |
| BMW | off | +2.676% | +3.517% | +3.096% | [+2.355%, +3.841%] | 0/6 |
| BMW | 2x | +1.239% | +1.070% | +1.155% | [+0.671%, +1.641%] | 0/6 |
| BMW | 4x | -0.196% | -0.980% | -0.589% | [-2.560%, +1.423%] | 4/2 |
| T-80 | off | +0.893% | +1.703% | +1.297% | [+0.052%, +2.557%] | 0/6 |
| T-80 | 2x | +0.343% | -2.233% | -0.954% | [-3.322%, +1.473%] | 5/1 |
| T-80 | 4x | -1.256% | -0.313% | -0.786% | [-2.450%, +0.907%] | 4/2 |

**Rejected.** BMW off and 2x regress in all twelve pairs: +3.096% and +1.155% geometric mean frame time, with positive descriptive intervals. The -0.589% BMW4 mean has mixed pair directions and an interval crossing zero; it does not justify those regressions. Reject this bounded copying FIFO implementation and retain D4.

All required final fidelity gates passed. Candidate WASM `6c04049021600d1590555cce0a2552f635dadf92ef58cb24eb09749a76f258a5`, source patch `90da5ed5a0b49497aaff86603f7f759664cc9142f32834eddba9d53bd1c7baba`. The optimization goal remains active.

## Reproduction

From the repository root:

```sh
python3 experiments/cross-triangle-packets/verify_artifacts.py
python3 experiments/cross-triangle-packets/analyze-timings.py --check
python3 experiments/cross-triangle-packets/reproduce-candidate.py --prepare-only \
  --work build/diagnostics/cross-triangle-packets-fresh-check
```

These verify archived evidence and reconstruct the eleven source hashes; they
do not execute a fresh renderer or benchmark. Omit `--prepare-only` with another
unused work directory for a fresh build and all fidelity gates. Add `--timings`
to execute the complete predeclared comparison after those gates. Existing work
and control directories cannot be reused.

Prerequisites: Emscripten 3.1.69, GCC 14, Node 20, Playwright/Chromium, Linux
OSMesa, the canonical `build/checks/msaa-wasm` catalog, frozen D4 controls and
BMW pack from [the validation protocol](../validation-protocol/README.md).
The timing recipe requires a clean repository and the accepted D4 preview at
port 8000 with all six assets and COOP/COEP headers. Windows/WGL validation is
not claimed. Generated modules, objects, executables, images, private checkouts
and copyrighted papers are excluded from Git.

Earlier diagnostic logs are not acceptance timings. The initial scalar-oracle
comparison mixed strict arithmetic with an optimized sampler; aligning the
oracle's three translation units with the existing strict pixel/cube contract
flags resolved it without changing tolerances. The inline generation compiled
with sanitizers but did not execute its sanitizer fixtures; completed final
sanitizer gates are separate. The final default-build generation, source patch,
producer identities, terminal status and raw timings bind the decision.
