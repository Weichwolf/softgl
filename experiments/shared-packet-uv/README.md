# Shared packet UV calculation (2026-10-04, rejected)

Two private variants share perspective XY interpolation and normalized wrapping
between sampled 2D units 0 and 2 when all three vertex coordinate bit patterns
and wrap modes match. Each sampler keeps its own dimensions, filtering, texel
addresses and weights. BMW material inspection finds several normal/albedo
pairs with different resolutions, so identical texture grids are not assumed.
Constants, different targets, mismatched coordinates and wraps retain the
original sampler. Both variants pass strict native/WASM scalar sampler and
DOT3 oracles, each model's 100 hashes and four raw frames, and all 234 rendering
cases for both 2x and 4x MSAA. The second numeric fixture also exercises shared
coordinates with different dimensions, filtering and wrapping.

The per-packet proof variant 8d6a5160 regresses BMW in all three quiet 4x pairs
(+5.49/+1.26/+1.05%; aggregate +1.26%). T80 gives -8.30/-1.20/+1.46%,
which does not prove a repeatable gain. Hoisting the proof to triangle setup
(cef3fe1b) gives BMW -1.64/-0.73/+0.53% and T80 -0.39/+1.36/-0.95%.
Neither variant is retained. Full gates and additional sample-mode performance
controls are intentionally not run for rejected variants. Renderer arithmetic,
assets and image tolerances remain unchanged. Baseline is acfc66bb throughout.
Evidence: build/diagnostics/packet-shared-uv*/validation.json and
build/perf/tigerlake-20261004/packet-shared-uv*-summary.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
