# GLimpSW / Mesa / libsoftgl with four common scenes

Status: historical native 640x360 baseline (47e517d) complete, 72 accepted measurements, no rejected
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

At 640x360, libsoftgl uses about 29.7%/31.3% less frame time than Mesa
for BMW/T-80, but 42.9%/55.3% more for Sponza/Bistro. GLimpSW is faster
for all four under its different pipeline; these are not identical-image ratios.

## Current accepted renderer: 93e2356

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
