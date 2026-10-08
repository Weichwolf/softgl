# Independent all-mode confirmation

Three balanced AB/BA blocks per asset and off/2×/4× mode, 640×360,
unchanged shared packs/cameras, three helpers plus caller, Clang 22.1.8,
15 warm-up and 30 complete frames per request. 144 accepted requests and
eight rejected requests (two complete blocks) remain in receipt.json.
No attempt or outlier is removed from its accepted block.

| Asset | Off | MSAA 2× | MSAA 4× |
| --- | ---: | ---: | ---: |
| BMW | +0.21% | -0.25% | +0.18% |
| T-80 | +1.37% | -1.11% | +0.71% |
| Sponza | +0.87% | +0.38% | -1.82% |
| Bistro | -0.19% | -1.22% | -0.40% |

These are complete-frame time changes. The kernel only applies in off mode;
MSAA keeps its accepted algorithm, so those changes do not demonstrate kernel
gains. Every timing request's final angle160 RGB image is byte-identical.
The initial apparent off gains disappear in this independent run. This exact
but unsuccessful scalar microkernel is not adopted. No broader native suite,
sanitizer or actual WASM validation was warranted or performed for it.
