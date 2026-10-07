# Two-sample hierarchical depth: shared helpers not retained

Extending the conservative 4x4-cell depth table to actual 2x storage improves
BMW paired 2x time by 9.272% / 9.669% and T80 by 5.308% / 4.474%. BMW 4x,
however, regresses by 2.313% / 1.023%. The source remains an unretained trial;
a successor separates the 2x/4x helpers at compile time to investigate this
cost. This is a hypothesis about specialization, not a demonstrated cause of
the regression.

The trial passes 742 native tests plus the benchmark, 22 sanitizer contracts,
240 WASM/Mesa images, 234 exact control images in each sample mode, both
models' 100 hashes/four raw frames per mode and separate actual 2x/4x HZ
sample-plane/query contracts on native/WASM/ASan. The reproducible source
patch, all fifteen accepted pairs and validation scope are in
[the experiment package](../../hz2-basic/README.md).

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
