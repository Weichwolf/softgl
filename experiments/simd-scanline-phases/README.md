# 2026-10-05: exact SIMD scanline phases, held/rejected

Two private row walkers retain the accepted stripe layout and all float color,
depth and interpolation expressions. Three SIMD lanes track three edge
quotients and Euclidean remainders. Because a biased maximum sample edge value
C advances by 256*dy per row, floor(C/(256*d)) equals floor((C>>8)/d).
The quotient/remainder can therefore advance exactly with adds, a comparison
and a carry correction; excluded pixel tails need no repeated proof checks.
The divisor and whole-height displacement are checked before narrowing to
signed i32. Exceptional ranges retain the original i64-verified scanline.

The first implementation divides in i64 during initialization and uses the
existing width>=8 / area>=64 eligibility. The revision uses two SIMD float
divisions as proposals, accepts quotients only after exact i64 remainder
validation, and extends eligibility to width>=3 / area>=12. Its input bounds
protect float-to-i32 conversion and i64 products; rounding cannot make an
incorrect quotient pass the remainder identity. No retained allocation or
worker coordination is added.

| Private walker | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 | Decision |
| --- | --- | --- | --- |
| Integer initialization, SIMD row recurrence | -5.47% / +0.55% | -2.18% / -3.58% | Hold: BMW benefit unconfirmed |
| SIMD proposals, exact remainders, smaller boxes | +2.42% / +3.25% | +1.10% / +1.26% | Reject: all six BMW pairs slower |

Each has two quiet three-pair 4x AB/BA audits, 640x360, three helpers plus
caller, 80 warm-up / 100 measured frames per arm, resolve/readback every frame.
All twelve pairs pass the activity guard on attempt one. The first integer
audit has highly variable raw arm times (BMW reference 36.80–53.10ms), and
the steadier second audit fails to confirm a BMW gain. No measurements are
discarded or attributed to an unmeasured source of load. No full retention
or off/2x timing gates follow either performance hold/rejection.

Both pass the unchanged independent full-frame edge oracle on native, WASM
and ASan/UBSan/leaks: each 4,480 frames / 46,688,256 exact sample masks,
including thin/wide/tall geometry, large coordinates and packed-edge limits.
Each also passes 51 WASM renderer checks, 135 queue hashes, 100 exact rotating
hashes and four byte-identical frames per model at 4x. Production remains
unchanged. Evidence: build/diagnostics/{msaa-simd-span-phase,
msaa-simd-span-proposal}/{validation.json,phase-proof.md,experiment.patch};
all raw timing arms and host monitors under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
