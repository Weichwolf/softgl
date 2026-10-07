# Bounded geometric MSAA mask replay

Isolated renderer prototype, research baseline `a8d6af84ed1a5c06313ce8cc571f3c603d0ec739`, accepted D4 WASM `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`. **Rejected after complete fidelity gates and eighteen fixed quiet crossover pairs; renderer unchanged.** Final candidate WASM `cd84f84c4accc31e98b728189f6ee0988e6debe04185bb29900a1c9d78fe248b`, source patch `e00fa00d26e5bbf9fbb20f6d4bf18b25a5f7738d3c6d9e37160500a4842ae5d8`.

## Mechanism

An observed geometry-cache hit marks a key as useful. Subsequent stores of that key may record per-bin geometric MSAA coverage before the depth test. Only weak references with a completed stream are retained. HZ-skipped, missing, strict, overflowing, ineligible and budget-rejected references retain the ordinary path, subject to the existing conservative depth-replay proof. A later ordered draw walks its own original reference order, recomputes the original two integer interpolation edges and evaluates current attributes, depth, post-depth centroid, shading and framebuffer writes. Geometric masks retain first-pass depth failures and LESS ties; the stream never stores shaded colors or the old post-depth mask.

Each record has a 12-byte length/bounds prefix and eight-byte row-run headers followed by packed four-bit sample masks. A dense four-byte table covers every stored triangle/bin reference. All aligned allocations share the existing 4 MiB geometry-data budget; an entry is capped at 256 KiB and at one quarter of currently available space. Original geometry allocations have priority. No extra queue-vertex budget is introduced. Cache entries and queued jobs retain ownership separately across epoch changes and slot reuse. Learning avoids storage on the T-80 workload, which has no observed hits. MSAA off uses the existing renderer.

## Sources and adaptation

