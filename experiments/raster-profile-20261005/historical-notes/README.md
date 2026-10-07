# Warmed raster profiles and rejected row-span HZ

[Module-bound BMW profiles](../../raster-profile-20261005/README.md) preserve raw
CDP samples for off and 4x, matching symbol maps, an outlined diagnostic patch,
image-equivalence checks and complete summaries. The public
`tools/wasm_profile_summary.py` verifies the profiled module's hash and retains
all worker profiles. Samples include waiting/preemption and inlined work;
they cannot establish cycles, cache misses or a hardware-limit percentage.

Strict HZ rejection of row spans in partially visible triangles reduces
logical raster candidates, but all six BMW 4x pairs are slower. Paired audit
changes are +2.821% / +3.148%, so the production renderer remains unchanged.
The trial passes 743 native tests plus the benchmark, 23 sanitizer contracts,
240 WASM/Mesa images, 234 exact controls in each sample mode, both models'
100 hashes/four raw frames per mode and an observed-skip sample-plane contract.
[The rejected trial package](../../hz4-span/README.md) publishes source, all fifteen
guarded pairs, regression bindings and separate logical-counter observations.

The [outer-span-loop successor](../../hz4-span-loop/README.md) removes the per-pixel
cell/alignment test but also fails to improve BMW: paired 4x time changes
+3.563% / +3.660%, with all six pairs slower. Its independent source patch,
fifteen first-attempt guarded pairs and full fresh regression evidence are
published. These two trials share the accepted reference; separate audits
do not directly measure their difference. Neither enters production.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
