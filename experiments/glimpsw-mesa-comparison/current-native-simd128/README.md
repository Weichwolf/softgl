# Current native SIMD128 comparison

Policy baseline `da8ab07`, exclusively SIMD128; its library/wrapper source hashes
were verified against the receipt before the later triangle-packet adoption. Native 640×360/off, four total threads, 60 warm/30
measured frames, three balanced forward/reverse blocks per asset/backend.
72 accepted attempts, six rejected attempts retained after one block exceeded
the foreign-process-load gate. Same four prepared assets/cameras and reference
driver provenance; GLimpSW uses its different PBR/texture-minification pipeline
and AVX512. External drivers currently support off mode only.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | SG/Mesa frame change | SG/GLimpSW ratio |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.141 | 37.525 | 11.113 | -70.39% | 5.19× |
| t80 | 1.881 | 31.373 | 7.811 | -75.10% | 4.15× |
| sponza | 3.942 | 69.044 | 26.488 | -61.64% | 6.72× |
| bistro | 6.307 | 178.194 | 40.928 | -77.03% | 6.49× |

This supersedes the historical native-wide comparison for baseline `da8ab07`.
The later [triangle-packet gain](../../scene-triangle-packets/README.md) has
independent isolated timings; the table above is not relabeled as that renderer.
Times from different measurement sessions do not isolate ISA effects or clock
variation. No native high-resolution workload is run. libsoftgl remains slower
than GLimpSW in all four scenes; the open-ended optimization goal is unachieved.

[Full receipt](receipt.json), [summary](summary.json), [checks](checks.json).
[SIMD128 policy and full native/WASM checks](../../scene-simd128-policy/README.md).
