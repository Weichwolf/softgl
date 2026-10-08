# Accepted rolling SIMD frontend CPU samples

Status: diagnostic profiles of a3d9400, native Clang 22.1.8, 640×360/off,
caller plus three helpers, 15 warm-up and 60 sampled frames per asset.
Complete frames include the observable image copy. Binary/source/wrapper/pack
and raw profile hashes are in receipt.json; profiles are private under tmp/.
The image copy, camera and asset registry match the accepted benchmark.

Bistro flat samples: visibility raster 27.8%, geometry append 11.0%, texture
pair gather 8.5%, positions 7.3%. BMW has only 270 samples; raster has 24.4%
flat and 32.6% cumulative. These shares motivate reducing hidden raster work,
and do not predict wall-time gains. Reproduction and profiler sources:
[native CPU profiling](../../native-cpu-profiles/README.md).
