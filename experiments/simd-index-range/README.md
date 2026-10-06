# Exact unsigned SIMD index ranges

Accepted: BMW frame time improves -1.071724%/-0.636837% off (six/six faster pairs), -0.931088%/-1.241151% at2x (five/six), and -0.599668%/-0.921633% at4x (five/six). T-80 improves -4.301819%/-3.514801% off, -2.003674%/-5.618840% at2x and -5.527473%/-1.841814% at4x; its pair signs are likewise six/six off and five/six in each MSAA mode. These are modest repeatable BMW gains, with mixed individual MSAA pairs rather than a universal per-pair speedup. All eighteen predeclared paired comparisons completed; nineteen guard attempts include one discarded Codex foreign-CPU window (off,audit1,pair2). No selective performance confirmation or parameter sweep was used. Canonical byte identity, complete final native tests and both browser UI gates must pass before live adoption.

Research snapshot `be9722f59fd124b4da0391c1fc7f8472ec8916d6`; reference `7cc38593`, candidate `d4dd244c`.

## Hypothesis and implementation

The preceding caller-producer diagnostic observed 180,081 scanned BMW indices/frame
at 1.0582–1.0749 ms. BMW uses GL_UNSIGNED_INT. The old scalar range loop dispatches
through sg_fetch_index for every input. This trial dispatches BYTE/SHORT/INT once,
then computes the same unsigned minimum/maximum with 128-bit SSE4.1 intrinsics,
mapped to the actual WASM SIMD extrema operations.

Four independent reduction chains consume 64 bytes per unrolled iteration
(64 BYTE/32 SHORT/16 INT indices). Remaining complete vectors use bounded 16-byte
unaligned loads; scalar memcpy tails avoid alignment assumptions and overreads.
Final extrema remain exact through UINT32_MAX/high-bit values. Missing data and
unsupported internal types retain sg_fetch_index's zero-index fallback; empty
ranges retain UINT32_MAX/zero identities. Only the cache-miss scan changes.
Geometry hits bypass it exactly as before. No new state/layout, synchronization,
draw order, geometry, float precision or rendering arithmetic is introduced.
Reduction setup, code size/inlining or runtime scheduling can offset saved work.

## All-mode evidence

Two audits each off/2x/4x, three paired AB/BA page-crossover comparisons/audit,
two rounds/pair, 80 warmup then 100 rotating measured frames,640x360,three helpers
plus caller, BMW and T-80, resolve each frame. All module/pack identities are checked.
The original browser benchmark and quiet guard (.10 foreign CPU cores) are unchanged;
a reversible private driver edit selects the explicit candidate native manifest.
Every guard attempt/log is retained. Builds/tests/codegen inspection finish before
timings. No selective confirmation or parameter sweep is used.

Negative percentages mean faster frame time. Each audit is the geometric mean
of its three paired geometric ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
| BMW F31 | off | -1.071724% | -0.636837% | 6 / 0 |
| BMW F31 | 2x | -0.931088% | -1.241151% | 5 / 1 |
| BMW F31 | 4x | -0.599668% | -0.921633% | 5 / 1 |
| T-80 | off | -4.301819% | -3.514801% | 6 / 0 |
| T-80 | 2x | -2.003674% | -5.618840% | 5 / 1 |
| T-80 | 4x | -5.527473% | -1.841814% | 5 / 1 |

`timings/` holds every raw comparison and guard; `analyze-timings.py` independently
recomputes all 18 pairs. The predeclared decision requires reproducible BMW benefit
and checks all modes/T-80; `decision.json` explains the complete result.

## Fidelity and producer

The normal producer reuses 19 accepted library objects and recompiles pipeline.c
only, retaining 20 objects and 259 ordered actual link inputs. Actual commands,
sources, fixture and binary identities are bound in validation.json. No generated
binaries are published. The four-file source patch is independently reconstructed.

