# Per-bin scene visibility depth summaries

Status: not adopted. Depth summaries regress; repeated general bucket ordering
regresses Sponza despite improvements in the other scenes.

The accepted rolling SIMD visibility kernel still scans covered packets of
fully hidden triangles. This experiment maintains a conservative maximum of
the actual depth buffer in 4×4 or 8×8 cells and rejects a triangle only when
every cell intersecting its clamped bounding box is in front of its minimum
vertex depth, minus the established 2e-6 interpolation error margin.

Each raster worker owns a stripe and its own summaries, including partial
cells at stripe boundaries. Initial summaries scan the current depth buffer;
committed LESS writes mark a cell dirty only when they lower its cached
maximum. Queries lazily rescan dirty cells. A stale maximum is always an upper
bound because this scene batch permits only monotonic depth writes. Alpha
tests remain before actual writes. Legacy forward batches and MSAA retain
their existing paths. No previous-frame depth or completed image is reused.

Sources: the existing [MSAA hierarchy](../hz4-depth/README.md) and its
[rounding bound](../../libsoftgl/src/raster_hz.h); Greene, Kass and Miller,
[Hierarchical Z-Buffer Visibility, SIGGRAPH 1993](https://www.cs.cmu.edu/afs/cs/academic/class/15869-f11/www/readings/greene93_hierarchicalz.pdf),
especially its image-space depth hierarchy. This trial tests one summary
level, not the paper's complete octree/pyramid/temporal algorithm. No upstream
implementation code is copied.

An independent ordering variant uses 256 adaptive front-to-back minimum-depth
buckets per bin. It retains original order within a bucket and changes only
opaque/cutout command order; blended materials retain their original passes.
Depth ties can choose different materials, and those visual differences must
be assessed explicitly. Sort scratch has a shared 32 MiB cap, with an unsorted
fallback on allocation failure. Preparing the key once in each primitive was
also tested, increasing the primitive from 24 to 28 bytes.

| One-block screen | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| 4×4 hierarchy | +1.4% | +6.3% | +9.7% | +0.6% |
| 8×8 hierarchy | +1.3% | +13.3% | +10.9% | +1.2% |
| Stable front ordering only | -0.2% | -5.1% | -4.8% | -2.0% |
| Front ordering + 4×4 | -5.5% | +0.5% | +6.1% | -1.6% |
| Prepared-key ordering only | +0.0% | +4.2% | +0.5% | +0.4% |

These are screening frame-time changes, not acceptance claims. Each screen has
one quiet AB/BA block per asset, same frozen a3d9400 renderer, native Clang 22,
640×360/off, caller plus three helpers, 15 warm-up and 30 complete frames.
The two hierarchy-only variants preserve angle-160 RGB bytes. All sorting
variants change Bistro's angle-160 bytes. The 4×4 hierarchy passes the 162-frame
canonical and 372-frame legacy/viewport contracts; that does not prove all
other poses. Folder receipts preserve attempts and exact hashes:
[4×4](cell4-screening/README.md), [8×8](cell8-screening/README.md),
[ordering](sort-screening/README.md), [ordered 4×4](sorted4-screening/README.md),
[prepared keys](prepared-sort-screening/README.md).

[Current accepted CPU profiles](profiles/README.md) motivate this investigation
but do not substitute for timing. The first setup attempt failed its guarded
text replacement before producing the feature; it was corrected and rebuilt
before every screen above. No timings from that incomplete build are used.

```sh
python3 experiments/scene-hierarchical-depth/prepare.py --cell-size 4
cmake -S experiments/scene-hierarchical-depth -B build/scene-hierarchical-depth/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/scene-hierarchical-depth/native -j4
python3 experiments/scene-hierarchical-depth/resident_trial.py --pairs 1 --samples 0
```

For ordering alone use `prepare.py --sort-front --no-hz`; for prepared keys add
`--prepared-key`. The independent image driver additionally dumps actual native
depth planes. `check_quality.py --allow-reorder` requires unchanged covered-depth
masks, exact stencil/MSAA planes, and depth differences no larger than 2e-6,
while reporting actual RGB deltas rather than declaring reordered images exact.
This is an experiment-specific policy; production regression tolerances remain
unchanged. Run quality checks separately from timing.

Only native 640×360 timings influence adoption. Initial one-block screens are
not acceptance evidence. Any selected variant must pass three-block AB/BA
measurements including off/2×/4×, full-plane quality comparisons, boundary
contracts, native regression/sanitizer checks and a SIMD128/WASM browser build.

Repeated ordering measurements use 48 accepted quiet runs, no rejected runs,
three AB/BA blocks per asset. Frame time BMW/T-80/Sponza/Bistro:
-0.22/-3.18/+2.77/-1.87%. The Sponza regression reverses its first screen,
with byte-identical baseline and candidate executables in both runs. Thus no
general sorting change is adopted. [Validation receipt](sort-validation/README.md).
All 36 off-mode quality pairs preserve depth/stencil/sample planes byte-for-byte,
while RGB changes at depth ties remain documented in [quality](sort-quality/README.md).
No full MSAA, sanitizer, browser or production acceptance is claimed for this
unadopted experiment. The accepted renderer stays at a3d9400.
