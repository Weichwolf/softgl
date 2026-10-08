# Accepted rolling SIMD128 coverage comparison

Status: current accepted libsoftgl renderer. 72 accepted native measurements,
no rejected blocks: three rotated forward/reverse blocks, six timings per
renderer/asset, 640×360/off, four threads, 15 warm-up and 30 measured full frames.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | libsoftgl frame time vs Mesa | SG / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.120 | 36.151 | 14.253 | -60.57% | 6.72x |
| t80 | 1.638 | 30.527 | 8.874 | -70.93% | 5.42x |
| sponza | 3.872 | 64.569 | 27.350 | -57.64% | 7.06x |
| bistro | 5.999 | 169.127 | 44.517 | -73.68% | 7.42x |

Libsoftgl takes 57.6–73.7% less frame time than Mesa. GLimpSW remains 5.42–7.42×
faster. This is an equal-assets/cameras/thread-budget comparison with different
shaders, quantization and alpha handling. Reference executable, prepared-pack,
export and wrapper hashes are unchanged from the scene-position comparison.
The receipt head is the parent `91ab0da`; its actual library hashes include the
new rolling SIMD kernel and match the adopted source. Image output is byte
identical to the accepted scene-position renderer in all 108 quality frames.

Description, source revision, asset licenses and reproduction:
[comparison experiment](../README.md),
[coverage optimization](../../scene-simd-coverage/README.md).
