# Fixed direct-2D 4x4 texture storage

**Rejected; not adopted.** BMW off regresses in all six paired comparisons;
BMW4 regresses in both audits. BMW2 has tiny point gains with split pair
directions, and T-80 supplies no stable compensating benefit. Full correctness
gates pass, but logical locality does not establish a renderer speedup.

## Fixed candidate and sources

The [complete sampler census](../sampler-footprints/README.md) shows fewer
level-relative logical groups for row-major 4x4 tiles than row order or Y8 in
BMW/T-80. It also predicts losing many existing full-packet horizontal pairs.
Those observations selected this one fixed candidate before acceptance timing.
The counters do not measure cache misses, traffic or attainable frame speed.

Inspired by the inspected [GLimpSW GetTexelOffset and SampleLinear](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Texture.h)
and [TexSwizzle benchmark](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Benchmarks/TexSwizzle.cpp),
revision 2f915606d50b70fef8859ef29adc9d53f9aee887, cloned locally at
/home/cosmo/Git/GLimpSW. No AVX512 instructions or upstream filter arithmetic
are copied. The [original storage brief](../texture-tiled-storage/README.md)
states the hypothesis and initial boundary.

SG_TEXTURE_TILES4=1 adds a derived, 64-byte-aligned row-major 4x4 copy for
RGBA8 direct-2D POT extents at least 4x4, with texel count <= INT32_MAX.
Wrapped (x,y) maps to (y & ~3)*width + (x & ~3)*4 + (y & 3)*4 + (x & 3).
Original row-order data stays available. Unsupported sizes, cube/1D/3D paths
and optional-copy allocation failure use original storage. Source pixel
formats/types still use the original RGBA8 expansion first; the backend stores
all accepted uploads as RGBA8. Every eligible mip level receives a derived
copy even though the current renderer samples level zero. Tiny mip levels fall
back. No new mip selection or filtering policy is introduced.

Prepared direct-2D data0 selects the derived buffer with an explicit layout
flag. Packet float/integer, legacy quad, hot scalar float/integer and generic
scalar 2D samplers share original wrapped coordinates and all four original
texels. Only offsets change. Packet pairs are re-proven adjacent using the
transformed X offsets; tile boundaries and wrap/clamp seams reject a pair when
necessary. Coherent cube face views explicitly clear the layout flag.
Float/integer interpolation, rounding, combiner, geometry, coverage/depth,
stores and resolve expressions remain unchanged. No new threads or atomics.

## Lifetime and memory/update costs

Existing worker joins precede changes. Uploads, subimages, framebuffer copies,
retargeted row/cube definitions and deletion invalidate old derived copies;
eligible 2D updates rebuild them after original data changes. Destruction frees
all copies. Draw jobs copy additional texture pointers and the prepared flag
with the original immutable metadata. An allocation failure keeps the original
row buffer and causes no new GL error. The failure contract injects NULL into
the same optional-copy allocator interface, rather than exhausting a real GL
context's entire heap.

Each eligible level adds exactly width*height*4 bytes: 100% additional texel
storage for that level, with no padding for supported POT dimensions. Each
texture adds sixteen pointers, including levels whose derived pointers are
NULL. In actual Emscripten wasm32, texture metadata grows from 1444 to 1508
bytes and prepared unit metadata from 76 to 80 bytes. Vertex size/alignment
remain 160/16 bytes. Compiler declarations and hashes are retained in
type-sizes.json and the two small LLVM probes; they describe type sizes,
not physical cache residency or measured traffic.

A separate fixed Linux-native API-only diagnostic measures uploads and copies;
it does not predict browser frame time or establish WASM update costs. Six
groups alternate AB/BA order with four warm-up and forty measured calls per
operation/dimension, no workers. All twelve binary runs pass one unchanged
quiet guard on attempt1. Each API path retains its actual allocation/free and
copy work; allocator effects are not isolated. Tiny row-order 4x4 updates are
near timer/measurement limits, so their large ratios are less useful than the
absolute extra milliseconds. Medians across six runs per variant:

