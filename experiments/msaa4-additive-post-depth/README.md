# Additive post-Z stores (2026-10-04, rejected)

A private four-sample store reuses the rasterizer's post-depth coverage only
for additive blending with no depth writes, no sample-mask modifiers and no
pixel-serial fragment states. Accepted byte increments use the existing exact
saturation guard; other colors return to the existing writer. Both variants
match each model's 100 hashes and four bytewise frames. The dedicated WASM
contract passes 65,536 storage comparisons and 128 query-oracle frames; its
fixture explicitly enables depth writes before clearing the oracle contexts.

The inline screen gives BMW -7.12% but T80 +3.49%; the BMW reference arm
contains an unusually slow 52.04ms round, so this is not useful gain evidence.
The outlined variant's three complete quiet AB/BA pairs give BMW
+13.32%/-0.51%/-0.09% (median -0.09%) and T80 -1.59%/+0.24%/-3.01%
(median -1.59%). The first BMW candidate arm is unusually slow at 57.42ms;
all raw results remain recorded. No reproducible BMW gain is demonstrated,
so neither variant is retained. Full image/sanitizer/browser gates are not
run for these rejected variants. Production remains at 9a0e20a1.
Evidence: `build/diagnostics/msaa-additive-post-z*/validation.json` and
`build/perf/tigerlake-20261004/msaa-additive-post-z*-*.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
