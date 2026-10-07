# Two-sample hierarchical depth with static specialization retained

Separate 2x/4x state, writer and occlusion helpers retain constant sample
indexing and coverage masks in the hot kernels. BMW 2x improves
9.843% / 10.789% and T80 6.047% / 5.034%; all six BMW 2x pairs improve.
BMW 4x changes -0.153% / +0.227%, with three faster and three slower pairs.
That supports adoption for the large 2x gain, without claiming a 4x speedup
or statistical equivalence. BMW off changes -0.589%, T80 off +1.478%.
Two-sample depth capture/replay remains disabled.

All fifteen pairs pass the unchanged guard on the first attempt. Full gates
pass 742 native tests plus the benchmark, 22 sanitizer contracts, 240
WASM/Mesa images, 234 exact control images per mode and both models'
100 hashes/four raw frames per mode. Combined actual 2x/4x HZ sample-plane
and query checks pass on native/WASM/ASan. The expanded public contract
also checks both allocation-prefix overflow boundaries on 32-bit WASM.
Both browser UIs pass 234 tests, 18 sequential benchmark rows, cancellation
and sample switching. Canonical JS/WASM match the measured candidate
902bcf8c byte-for-byte. Source patch, complete raw comparisons and gate
bindings are in [the retained experiment package](../../hz2-static/README.md).

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
