# Byte-group hidden-bitmap visibility selection

Rejected. BMW off is slower in both audits (+1.096349%/+1.366927%) and all six pairs. BMW2x aggregate frame time is slower (+2.220060%/+1.530656%), despite four of six faster pairs; two large slower pairs (+8.748678%/+5.853174%) dominate those aggregates. BMW4x small aggregate benefits (-0.216653%/-0.357094%) have three faster/three slower pairs and do not justify the repeatable off regression. T-80 controls are mixed. Full correctness gates pass; all eighteen comparisons pass the unchanged quiet guard on their first attempt. Keep accepted D4 and the live preview unchanged.

Research snapshot `280750377a32bfd21f3a512cc715f49740b5310a`; accepted reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`, candidate `725419f71f047e72c6fc5bd673f473a0d99223b090f2de89e70b6efeda691a2c`.

## Hypothesis and implementation

The accepted D4 replay census observed 89.87–92.53% of BMW incoming replay
references taking the hidden-bit filtering path. These are logical references,
including bin duplication; they are neither frame-cost shares nor physical traffic.
The candidate processes each bitmap byte as up to eight consecutive records.
Fully hidden groups skip their payload. Fully visible groups copy all records,
using a constant 128-byte copy for complete groups. Mixed groups visit visible
set bits with trailing-zero count, then clear the lowest set bit. This emits
records in exactly the original order. Bounded first/last groups read only their
one bitmap byte and mask bits outside the requested range.

The helper uses restrict for the distinct owned destination bin and read-only
cache records/bitmap. Existing cache allocation bounds first+count. It replaces
only the filtered replay loop. The original depth-epoch/sample/depth/stencil/
polygon-offset predicate, unfiltered memcpy, capacity growth, queue ownership,
cache lifetime, primitive order and geometry/fragment arithmetic remain unchanged.
No runtime counters, extra workers, synchronization, record layout changes or
geometry simplification are included. Full/mixed-group branching and copy
dispatch can offset saved per-reference checks. This is a combined grouped
selection/copy/restrict trial; timings do not isolate components or prove a
hardware cache cause.

## Complete comparisons

Two independent audits per off/2x/4x mode, three AB/BA paired page-crossover
comparisons per audit, two rounds per pair, 80 warmup plus 100 rotating measured
frames, 640x360, three helpers plus caller, BMW and T-80, resolve/readback each frame.
All eighteen comparisons use the frozen D4 reference. Benchmark and quiet guard
remain unchanged (.10 foreign CPU cores); every attempt is retained. Builds,
regression tests and codegen inspection finish before timings. No selective
confirmation or parameter sweep follows. Negative percentages mean faster paired
frame time. Each audit is the geometric mean of three geometric paired ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
| BMW F31 | off | +1.096349% | +1.366927% | 0 / 6 |
| BMW F31 | 2x | +2.220060% | +1.530656% | 4 / 2 |
| BMW F31 | 4x | -0.216653% | -0.357094% | 3 / 3 |
| T-80 | off | +0.223950% | -0.520917% | 3 / 3 |
| T-80 | 2x | -2.004202% | +0.624608% | 5 / 1 |
| T-80 | 4x | -0.198549% | -0.011622% | 4 / 2 |

Raw comparisons and guard attempts are in `timings/`. Independent arithmetic
is retained in `analysis.json`; `decision.json` evaluates all modes with BMW
priority. Absolute FPS applies to this protocol, not a continuous UI guarantee.

## Correctness and actual producer

The producer recompiles workers.c and reuses nineteen accepted D4 library
objects. Twenty actual library objects and 259 ordered link inputs are bound
by hashes. Commands, source/fixture identities and frozen JS/WASM identities
are retained. Generated binaries and build directories are excluded. The
four-file patch reconstructs against the two archived originals; its header
and new fixture are additions.

Before timing, all 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact control images
per mode, 100 matching dual frame hashes and four byte-exact representative
frames per model/mode pass. The complete native/WASM edge oracle checks
4480 frames, 62,251,008 masks and 12,431,040 coefficient lanes. Existing
post-depth-store, DOT3-query, RGBA quantization, index-range and depth-replay
contracts pass. Image tolerances remain unchanged. Native reference comparisons
use working Linux OSMesa.

The independent per-record visibility oracle passes 227,688 cases, 115,445,691 incoming records and 69,442,243 exact surviving 16-byte payloads. It covers all 256 byte masks, first/end bit boundaries, source/destination offsets, empty input, stage lengths 8191/8192/8193 and larger, exact source ends, poisoned destination prefix/tail, source immutability and raw float payload bits including signed zero/infinities/NaNs. It shares no grouped selection, ctz iteration or bulk copy with the production helper.

Before full gates, the fixture was revised to explicitly construct a typed
triangle object before copying its representation into allocated storage.
Those preflights both passed with identical counts/stdout. The original
fixture/log and revision receipt are retained. Subsequently, all original
native/sanitizer/WASM gates passed, but the native/WASM randomized input totals
differed: C does not specify the order of multiple PRNG function arguments.
Before receipt finalization or any timing, PRNG calls were sequenced in separate
statements. Original fixture, patch, validation and complete gate receipts are
retained under fixture-before-sequencing/. Full gates were repeated with the
final fixture and identical native/WASM input/output totals. Runtime source,
production objects and measured candidate module did not change with either
fixture correction.

Static inspection binds eighteen mapped roots: seventeen raster, fragment,
worker and queue bodies remain byte-identical; draw_elements grows from
17,454 to 17,598 WASM body bytes. The actual draw-root disassemblies contain
0→1 i32.ctz and 39→41 memory.copy sites. v128.load/store site counts remain
26/18. Counts include other code in this root. These observations are neither
native/JIT instruction counts nor dynamic operation counts, register pressure,
cache events or a hardware ceiling.

## Reproduction and evidence scope

Portable checksum/patch/raw-arithmetic verification:

```sh
python3 experiments/visibility-byte-select/verify_artifacts.py
```

Fresh source build/native regression recipe:

```sh
python3 experiments/visibility-byte-select/reproduce-candidate.py
```

The fresh recipe is supplied but was not executed for this archive. Original
incremental production, full correctness and paired comparison recipes were
executed. Rebuilding needs Emscripten, native CMake/OSMesa dependencies and the
bound BMW pack. Different paths/toolchains can change binary identities. Output
stays under build/. Original WASM/sanitizer/image drivers document staging paths
and need adaptation to a fresh tree. The portable verifier checks retained
receipts and arithmetic; it does not rerun browser or rendering tests. Repeat
all-mode WASM fidelity and guarded comparisons before adopting a fresh build.
