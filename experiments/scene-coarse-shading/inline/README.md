# inline primitive-coherent shading screen

Status: not adopted; one balanced native off AB/BA block per shared asset.

| Asset | Frame time | Worst mean RGB error | Maximum channel error |
| --- | ---: | ---: | ---: |
| bmw | +3.30% | 0.1063 | 226 |
| t80 | +5.32% | 0.1024 | 113 |
| sponza | +16.82% | 3.2554 | 90 |
| bistro | -2.43% | 4.2115 | 161 |

36 paired off views preserve every depth/stencil/sample plane exactly.
Shading frequency differs; this is not an exact RGB mode.
Native Clang 22.1.8; same assets/cameras/caller plus three helpers; 15 warm-up
and 30 timed complete frames. All requests, binary/source/pack hashes and
image/plane comparisons are archived in receipts.
No full native suite, sanitizer, all-mode asset performance or actual WASM
validation is claimed.

census.json records an untimed angle160 shader invocation census: BMW/T-80/
Sponza/Bistro reuse 9777/5604/89511/80889 of 39347/23925/230400/230393
visible fine pixels. This logical saving is not a frame-time saving.

Sources, approximations and reproduction: [parent](../README.md),
prepare.py --shader inline.
