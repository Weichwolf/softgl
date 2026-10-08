# outlined primitive-coherent shading screen

Status: not adopted; one balanced native off AB/BA block per shared asset.

| Asset | Frame time | Worst mean RGB error | Maximum channel error |
| --- | ---: | ---: | ---: |
| bmw | +0.66% | 0.1063 | 226 |
| t80 | +2.45% | 0.1024 | 113 |
| sponza | -8.65% | 3.2554 | 90 |
| bistro | -1.48% | 4.2115 | 161 |

36 paired off views preserve every depth/stencil/sample plane exactly.
Shading frequency differs; this is not an exact RGB mode.
Native Clang 22.1.8; same assets/cameras/caller plus three helpers; 15 warm-up
and 30 timed complete frames. All requests, binary/source/pack hashes and
image/plane comparisons are archived in receipts.
No full native suite, sanitizer, all-mode asset performance or actual WASM
validation is claimed.

Separate noinline coarse shader and unchanged fine shader, distinct coarse/fine
material task runs and bounded extra task capacity. Existing position/coverage/
bin-order contracts pass 162/372/54 paired frames and 6/12/6 rollbacks; they
exercise the ordinary path, not the opt-in coarse-mode color oracle. The separate
36 asset comparisons cover enabled coarse depth/coverage. Independent
[Sponza confirmation](../confirmation/README.md) gives only -2.02%.

Sources, approximations and reproduction: [parent](../README.md),
prepare.py --shader outlined.
