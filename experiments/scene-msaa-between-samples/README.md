# Reject zero-sample MSAA geometry before bin storage

Status: accepted after repeated native Bistro gains and exact native/WASM
correctness. Production and live browser updated.

OFF already rejects empty one-pixel triangles during geometry preparation.
Extend that principle to genuine 2×/4× coverage. Before allocating a primitive
or bin references, test whether a thin triangle's full fixed-point AABB contains
any actual sample from the repeated pattern. For an original one-pixel AABB,
evaluate the exact 16.8 integer edges at its possible samples too. Reject only
when the proven sample mask is empty; retain every other triangle and the
original sample/depth/shading paths. Do not replace samples with pixel centers.

The candidate reuses coordinates, winding and bounds already computed in
geometry preparation. SIMD128 checks actual paired sample phases, not an
unrelated Cartesian grid. Explicit coordinate bounds guard the periodic math;
one-pixel differences bound exact edge products, including inactive lanes.
Unsupported ranges retain the accepted route. Clipping and finite validation
precede this test. No draw-order change or extra persistent buffer.

Measure actual rejected AABBs/triangles and the total frame, since testing
surviving triangles costs time. Independent tiny-sample, top-left/boundary,
clipped/cutout/overlap and budget-rollback controls, all model views, repeated
native OFF/2×/4×, ISA/sanitizer and actual WASM/browser gates precede adoption.
Only native measurements below establish gains; no GLimpSW parity is claimed.

Initial native gates: 216 independent original full-plane hashes and 576
tiny/boundary/clipped/cutout/overlap/large-triangle hashes match the accepted
`bedf9b1` baseline exactly. Existing real sample, rollback and ordinary draw
controls pass. The audited small fixture exercises all four branches:
384 thin-AABB tests, 66 AABB rejects, 228 one-pixel exact tests, 36 edge rejects.

Untimed Bistro census, nine orbit frames plus the final 160-degree image:
1,987,626 thin-AABB tests, 726,969 AABB rejects, 76,101 one-pixel exact tests,
53,313 exact edge rejects. These are diagnostic counts, not timing evidence.
First balanced four-run screen at 640×360 and four total threads gives
2× 56.386865 → 52.711473 ms (-6.52%) and 4× 64.707954 → 63.585125 ms (-1.74%).
The OFF median also moves, with one unusually slow baseline run, despite the
OFF algorithm being retained; it is a control, not an MSAA-culling benefit.
All three final screen RGB images match byte for byte. This first screen was followed by the confirmation and gates below.

Reproduce frozen sources with `python3 experiments/scene-msaa-between-samples/prepare.py`;
choose `--output-root` for a new tree. Configure this folder with
`-DSCENE_TRIAL_ROOT=/absolute/frozen/tree` and Clang 22 Release. For untimed
branch counters use `-DSOFTGL_MSAA_VISIBILITY_AUDIT=ON` and the
`between_contract`/`between_resident` targets. Do not time audited libraries.

Source: [Laine and Karras, HPG 2011, triangle-setup culling](https://users.aalto.fi/~laines9/publications/laine2011hpg_paper.pdf).
It describes rejecting between-sample AABBs and testing coverage for very small
triangles. This SIMD128 2×/4× extension of libsoftgl's existing OFF test is our
adaptation; upstream GPU performance is not evidence for it.

Repeated native confirmation: 144 quiet accepted runs and four runs rejected
because foreign CPU use exceeded 0.1 core. Three balanced blocks, 60 warmup
and 30 measured orbit frames, readback included, same assets/cameras, four
total threads. Bistro 2×: 55.212635 → 51.549820 ms (-6.63% time, +7.11% FPS).
Bistro 4×: 64.147244 → 62.923833 ms (-1.91% time, +1.94% FPS). Every Bistro
block improves: 2× -5.65/-6.45/-6.63%, 4× -1.90/-2.35/-2.57% by block means.

Other measured OFF/2×/4× changes in frame time: BMW -0.96/+0.52/-2.44%,
T-80 -7.72/-0.14/+1.16%, Sponza -2.84/-1.40/-0.86%, Bistro OFF -0.45%.
These controls retain their algorithms; do not attribute their variations to
MSAA empty-triangle rejection. T-80 4× has a small measured cost. The correctness, SIMD128, sanitizer and real WASM/browser gates below pass.
The repeated complex-scene gains do not meet the requested Bistro doubling.

108 all-model/native view pairs have identical full RGBA and every exported
depth/stencil/sample-depth/sample-stencil hash; RGB channel error is zero.
288 resident/fresh-context full-plane comparisons pass through OFF/2×/4×/OFF
context reuse. Address/undefined-behavior sanitizers with leak detection pass
the new 576-case culling fixture, existing grouped-MSAA/admission fixture and
ordinary-draw rollback fixture. Native disassembly has 65,642 XMM references,
zero AVX instructions and no YMM/ZMM registers.

Actual WASM compares its own accepted/candidate builds: 216 original hashes
and 576 independent new full-plane hashes are exact. A separate audited WASM
build repeats the same 576 cases and records 384/66/228/36 tests/rejects,
exercising every new culling branch with genuine 2× and 4× sample storage.
The small-kernel audit retains 11,046 passing samples while removing 42
zero-coverage small-triangle calls. Near-occluder rollback followed by ordinary
MSAA rendering also passes. Browser measurements are not native FPS evidence.

Production verification: all 757 native CTests pass (102.19 s). The production
archive exactly equals the timed candidate, SHA-256
`a52d06913625f5e608e259d830c8028e0f3fbf5fefef8bf434cc5192ec7adea6`.
The 12 browser model/sample modes pass at actual 640×360 with three helper
workers plus the caller, isolated shared memory and no JavaScript errors.
Peak actual WASM heap: 2,845,048,832 bytes, below 4 GiB. Bistro 4× screenshot
visually inspected. Native compilation has no new warnings; Emscripten emits
its existing pthread/memory-growth notice.

The live server serves the same bytes as the production build: WASM
1,364,543 bytes, SHA-256
`c56252ab798e9cb42ad42134e50680d65c7f2a85a99e39e994dbf314b108aa95`.
Sources, raw accepted/rejected attempts, independent full-plane checks and
artifact hashes are archived in [validation](validation/metadata.json).
