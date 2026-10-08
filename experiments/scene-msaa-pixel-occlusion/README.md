# Reject definitely hidden MSAA pixels before sample coverage

Status: private generator prepared; native correctness and performance pending.

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
