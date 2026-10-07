# Depth-filtered vertex preparation rejected

The accepted HZ replay leaves many vertices unused in later material passes.
Two fresh variants skip their transforms and attributes, first zeroing complete
vertices and then zeroing only compact output. The first instrument observes
25,668.35 skipped vertices from 42,914.69 eligible inputs/frame, but neither
variant provides a reproducible BMW gain with 4x MSAA. The first changes paired
BMW time by +0.067% / -0.546%; the second regresses +1.786% / +0.797%.
Both 2x audits regress for both variants. The compact-output variant improves
off by 1.403%, a mode-specific gain that does not justify its other costs.

Each variant passes 741 native tests plus the benchmark, 21 sanitizer contracts,
240 WASM/Mesa images, 234 exact control images in every sample mode, and both
models' 100 hashes/four raw frames per mode. One contaminated 2x attempt was
discarded and repeated; its guard decision is preserved. Source patches,
complete accepted crossover samples, guard decisions, identities, regression
scope and reproduction commands are now tracked in
[the experiment package](../../depth-visible-vertices/README.md). The public
`tools/wasm_research_compare.py` runs and verifies this comparison protocol.
`tools/wasm_perf.cjs` now waits for readback on every off frame too, matching
the private driver used in these measurements. Short off/2x/4x self-comparisons
verify the public tool; their loaded timings are not performance evidence.

The logical savings do not establish that preparation is on the frame's
critical path. The next isolated cube-target trial ports only the previously
promising packet sampler kernels onto current HZ source, preserving accepted
RGBA filtering and depth replay. It needs fresh measurements against current
031038cf; historical cube gains do not demonstrate a current gain.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
