# GLimpSW / Mesa / libsoftgl with four common scenes

Status: final shared-asset measurements pending. Work files and rendered images
are in `tmp/glimpsw-original/`. The initial measurements in `tmp/glimpsw-bmw/`
used a different preparation and camera and are superseded.

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
SSE4.1 paths. Mesa uses installed OSMesa/llvmpipe and the identical GL calls as
libsoftgl. Four logical CPUs are exposed under a Microsoft hypervisor (two cores,
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
python3 compare.py --frames 30 --warmup 15
python3 repair_compare.py --frames 30 --warmup 15
python3 render_images.py
```

Three rotated forward/reverse pairs give six measurements per renderer, scene
and resolution. A whole block is repeated if monitored foreign process CPU load
exceeds 0.1 logical CPU. The process-level monitor does not measure hypervisor
interference or frequency changes. Original and rejected blocks remain private;
final receipts identify accepted records and binary/source/asset hashes.
