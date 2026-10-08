# Stable parallel scene-bin construction

Status: adopted; native and browser validation passed.

The accepted position frontend visits every prepared primitive twice on the
caller to count and then fill stripe references. Move counting into independent
geometry tasks. A short caller prefix over task totals allocates disjoint
segments, then workers fill the references in parallel. Original task/primitive
order is preserved in every stripe, including exact GL_LESS depth ties.
No geometry epoch, BVH, image approximation or setup expansion is introduced.

Source: libsoftgl geometry.inc and geometry_types.inc at d481c90;
[accepted whole-scene frontend](../scene-position-visibility/README.md) and
its [current CPU samples](../scene-hierarchical-depth/profiles/README.md).
The prefix partition is an original application of standard counting-sort
construction to existing scene tasks. SIMD128/WASM source compatibility and
the 16-MiB reference budget remain unchanged; task metadata grows by two
32-bin uint32 arrays (4 MiB at the existing 16384-task maximum).

Run prepare.py, configure/build this folder with Clang 22.1.8 and Release,
then check_quality.py and resident_trial.py. All timing work is 640×360.

Two independent three-block validation series establish an off-mode gain.
[Paired statistics](validation/paired-statistics.json) combine six AB/BA blocks
per asset, retaining quiet timing outliers. Descriptive 95% resampling intervals
of mean block changes exclude zero for every asset; these are not guarantees
on other hardware or views. The initial screening remains separate.

| Asset | Combined off baseline → candidate, ms | Frame time | MSAA 2× | MSAA 4× |
| --- | --- | --- | --- | --- |
| BMW | 14.508 → 13.440 | -7.36% | -0.13% | +0.60% |
| T-80 | 9.133 → 7.894 | -13.57% | -0.83% | -0.63% |
| Sponza | 26.610 → 25.297 | -4.94% | +0.53% | -0.69% |
| Bistro | 45.029 → 41.897 | -6.96% | +0.55% | +0.86% |

The two repeated series report BMW -6.89/-8.41%, T-80 -15.06/-12.37%,
Sponza -2.98/-6.83%, Bistro -7.08/-6.43%. The larger T-80 variation is
retained rather than filtered away. MSAA uses the original renderer and
receives no algorithm improvement; its ±0.9% binary differences are recorded.
The all-mode series contains 144 accepted requests and 12 rejected requests
from noisy balanced blocks. Confirmation contains another 48 accepted requests.
All complete native requests use 15 warm-up and 30 measured frames at 640×360.

Validation: 752 native CTest cases passed with unchanged image tolerances;
108 paired images have exact RGBA and all depth/stencil/sample planes;
288 resident/fresh-context comparisons match all plane hashes.
The new `tests/scene_bins.c` fixture crosses three geometry tasks per material
and verifies coplanar ties with distinct colors across 1/3/8 helpers, clipping,
culling and alpha masks: 54 paired frames and six rollback checks. This fixture
and the existing 162-frame positions and 372-frame coverage contracts passed
AddressSanitizer, UndefinedBehaviorSanitizer and leak checks using Clang 19
with the accepted renderer math flags. Renderer algorithms remain SIMD128.

[Validation artifacts](validation/README.md) preserve source/binary/pack hashes,
all timing attempts, native test output and the live WASM build evidence.

Browser: all four shared assets at 640×360/off/2×/4× load with three helpers,
without page errors. Peak WASM heap: 2,824,536,064 bytes (2.631 GiB),
below 4 GiB. Live HTTP files match the rebuilt JS/WASM bytes.
