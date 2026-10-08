# BVH raster with once-per-frame setup

Status: held; gains on three assets, repeatable Sponza regression.

The existing leaf4 BVH, inherited clipping planes and current-frame 8×8
conservative depth rejection remain in use. Prepared records cache clamped
bounds, snapped int64 edges, area, inverse area and coverage32 eligibility.
Their size grows from 112 to 128 bytes (160-byte entries instead of 144).
Opaque raster avoids generating temporary UVs; alpha masks use the original
coordinates. Immutable geometry epochs remain explicit.

| Asset | Off baseline → candidate, ms | Change | MSAA 2× | MSAA 4× |
| --- | --- | --- | --- | --- |
| BMW | 14.410 → 13.236 | -8.15% | +0.69% | +0.17% |
| T-80 | 8.779 → 7.623 | -13.17% | -1.07% | -0.91% |
| Sponza | 27.301 → 30.141 | +10.40% | -1.42% | -0.99% |
| Bistro | 44.461 → 41.962 | -5.62% | +0.39% | +0.48% |

Three balanced AB/BA blocks per asset/mode; all attempts and source/binary/pack
hashes are in validation-receipt.json. MSAA uses the unchanged fallback, so
its numbers are complete-binary tradeoffs rather than MSAA algorithm gains.
108 paired views have exact RGB and depth/stencil/sample planes; the geometry
epoch contract passed 162 frames and six rollbacks. Initial one-block results
remain in receipt.json/summary.json/quality.json. No production adoption, full
suite, sanitizer or full-renderer browser validation is claimed.

Reproduce with `../prepare.py --backend raster --occlusion --prepared-raster`,
configure/build the parent experiment with Clang 22 and leaf4, then run its
quality and resident tools. Sources: [parent BVH experiment](../README.md),
its [native CPU profile](../raster-planes/profile/README.md), and accepted
[rolling coverage](../../scene-simd-coverage/README.md).
