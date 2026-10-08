# Accepted scene-position frontend comparison

Status: accepted scene-position renderer, superseded by rolling SIMD128 coverage. 72 accepted native measurements,
no rejected blocks: three rotated forward/reverse blocks, six timings per
renderer/asset, 640×360/off, four threads, 15 warm-up and 30 measured full frames.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | libsoftgl frame time vs Mesa |
| --- | --- | --- | --- | --- |
| BMW | 2.212 | 36.476 | 15.923 | -56.3% |
| T-80 | 1.610 | 30.644 | 9.337 | -69.5% |
| Sponza | 3.730 | 64.600 | 28.324 | -56.2% |
| Bistro | 5.963 | 169.718 | 47.068 | -72.3% |

GLimpSW remains 5.80–7.89× faster. This is an equal-assets/cameras/thread-budget
comparison with different shaders, quantization and alpha handling, not an
identical-image comparison. Reference binary and pack/export hashes are
unchanged from the previous comparison. `receipt.json` records the parent
git revision plus all actual new library/wrapper source hashes; these agree
with the adopted candidate's production source verification.

Description, source revision, asset licenses and reproduction:
[comparison experiment](../README.md), [scene-position optimization](../../scene-position-visibility/README.md).
