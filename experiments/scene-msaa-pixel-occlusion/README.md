# Reject definitely hidden MSAA pixels before sample coverage

Status: two private native variants against accepted `bedf9b1`; both exact in
initial fixtures, neither adopted after weak first Bistro 4× screens.

The existing hierarchy requires all samples of a 4×4 cell before rejecting a
triangle box. Try a finer early test against the four real depths of one pixel,
before evaluating its sample coverage and barycentric depth. Compare every
sample to the same conservative triangle lower bound in SIMD128. If all four
reject, advance integer edges without shading or changing depth/coverage.

Reuse the existing 2e-6 interpolation margin for finite vertex depths in [0,1],
GL_LESS and no polygon offset. NaN comparisons fail open. Alpha holes retain
their real farther sample depths; rollback restores the same depths. Preserve
the ordinary kernel for unsupported states, other sample counts and depth
capture/classification. No extra pixel-depth buffer or previous-frame data.

Potential cost: an early depth read/compare for every candidate pixel; benefits
depend on overdraw. Reuse the loaded depths for surviving pixel tests. Count
actual early kills, check independent sample-plane hashes and all model views,
then repeated all-four OFF/2×/4× native timing before adoption. WASM/SIMD128,
sanitizers and browser checks remain mandatory. No gain is claimed.

Source: [Laine and Karras, High-Performance Software Rasterization on GPUs,
HPG 2011, MSAA discussion](https://research.nvidia.com/sites/default/files/pubs/2011-08_High-Performance-Software-Rasterization/laine2011hpg_paper.pdf).
The paper describes conservative per-pixel rejection before per-sample coverage;
the CPU SIMD128 comparison and existing depth-error bound are our adaptation.
GPU timing ratios are not predictions for libsoftgl.

General-kernel-only variant: 216 independent accepted-library hashes and
48 local-occluder/cutout/tiny/near-clip hashes are exact; sample rollback and
ordinary-draw replay pass. The audited local fixture records 2,220 early tests
and 18 real rejects while whole 4×4 cells remain incomplete. Bistro 4× balanced
AB/BA screening gives 63.545→63.736 ms (+0.30% frame time).

`--small-kernel` adds the same bound to the accepted ≤8×8 path, preserving
integer stepping and reusing old sample depths. It separately freezes sources
and also matches 216+48 hashes. Its first Bistro 4× screen gives
64.849→64.069 ms (-1.20% frame time). Each screen accepts four quiet runs,
60 warmup and 30 orbit frames, four total threads and identical packs/cameras.
One block is insufficient to establish that small apparent benefit. No
all-asset confirmation, actual-WASM or production change is claimed. Keep the
last accepted WASM while pursuing work with larger potential.
