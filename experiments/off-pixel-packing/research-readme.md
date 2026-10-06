# Within-triangle off-mode pixel packing

Decision: **rejected**. BMW off improves -1.780588%/-2.377514% and2x -1.285574%/-0.580938%, but BMW4x audit time changes +1.510181%/+0.487836%, with4 of6 pairs slower. Reject this joint module under all-mode BMW priority. Source/MSAA arithmetic is unchanged; no cause of the4x cost is proven. Retain D4/live/report. Test separating per-mode raster entry points in an independent future candidate; no selective retiming or modified-parameter derivative was measured.

The [lane diagnostic](../packet-lane-occupancy/README.md) measures 48.672125%
live lanes in BMW off packet shaders. This candidate keeps the existing 2x2
coverage and early-depth calculation, then collects the surviving pixels into
four-lane shader packets within each triangle and worker stripe. Original
pixel positions, integer interpolation edges and computed depths are retained.
Dense full quads with no pending pixels retain their direct route. The last
one to three pixels use a masked SIMD packet, with initialized unused edges.
Every packet flushes before the triangle returns. There are no cross-triangle
attributes, new workers/atomics or geometry/texture/combiner arithmetic changes.

## Repeated comparisons

Two audits, three AB/BA pairs per mode, two rounds per pair, 80 warm-up and 100
rotating measured frames at 640x360, three helpers plus the caller, and per-frame
resolve/readback. Both BMW and T-80 run in all eighteen fixed comparisons. The
timing reference is accepted D4, not the macro-disabled control. Negative time
changes are faster. All raw attempts, guard monitors and per-round times are
retained. These observations do not establish a hardware or theoretical ceiling.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | -1.780588% | -2.377514% | 5/1 |
| bmw | 2 | -1.285574% | -0.580938% | 6/0 |
| bmw | 4 | +1.510181% | +0.487836% | 2/4 |
| tank | 0 | -1.170741% | +2.102498% | 3/3 |
| tank | 2 | -1.577503% | +0.305539% | 3/3 |
| tank | 4 | -1.226497% | -1.097964% | 4/2 |

## Mechanism and correctness

The integration contract compares the actual candidate rasterizer with the
original spatial quad route, forced by a test-only macro in the same template.
12288 cases cover all three classified DOT3 chains, eight depth functions,
write masks, blend, alpha, stencil, logic operations, queries, scissor,
polygon offset, fog/stipple fallbacks, different triangle sizes/stripes, all
three tail sizes and both normal/depth-capture entry points. Full color/depth/
stencil planes, query results and capture classification are exact. The new
path produces the same 621146 live pixels in each engine. Native has
158713/187691 candidate/reference packets and 4608 reducing cases; WASM has
158965/189023 packets and 4752 reducing cases. Packet partitions differ between
compiler builds; these counters do not establish the cause. Each build checks
its own candidate against its original route independently. These are contract
workloads, not BMW frame counts or a predicted frame gain. Texture fetch count
for surviving pixels is unchanged; gather/bookkeeping, tails, code layout and
less coherent texel addresses can outweigh reduced vector shader invocations.

The contract passes natively, under ASan/UBSan/leak checking and in WASM.
Test-only counters/wrappers/original-route entry points are absent from the
timed production module. Forty originally/finally compiled library objects
and both producer identities are retained in bindings; the final twenty-object
build matches nineteen D4 objects, with only rasterizer.c.o changed, and links
259 bound inputs. The packet sampler/combiner header is unchanged.

An initial native fixture link failed because the capture function is static.
A test-only exported wrapper corrected that fixture access. The first compiled
production WASM and corrected final production WASM are byte-identical; neither
the algorithm nor its parameters changed. Initial source, logs, producer
bindings and failure record are archived. Initial binaries/build trees are
excluded. The final source patch is independently reconstructed before timing.

The macro-disabled control is also freshly compiled and linked from the final
source. Its JS matches D4, but its rasterizer object and WASM are **not byte-
identical**. Compile-time branch removal does not restore the original generated
module. This control is not the comparison baseline or evidence of instruction-
level identity. Actual original-route oracles and D4 image/model comparisons
provide the rendering evidence; no cause is inferred from this codegen fact.

Full gates pass: 745 native tests plus Bench1, 25 sanitizer contracts, 24 WASM
contracts, 240 WASM/Mesa images with unchanged tolerances, 234 exact image
controls per off/2x/4x mode, 100 matching dual full-frame hashes and four
byte-exact raw frames per model/mode. Edge observers retain 4480 frames,
62251008 sample masks and 12431040 coefficient lanes. Direct sampler, shader,
post-Z/DOT3/query, replay/queue, index and quantization outputs are retained.
These tests cover their stated cases, not every possible OpenGL state. Existing
warning lines are compared with the published D4 list; no new warnings occur.

## Reproduction

```sh
python3 experiments/off-pixel-packing/verify_artifacts.py
python3 experiments/off-pixel-packing/reproduce-candidate.py --prepare-only
python3 experiments/off-pixel-packing/reproduce-candidate.py --work build/diagnostics/off-packing-repeat
```

The retained-evidence verifier checks checksum closure, source reconstruction,
full gate receipts, the actual packing contract, original failure and disabled
control bindings, and all eighteen raw pairs/guard attempts. It does not freshly
rerun tests or authenticate observations. Prepare-only was executed and its
receipt is retained; the supplied full fresh branch was not executed. Original
producers, full gates and comparisons were executed. Full reproduction needs
the matching frozen D4 control, canonical 239-object WASM test/viewer catalog,
prepared BMW pack, Emscripten 3.1.69, CMake/OSMesa and Node/Playwright/Chromium.
The recorded recipes keep outputs below build/. Paths/toolchains may change
module identity; do not silently substitute another timing reference. Original
staging scripts retain paths; the reproduction entry point reconstructs fresh
source and adapts producer/gate paths. The fixed comparison scripts are supplied
separately for repeated AB/BA measurements after complete fresh fidelity gates.
Generated binaries/build trees are excluded from publication.

Research baseline `8f1423615eac745a86f055a7c8e3776416e17ad0`; D4 reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; candidate `659b17d16f0230817e781a88ecc03a59873e422f39719ed91f0d35d9ac486d7c`.

The first archive check caught an omitted index-oracle reference file; its failure is retained under publication-missing-range-oracle/. The unchanged published reference was added before final verification. Renderer, tests and timings were not altered.
