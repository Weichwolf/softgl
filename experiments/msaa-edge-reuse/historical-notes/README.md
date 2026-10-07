# Coverage-edge reuse retained

The [four-sample edge-reuse variant](../../msaa-edge-reuse/README.md) subtracts
top-left bias from existing coverage vectors before depth interpolation,
preserving exact coefficients and the packed/wide fallbacks. BMW paired
4x time improves 1.813% / 1.019% / 0.853% in two initial audits and one
predeclared confirmation audit; seven of nine pairs improve. T80 is mixed
(-2.057% / +0.983% / -1.338%), retained under BMW priority. No 2x speedup
or statistical equivalence claim follows from its mixed measurements.

All eighteen pairs pass the unchanged guard on their first attempt. Full
fresh checks pass 743 native tests plus the benchmark, 23 sanitizer contracts,
240 WASM/Mesa images, 234 exact controls per mode, both models' 100 hashes/four
raw frames per mode and all 22 standalone WASM contracts. The new actual-kernel
observer verifies 12,431,040 coefficient lanes and 62,251,008 sample masks on
native/WASM, with matching results and sanitizer coverage. Both browser UIs
pass; canonical JS/WASM match the measured `58132377` candidate byte-for-byte.
The package publishes source, all raw comparisons, gate bindings, matching
symbol maps and scoped static code-generation observations.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
