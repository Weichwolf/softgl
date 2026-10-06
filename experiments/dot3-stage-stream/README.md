# Immediate consumption of classified DOT3 texture stages

Rejected as a common all-mode implementation. BMW off and 2x audit means
improve, but BMW 4x is slower in all six pairs (+0.852%/+1.358%). T-80 4x
also regresses (+0.614%/+1.446%). Keep accepted D4 source, module, compact
benchmark report and live viewer. No mode-restricted derivative is built.

## Isolated scheduling mechanism

The original packet shader samples units in a runtime loop into tex[4][4],
then evaluates DOT3 and the remaining combiner stages. The candidate reuses
a four-vector result block. It samples unit0 and immediately calculates DOT3;
it then consumes unit2 for kinds1/2, and finally samples/adds unit3 for kind1.
Kind3 retains its self-modulation. Constant unit indices replace the dynamic
loop. Masked-unit defaults remain for synthetic prepared contexts.

All original full-RGBA sampler bodies are byte-identical at source level:
prior-review/review.json binds their unchanged prefix and the scoped historical
search. There is no per-channel runtime flag or imported alpha-elision patch.
The ordered DOT3 sum, intermediate clamps, alpha results, targets/constant
fallbacks, gathers, texture storage/lifetime, geometry, depth/MSAA ordering,
threads and atomics remain unchanged. Only libsoftgl/src/frag_packet.h changes;
existing independent scalar/image/model contracts validate the scheduling change.

## Actual producer and static observations

All 20 library units are freshly compiled. Nineteen match D4 exactly; only
rasterizer.c.o differs. Source hashes, objects, all 259 link inputs, commands
and actual JS/WASM module identities are retained. All six bound raster roots
grow by 6903–7296 WASM bytes. Their declared SIMD locals change from
31/31/27/27/35/35 to 33/33/28/28/36/36. Twelve other inspected root bodies
remain exact. The three inline sampler call sites duplicate filtering code.

The source-level sample table shrinks from 16 to 4 SIMD vectors (256 to 64
bytes). That does not prove less physical scratch memory or lower register
pressure. Declared locals, body bytes and whole-root opcode-site counts are
static observations, not V8 machine instructions, spills, dynamic execution,
cache behavior or a hardware ceiling. They do not establish the cause of the
4x regressions. Bound whole-root WAT and symbol maps are retained; full-module
WAT, binaries and private downloaded paper/text are excluded.

## Complete fidelity and repeated measurements

744 native tests + Bench 1, 24 ASan/UBSan/leak contracts, 23 WASM contracts,
240 unchanged-tolerance Mesa comparisons and 234 exact test images per sample
mode pass. BMW/T-80 each match 100 dual hashes and four complete byte frames
in off/2x/4x. The existing independent scalar contracts pass 331,447 sampler
and 128,054 shader comparisons on native and WASM, including all three chains,
constant textures and cube/1D/3D targets. Edge checks pass 4480 frames,
62,251,008 sample masks and 12,431,040 coefficient lanes. Direct receipts bind
post-depth stores, DOT3 queries, replay/queue states and unsigned index ranges.
No new native warning line relative to the published D4 warning list.

Two audits per off/2x/4x mode, three crossover AB/BA pairs per audit, two rounds
per pair, 80 warmup and 100 measured rotating frames at 640x360, three helpers
plus caller, resolve/readback every frame. All 18 planned comparisons finish,
all on the first quiet-guard attempt. The threshold stays 0.10 foreign CPU
cores; the guard cannot prove absence of unobservable Windows host load.
Negative change is faster. Below are geometric means of all three raw paired
ratios per audit, recomputed by analyze-timings.py. The original driver also
retains its separately defined median summaries.

| Scene | Samples | Audit 1 | Audit 2 | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | -0.903665% | -0.259871% | 4/2 |
| bmw | 2 | -0.618990% | -0.513350% | 4/2 |
| bmw | 4 | +0.851905% | +1.357588% | 0/6 |
| tank | 0 | -0.077138% | -0.800092% | 3/3 |
| tank | 2 | +2.149503% | -1.960685% | 3/3 |
| tank | 4 | +0.614403% | +1.446300% | 1/5 |

## Reproduction

```sh
python3 experiments/dot3-stage-stream/verify_artifacts.py
python3 experiments/dot3-stage-stream/reproduce-candidate.py --prepare-only
python3 experiments/dot3-stage-stream/reproduce-candidate.py --work build/diagnostics/dot3-stage-stream-fresh
```

Source reconstruction was executed with --prepare-only and the changed-source
hash matches; recipe-check/ retains the actual receipt. The fresh producer/
full-gate branch is provided, not executed. The original isolated producer,
complete gates and all 18 comparisons above were executed. Full reproduction
requires the recorded baseline Git revision, Emscripten 3.1.69, matching local
canonical WASM case catalog, frozen D4 build/model packs, Linux OSMesa,
CMake/C compiler and Playwright/Chromium. Scripts expose these prerequisites;
other paths/toolchains can change identities. Generated files stay below build/.

The verifier checks source reconstruction, artifact/fixture/log hashes, recorded
complete gates, bound static sites and all 18 guarded observations. It does not
rerun rendering or establish a performance ceiling. The
[next research note](next-research.md) proposes an occupancy diagnostic before
any fragment-packing architecture; no such diagnostic/optimization is built.
Primary-source URLs and private download/parser identities are recorded in
prior-review/external-review.json. An initial PDF helper lacked pdftotext;
a local build/ Python dependency later reads the eight-page paper. This document
lookup has no effect on the renderer's successful gates or sealed timings.