Seventeen of 18 inspected WASM roots remain byte-identical, including raster,
fragment, packed-vertex and worker/queue bodies. The draw_elements root grows
from 14,686 to 17,454 static bytes. Its actual disassembly contains the six checked
unsigned SIMD extrema opcodes (8 BYTE min/max, 8 SHORT min/max, 17 INT min/max static
occurrences). Reference has zero. Textual roots/maps and correct function-import
mapping checks are retained. These are WASM facts, not native JIT instructions,
register pressure, dynamic operation counts, cache events or a hardware ceiling.

Before timings: all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts, 240 Mesa
images, 234 byte-exact WASM images each mode, 100 matching dual hashes and 4 byte-exact
representative frames each model/mode, 23 WASM contracts and the complete edge oracle
(4480 frames/62,251,008 sample masks/12,431,040 coefficient lanes) pass. Post-depth
stores (98,304 each mode), actual DOT3 queries (640 each mode), RGBA quantizations (262,144),
depth classification (4608 off/8192 MSAA) and 348 queued API cases remain exact.
No image tolerance is changed; full tests use the working Linux OSMesa harness.

The new oracle independently decodes input bytes, rather than reproducing the
SIMD reduction. Both engines pass 1,007,307 cases/182,312,387 decoded input items,
with 32 alignment offsets,vector/unroll/tail boundaries,extrema in every lane,
high unsigned bits,large spans,null/unsupported inputs and empty ranges. Native
ASan checks exact allocation ends (no padded tail). These are correctness counts,
not actual rendered vertex counts or saved cycles. Oracle item totals include
zero-index fallbacks; they are not physical memory-read counts. Test helpers use the same
internal header as the production pipeline; image/API tests cover integration.

The original zero-length fixture allocation left its unused test byte uninitialized.
GCC emitted a new maybe-uninitialized warning although the zero-length helper/oracle
never reads it. After the original full gates terminated, every test allocation
was explicitly initialized; only the fixture changed, with no runtime-module or
helper changes. Original fixture/patch/logs are retained under fixture-correction/.
The final native,ASan/UBSan and WASM range contracts were rebuilt/rerun and bound
before timing, with identical counts and no new warning. Existing full renderer
regressions cover the unchanged runtime. Canonical adoption, if accepted, additionally
rebuilds the final main source and reruns its full native suite.

## Reproduction

Portable archive checks require Python3 and Git, without browsers/build caches:

```sh
python3 experiments/simd-index-range/verify_artifacts.py
```

A fresh complete-source recipe is supplied separately:

```sh
python3 experiments/simd-index-range/reproduce-candidate.py
```

It needs Emscripten, CMake/native OSMesa dependencies and the bound BMW pack; output
stays under build/. This fresh recipe was not executed for the archive. The original
incremental producer, complete original gates and all-mode paired timings were
executed. Paths/toolchains can change binary bytes. Original full sanitizer/WASM/
image recipes describe the original staging paths and need adaptation for another
tree. The portable verifier checks retained receipts and raw arithmetic rather
than rerunning binary tests. Repeat complete WASM fidelity/guarded comparisons
before adopting a fresh build.

## Adoption

The final four-file patch is applied to main source. The canonical build produces
JS/WASM byte-identical to the measured candidate; its complete744native tests
plusBench1 pass with the final initialized range fixture. Both Chromium/Firefox
UI gates pass234tests and18benchmark rows across off/2x/4x,MSAArestoration,
cancellation,scene/context recycling and threehelperspluscaller on nine reported
processors. Screenshots and receipts are retained. Firefox emits ignored external
mozprofile/marionette destructor ImportErrors during Python shutdown after explicit
driver/server cleanup; its successful result,empty page-error array and original
log are retained. The owned8001server was stopped with its PID/birth verified.

The existing8000preview now serves the candidateJS/WASM. AllsixHTTPassets match
the frozen candidate byte-for-byte and retain COOP/COEP; preparedBMW/tank packs
and browserUI are unchanged. bench_report.md contains only compact numeric
results,with the older7ccCPUaccounting explicitly labeled as such. Absolute FPS
uses median raw candidate times; relative gains use geometric paired ratios.
The BMW4x audit medians are30.33/30.49FPS and T-8070.21/68.54FPS,under the
recorded environment/protocol. These milestones do not finish the open research
goal or establish a hardware ceiling.
