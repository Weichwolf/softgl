# Next hypothesis: exact 2D texture block storage

Primary sources reviewed on 2026-10-06:

- Igehy, Eldridge and Hanrahan, [Parallel Texture Caching](https://graphics.stanford.edu/papers/parallel_texture/parallel_texture.pdf), section 4.3.1: arrange cache blocks as square or near-square texel regions; examine conflict avoidance and raster traversal separately. The paper simulates graphics hardware. Its speedups do not predict WASM/CPU performance.
- Google SwiftShader, [SamplerCore.cpp at 1e80438](https://github.com/google/swiftshader/blob/1e80438d2b93ef36a7c05f8d2b81233bac0e3d16/src/Pipeline/SamplerCore.cpp): its integer bilinear implementation computes weights and channel results with packed integer operations. This offers a comparison point; SoftGL already uses native i16 pair-dot operations for its integer packet filter, so this alone is not a new optimization.

Local inspection: `texture.c` stores uploaded level data in row order;
`frag_packet.h:sg_packet_sample_2d` forms row addresses and loads horizontal
RGBA8 pairs when every live lane has adjacent x coordinates. Floating and
integer filtering share those gathers. The scalar fallback and cube view also
need correct addressing. Changing storage must therefore preserve all four
texel values and update pair eligibility at block boundaries. The existing
paired-gather code cannot be reused unchanged on a tiled buffer.

A candidate should change storage/addressing without changing interpolation,
DOT3, prepared geometry, framebuffer formats or thread scheduling. A derived
2D tile buffer could preserve the raw representation for GL readback and
fallbacks, at the cost of extra storage and upload/update work. Audit upload,
subimage, framebuffer copy, object deletion, mip levels and worker snapshots;
use original storage on allocation failure. Additional address operations and
lost pair eligibility could outweigh locality. Cache misses, physical traffic
and saved cycles have not been measured here.

Before selecting one fixed tile layout, check historical local trials and
inspect the live BMW sampler mix. Then run exact addressing/lifetime contracts,
complete regressions and the same 18 off/2x/4x comparisons. No tiled candidate
has been built or measured in the capacity trial.
