# Fixed buckets for ordered packed vertex capacity

Rejected. BMW frame time improves only 0.109294%/0.287741% without MSAA (4 faster, 2 slower pairs). With 2x (-0.734032%/+0.770604%) and 4x (+0.472395%/-0.677353%), audit directions disagree; faster/slower pairs are 3/3 and 4/2. There is no clear reproducible BMW benefit across modes. T-80 off and 2x are mixed; 4x improves 1.574877%/2.118746% (5 faster, 1 slower pair), while its large packed allocation path is unchanged. The cause of that gain is unproven. All correctness gates pass. All 18 comparisons have accepted quiet guards: 17 on the first attempt, the last on the second. Its first attempt was rejected for Codex CPU activity and remains archived. Keep accepted D4/live unchanged.

Research baseline `8cdb7d59845d209c4083d29cb561838c4c530b99`; accepted reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`, candidate `6a2c4230c9ee55c04591a849715a1d818e3777fe4f457f5c487071d6d8974368`.

## Hypothesis and implementation

D4 rounds each ordered packed vertex buffer to a power of two. This trial uses
fixed 64-KiB buckets to reduce unused reservation within the same shared 2-MiB
ordered queue vertex budget. For eligible packed payloads (at least 1024 vertices,
at least 48 bytes each), the candidate never reserves more than D4 and leaves
less than 64 KiB unused per slot. Four slots leave less than 256 KiB total bucket
slack. These are allocation-capacity bounds, not measured physical memory traffic,
cache residency or total process memory. 64 KiB is a single predeclared candidate
parameter; no bucket sweep and no hardware/page-size performance claim.

Only the ordered queue allocation calculation changes. Packed fields, float
arithmetic, transformed/clipped geometry, raw ownership swaps, large packed
T-80 path, locking, pending-slot protection, idle reclamation, draw order and
fallbacks are preserved. No early geometry-stage packing is reintroduced; no
new arena, worker, atomic or producer-side storage is added. Smaller reservations
may reduce budget pressure, but extra bucket transitions may cause more allocator
calls. Timings cannot establish either cause without further diagnostics.

All twenty WASM library units were freshly compiled. Nineteen match accepted D4
byte for byte; only workers.c.o differs. 259 linker inputs and all source/object/
module identities are bound in validation.json and producer-commands.json.
The test-only ordered_capacity fixture embeds actual workers.c, intercepts
allocation failures only there, and preserves the WASM incoming main macro.
It checks every positive capacity need up to 2 MiB, plus 63 actual queue cases
across 0/2/4 samples, three recognized DOT3 layouts and seven vertex counts.
Those cases check allocation failure, exact transformed and appended clipping
fields, repeated slot reuse and aggregate vertex budgets. Empty test bins isolate
reservation and payload ownership; the included real threaded queue/eager oracle
independently checks rendering, state transitions, source lifetime, clipping and
all sample planes with 1/3/8 workers. Production modules have no test hooks.

The first preflight selection ran five passing contracts, including the new
fixture and its embedded threaded oracle. Its regex omitted the separate queue
target even though the build included it. A supplementary one-test queue run
passed; the final preflight recipe correctly selects six. Both original recipe
and actual logs are retained. The new test also emitted a signedness warning in a vertex-capacity check.
An explicit size_t cast resolves it; no runtime source, arithmetic or producer
module changes. Complete original gates, fixture, patch and identities are
retained under fixture-before-size-cast/. After correction the complete native
745 and sanitizer 25 suites pass again and the changed WASM fixture is rebuilt
and rerun. The other 23 WASM and all image/model/edge receipts remain bound to
the byte-identical producer; their source fixtures are unchanged.

## Comparisons

Two audits per off/2x/4x mode, three AB/BA browser crossover pairs per audit,
two rounds per pair, 80 warmup and 100 rotating measured frames at 640x360,
three helpers plus caller, BMW/T-80, resolve/readback each frame. All 18 fixed
pairs compare frozen D4. The quiet guard's foreign CPU threshold remains .10
cores and every attempted run is retained. Negative frame-time change is faster.

| Scene | Samples | Audit 1 | Audit 2 | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | -0.109294% | -0.287741% | 4/2 |
| bmw | 2 | -0.734032% | +0.770604% | 3/3 |
| bmw | 4 | +0.472395% | -0.677353% | 4/2 |
| tank | 0 | -0.277597% | +0.407321% | 4/2 |
| tank | 2 | -1.925351% | +2.252137% | 3/3 |
| tank | 4 | -1.574877% | -2.118746% | 5/1 |

## Fidelity and reproduction

Before timing, 745 native tests plus Bench 1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images, 234 exact test controls per mode,
100 equal dual frame hashes and four byte-exact representative frames per
model/mode pass. Edge observers check 4480 frames, 62,251,008 masks and 12,431,040
coefficient lanes. Direct stdout retains post-depth store, DOT3 query, RGBA
quantization, unsigned index range and depth replay checks. Pixel tolerances
are unchanged. Native image references use Linux OSMesa/llvmpipe.

```sh
python3 experiments/ordered-packed-capacity/verify_artifacts.py
python3 experiments/ordered-packed-capacity/reproduce-candidate.py
```

The verifier checks retained evidence closure, source reconstruction, full gate
receipts and arithmetic of all 18 paired records. It does not rerun browsers,
authenticate observations or establish a hardware ceiling. The fresh source /
WASM build / native regression recipe is provided but was not executed for
this archive. Actual original producer, full correctness gates and paired
comparisons were executed. Original drivers retain staging paths; adapt those
for a fresh run. Rebuilds need Emscripten, CMake/OSMesa and the bound BMW pack;
paths/toolchains can alter binary identities. Repeat complete WASM fidelity
and all-mode paired measurements before adopting a fresh build. Generated
binaries and build directories are excluded. All temporary output stays in build/.

The separate [next-research note](next-research.md) records primary sources and
an exact tiled-texture hypothesis. It is a proposal, not a measured improvement.
