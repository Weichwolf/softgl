# Select pure affine 4× depth kernels once per triangle

Status: held native screen. Pure small/rebased kernels are built, but no useful BMW gain is established. No product change.

The earlier [direct-depth trial](../scene-msaa-guarded-depth-planes/README.md)
kept an eligibility branch and the original arithmetic inside the small
triangle loop; its branch-free variant replaced only the large rebased kernel.
Try separate pure affine kernels for **both** small and rebased opaque canonical
triangles, selected once before rasterization. Keep the original kernels for
masked, legacy and unsupported state, and retain exact four-position integer
coverage and four distinct depth comparisons/writes.

Precompute `(z0-z2)/area` and `(z1-z2)/area`; use two edge products and a
constant instead of reconstructing three barycentric weights at every pixel.
The algebra changes float rounding and can select a different near-tied winner.
Require explicit coverage/alpha/material assessments against the accepted
parent, not an exact-depth claim or loosened reference-test tolerance. Keep
original geometry, assets, texture filtering and full output resolution.

Sources: own C11 follow-up to the locally retained direct-depth implementation,
the current [small/rebased MSAA kernels](../../libsoftgl/src/scene_visibility.c),
and BMW's [accepted-parent CPU diagnosis](../scene-msaa-batched-hiz/README.md).
Native/WASM library width remains SIMD128. Screen at 640×360, four total threads;
use repeated all-four-scene OFF/2×/4× AB/BA and sanitizer/WASM/browser checks for
any promising gain before adoption, commit/push and live module refresh.

## Observed result

Clang 22.1.8, SIMD128, original packs/cameras, 640×360, caller plus three
helpers, 60 warm-up/30 orbit frames, one balanced AB/BA block:

| Scene | Control → candidate 4× ms | Frame-time change |
| --- | ---: | ---: |
| bistro | 47.9332 → 47.4159 | -1.08% |
| sponza | 37.2550 → 37.0691 | -0.50% |
| bmw | 16.1853 → 16.1361 | -0.30% |
| t80 | 11.8203 → 11.1662 | -5.53% |

BMW’s -0.30% screen result is within observed timing noise. Sponza changes
from ~33–34 to ~40–41 ms in both roles within the same block. T-80’s first
control is 12.50 ms versus 11.14 ms in reverse; its apparent -5.53% gain is
not a stable benefit. Retain all observations without choosing a timing mode.
No repeat, adoption, sanitizer or actual WASM/browser gain is claimed.

The four original default-state fixture families pass, and actual library/
timed-driver ISA audits find SIMD128 only. Defaults leave the approximate
profile disabled; the model wrapper enables it for the actual 36 assessed
4× views. All resolved/sample covered-depth masks and stencil match the
accepted parent. Maximum per-view mean RGB errors in 8-bit units are Bistro
0.00718, Sponza 0.000317, BMW 0.000331 and T-80 0.000123; local maxima
113/50/23/32 come from sparse near-tied winner changes. Maximum depth
errors are 9.42e-6/2.59e-5/1.19e-7/1.19e-7 respectively. Alpha is not
independently exported by this model diagnostic; source keeps masked draws
on the original arithmetic. The older 2e-6 exploratory depth budget is
exceeded in Bistro/Sponza; it is not a new user requirement or a loosened
reference-test tolerance. No useful measured gain justifies the approximation.

`validation/` binds the actual library, recipes, raw screen, default fixture
logs and enabled depth/RGB assessments to a 108-view exact parent receipt.
The independent assessment runner and unchanged reference receipt are
retained. Raw frames, executables and build directories stay untracked.
