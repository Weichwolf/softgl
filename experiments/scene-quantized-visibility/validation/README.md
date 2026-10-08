# Native confirmation and adoption validation

Three independent balanced AB/BA blocks per asset and off/2×/4× mode at
640×360 with the unchanged shared packs/cameras and caller plus three helpers.
Clang 22.1.8 Release, 15 warm-up and 30 measured complete frames per request.
All attempts and source/binary/asset hashes remain in receipt.json.

| Asset | Off baseline → candidate, ms | Off frame time | MSAA 2× | MSAA 4× |
| --- | --- | ---: | ---: | ---: |
| BMW | 11.6226 → 10.9276 | -5.98% | -0.69% | -0.37% |
| T-80 | 7.8351 → 7.1626 | -8.58% | +0.93% | -0.24% |
| Sponza | 26.2810 → 24.7511 | -5.82% | -0.06% | +0.66% |
| Bistro | 40.6875 → 39.9120 | -1.91% | +0.08% | +0.16% |

MSAA retains the existing renderer, so its small complete-binary changes are
reported as controls, not kernel gains. Scalar-reference compilation leaves
the measured resident candidate executable byte-identical (binary-stability.txt).

quality.json records 108 paired views (nine angles, four assets, three modes).
All 72 MSAA pairs retain exact RGB/depth/stencil/sample planes. The 36 off-mode
pairs quantify intentional coverage/depth/RGB differences; no exact-output
claim or production comparison tolerance change is made. Worst mean RGB error
BMW/T-80/Sponza/Bistro: 0.2348/0.1039/1.4901/3.2374 bytes/channel. Largest
covered-pixel mismatch at the worst-RGB views: 62/83/0/2; inspect the receipt
for the actual maximum across views rather than assuming these are maxima.
Worst-RGB views inspected: BMW270, T-80270, Sponza225, Bistro0. No conspicuous
missing surfaces or broken materials were observed in those finite inspected
views; tiny edge/interpolation changes remain visible and measured.

scalar-quality.json independently compares the enabled SIMD32 mode with a
per-lane int64-edge/scalar-depth reference in all 36 off views: all RGB/depth/
stencil/sample planes are byte-identical. Geometry producers and the existing
material sampler/shader are shared, so this is an independent raster arithmetic
oracle, not an independent complete renderer/material implementation.

contract.txt records 216 paired exact worker-budget/default/enabled/fallback
frames and 16 rollback checks with real canonical scene commands; its 216
frame hashes exactly match reference-contract.txt. The fixture includes masks,
copied callbacks, frustum clipping, culling, orthographic/perspective input,
MSAA fallback and failure after visibility writes. asan-contract.txt passes
these cases with address/undefined/leak sanitizers under Clang 19 and the
accepted renderer math flags. resident-quality.json checks all 288 resident/
fresh-context full-frame hashes including off→2×→4×→off context reuse.

Production: all 754 native CTest cases pass with unchanged Mesa tolerances.
The opt-in viewer/regular native benchmark use quantization, while legacy Mesa
case wrappers preserve their original formulas and precision. Production scene
source and viewer wrapper match the measured native candidate byte-for-byte;
the public API prototype is placed inside C/C++ guards and passes a C++ linkage
smoke. The private measured C11 prototype had identical signature/implementation
but was outside those guards; checks.json records this source distinction.

SIMD128/pthreads WASM build passed. All 12 browser cases genuinely create native
640×360 contexts with the requested off/2×/4× mode and three helpers; no page
errors, maximum shared heap 2,824,208,384 bytes (2.630 GiB), below 4 GiB. Live JS/
WASM HTTP hashes and COOP/COEP headers match recorded build files. Browser
screenshot inspection showed the expected Bistro surfaces/materials. These
compatibility checks do not claim a browser performance gain.

The first strengthened browser check mistakenly compared the 642×362 SDL
presentation canvas (including its border) to the renderer framebuffer. The
second direct-function tap was replaced by Emscripten's lazy export on its
first call. Both failed attempts are preserved. The corrected observation
survives export replacement and verifies native context dimensions/sample
count; no production UI/renderer change was made to satisfy these checks.

All quality maxima, production hashes, live file hashes and final gate counts
are recorded in checks.json. Source compilers produce no new warnings. The
WASM linker repeats its existing pthread + ALLOW_MEMORY_GROWTH advisory; both
features remain necessary for this browser renderer.
