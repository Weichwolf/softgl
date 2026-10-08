# Historical native SIMD512 comparison

Superseded: native libsoftgl must now also use SIMD128; this table measures
revision `91ab0d1`, not the current renderer.

Production native library and common wrapper, 640×360, off, four total threads,
60 warm/30 measured frames and three balanced forward/reverse blocks per scene.
All 72 runs are accepted; no high-resolution workloads are run.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | SG/Mesa frame change | SG/GLimpSW ratio |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.014 | 36.255 | 10.507 | -71.02% | 5.22× |
| t80 | 1.628 | 31.034 | 6.836 | -77.97% | 4.20× |
| sponza | 3.759 | 64.876 | 22.132 | -65.88% | 5.89× |
| bistro | 5.941 | 170.547 | 36.129 | -78.82% | 6.08× |

Same four prepared geometry/base assets/cameras and reference driver provenance
as [the preceding comparison](../current-quantized-visibility/README.md).
GLimpSW derives its combined texture layers/PBR/minification internally and
does not render pixel-identically to Mesa. Its different pipeline is documented
in provenance.json and parent README. Both external comparison drivers currently
support off mode; separate softgl off/2×/4× audits are in
[native shader validation](../../scene-native-wide-materials/README.md).
The root native sources/wrapper hashes match the measured production build.
Softgl remains 4.20–6.08× slower than GLimpSW; the open-ended goal is not achieved.
