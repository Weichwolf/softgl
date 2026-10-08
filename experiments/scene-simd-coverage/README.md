# Exact SIMD128 visibility coverage

Status: rolling SIMD adopted; native regression, sanitizer and browser
validation passed.

The accepted `91ab0da` frontend's visibility rasterizer accounts for 32–37% of
flat CPU samples across the four scenes. Partial four-pixel packets still test
three int64 edges separately for each pixel. This experiment tests all four
pixels using three int32 SIMD128 edge vectors and one combined sign mask.

For 16.8 fixed-point coordinates, every one-pixel edge step is divisible by
256. For integer pixel offsets, `floor((E+bias)/256)` has exactly the same sign
as `E+bias`, including the top-left -1 bias. Quotient edge steps fit int32 at
640×360 with coordinate magnitudes at most 1024 pixels. Other legacy viewports
use the previous int64 test. Original int64 values and float conversions remain
in use for barycentrics, depth and texture interpolation. No precision is lost,
no assets change and no complete frames are cached.

The three-edge OR's sign bit is set whenever at least one edge is negative.
The resulting four-lane mask replaces twelve scalar comparisons. Two variants
are tested: partial-packet SIMD retaining coarse acceptance, and rolling SIMD
vectors advanced after every packet. Rejected packets avoid constructing the
otherwise unused barycentric edge arrays.

Coordinate guard proof: vertex magnitudes are at most 262144 fixed units;
edge differences are at most 524288. Tested sample coordinates, including
inactive tail lanes and the final rolling increment, remain below 166000 in X
and 92200 in Y. Thus each absolute edge is bounded by
`524288 * ((262144+166000) + (262144+92200))`; after division by 256 its
magnitude is below 1.61 billion, safely inside signed int32. Signed arithmetic
right shifts implement floor division on both supported target families.

The mathematical transformation preserves coverage, including -1 top-left
biases. Interpolation retains the existing int64 arithmetic and casts; it does
not reconstruct float values from rounded int32 quotients.

```sh
python3 experiments/scene-simd-coverage/prepare.py
cmake -S experiments/scene-simd-coverage -B build/scene-simd-coverage/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/scene-simd-coverage/native -j4
```

Sources: existing libsoftgl 16.8 rasterizer and
[scene-position frontend](../scene-position-visibility/README.md); SIMD packet
coverage organization observed in [GLimpSW](https://github.com/dubiousconst282/GLimpSW),
locally pinned at `2f915606d50b70fef8859ef29adc9d53f9aee887`. The quotient/sign
derivation and implementation are specific to this experiment; no GLimpSW code
is copied. Profile receipts are diagnostic, not accepted performance timings.

The [accepted baseline profile](profiles/README.md) records all four scenes.
[Partial-packet validation](partial/README.md) contains three-block measurements;
[rolling SIMD](rolling/README.md) contains its own independent image receipt.
The 372-frame visibility fixture additionally uses 4096×2304 legacy viewports
with a fixed 640×360 framebuffer to exercise the guarded scalar fallback.
These tests do not allocate or render a higher-resolution image. The separate
162-frame canonical-position contract checks regular mesh batching and rollback.

Native Clang 22.1.8, caller plus three helpers, 640×360, 15 warm-up and
30 measured complete frames per request. Three balanced AB/BA blocks per
asset and mode; recorded attempts and source/binary/asset hashes are in
[rolling receipt](rolling/receipt.json) and [summary](rolling/summary.json).

| Asset | Off baseline → selected, ms | Off frame time | MSAA 2× | MSAA 4× |
| --- | --- | --- | --- | --- |
| BMW | 15.904 → 14.375 | -9.6% | -1.3% | -1.1% |
| T-80 | 9.793 → 8.858 | -9.5% | -0.7% | +1.0% |
| Sponza | 27.782 → 26.524 | -4.5% | +0.5% | -1.0% |
| Bistro | 46.903 → 44.737 | -4.6% | +0.3% | +0.3% |

MSAA retains its earlier renderer and receives no coverage-kernel improvement;
its complete-binary differences are recorded rather than claimed as algorithm
wins. The simpler partial-packet variant is superseded: its off-mode changes
were -4.2/-6.0/-5.4/-2.0% across BMW/T-80/Sponza/Bistro.

Both variants preserve all color, depth, stencil and sample-plane bytes in
108 paired images: nine angles × four assets × off/2×/4×. No tolerance changes
or texture/geometry reductions were used. The renderer/scene shader itself is
unchanged from 91ab0da, including its existing differences from Mesa/GLimpSW.

Production validation: 751 native CTest cases passed with unchanged image
tolerances. AddressSanitizer, UndefinedBehaviorSanitizer and leak detection
passed both the 372-frame legacy/large-viewport fixture and the 162-frame
canonical position fixture using Clang 19 with the accepted math flags.
All 288 resident/fresh-context full-plane comparisons passed.

Browser: all four assets at 640×360 with off/2×/4× and three tile helpers loaded
without page errors. Maximum shared WASM heap: 2,807,169,024 bytes (2.615 GiB),
below 4 GiB. SIMD128/pthreads builds passed; live HTTP files match the recorded
build hashes. Browser timings do not influence the optimization decision.
