# CPU-Rasterizer and decoupled sampling source audit

Status: research inspected locally; no copied implementation, benchmark or
new speedup. The basic MSAA shading reuse is already present in libsoftgl.

Cloned first into `/home/cosmo/Git/CPU-Rasterizer`, immutable revision
`c716a6b2bfc12d7a21f0921b059203445e03eb2b`.
[GraphicsDevice.cpp](https://github.com/Guarneri1743/CPU-Rasterizer/blob/c716a6b2bfc12d7a21f0921b059203445e03eb2b/src/core/GraphicsDevice.cpp)
sets pixel-frequency shading by default and its `multisample_fragment_stage`
reuses `SubsampleParam.pixel_color` for later samples, unless subsample-frequency
shading is selected. This is useful confirmation of a design pattern, not
evidence that this renderer is faster on our scenes. Its README lists Windows;
we have not ported or timed it.

Also reviewed the authors' primary
[Decoupled Sampling for Graphics Pipelines](https://people.csail.mit.edu/jrk/decoupledsampling/),
TOG 30(3), presented at SIGGRAPH 2011. Its many-to-one mapping and memoized
shading separate visibility and shading rates. Our visibility grouping already
shares one shading job across samples of the same winner/point. Further sharing
across surfaces or pixels would require measured cache overhead and explicit
quality assessment; the paper's architectural simulation estimates are not
CPU-native speed predictions.

The existing [surface-merging census](../scene-msaa-surface-merge/README.md)
and [coarse-shading trial](../scene-coarse-shading/README.md) already explore
parts of that direction. Do not re-label those results as new gains.
Independent next work is the [compact attribute record](../scene-compact-attributes/README.md)
and our [exact packet coordinate decoder](../scene-packet-coordinate-decode/README.md).
