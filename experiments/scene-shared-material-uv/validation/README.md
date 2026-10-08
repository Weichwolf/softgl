# Independent native confirmation and production gates

Three balanced AB/BA blocks per shared asset and off/2×/4× mode at 640×360,
Clang22 Release, caller plus three helpers, 15 warm-up and 30 measured complete
frames. Both variants enable the accepted quantized visibility and transparent
fusion, so only canonical UV interpolation reuse differs. Every accepted
request and rejected attempt, source/binary/asset hash and load observation is
retained in receipt.json. MSAA uses its unchanged existing renderer; small
complete-binary controls do not demonstrate algorithm gains in those modes.

| Asset | Off baseline → candidate ms | Off | MSAA 2× | MSAA 4× |
| --- | --- | ---: | ---: | ---: |
| bmw | 10.9438 → 10.7366 | -1.89% | -0.73% | -1.04% |
| t80 | 7.3026 → 7.0737 | -3.13% | -0.84% | +0.39% |
| sponza | 23.5629 → 22.6934 | -3.69% | +0.58% | +0.30% |
| bistro | 40.2213 → 39.1135 | -2.75% | +0.19% | +0.29% |

All 108 paired views have byte-identical RGB/depth/stencil/sample planes.
The 216-pair quantized worker/default/enabled/fallback contract and 16 rollbacks
pass. Existing position/coverage/bin contracts pass 162/372/54 paired frames
and 6/12/6 fallback checks, including legacy UV0/UV2 divergence. The added
72-frame ordinary-GL versus canonical fixture passes for both baseline and
candidate, constant/varying normal maps, distinct sampler dimensions and wraps,
clipping, alpha masks and helper budgets 1/3/8. Its color policy is the existing
canonical versus ordinary one-byte policy; asset/candidate comparisons stay
byte-exact and no production tolerance changes. Enabled quantized and new UV
fixtures pass address/undefined/leak sanitizers under Clang19 with accepted
math flags. All 288 resident/fresh-context comparisons match the independent
fresh-context full-frame oracle, including off→2×→4×→off reuse.

Production: all 755 native CTest cases pass with unchanged existing tolerances;
the added UV fixture is registered as scene_uv_contract. Source compiler builds
have no new warnings; the WASM linker retains its existing pthread/memory-growth
advisory. Production scene source exactly matches the measured native candidate.
All 12 browser cases create actual 640×360 contexts with the requested off/2×/4×
mode, three helpers and isolated shared memory; no page errors. Maximum shared
heap: 2,824,011,776 bytes (2.630 GiB), below 4 GiB. Live JS/WASM hashes and
COOP/COEP headers match the build and checks.json. No extra approximation or
browser performance gain is claimed; native complete-frame AB/BA determines
adoption. The browser observation uses the corrected context-size/export tap
from the accepted quantized-visibility experiment.
