# Constant byte-channel shuffles in the float packet sampler

Rejected: BMW gains do not reproduce across all modes and audits. Off shows
-0.412%/+0.259%, 2x -0.295%/-0.339%, and 4x approximately 0.000%/-1.213%.
T-80 off is slower in all six pairs (+0.601%/+0.735% audit changes).
Keep accepted D4 source, module, compact FPS report and live viewer unchanged.

## Mechanism and code generation

Four packed RGBA8 texels are separated into per-channel unsigned 32-bit values
by constant byte selectors and a zero vector. Native SSE4.1 uses byte shuffles;
WASM uses explicit i8x16.shuffle. Float filtering expands four channels explicitly.
Integer filtering retains its mask/shift arithmetic in a separate loop; nearest
sampling, addresses, loads, texture layout/lifetime, filter grouping, DOT3 stages,
prepared geometry, depth/MSAA ordering and worker coordination are unchanged.

All twenty library translation units are freshly compiled. Nineteen are
byte-identical to D4; only rasterizer.c.o changes. All 259 actual link inputs,
source files, objects, flags/commands and producer module hashes are retained.
Each of the six bound raster roots has the same static opcode delta:
+16 byte-shuffle sites, -12 mask sites, -12 logical-shift sites. Sixteen unsigned
float conversions become signed conversions. Float add/multiply site counts
and declared local counts stay unchanged; every raster body grows 202 WASM bytes.
These are static whole-function sites and byte sizes, not dynamic operations,
V8 machine instructions, spills, saved cycles or a hardware-peak fraction.
The observations do not establish why the small/mixed frame-time changes occur.

The first static-opcode counter required a space after an opcode and missed
Binaryen's multiline expressions. opcode-count-first-pass/ retains the original
analysis/source. The corrected counter handles all whitespace and records both
conversion forms. Disassembly, modules and actual timing inputs are unchanged.
No performance claim uses that incomplete first pass.

prior-art/ retains the inspected earlier RGBA-per-pixel sampler preparation and
metadata-search record. That historical trial is a different lane organization;
its one screen did not establish a useful gain. The search has a stated limited
scope and does not prove that no equivalent algorithm exists elsewhere.

## Full gates and paired comparisons

744 native tests + Bench 1, 24 ASan/UBSan/leak contracts, 23 WASM contracts,
240 unchanged-tolerance Mesa images and 234 byte-exact test frames per sample
mode pass. Both models match 100 dual hashes and four complete byte frames in
all three modes. The added independent encoding oracle checks 1,048,576 byte/
channel/lane combinations on native and WASM. Existing packet contracts also
check 331,447 sampler and 128,054 shader comparisons. The independent MSAA edge
oracle passes 4480 frames, 62,251,008 sample masks and 12,431,040 coefficient lanes.
Direct logs bind post-depth stores/DOT3 queries, quantization, replay/queue states
and unsigned index ranges. No new native warning line versus the D4 build.

Two audits per off/2x/4x mode, three browser crossover AB/BA pairs per audit,
two rounds per pair, 80 warmup and 100 measured rotating frames at 640x360,
three helpers plus caller, BMW/T-80, resolve/readback per frame. All 18 planned
comparisons complete. Nineteen guarded attempts are retained: off audit 2 pair 1
first fails with Codex CPU activity 0.23744 cores; its second attempt passes.
Every other pair passes on its first attempt. The guard threshold remains .10
cores. Negative relative frame-time change is faster.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | -0.412175% | +0.258824% | 4/2 |
| bmw | 2 | -0.295384% | -0.338782% | 3/3 |
| bmw | 4 | +0.000063% | -1.213446% | 5/1 |
| tank | 0 | +0.600801% | +0.734658% | 0/6 |
| tank | 2 | -0.541574% | +0.366792% | 2/4 |
| tank | 4 | +0.332179% | +1.026990% | 3/3 |

## Reproduction

```sh
python3 experiments/packet-channel-shuffle/verify_artifacts.py
python3 experiments/packet-channel-shuffle/reproduce-candidate.py --prepare-only
python3 experiments/packet-channel-shuffle/reproduce-candidate.py --work build/diagnostics/packet-channel-shuffle-fresh
```

The fresh source-reconstruction recipe was executed with --prepare-only and
all three changed-source hashes match. recipe-check/ retains the actual receipt.
The fresh producer/full-gate branch is provided, not executed; the original
candidate producer, complete gates and all 18 comparisons above were executed.
Full reproduction needs the baseline Git revision, Emscripten 3.1.69, matching
local canonical WASM case catalog, frozen D4 build/model packs, Linux OSMesa,
CMake/C compiler and Playwright/Chromium. Defaults use existing local baseline
build inputs; the recorded commands expose these prerequisites. Other toolchains
and paths may change identities. Generated files remain below build/; source,
modules served on 8000 and model assets are not overwritten. Binaries are excluded.

The archive verifier checks source reconstruction, artifact/fixture/log hashes,
complete recorded gates, opcode-site arithmetic and all 18 paired observations.
It does not rerun rendering or establish hardware performance ceilings.
[next-research.md](next-research.md) examines exact consumed-channel dependencies;
that follow-up is an unbuilt hypothesis, not an adopted optimization.
