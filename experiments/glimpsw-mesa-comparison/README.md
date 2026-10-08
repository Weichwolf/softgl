# GLimpSW / Mesa / libsoftgl with four common scenes

Status: current accepted rolling SIMD128 coverage beats Mesa in all four scenes
at 640x360/off, with 57.6–73.7% less complete-frame time. GLimpSW remains
5.42–7.42× faster with its different rendering pipeline.
[Current summary](current-simd/summary.json),
[current receipt](current-simd/receipt.json).

Historical native 640x360 baseline (47e517d): 72 accepted measurements, no rejected
blocks. Six timings per renderer/scene with three rotated forward/reverse pairs.
[Summary](timings-quiet-summary.json), [accepted blocks](quiet-blocks.json) and
[source/binary/asset receipt](provenance.json). Higher resolutions are excluded
from current work until libsoftgl beats GLimpSW at 640x360. Initial preparation
and pre-copy-barrier timings remain private and are superseded.

Source: [GLimpSW](https://github.com/dubiousconst282/GLimpSW), revision
`2f915606d50b70fef8859ef29adc9d53f9aee887`; renderer source remains unchanged.
All scenes come from the sources and licenses in [assets](../../assets/README.md).
One preparation recorded in [models.json](../../assets/models.json) feeds every
renderer. The exporter retains packed vertex/index bytes without a second mesh
reduction. GLimpSW applies its normal meshlet ordering and half-UV/RGB10 attribute
quantization. Base factors are baked into PNG; derived normal maps are enlarged
to its required combined base/normal/MR layer dimensions. Base texture dimensions
match the GL scene. GLimpSW imports BLEND as alpha cutouts. Its PBR lighting
omits the GL scene's studio cube maps and clearcoat; images are not pixel-equivalent.

GLimpSW and libsoftgl use native Clang 22.1.8 with their respective AVX512 and
SSE4.1 paths. Mesa uses installed OSMesa/llvmpipe and, in this baseline, the identical GL calls as
libsoftgl. Current libsoftgl viewer builds opt into
[worker attribute preparation](../visible-vertex-attributes/README.md); Mesa
retains eager GL arrays. The same shading formulas and fragment stages remain. Four logical CPUs are exposed under a Microsoft hypervisor (two cores,
two hardware threads each). Each renderer has one caller and three configured
helpers; Mesa auxiliary/JIT threads can differ. MSAA is disabled. Complete-frame
cost includes clear, camera/transforms, rasterization, shading, completion and a
row-major image copy. Imports, preparation and encoding are excluded.
Compiler barriers retain each complete image copy in the measured loop;
Clang otherwise removed libsoftgl's unused copy. Those earlier binaries and
timings are retained privately in `tmp/glimpsw-original/pre-copy-barrier/`.

Reproduce with CMake 3.30+, Clang 22, AVX512, OSMesa, NumPy and Pillow:

```sh
python3 tools/prepare_assets.py bmw t80 sponza bistro
python3 tools/check_prepared_assets.py
cd experiments/glimpsw-mesa-comparison
git clone https://github.com/dubiousconst282/GLimpSW.git GLimpSW
git -C GLimpSW checkout 2f915606d50b70fef8859ef29adc9d53f9aee887
cmake -S . -B build-clang22 -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_CXX_COMPILER=clang++-22
cmake --build build-clang22 -j4
for asset in bmw t80 sponza bistro; do
  python3 export_bmw.py ../../build/assets/$asset.pack $asset
done
python3 compare.py --resolutions 640x360 --frames 30 --warmup 15
python3 repair_compare.py --resolutions 640x360 --frames 30 --warmup 15
python3 render_images.py
```

Three rotated forward/reverse pairs give six measurements per renderer, scene
and resolution. A whole block is repeated if monitored foreign process CPU load
exceeds 0.1 logical CPU. The process-level monitor does not measure hypervisor
interference or frequency changes. Original and rejected blocks remain private;
final receipts identify accepted records and binary/source/asset hashes.

The original baseline described below is historical; current values are linked
at the top and in the latest rolling SIMD section at the end.

At 640x360, libsoftgl uses about 29.7%/31.3% less frame time than Mesa
for BMW/T-80, but 42.9%/55.3% more for Sponza/Bistro. GLimpSW is faster
for all four under its different pipeline; these are not identical-image ratios.

## Accepted 93e2356 before material fusion

Fresh 640x360/off comparison: 72 accepted timings, 18 rejected timings in three
whole noisy blocks; six quiet timings per renderer/scene. Same reference binaries,
prepared assets and cameras as above. [Summary](current-93/summary.json) and
[source/binary/asset receipt including rejected attempts](current-93/receipt.json).
Median complete-frame milliseconds, GLimpSW / Mesa / libsoftgl: BMW
2.180 / 36.141 / 22.348; T-80 1.728 / 30.335 / 16.750; Sponza
3.780 / 64.781 / 60.807; Bistro 6.024 / 167.464 / 169.680. Libsoftgl uses
38.16% / 44.78% / 6.14% less frame time than Mesa in the first three scenes;
Bistro remains 1.32% slower. GLimpSW remains substantially faster under its
different lighting/visibility pipeline. No higher-resolution measurements run.

```sh
python3 experiments/glimpsw-mesa-comparison/current_compare.py \
  --softgl build/packed-queue-admission/native/candidate \
  --output tmp/current-three-renderers/93e2356
```

## Accepted renderer before scene visibility: 4b58896

After [material pass fusion](../fused-material-pass/README.md), a fresh comparison
has 72 quiet accepted timings, none rejected, six per renderer/scene.
Median milliseconds, GLimpSW / Mesa / libsoftgl: BMW 2.165 / 36.063 / 16.236;
T-80 1.758 / 30.395 / 12.370; Sponza 3.766 / 64.825 / 43.324;
Bistro 5.991 / 167.866 / 103.236. Libsoftgl uses 54.98 / 59.30 / 33.17 /
38.50% less frame time than Mesa. It still takes 7.50 / 7.04 / 11.50 / 17.23
times GLimpSW's frame time. These remain different rendering pipelines.
Source, asset, camera, copy and thread-budget scope is unchanged. The opt-in
fused material shader adds the documented quantization/mask/tie differences;
ordinary GL rendering keeps the original combiner path.

```sh
python3 experiments/glimpsw-mesa-comparison/current_compare.py \
  --softgl build/fused-material-pass/native/candidate \
  --output tmp/current-three-renderers/4b58896
```

## Current accepted renderer: 94aa984

Scene-wide opaque visibility resolves full material packets without changing the
accepted fusion output. A fresh independent comparison uses 640x360/MSAA off,
one caller plus three helpers, 15 warmup and 30 measured full frames, identical
prepared geometry/base assets/cameras. Three rotated forward/reverse blocks per
scene yield 72 accepted runs and zero rejected runs. Stock Mesa/GLimpSW executables
and exports are unchanged. GLimpSW retains its different PBR, quantized attribute
and cutout pipeline; its color output is not a Mesa correctness oracle.

| Scene | GLimpSW ms | Mesa ms | libsoftgl ms | libsoftgl frame time vs Mesa | SG / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.137 | 36.261 | 16.089 | -55.63% | 7.53x |
| t80 | 1.807 | 30.499 | 10.660 | -65.05% | 5.90x |
| sponza | 3.803 | 65.295 | 35.370 | -45.83% | 9.30x |
| bistro | 6.212 | 171.736 | 89.496 | -47.89% | 14.41x |

The new renderer is significantly faster than Mesa in all four scenes, but
GLimpSW remains about 6–15 times faster. The open optimization objective is not
complete. [Summary](current-94/summary.json), [receipt](current-94/receipt.json).
The receipt head 06613da adds only the reproduction patch after the 94aa984
implementation; the library/wrapper source and module are the same.

## Accepted scene-position frontend

[Scene-position/late-attribute frontend](../scene-position-visibility/README.md)
reduces off-mode frame time against the accepted 94aa984 implementation by
2.6% / 8.2% / 19.3% / 47.4% for BMW / T-80 / Sponza / Bistro.
The independent three-renderer comparison has 72 quiet accepted timings and
no rejected blocks. Median GLimpSW / Mesa / libsoftgl complete-frame ms:
BMW 2.212 / 36.476 / 15.923; T-80 1.610 / 30.644 / 9.337;
Sponza 3.730 / 64.600 / 28.324; Bistro 5.963 / 169.718 / 47.068.
Libsoftgl uses 56.3% / 69.5% / 56.2% / 72.3% less frame time than Mesa;
GLimpSW remains 5.80–7.89× faster. Same unchanged reference binaries, prepared
geometry/base textures, camera transforms, four-thread budget and copied image
observability. GLimpSW's different PBR/cutout pipeline remains unchanged.

[Summary](current-position/summary.json), [source/binary/asset receipt](current-position/receipt.json).
No higher resolutions run. MSAA regression and image-quality validation are
recorded in the optimization experiment; references here support off mode.

## Accepted rolling SIMD128 coverage

Exact biased-edge quotient vectors reduce off-mode frame time against 91ab0da
by 9.6% / 9.5% / 4.5% / 4.6% for BMW / T-80 / Sponza / Bistro, with no new
color or coverage differences. The independent three-renderer comparison has
72 quiet accepted runs, no rejected runs, and unchanged reference binaries,
prepared packs, exports, camera registry, wrapper and thread budgets.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | libsoftgl frame time vs Mesa | SG / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.120 | 36.151 | 14.253 | -60.57% | 6.72x |
| t80 | 1.638 | 30.527 | 8.874 | -70.93% | 5.42x |
| sponza | 3.872 | 64.569 | 27.350 | -57.64% | 7.06x |
| bistro | 5.999 | 169.127 | 44.517 | -73.68% | 7.42x |

[Summary](current-simd/summary.json), [receipt](current-simd/receipt.json).
GLimpSW is still faster; the objective remains open. Reproduce with
`current_compare.py --softgl build/scene-simd-coverage/native/candidate`.
Native MSAA regression and browser validation belong to the
[optimization experiment](../scene-simd-coverage/README.md).
