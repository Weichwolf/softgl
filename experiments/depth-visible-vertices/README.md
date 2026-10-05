# Depth-filtered vertex preparation

Both variants are rejected. They omit vertex work for references already proven
strictly hidden by the accepted transient depth-replay cache. Skipping that work
did not yield a reproducible BMW improvement with 4x MSAA.

The reference source is commit `2e4ea8ba63cefa147cdbf079dcd2061a0cf5bbae`,
WASM `031038cfba1043eb5560de8016611b86910125ca8ffda4b78efa08536d95eddb`.
Both patches apply independently to that commit. They are research artifacts;
neither patch is part of the accepted renderer.

`depth-visible-vertices.patch` snapshots the consumed-vertex mask on the caller,
then runs separate worker loops that skip lighting, UV generation and transforms
for unused vertices. Those slots are zeroed before ordinary packing. The
immutable snapshot avoids passing cache payload pointers to asynchronous jobs.
Epoch, render mode, sample count, depth function, stencil and offset guards
retain full preparation whenever depth-filtered replay cannot be used.

`depth-visible-packed.patch` additionally skips writes to unused full vertices
and initializes their compact packed output directly. It never reads unused
source float fields. `visible_pack.c` checks every active UV mask, 25 visibility
patterns and 65 slots, including null and ASan-poisoned unused inputs, prefix
and suffix guards and an empty range.

A separate instrument of the first variant observes 7.99 eligible jobs/frame,
42,914.69 input vertices, 17,246.34 processed and 25,668.35 skipped (59.81%).
T80 has no eligible geometry-replay jobs. This is a logical count from a
scheduling-perturbing diagnostic, not a measured reduction in CPU instructions,
cache misses or frame time.

Paired frame-time changes relative to the accepted reference; negative is faster:

| Variant | BMW off, % | BMW 2x audits, % | BMW 4x audits, % |
| --- | ---: | ---: | ---: |
| Zero unused full vertices | +0.573 | +0.264 / +1.778 | +0.067 / -0.546 |
| Zero compact output only | -1.403 | +0.355 / +0.994 | +1.786 / +0.797 |

Published measurements and final regression scope are recorded in
`results.json`. Each variant has three fresh off pairs, six 2x pairs and six 4x
pairs at 640x360, with three helpers plus caller, 80 warm-up and 100 measured
frames in each round. Every pair is a complete two-round AB/BA crossover.
Resolve/readback occurs every frame, including MSAA off. Paired time changes
are the median of three per-pair geometric crossover ratios; reported FPS use
the pooled median candidate frame time. They are different statistics.

Each variant passes 741 native tests plus the native benchmark, 21
ASan/UBSan/leak contracts, 240 WASM/Mesa images and 234 byte-exact control
images in each of off/2x/4x. Both models match 100 frame hashes and four raw
frames per mode against the accepted reference. The packed oracle passes
26,000 slots on native, WASM and ASan. Both variants also pass the 216 queued
depth-replay state/sample-plane cases and the 2,048 depth classification
comparisons plus 18 epoch/state checks on all three platforms.

The Linux quiet guard uses its unchanged 0.10-core threshold. It cannot establish
that the Windows host was idle. Rejected contaminated attempts remain in the
published attempt records and are excluded from the accepted ratios. The
driver's `gitCommit` and `sourceDiffSha256` describe the main working checkout;
candidate source identity is supplied by the separate patch/base bindings.

To reproduce the source variants, prepare the attributed BMW asset using the
root README, then create separate checkouts under `build/`:

```sh
git worktree add --detach build/research/reference 2e4ea8b
git worktree add --detach build/research/vertices 2e4ea8b
git worktree add --detach build/research/packed 2e4ea8b
git -C build/research/vertices apply "$PWD/experiments/depth-visible-vertices/depth-visible-vertices.patch"
git -C build/research/packed apply "$PWD/experiments/depth-visible-vertices/depth-visible-packed.patch"
export EM_CACHE="$PWD/build/emscripten-cache"
export EM_FROZEN_CACHE=0
for variant in reference vertices packed; do
    mkdir -p "build/research/$variant/build/assets"
    cp build/assets/bmw.pack "build/research/$variant/build/assets/bmw.pack"
    emcmake cmake -S "build/research/$variant/wasm" -B "build/research/$variant/wasm-build" -DCMAKE_BUILD_TYPE=
    cmake --build "build/research/$variant/wasm-build" -j4
done
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/vertices/wasm-build \
    --output-dir build/perf/research --label vertices
```

Run the same comparison with the packed build and a distinct label. Install
the Node/Playwright dependencies and configure `build/native` as described in
the root README. Do not build, profile or run other checks during timed pairs.
Compiler/browser changes can change binary hashes and results; preserve those
identities rather than expecting identical FPS on another host.

For full native image/contract regression checks, configure each source checkout
with `-DCMAKE_BUILD_TYPE=Release` and `-DSG_MODEL_PACK` pointing at the same
prepared BMW pack, then build and run CTest as in the root README. The pack must
exist at configure time so all three BMW views are registered. For the packed
oracle, compile `visible_pack.c` with that variant's include/src paths and
`-msse4.1`; repeat with address/undefined sanitizers and leak checking.
