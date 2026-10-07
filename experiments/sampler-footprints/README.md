# Actual sampler footprints

**Diagnostic complete; no renderer change or measured speedup.** All 600
paired-angle aggregate key tables, counters and coordinate fingerprints repeat
exactly; all 1200 rendered frame hashes match accepted D4. A padded row-major
4x4 layout touches fewer logical groups than row order or Y8 in these scenes.
It also loses many existing full-packet horizontal pair loads. These findings
justify an isolated storage experiment, not a cache-traffic or FPS claim.

## Results

Two fixed audits: MSAA off/2x/4x then 4x/2x/off; BMW/T-80 then T-80/BMW.
Each model has 80 warm-up and 100 rotating frames at 640x360, three helper
workers plus the caller, with resolve/readback each frame. Six accepted guard
runs use the unchanged 0.10 foreign-core threshold. Audit 2, 4x had a
contaminated first attempt; its raw capture, monitor and log remain in runs/.
The other five accepted commands pass on attempt 1. No result is selected by
FPS. Counter-instrumented timings are not acceptance timings.

Logical groups mean level-relative 16 RGBA8 texels (64 bytes), with level
origin zero. Means below count groups separately within each live bilinear
footprint; shared groups across lanes, packets or frames are not deduplicated.
All actually fetched model samples here use linear filtering. Requests also
include constant elisions, which fetch no texels and have no footprint.

| Scene | MSAA | Requests/frame | Fetched footprints/frame | Row groups/sample | 4x4 groups/sample | Y8 groups/sample | Original pair samples/linear | 4x4 retained pair potential/linear |
|---|---|---|---|---|---|---|---|---|
| bmw | 0 | 380762.21 | 137444.84 | 2.251783 | 1.745277 | 1.867940 | 27.572% | 14.603% |
| tank | 0 | 94021.73 | 94021.73 | 2.120882 | 1.556272 | 1.681172 | 0.000% | 0.000% |
| bmw | 2 | 525636.02 | 191459.81 | 2.252407 | 1.745352 | 1.867720 | 67.348% | 29.959% |
| tank | 2 | 116662.64 | 116662.64 | 2.121915 | 1.554806 | 1.679612 | 86.678% | 29.469% |
| bmw | 4 | 660131.57 | 241849.81 | 2.253380 | 1.745062 | 1.867285 | 67.514% | 29.717% |
| tank | 4 | 137666.50 | 137666.50 | 2.121922 | 1.553931 | 1.678885 | 87.180% | 30.013% |

The pair columns count samples in actual complete four-lane packets passing
the existing horizontal adjacency guard. The 4x4 column further requires that
all four pairs remain within their tile. It describes potential eligibility
under the same guard, not loads emitted by an implemented tiled sampler.
T-80 off uses quad/hot scalar routes, so its original packet-pair count is
zero even though about 75% of its individual footprints have horizontally
adjacent texels inside a 4x4 tile.

BMW off fetches 35,371.87 direct 2D and 102,072.97 cube-face footprints/frame;
243,317.37 additional requests are constant packet elisions. Its direct 2D
row/4x4/Y8 means are 2.657503/2.300452/2.412574; cube-face means are
2.111186/1.552889/1.679204. In 2x/4x, direct 2D fetches rise to
50,104.67/63,856.07 per frame and cube-face fetches to
141,355.14/177,993.74. T-80 uses direct 2D only, with actual dimensions
256x512, 512x256 and 512x512. BMW's fetched textures include repeat-wrapped
2D levels and clamp-to-edge 128x128 cube faces. Full path, dimension, filter,
wrap, per-frame range and private thread tables are retained in analysis.json
and the raw captures.

## Implementation, coverage and independent checks

The private patch adds hooks after original wrapping/address formation and
before original texel loads. Packet float/integer, coherent cube-face packet,
legacy quad, hot scalar float/integer and generic scalar 2D/cube paths retain
their original fetches and all filtering/combiner arithmetic. Valid 1D/3D
sampler calls and cached constant packet/scalar elisions have separate counts
but no 2D footprint. Early missing-data/white returns perform no actual texel
fetch and are outside counter coverage. The current sampler uses level zero;
this diagnostic does not add mip selection. Cube faces share dimension/path
keys; face identity and data pointer are not keys. 3D wrap-R is outside scope.

SG_SAMPLER_FOOTPRINTS_DIAG=1 reserves an aligned 256x64x64 uint64 table,
8 MiB BSS, with private TLS lifetime slots. One atomic slot claim occurs per
participating thread lifetime; ordinary sample updates use its private rows.
Only invalid/capacity paths set sticky shared flags. Counter overflow, invalid
records, exhausted keys or lifetime slots reject observations. Reads/resets
happen after joined rendering via read_rgba8. Reset preserves lifetime slots
and sticky flags. Keys preserve path, exact width/height/depth, filter and
wrap-S/T. The source size is not measured physical residency or traffic.

The schema records requests, nearest/linear calls, actual pair eligibility,
collapsed axes, logical row/4x4/Y8 group sums, single-group counts, potential
adjacency, texel tap/unique-offset sums, and batch sizes. A commutative 32-bit
coordinate fingerprint checks repeated address populations; it is not
cryptographic authentication. A legacy quad hook counts each covered pixel as
its own diagnostic batch, so batch totals are not comparable shader counts.
The schema header and archived implementation define every cell.