| Size | Operation | Row ms/update | Tile ms/update | Extra ms/update |
|---|---|---|---|---|
| 128x128 | copyimage | 0.035142425 | 0.037697438 | +0.002555013 |
| 128x128 | copysubimage4x4 | 0.000080000 | 0.002323737 | +0.002243737 |
| 128x128 | image | 0.022631213 | 0.025064950 | +0.002433737 |
| 128x128 | subimage4x4 | 0.000055000 | 0.002283750 | +0.002228751 |
| 256x256 | copyimage | 0.120386024 | 0.129448500 | +0.009062475 |
| 256x256 | copysubimage4x4 | 0.000082500 | 0.008481237 | +0.008398737 |
| 256x256 | image | 0.081066100 | 0.224182063 | +0.143115963 |
| 256x256 | subimage4x4 | 0.000055000 | 0.008462488 | +0.008407488 |
| 512x256 | copyimage | 0.230589575 | 0.256212013 | +0.025622438 |
| 512x256 | copysubimage4x4 | 0.000082500 | 0.019308700 | +0.019226200 |
| 512x256 | image | 0.161652200 | 0.513701525 | +0.352049325 |
| 512x256 | subimage4x4 | 0.000058750 | 0.018789975 | +0.018731224 |
| 512x512 | copyimage | 0.480369088 | 0.553580188 | +0.073211100 |
| 512x512 | copysubimage4x4 | 0.000084999 | 0.069312374 | +0.069227375 |
| 512x512 | image | 0.328995624 | 1.098637913 | +0.769642288 |
| 512x512 | subimage4x4 | 0.000057500 | 0.068552376 | +0.068494876 |
| 1024x512 | copyimage | 0.946816950 | 1.125941612 | +0.179124662 |
| 1024x512 | copysubimage4x4 | 0.000083749 | 0.144955975 | +0.144872226 |
| 1024x512 | image | 0.657297487 | 2.316404349 | +1.659106862 |
| 1024x512 | subimage4x4 | 0.000057500 | 0.146028476 | +0.145970976 |

Native metadata bytes (measured sizeof): texture 1896 -> 2024; prepared unit 88 -> 96. Raw costs, fixed ordering, source/library/binary identities and guard attempts are retained.

## Correctness and producer evidence

An independent traversal constructs expected tile order without the production
address helper. 8912 exact addresses and 233472 packet/scalar/hot comparisons
cover POT dimensions 4..128, all supported wrap modes for nearest/float
linear and the actual integer REPEAT paths, masks 1..15, dead lanes, tile phases, texture ends,
seams and repeated/clamped texels. Unsupported dimensions and failed optional
allocation retain fallback. The new contract passes natively, under
ASan/UBSan/leak detection, and in WASM.

For each MSAA mode, seven queued mutation frame states compare exact full-buffer hashes
of resolved color, depth/stencil and sample planes against row-order sampling
and eager draining with the same three helpers. They exercise crossing-tile RGB
subimages, float conversion, framebuffer image/subimage copies, NPOT fallback,
mip storage, deletion/reuse, retargeting and destruction with pending draws.
The row oracle temporarily selects original data when preparing draws; it
restores the owned derived pointer before mutation or cleanup. This verifies
pixel ordering and lifetime as well as the independent layout/value checks.

Before timing: 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images at unchanged tolerances, 234 exact
image controls in each MSAA mode, and 100 matching dual full-frame hashes plus
four byte-exact raw frames per model/mode all pass. Edge oracles retain 4480
frames, 62251008 exact sample masks and 12431040 coefficient lanes. The native
CMake harness uses Linux OSMesa; Windows/WGL was not run. These gates cover
those cases, not exhaustive OpenGL correctness. No new warning lines relative
to D4. Six existing case warning lines remain in the incremental full build.

All twenty enabled and all twenty disabled library objects are freshly compiled.
Disabled objects and JS/WASM are byte-exact D4. Enabled fragment.c.o,
rasterizer.c.o, state.c.o, texture.c.o and workers.c.o differ; the other fifteen
match. Native/WASM paths retain their SIMD backends and vertex alignment.
The actual enabled link binds 259 inputs. Source patch, ten final changed files,
full source/producer identities, actual commands, logs, fixtures, module hashes
and symbol maps are archived. Independent reconstruction matches all ten files.

The initial new contract missed frag_combine_hot.h, required by the existing
packet header, and failed compilation. Adding that include corrected the test;
no renderer or timed module changed. Initial fixture, failed build/run logs,
corrected fixture and successful retry outputs are retained. No failed rendering
comparison or successful benchmark capture was discarded to obtain a result.

