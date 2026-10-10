# Current-sample Hi-Z for partially written cells

Status: three exact native variants screened; no useful priority-scene gain
adopted. The query-local variant also passes two actual SIMD128 WASM fixtures.

The current four-sample hierarchy rejects a rectangle only if every intersecting
4×4 cell has all 64 real samples written. A small rectangle can lie entirely
inside written samples while other pixels in its cell remain background.
Use the existing 64-bit sample-written mask to require only the queried
rectangle. Keep a conservative maximum for all written samples in a partial
cell; a full cell retains its current exact-maximum tracking. No old frame,
different resolution, sample duplication or shader/material simplification.

First use an explicit private scene opt-in that invalidates old written masks
before capture. This prevents an ordinary partial cell without a maintained
maximum from entering the new query. Current monotonic LESS/LEQUAL writes can
only decrease a previously written depth; retaining an older larger maximum
is conservative. Mark only real accepted sample writes. Unknown/nonfinite
depths, missing rectangle samples, unsupported depth/stencil behavior and
ordinary GL retain the original rejection rules. Clear/rollback/pixel copies
must invalidate the affected masks. A query never skips a current sample
unless its written depth is bounded above and the triangle's proven lower
depth is farther. Preserve the existing numerical safety margin.

Measure extra successful current-cell/packet queries and the cost of maximum
maintenance and mask generation, then actual complete frames. Independent
explicit sample-depth/mask oracles must include inside/outside holes, partial
writes, overwrites, clears, rollback, cutouts, clipping, ties and worker stripes.
Require original four-model 640×360/four-thread native AB/BA including OFF/2×/4×,
physical planes, native/SIMD128 WASM and real browser memory checks before any
adoption. There is no established speedup.

Sources: own adaptation of the existing
[sample-written masks and numerical bound](../../libsoftgl/src/raster_hz.h),
[four-triangle packet query](../../libsoftgl/src/scene_visibility.c) and
[independent hierarchy oracle](../../tests/hierarchical_depth.c).
The previous [visibility-order trial](../scene-temporal-visibility-priority/README.md)
reduced writes without a total-frame gain. This proposal instead aims to avoid
the raster/depth work of entirely hidden current regions before those writes.

## Implementations and correctness

Parent `52aff7b`, original packs/cameras, Clang 22.1.8, native SSE4.1 only.
V1 maintains a conservative maximum on actual partial-cell writes. V2 keeps
the original recording body and reads only the queried rectangle's physical
sample depths after its written-mask test succeeds. V3 outlines that V2
rectangle helper, retaining the short existing path for fully written cells.
There is no added framebuffer/context/triangle state allocation. A private
capture opt-in and fresh written masks guard the new queries; each begin
resets the opt-in. The old maximum's numerical safety margin is unchanged.
The full-cell refresh and two-sample path retain their original behavior.

All three actual native libraries/timed drivers pass the no-AVX/YMM/ZMM
instruction scan, four original independent default-state contract families,
and the unchanged strict hierarchy fixture: 1,048,576 numerical bounds and
1,536 HZ-on/off full-plane frames for each sample count, with 1/3/8 helpers.
Each also passes a new independent explicit-sample oracle with 171,115 actual
tracked writes and 24,880 rectangle queries/281 positive rejections. It covers
every cell-local rectangle, missing queried samples, surrounding holes,
cross-cell bounds, decreasing overwrites, unsupported/stencil/nonfinite state,
opt-in invalidation, clears and begin/reset. A second 216-pair enabled sequence
fixture checks exact resolved and physical sample RGBA/depth/stencil through
motion/cuts, light/mesh/winding/alpha changes, disable and rollback.

Each variant has 36 original-model 4× views: all four assets × nine angles.
RGB bytes/hashes and raw resolved/sample depth/alpha bytes match the original;
stencil/sample-stencil hashes match. Actual alpha file lengths and SHA256
are independently retained. V2's same two independent fixtures also pass on
an actual SIMD128 WASM engine using the preview's non-fast-math flags, a 4-GiB
maximum and 2-MiB worker stacks. No native sanitizer, full production CTest,
all-mode real-model or browser-model acceptance run is claimed for these
unadopted prototypes. Platform-gate code is retained for further investigation.

## Instrumented current work

Separately instrumented V2 renders 31 current frames per model, a 30-frame
orbit and the final 160-degree view. Successful complete queries using a
partial cell are 62,720/17,677/47,506/44,940 for Bistro/Sponza/BMW/T-80.
These counts include triangle queries as well as packet queries. Relative to
the retained original `52aff7b` packet census, four-triangle packet rejections
increase from 968,468→982,246, 305,611→310,136, 310,017→322,207 and
214,346→226,878. Successful real depth writes stay identical, as expected for
discarding only fragments that already fail depth. Instrumented times are
excluded from FPS acceptance.

The first census recipe omitted the atomic declarations in some translation
units; the second accidentally compiled the original driver rather than its
counter-exporting copy. Both failed recipes/build logs remain in validation.
The corrected third recipe forces the diagnostic declarations and explicitly
uses its own instrumented driver. Timed sources/libraries were never edited
or rebuilt to fix these diagnostic adapters.

## Native screens

One complete quiet AB/BA block per variant and original asset, 640×360/4× MSAA,
four total threads, 60 warm-up and 30 measured rotating frames; completion,
resolve/readback and output copy are included. All final view hashes match.
Builds, quality, WASM and instrumented runs finish before these timing blocks.
Positive values cost time; no short screen is an accepted gain.

| Variant | Bistro time change | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| V1, maintained maximum | +1.75% | +7.59% | −1.48% | +3.19% |
| V2, query-local maximum | +2.96% | +12.64% | −20.23% | −5.27% |
| V3, outlined query | +0.66% | +12.07% | +2.04% | −0.55% |

V2 BMW's control is 24.972/15.841 ms versus candidate 16.552/16.004 ms;
the large apparent improvement comes from a single slower control request.
V3 BMW is slower in both directions. V2 T-80 improves both directions, but V3
does not confirm that result as a family-wide gain. Bistro costs more in both
V2 directions; V3's change is small and mixed. Sponza again varies from roughly
33 to 45 ms across control launches, so these estimates do not prove fixed
algorithmic costs. The archive retains all 48 selected and four rejected
timings, including the V1 T-80 block rejected for foreign CPU load. No repeated
OFF/2×/4× acceptance campaign or product integration follows this evidence.

`validation/` retains actual source/recipe/build identities, numeric/enabled
fixtures, real alpha/depth/image receipts, the failed and passing diagnostics,
WASM module/library identities and all native timing attempts. Verify with
`python3 experiments/scene-msaa-partial-cell-hiz/verify.py`; raw frame planes
and binaries remain local.

```sh
python3 experiments/scene-msaa-partial-cell-hiz/prepare.py --output-root build/partial-cell-new --query-local --outlined
cmake -S build/partial-cell-new/recipe -B build/partial-cell-new/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DSCENE_TRIAL_ROOT="$PWD/build/partial-cell-new"
cmake --build build/partial-cell-new/native -j4
```

Next: [constant-normal lighting projection](../scene-constant-normal-lighting/README.md)
targets a shorter material shader without more work on the visibility path.
