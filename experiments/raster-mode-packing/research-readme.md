# Static raster modes with within-triangle off pixel packing

Decision: **rejected**. BMW off improves in both audits (-2.550282%/-1.815799%, all six pairs), but BMW 4x regresses +0.662328%/+0.332874% with all six pairs slower. BMW 2x does not repeat direction. T-80 off also regresses in all six pairs (+2.115775%/+0.956252%). The combined all-mode module is not adopted; unchanged MSAA source and normalized bodies do not prove a physical cause or performance equivalence.

This independent candidate combines the [outer mode split](../raster-mode-entry/README.md)
with [exact off pixel packing](../off-pixel-packing/README.md), starting from
accepted D4. The earlier modules were both rejected; their timings do not
predict this combined module. The earlier lane diagnostic measured only
48.672125% live packet shader lanes for BMW off, motivating the packing.

`SG_RASTER_SAMPLES` generates separate off, 2x and 4x outer entries, selected
before triangle setup. Only the off normal/capture bodies contain pending
pixel state and the packed shader route. Sparse depth-eligible pixels retain
original edges, depth and destination coordinates; packets never cross a
triangle, draw state or worker stripe. Dense quads with no pending pixels keep
the original direct shader route. Defined masked SIMD lanes handle the last
one to three pixels. All writes retain the original post-depth or full fallback
writer. Prepared geometry, original interpolation, sample predicates,
shaders, stores, query behavior and worker ownership remain unchanged.
No new threads, atomics, texture formats or GL API states are added.

## Repeated comparisons

All eighteen fixed comparisons run against frozen D4: two audits x three
AB/BA pairs x off/2x/4x, both BMW and T-80, two rounds per pair, 80 warm-up
and 100 measured rotating frames at 640x360, three helpers plus caller, and
resolve/readback each frame. All actual guard attempts and per-round times
are retained. Negative time changes are faster; each audit value is the
geometric mean of its three paired ratios. These observations do not establish
a hardware ceiling or statistical equivalence.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | -2.550282% | -1.815799% | 6/0 |
| bmw | 2 | -0.674201% | +0.627967% | 4/2 |
| bmw | 4 | +0.662328% | +0.332874% | 0/6 |
| tank | 0 | +2.115775% | +0.956252% | 0/6 |
| tank | 2 | -1.294941% | -0.127925% | 4/2 |
| tank | 4 | -0.320824% | -1.432977% | 4/2 |

## Actual compilation

All twenty library translation units are freshly compiled. Nineteen match D4
byte for byte; only rasterizer.c.o changes. The module links 259 bound inputs.
The actual dispatcher calls exactly the three specialized entries, each MSAA
entry calls only matching normal/capture routines, and off calls no MSAA routine.
The four inner MSAA bodies match D4 after normalization of only numeric
function declaration/direct call/ref.func labels. Both outer MSAA entries and
all four inner bodies also match the prior split candidate under that same
normalization. Selected WAT, symbol maps, opcode counts and verifiers are supplied.

| Candidate function | Body bytes | Declared v128 locals |
|---|---|---|
| sg_raster_triangle_tile_prepared | 77 | 0 |
| sg_raster_triangle_off_prepared | 41856 | 31 |
| sg_raster_triangle_depth_capture | 42422 | 31 |
| sg_raster_triangle_samples2_prepared | 822 | 9 |
| sg_raster_triangle_samples4_prepared | 822 | 9 |

D4's common outer body is 22877 bytes with 31 declared v128 locals. The prior
split off body is 22710 bytes; the combined off body is 41856 bytes. Retaining
both direct and packed shading duplicates substantial inline code. These are
static WASM observations; they do not prove native V8 register allocation,
spills, cache traffic, instruction cost or the cause of any timing change.
Matching MSAA function text alone does not guarantee matching frame performance.

## Fidelity and reproduction

Full gates pass: 745 native tests plus Bench 1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images at unchanged tolerances, 234 exact
control images per sample mode, 100 matching dual full-frame hashes and four
byte-exact raw frames per model/mode. Edge observers verify 4480 frames,
62251008 sample masks and 12431040 coefficient lanes. Native/WASM sampler,
shader, post-depth/DOT3/query, replay/queue, index and quantization outputs
are retained. No new native warning lines relative to D4 are reported.

The adapted original-route oracle runs 12288 exact raster pairs per engine,
checking color/depth/stencil/query/capture, all three tails and packet reductions.
Native reports 4608 reduced cases and 158713/187691 candidate/reference packets;
WASM reports 4752 and 158965/189023. Both count 621146 live pixels. The original
route is compiled in the test-only object with `SG_RASTER_SAMPLES=0` and
`SG_OFF_PACKET_REFERENCE=1`; the normal timing module has no test counters or
reference entries. Each engine requires exact candidate/reference output and
its own packet invariants, rather than equal cross-engine packet partitions.
The difference's cause is not established. Tests cover their stated cases;
they are not an exhaustive proof of every OpenGL state.

```sh
python3 experiments/raster-mode-packing/verify_artifacts.py
python3 experiments/raster-mode-packing/reproduce-candidate.py --prepare-only
python3 experiments/raster-mode-packing/reproduce-candidate.py --work build/diagnostics/raster-packing-repeat
```

The retained-evidence verifier checks checksum closure, independent source
reconstruction, full receipts, actual static mode isolation and all eighteen
raw pairs and guard attempts. It does not authenticate observations or freshly
execute rendering tests. Prepare-only was executed and its receipt is retained;
the supplied full fresh branch was not executed. The original producer, all
fidelity gates and comparisons were executed. Fresh builds require the matching
canonical 259-input catalog/frozen D4 reference, prepared BMW pack, Emscripten
3.1.69, CMake/OSMesa and Node/Playwright/Chromium. Paths/toolchains may change
module identity; do not silently substitute another reference. Original
comparison recipes are supplied separately for repeating the fixed protocol
following fresh gates. Generated output stays below build/; binaries/build trees
are excluded from publication. The research goal remains open.

Research baseline `dcf7de14aa233621e6739db1d8175fc08bc51a5a`; reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; candidate `8c5e52bc233a92e0ac772c7e2895a65afcc88362c49ec06bbf10cce7f54d1ae3`.