## All fixed frame comparisons and decision

Two audits per mode, three independent pairs per audit: eighteen accepted quiet
comparisons, each with two page-crossover AB/BA rounds, 80 warm-up and 100
rotating frames/model at 640x360, three helpers plus caller, resolve/readback
per frame, unchanged 0.10 foreign-core guard. Both audits include BMW and T-80.
All monitors, raw attempts and final results are retained; input bindings cover
the actual scripts, modules and prepared model packs. No parameter sweep or
selective confirmation. Times measure the uninstrumented renderer candidate.

| Scene | MSAA | Audit1 frame-time change | Audit2 frame-time change | Faster/slower pairs | Pair change range |
|---|---|---|---|---|---|
| bmw | 0 | +0.861504% | +1.119110% | 0/6 | +0.197914% .. +2.109739% |
| bmw | 2 | -0.134974% | -0.179854% | 3/3 | -0.949659% .. +0.295807% |
| bmw | 4 | +1.351119% | +0.087361% | 2/4 | -1.031974% .. +2.055689% |
| tank | 0 | +1.027738% | +0.936833% | 1/5 | -0.248225% .. +2.051469% |
| tank | 2 | +0.380685% | -1.553774% | 4/2 | -2.435103% .. +1.728322% |
| tank | 4 | +1.682227% | -0.854054% | 3/3 | -2.657488% .. +4.076737% |

Each audit change is the geometric mean of its three pair ratios minus one;
negative means shorter frame time. Faster/slower counts use all six pairs in
that mode. Pair ranges and audit disagreement describe measurement variation;
no confidence interval or proof of a global optimum is claimed. Upload/copy
microbenchmark times do not enter these frame ratios.

All eighteen comparisons pass the unchanged quiet guard on their first
attempt. BMW off changes +0.861504/+1.119110% across the two audits with
0/6 faster pairs. BMW4 changes +1.351119/+0.087361%; BMW2 changes only
-0.134974/-0.179854%, with 3/3 pair directions and a range spanning zero.
Together with T-80 off regressions, doubled eligible texel storage and measured
update costs, this fails the predeclared overall gain rule. Keep accepted D4;
reject this fixed variant. A tiling family is not disproven, and no global
limit or impossibility of further optimization follows. The reduced logical
group counts are a workload property, not demonstrated cache savings.

## Reproduction and limits

```sh
python3 experiments/texture-tiles4/verify_artifacts.py
python3 experiments/texture-tiles4/reproduce-candidate.py --prepare-only
python3 experiments/texture-tiles4/reproduce-candidate.py --work build/diagnostics/tiles-repeat --timings --update-costs
```

The retained-evidence verifier checks checksum closure, independent source
reconstruction, actual source/producer/gate bindings, all eighteen comparisons and
all twelve native mutation runs with accepted quiet guards. It recomputes analyses
from raw evidence. It does not authenticate measurements or freshly execute
renderer tests. Prepare-only was executed and its receipt retained. The full
fresh branch is supplied, not executed here. The original disabled/enabled
producer, all gates, frame comparisons and separate mutation diagnostic were
executed. Original staging generators expect a fresh source snapshot; the
source patch reproduction script is the current entry point.

Full fresh reproduction needs Emscripten 3.1.69, CMake/OSMesa, GCC 14.2,
Node/Playwright/Chromium, the byte-exact frozen D4 control, the matching
canonical 239-object viewer/test catalog under build/checks/msaa-wasm and the
prepared BMW pack under build/assets/bmw.pack. T-80 uses the tracked tank.pack.
Different toolchains/paths can change identities; the disabled producer
requires byte-exact D4. The recipe writes new work/control directories below
build/, fully gates the new producer and optionally runs comparisons followed
by the separate native update diagnostic. Binaries and build trees are
excluded; receipt/identity files bind the original actual producer.

Accepted/live rendering sources, prepared packs and bench_report.md remain
unchanged. Research baseline d4a81c2c3bab1b24a9cfb4f17fb464ebbe3c7e1e;
reference WASM d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0;
candidate WASM 835142d736e0bc6b0a81cb07529664fa95b8f9ade38e23dddb5e8af5cad4913c.
The optimization goal remains open.
