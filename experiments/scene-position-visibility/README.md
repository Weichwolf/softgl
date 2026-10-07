# Scene position and visibility frontend

Status: adopted; 750 native tests, address/undefined/leak sanitizers and the
12-model/mode browser smoke checks passed. Native comparison receipts below.

Freeze accepted revision `e7edbca`, collect immutable indexed mesh commands,
then run scene-wide position, clipping/bin construction, visibility and winning
vertex-attribute phases with the existing caller plus three helpers. This
removes per-draw worker synchronization and postpones diffuse/half-vector/
reflection vertex programs until a triangle actually owns a framebuffer pixel.
Alpha masks use original UVs before writing depth. Transparent geometry and
MSAA retain the accepted renderer. No complete-frame caching is used.

The selected variant transforms four positions together with SIMD128 for
affine model-view and symmetric perspective matrices; other matrices use the
original transform. Matrix operation grouping remains unchanged. Original
fixed-point coverage and the depth rasterizer are reused. Clipped shader attributes are reconstructed from original
vertex values and clip-generated barycentrics, so a few rounding differences
are possible; clipped albedo/normal UVs follow the original clipping arithmetic.
Native image and coverage checks must establish the actual effects before
adoption. Allocation budgets are 128 MiB each for positions/attributes and thin
primitives, 16 MiB for bin references, plus existing bounded visibility storage.
Budget failure restores the frame and asks the caller to replay normal draws.
Unclipped triangles store only 24-byte index/metadata records; extra clip data
is separate. Exact fixed-area and single-pixel coverage checks reject empty
triangles before bin allocation. Dense byte arrays mark winning triangles.

```sh
python3 experiments/scene-position-visibility/prepare.py
cmake -S experiments/scene-position-visibility -B build/scene-position-visibility/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/scene-position-visibility/native -j4
```

`prepare.py` preserves both library and model-wrapper sources at the recorded
baseline; the candidate includes `geometry_types.inc` and `geometry.inc`.
`SOFTGL_POSITION_STATS=1` prints transformed positions, emitted primitives and
generated winning attributes outside accepted performance measurements.

Sources:

- Existing libsoftgl scene material visibility experiment and indexed vertex programs: [scene-material-visibility](../scene-material-visibility/README.md).
- Visibility-first architecture observed in [GLimpSW](https://github.com/dubiousconst282/GLimpSW), locally pinned at `2f915606d50b70fef8859ef29adc9d53f9aee887`; this experiment reuses libsoftgl's rasterizer and material programs rather than copying GLimpSW code.
- Barycentric visibility reconstruction: Christoph Schied and Carsten Dachsbacher, [Deferred Attribute Interpolation for Memory-Efficient Deferred Shading](https://cg.ivd.kit.edu/publications/2015/dais/DAIS.pdf), HPG 2015; background motivation, not an implementation dependency.

Measured against the accepted `e7edbca` renderer, Clang 22.1.8, caller plus three
helpers, 640×360, 15 warm-up and 30 full-frame measurements per request. Three
balanced AB/BA blocks per asset/mode: 144 accepted requests, no rejected blocks.
Assets are loaded once per resident process; all actual rendering/readback
continues each frame. [Resident/fresh-context proof](fast/resident-quality.json)
checks 288 full-plane frame hashes across mode switches and nine angles.

| Asset | Off baseline → candidate, ms | Off frame time | MSAA 2× | MSAA 4× |
| --- | --- | --- | --- | --- |
| BMW | 16.256 → 15.837 | -2.6% | -3.0% | -2.3% |
| T-80 | 10.577 → 9.708 | -8.2% | +0.0% | -0.6% |
| Sponza | 34.138 → 27.560 | -19.3% | +1.8% | +1.9% |
| Bistro | 89.502 → 47.095 | -47.4% | +0.5% | +0.9% |

MSAA and transparent draws retain the earlier pipeline. The MSAA numbers
reflect the measured complete binaries, not an MSAA algorithm improvement;
Sponza's approximately 2% regression is an explicit tradeoff. No higher
resolution was benchmarked.

[108 paired images](fast/quality.json), nine angles × four assets × three MSAA
modes: all depth/stencil/sample-depth/sample-stencil planes are byte-identical.
BMW and Sponza RGB are exact. T-80 and Bistro each have one off-mode angle with
a maximum channel difference of one; worst mean channel error is 0.000002894.
MSAA RGB is exact in all 72 images. Geometry and alpha-mask coverage are exact
in the checked views; weighted clip reconstruction and opaque depth ties can
change rounding, so this is not a universal pixel-exactness claim.

The standalone contract checks 162 paired full-plane frames with 1/3/8 helpers,
generic and fast matrices, clipping, culling, masks and copied stack programs.
Six rollback checks cover both allocation-budget rejection and late program
failure after depth writes. The full production suite passed all 750 tests,
including the existing 372-frame visibility contract, without tolerance changes.
AddressSanitizer, UndefinedBehaviorSanitizer and leak detection passed the new
contract using Clang 19 with the accepted renderer math flags.

The browser loads all four assets with off/2×/4× at 640×360 and three helpers;
no page errors. Maximum shared heap: 2,825,977,856 bytes (2.632 GiB), below
4 GiB. Browser timings are excluded from optimization decisions.

Earlier variants, source patches and complete timing attempts:

- [unsorted](unsorted/README.md): full records, BMW/T-80 regressions.
- [sorted](sorted/README.md): rejected scene-wide depth sorting.
- [thin](thin/README.md): compact original-index records, initial screening.
- [micro](micro/README.md): exact empty-triangle rejection, repeated validation.
- [dense](dense/README.md): compact winning-triangle flags, initial screening.
- [fast](fast/README.md): selected SIMD128 frontend and final validation.

Restore an archived variant with `prepare.py --variant NAME`; the preparer
checks every recorded library/wrapper source hash. Restore the selected source
by running `prepare.py` without `--variant` before rebuilding.