The independent contract builds tile permutations by traversing padded
textures, then compares groups through sorted unique lookups. It checks odd
NPOT extents, seams, repeat/clamp, masks 1..15, dead lanes, nearest calls with
only one allocated address row, collapsed footprints and tile boundaries.
Four producers make 294,912 exact parallel sample records over sixteen joined
read/reset cycles. Explicit key, uint64, invalid-mask and lifetime-thread
exhaustion checks pass natively, under ASan/UBSan/leak detection and in WASM.

Before observation: 745 native tests plus Bench1, 25 sanitizer contracts,
24 WASM contracts, 240 WASM/Mesa images with unchanged tolerances, 234 exact
image controls per MSAA mode, 100 dual full-frame hashes and four byte-exact
raw frames per model/mode all pass. Edge oracles retain 4480 frames,
62,251,008 sample masks and 12,431,040 coefficient lanes. Native validation
uses Linux OSMesa through the checked-in CMake harness; Windows/WGL was not
run. No new warning lines relative to D4. These gates establish the tested
cases, not exhaustive OpenGL correctness.

All twenty library objects are freshly compiled twice. Disabled objects and
JS/WASM are byte-exact D4. Enabled fragment.c.o and rasterizer.c.o differ;
eighteen other objects match D4. The enabled link binds 259 inputs and three
diagnostic exports. Original/final source, source patch, producer commands,
object/module identities, symbol maps, fixtures and all actual gate logs are
retained. Source reconstruction independently matches all seven changed files.
Every observed frame independently verifies metadata, private key partitions,
aggregate arithmetic and its already gated model hash. No tolerance changes.

## Fixed next candidate and decision boundary

Choose row-major 4x4 tiles first: they have lower logical group counts than
both alternatives in every model/mode and avoid Y8's vertical-pair redesign.
Restrict the first candidate to RGBA8 direct 2D, power-of-two extents at least
4x4, retain original row-order storage and use it for unsupported targets,
formats, dimensions and allocation failure. Cube sampling stays on the
accepted route initially. A derived tiled copy must follow texture upload,
subimage, copy, deletion/reuse and immutable queued-state ownership boundaries;
build/update cost and additional memory must be recorded separately.

Use original wrapped coordinates and exactly the same four texels, float/
integer interpolation, rounding and combiner order. Re-prove pair eligibility
at tile/texture boundaries. BMW's direct 2D accesses are a minority of its
requests and footprints, so even improved direct 2D locality may yield little
frame benefit. T-80 MSAA loses substantial existing pair eligibility; this is a
specific regression risk. Do not infer a speedup from logical groups or tune
layouts by retaining favourable timing runs. Fully gate the fixed candidate
and then run repeated quiet AB/BA comparisons against D4 across BMW/T-80,
MSAA off/2x/4x; accept only a reproducible overall defensible gain.

## Sources

- [GLimpSW Texture.h at 2f915606](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Texture.h):
  GetTexelOffset and SampleLinear provide inspected row, TiledX4 and TiledY8
  addressing. Local clone /home/cosmo/Git/GLimpSW. Its Y8 formula is POT-only;
  this diagnostic extends it arithmetically to padded NPOT height. A 64-byte
  Y8 logical group covers two columns by eight rows, not an 8x8 texel square.
  AVX512 instructions and upstream filtering are not copied.
- [GLimpSW TexSwizzle.cpp at the same revision](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Benchmarks/TexSwizzle.cpp)
  compares address layouts; upstream measurements do not establish WASM gains.
- [Texture storage research brief](../texture-tiled-storage/README.md) and
  [prior packet-only census](../packet-lane-occupancy/README.md).
- SoftGL source frozen at d56f480247c30d970e14d079a8cafd537b43200d, preserved under
  scope-source/ and original/. The packet/quad/scalar helpers establish actual
  addresses and readback establishes the worker join boundary.

## Reproduction and archive limits

```sh
python3 experiments/sampler-footprints/verify_artifacts.py
python3 experiments/sampler-footprints/reproduce-diagnostic.py --prepare-only
python3 experiments/sampler-footprints/reproduce-diagnostic.py --work build/diagnostics/footprints-repeat --observe
```

The retained-evidence verifier checks exact checksum closure, source patch
reconstruction, source/producer/gate bindings, all attempts and accepted guard
receipts, and the 1200 frame/key/thread checks. It does not authenticate the
measurements or freshly execute renderer tests. The prepare-only recipe was
executed and its receipt retained; the full fresh branch is supplied, not
executed here. The original enabled/disabled producer, all gates and six
accepted captures were executed. Generators retain original staging assumptions;
reproduce-diagnostic.py is the current reproduction entry point.

Full reproduction needs Emscripten 3.1.69, CMake/OSMesa, Node/Playwright/
Chromium, the byte-exact frozen D4 control, the matching canonical 239-object
viewer/test catalog at build/checks/msaa-wasm, and the prepared BMW pack at
build/assets/bmw.pack. T-80 uses tracked tests/bench/tank_data/tank.pack.
Fresh builds reject changed toolchain/module identities instead of silently
accepting another baseline. Generated binaries/build directories are excluded;
identity and receipt files bind the actual original producer. Artifacts
include large raw JSON tables; results.json binds every archive file.

Accepted and live D4, packs, rendering sources and bench_report.md stay active.
No diagnostic is adopted; the research goal remains open.

Reference WASM: d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0.
Diagnostic WASM: d39664796afc6d28a9da092575dca447758f39308cba6e1c6476c87d95622c1a.
