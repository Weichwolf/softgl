# Exact sample-grid edge reduction and original-coordinate packets

Status: exact general-kernel fallback implemented and validated privately;
dedicated original-coordinate packet backend and timing trials pending.

## Completed first prototype

The frozen baseline is `971c2cf`; its renderer still matches accepted `6e5ed5c`.
The existing int32 fast path remains intact. A new reduced-unit path is used
only when the original range proof fails but the reduced sample rectangle fits
int32. Original int64 row edges, sample positions, bias and interpolation order
remain. Unsupported reduced ranges retain the original int64 implementation.
No packet producer, packet format or bin backend has been changed yet.

Native fixtures pass 1,048,576 independent integer identities, 4,194,304 exact
float reconstructions and 25,165,824 proposed packet coordinate round trips.
Direct float reconstruction fails 56,927 of those float checks, so the exact
prototype uses f64x2 followed by one float demotion. Actual SIMD128/f64x2 WASM
executes the same arithmetic and matches native stdout, with a 4 GiB maximum
memory declaration. This is a single-thread numeric fixture, not a WASM
renderer, pthread, model or browser gate.

Six paired native renderer fixtures have identical stdout. All 108 native
model/mode/view pairs have identical final RGBA, stencil, resolved depth and
physical sample depth. Native library ISA verification also passes. The
instrumented census reproduces all 54 Bistro/Sponza views and their physical
planes exactly. Counters exclude separate small-triangle kernels and general
triangles rejected early by HZ, and are not elapsed-time measurements.

| Asset/mode | Reduced setups/frame | Share of general setups | Reduced coverage pixels/frame | Exact f64 reconstruction pixels/frame |
| --- | ---: | ---: | ---: | ---: |
| Bistro 2× | 4.67 | 0.0041% | 8,885 | 0 |
| Bistro 4× | 3.67 | 0.0140% | 5,689 | 5,424 |
| Sponza 2× | 273.89 | 0.3389% | 230,334 | 0 |
| Sponza 4× | 166.33 | 1.3860% | 119,238 | 71,128 |

These are means across nine original camera views per mode. OFF counters are
all zero. The original int32 path already covers almost all general setups;
this extension alone is not evidence of a large Bistro speedup. The packet
architecture below still requires actual integration, allocation accounting
and timing. Full native CTest/sanitizer and full WASM/browser gates have not
been run for this private, unadopted prototype.

Frozen source patches, compiler configuration, fixture outputs, quality/census
receipts and actual WASM arithmetic receipts are retained in
[validation](validation/artifacts.json). `verify_archive.py` verifies retained
bytes and reconstructs both source trees from the baseline plus their patches;
`--git-tree index` and `--git-tree HEAD` verify the staged/committed copies.
Production native/WASM binaries have not been replaced by this prototype.

Reproduce in fresh output directories:

```sh
python3 experiments/scene-msaa-grid-reduction/prepare.py --output-root build/scene-msaa-grid-reduction/new-trial
cmake -S experiments/scene-msaa-grid-reduction -B build/scene-msaa-grid-reduction/new-trial/native -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release -DSCENE_TRIAL_ROOT="$PWD/build/scene-msaa-grid-reduction/new-trial"
cmake --build build/scene-msaa-grid-reduction/new-trial/native -j4
python3 experiments/scene-msaa-grid-reduction/native_contracts.py --root build/scene-msaa-grid-reduction/new-trial
python3 experiments/scene-msaa-grid-reduction/wasm_contract.py --root build/scene-msaa-grid-reduction/new-trial --output build/scene-msaa-grid-reduction/new-wasm
build/python/bin/python experiments/scene-depth-order-cached-keys/check_quality.py --root build/scene-msaa-grid-reduction/new-trial --output tmp/scene-msaa-grid-reduction/new-quality --assets bistro,sponza,bmw,t80 --samples 0,2,4
```

For counters, freeze a separate root with `prepare.py --audit`, configure it
likewise, build `grid_census`, then run `run_census.py --root AUDIT_ROOT
--output NEW_OUTPUT --reference QUALITY_OUTPUT`. These binaries are excluded
from performance acceptance.

## Architecture under investigation

The original geometry uses 16.8 fixed coordinates, but every existing two-/four-
sample offset and pixel step is divisible by 16. Reduce edge units rather than
rounding vertex coordinates. For an integer edge at a pixel origin `E`, its
top-left bias `b` and an offset `D` divisible by 16:

```
Q = floor((E + b) / 16)
R = (E + b) - 16*Q                 // 0..15
sample inside iff Q + D/16 >= 0
original unbiased sample edge = 16*(Q + D/16) + R - b
```

This identity preserves exact ownership, including negative edges and the
one-unit top-left bias. Prove signed-int32 bounds over the complete sample
rectangle; unsupported ranges retain the original int64 kernel. Existing
16.8 vertex coordinates and all genuine sample positions remain. This differs
from the earlier [quantized MSAA packets](../scene-msaa-quantized-packets/README.md),
which round geometry to 16.4 and change coverage.

Exact interpolation must reconstruct the original int64 edge before float
rounding. Casting `Q` to float, multiplying by 16 and adding the low remainder
can double-round ties. A SIMD128 candidate can convert two signed-int32 lanes
to f64x2, reconstruct the integer edge exactly in double and demote once to
float; combine two pairs into f32x4. Prove this against original casts across
signed bounds, mantissa transitions, biases and remainders in native/WASM.
Coverage reduction alone does not justify changing sample depth expressions.

The current four-triangle packet has 48 bytes of packed 16.4 XY, 96 bytes of
original Z/reciprocal W and a four-byte eligibility mask, padded to 160 bytes.
Its final twelve padding bytes can hold magnitudes of the original 16.8-minus-
16.4 residuals, one byte per vertex/lane (four bits per axis). Both conversions
truncate the same finite coordinate after scaling by powers of two; each
residual is in −15..15. Store the 24 residual signs in currently unused upper
eligibility bits, preserving its four low lane bits. This is a hypothesis to
validate, not an implemented format. Audit every mask consumer and invalid-lane
case. OFF decoding must retain the original 16.4 values exactly.

Such packets could feed a dedicated exact MSAA backend without reconstructing
full vertices and the general per-triangle range machinery for every bin
reference. Their stride need not grow. However MSAA currently prepares no
triangle packets; enabling them has real preprocessing/allocation costs even
with unchanged stride. Existing geometry limits and rollback must include
those costs, and browser peak memory must be measured. Keep original clipped,
cutout, tiny-triangle, between-sample and current-frame occlusion fallbacks.
Do not assume a speedup or suppress raw control regressions.

Sources: our [fixed-coordinate conversion](../../libsoftgl/src/raster_types.h),
[MSAA edge/sample kernels](../../libsoftgl/src/raster_msaa_impl.h),
[existing packet producer/consumer](../../libsoftgl/src/scene_visibility.c),
[packet declarations](../../libsoftgl/src/geometry_types.inc) and the exact
integer identity above. This is our proposed CPU/SIMD128 adaptation; no copied
upstream algorithm or upstream performance result is claimed.

Prototype gates: independent integer/float reconstruction and packet round-trip
oracles, original int64 sample-plane controls, all 108 original model/mode
views, real fast/fallback execution, then repeated OFF/2×/4× AB/BA with the
four unchanged packs/cameras at 640×360 and caller plus three workers.
Adoption additionally needs native ISA/sanitizer/full CTest, actual SIMD128
WASM, live browser/material checks and <4 GiB, commit/push and live update.
Priority remains Bistro > Sponza > BMW F31 > T-80.
