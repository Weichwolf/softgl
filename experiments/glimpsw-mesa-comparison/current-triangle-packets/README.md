# Current SIMD128 triangle-packet comparison

Production renderer `8085056`; later documentation commits do not change the
renderer. Native 640×360/OFF, four total threads, identical four prepared
assets/cameras, 60 warm and 30 measured orbit frames, three balanced blocks per
asset/backend. Source and wrapper hashes match the measured production renderer.
GLimpSW retains its AVX512 and different PBR/texture-minification pipeline;
softgl exclusively uses SIMD128 both native and WASM. Same reference drivers
and asset provenance as the prior policy-baseline comparison. External drivers
support OFF only.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | SG time versus Mesa | SG/GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.155 | 37.318 | 10.671 | -71.40% | 4.95× |
| t80 | 1.772 | 31.780 | 7.251 | -77.19% | 4.09× |
| sponza | 3.973 | 70.453 | 25.470 | -63.85% | 6.41× |
| bistro | 6.174 | 178.612 | 38.222 | -78.60% | 6.19× |

72 accepted runs, 0 rejected attempts retained. These are direct
contemporaneous backend comparisons; differences from older table sessions
do not isolate clock variation or prove the packet gain. The packet gain is
established separately by independent same-session AB/BA baseline controls.
No high-resolution native asset workload is run. softgl remains slower than
GLimpSW in every scene; the open-ended optimization objective is unachieved.

[Raw receipt](receipt.json), [summary](summary.json), [checks](checks.json),
[packet gain and native/WASM adoption proofs](../../scene-triangle-packets/README.md).
