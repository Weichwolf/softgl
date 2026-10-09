# SIMD128 transposition of winning triangle attributes

Status: not adopted; exact native/WASM helpers, full native confirmation complete.

The current material shader separately gathers each primary-color, encoded
half-vector and texture-coordinate component from four winning triangles.
Load each complete aligned vec4 record once, transpose four lanes into four
components and retain the exact original interpolation operation grouping.
The record layout, pointers, captured samples, textures, shading/material math
and assets remain unchanged. No extra texture or geometry cache is allocated.
This is an original SIMD128 load/transpose experiment. It does not establish
a useful overall renderer gain.

Freeze `17cd36e`, whose engine matches accepted `6e5ed5c`. Variant `all` includes
primary color, encoded half-vector and two-/three-component texture coordinates;
`primary` isolates color/half-vector loading. This is distinct from the rejected
historical SIMD512 hardware-gather backend and retains mandatory native SSE4.1
and actual WASM SIMD128. Canonical UV sharing and constant-texture skips remain.

Sources: our [current winning-attribute shader](../../libsoftgl/src/scene_visibility.c),
[current hardware profiles](../scene-alpha-plane/README.md),
[SIMD abstraction](../../libsoftgl/src/simd.h) and
[record alignment](../../libsoftgl/src/types.h). The existing production gather
and exact triangle layout are separately frozen as numeric references.

Compare all four unchanged packs/cameras at 640×360, caller plus three workers,
real OFF/2×/4× frame completion/resolve/readback. Start with independent numeric
checks, sample-plane fixtures and full exported model planes before native
AB/BA timing. Confirmation, sanitizers, actual WASM and live-browser gates are
required before adoption. Priority remains Bistro > Sponza > BMW F31 > T-80;
small BMW costs do not veto a confirmed double-digit complex-scene gain.

## Variants and correctness

V1 transposes complete records for all used fields. V2 additionally broadcasts
the three original vertex values when all four winning triangle pointers are
equal. Every other packet retains the transposition path. It keeps the same
interpolation grouping and does not merge triangles or shade at fewer points.
The `primary` factory option is an unmeasured isolation option, not another
tested variant.

Each native variant passes 20971520 channel-packet comparisons against the
separately frozen original production gather. Tests vary all five fields,
four channels, four lanes, random signed finite values/weights and all 256
pointer-alias patterns, including the coherent cases. Each variant also passes
six paired renderer fixtures with identical outputs and an actual no-AVX/YMM/
ZMM archive audit. Each has 108 original model/mode/view pairs with identical
RGBA/stencil hashes and byte-exact exported resolved/physical sample depth.

Both actual SIMD128 WASM numeric fixtures independently pass all 20971520
channel packets and equal native stdout. Their modules declare 65536 maximum
memory pages (4 GiB). These single-thread numeric modules do not link or
exercise the complete renderer, pthreads, asset memory or browser. No full
production CTest, sanitizer or live-browser gate is claimed for this rejected
change; the accepted production engine and live module remain unchanged.

The first native numeric fixture lacked the declaration for a pointer type in
the frozen triangle layout. Its engine targets compiled; adding an incomplete
pointer-type declaration fixed the fixture, then the complete build/tests
passed without warnings. The initial recipe and failed build log are retained.

## Timings

Screens use one AB/BA block per scene/mode. All values below are complete
frame-time changes; negative is faster, not an FPS percentage.

| Scene | V1 OFF / 2× / 4× | V2 coherent OFF / 2× / 4× |
| --- | ---: | ---: |
| Bistro | −3.64 / −0.86 / −0.29% | −1.23 / +0.31 / −0.58% |
| Sponza | −1.08 / +13.72 / −2.66% | +11.19 / −14.97 / +2.79% |

Sponza has large individual fluctuations: V1 2× candidate 36.42/48.36 ms,
V2 OFF baseline 20.02/29.75 ms and V2 2× baseline 47.88/36.10 ms. Preserve
these observations; do not choose favorable directions or infer a cause from
the software foreign-CPU guard. It cannot observe host frequency or all
hypervisor/Windows competition.

V1's consistent initial Bistro OFF screen warranted full confirmation.
Three balanced AB/BA blocks per each of twelve scene/mode combinations select
144 runs and retain four rejected foreign-CPU records. Original packs/cameras,
640×360, caller plus three workers, 60 warm and 30 measured rotating frames;
completion, resolve and observable RGBA copying remain inside the frame.

| Scene | Confirmed-series OFF | 2× | 4× |
| --- | ---: | ---: | ---: |
| Bistro | −0.14% | −0.89% | −1.65% |
| Sponza | +17.14% | −2.61% | −1.57% |
| BMW F31 | −1.09% | −0.49% | −1.39% |
| T-80 | +5.05% | −2.06% | −0.46% |

The initial Bistro OFF advantage does not reproduce. Small Bistro MSAA
differences do not compensate for the observed Sponza OFF series, and the
large Sponza variability prevents treating its MSAA differences as a confirmed
gain. No double-digit complex-scene benefit or broad gain is established.
The frozen baseline archive matches production byte-for-byte (`b36345fc…`).

Static native disassembly of V1 `scene_resolve`: symbol 8434→8387 bytes,
`movss` instructions 48→20, stack references 213→233. These counts show reduced
scalar-load instructions and more stack references, not executed counts,
removed cycles or a causal performance explanation.

[Validation](validation/artifacts.json) retains exact frozen patches, source
and library identities, original numeric references, native/WASM outputs,
all 216 paired model views and every raw timing attempt. No images or binaries
are committed. The next architectural candidates are
[precomputed shading planes](../scene-shading-planes/README.md) and
[exact MSAA grid reduction](../scene-msaa-grid-reduction/README.md); both are
unimplemented/unmeasured, not inferred gains.

```sh
python3 experiments/scene-attribute-transpose/prepare.py \
  --output-root build/scene-attribute-transpose/reproduce
cmake -S experiments/scene-attribute-transpose -B build/scene-attribute-transpose/reproduce/native \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-attribute-transpose/reproduce"
cmake --build build/scene-attribute-transpose/reproduce/native -j4
python3 experiments/scene-attribute-transpose/native_contracts.py \
  --root build/scene-attribute-transpose/reproduce
```

Add `--coherent` in a separate fresh root to reproduce V2. Archived patches
recover the exact measured source trees, including V1 before the compiled-out
coherent hook was added to the current factory template.