William R. Mark and Kekoa Proudfoot, *The F-Buffer: A Rasterization-Order FIFO Buffer for Multi-Pass Rendering*, Graphics Hardware 2001, pp. 57–63: [publisher PDF](https://diglib.eg.org/bitstream/handle/10.2312/EGGH.EGGH01.057-063/057-063.pdf?isAllowed=n&sequence=1). Section 5.2 discusses a single-rasterization variant; its Mesa demonstration instead rasterizes each pass and stores intermediate colors. This is our internal geometric-mask adaptation. The paper supplies no speed result for this implementation. [Research brief](../fragment-geometry-replay/README.md), [source receipts](../fragment-geometry-replay/sources.json) and [previous geometric census](../fragment-stream-census/README.md) describe the inputs and distinction between proposed storage and actual renderer work.

## Fidelity and protocol

The new oracle covers 512 exact complete color/depth/stencil/sample-plane cases with wide integer edges and fresh post-depth centroids, 128 empty geometric streams, and 288 API/queue/query stages comparing enabled and disabled operation using complete-plane/query hash signatures. The API cases exercise raw and packed DOT3 paths, three sample modes, scissor, disabled multisampling, depth/offset/alpha/stencil state, changing positions/attributes/textures, queries, queued ownership, slot reuse, overflow and allocation rejection. All original tolerances remain unchanged.

The fixed acceptance protocol is eighteen quiet crossover AB/BA pairs: off/2x/4x, two audits and three pairs each, BMW and T-80, three helpers plus the caller, 640×360, 80 warmup frames and 100 rotating resolved frames per round. The foreign-load threshold remains `.10` cores. Every attempt is retained. Full fidelity gates precede the timing process; no acceptance timing comes from instrumented diagnostic captures.

## Implementation diagnostics

The first frozen implementation and the pointer-parameter variant failed GCC 14 ASan/UBSan at a span-reader TLS member update before acceptance timings. Both passed their Clang 19 ASan/UBSan fixture. For the first generation, a wrapper that forwards to the unchanged UBSan handler recorded a null reported argument while the actual TLS cursor, read and end were nonnull. The local assembly has a conditional jump after flag-preserving TLS address instructions without a corresponding pointer test. This supports a local compiler-instrumentation diagnosis; no upstream bug identification is asserted. The final variant holds read/end pointers locally throughout the raster loop and commits the read position once afterward; no sanitizer or test is disabled. Failed source identities, logs and assembly remain separate evidence.

A six-frame native BMW exploratory probe of the first generation records about 4,600 replayed references per rotating frame and 517,952 live fragment bytes after the last frame, with an allocation-time shared-budget peak of 4,155,712 bytes. These are actual native replay counts, not a time saving or the previous WASM census. The observed peak is sampled after fragment allocation, not a complete trace of every later geometry allocation. Dense reference tables and per-bin fixed reservations leave substantial fallback work; a sparse representation is a separate future trial.

## Results and decision

Positive percentages below mean **more frame time**, not a gain or the same numerical percentage change in FPS. Audit values are geometric means of three fixed pair ratios. Intervals are descriptive paired-log Student-t intervals across all six pair ratios (df 5); independence and normality are assumptions, not certified.

| Scene | MSAA | Audit 1 | Audit 2 | Six-pair mean | Descriptive 95% interval | Faster/slower pairs |
| --- | --- | ---: | ---: | ---: | --- | --- |

| BMW | off | +0.672% | +1.488% | +1.079% | [+0.116%, +2.052%] | 1/5 |
| BMW | 2x | +2.878% | +2.994% | +2.936% | [+2.009%, +3.871%] | 0/6 |
| BMW | 4x | +3.986% | +3.293% | +3.639% | [+2.466%, +4.825%] | 0/6 |
| T-80 | off | +1.372% | +1.577% | +1.475% | [+0.030%, +2.940%] | 0/6 |
| T-80 | 2x | -0.879% | +1.256% | +0.183% | [-2.285%, +2.713%] | 3/3 |
| T-80 | 4x | +0.893% | +0.390% | +0.641% | [-1.404%, +2.729%] | 1/5 |

All eighteen comparisons passed the original quiet guard on their first attempt. BMW is slower in all twelve 2x/4x pairs. Both MSAA audit regressions repeat, and their descriptive intervals stay above zero. Off also supplies no gain; T-80 2x/4x is mixed within the intervals. **Reject this implementation; retain accepted D4.** The test demonstrates that this combination of dense indexing, bounded per-bin recording and replay does not pay for itself. It does not isolate which component dominates, prove fragment replay impossible, or establish a CPU-time ceiling from the geometry counts.

A sparse per-retained-reference table with a shorter record and a local capture cursor are distinct follow-up trials; both need their own gates and comparisons. Cross-triangle shading packets remain another architecture candidate. No future speedup is claimed.

Final fidelity: all 745 native tests and one benchmark contract pass with Linux OSMesa, not WGL. All 25 GCC ASan/UBSan contracts pass; the new fixture additionally passes Clang 19 ASan/UBSan with leak checks. All 24 standalone WASM contracts pass. All 234 rendering cases have matching D4 hashes separately for off/2x/4x, and 240 Mesa comparisons retain their original tolerances. For both models and each mode, all 100 frame hashes and four representative complete RGBA frames match D4. Native and WASM edge gates cover 4,480 frames, 62,251,008 exact sample masks and 12,431,040 coefficient lanes. Both engines run the 512 bytewise direct replay cases and the 288 API plane/query signature stages.

All twenty enabled and twenty disabled WASM library objects were freshly compiled, binding all 259 actual link inputs. The other 239 catalog/viewer objects were explicitly reused. Disabled objects and JS/WASM match accepted D4 byte for byte. Only `workers.c.o` and `rasterizer.c.o` differ in the candidate. Fresh native and sanitizer library objects are recorded separately. The 62 existing native warning lines introduce none relative to the published D4 list. The six live preview assets stay byte exact D4, with COOP/COEP headers. Generated modules, objects, executables, image outputs, source checkouts and copyrighted PDFs are excluded from Git.

## Reproduction

From the repository root:

```sh
python3 experiments/fragment-mask-replay/verify_artifacts.py
python3 experiments/fragment-mask-replay/analyze-timings.py --check
python3 experiments/fragment-mask-replay/reproduce-candidate.py --prepare-only \
  --work build/diagnostics/fragment-mask-replay-fresh-check
```

These check archived evidence and reconstruct source; they do not run a new renderer or benchmark. The recipe check in this folder actually reconstructed all nine source hashes in a fresh private directory.

For a new full build and fidelity run, omit `--prepare-only` and choose another unused direct child of `build/diagnostics/`. Add `--timings` to run all eighteen comparisons only after complete fresh gates. Work/control directories cannot be reused. Emscripten 3.1.69, GCC 14, Node 20, Playwright/Chromium, Linux OSMesa, the existing `build/checks/msaa-wasm` 259-input catalog, frozen `build/controls/simd-index-range-candidate`, and `build/assets/bmw.pack` are prerequisites. The native reference harness in this environment uses OSMesa; Windows/WGL is not claimed. The full timing recipe also requires a clean repository and accepted D4 preview at port 8000 to verify all live assets before starting. The original D4 controls, assets and harness instructions are in [validation protocol](../validation-protocol/README.md) and [accepted index-range experiment](../simd-index-range/README.md).

The archived failure folders retain the two earlier sanitizer failures, source patches/identities, and successful Clang fixture logs. Their logs are diagnosis only, not acceptance timings. The first generation's forwarding UBSan wrapper and assembly remain evidence; the generic two-TU TLS minimal probe did not reproduce the failure and is retained as a negative control. The exploratory native probe uses the first generation, not the timed final one. `validation.json`, producer commands, direct oracle logs, raw comparisons, monitor logs, independent analysis, decision and manifest bind each evidence class explicitly.
