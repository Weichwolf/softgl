# A4 and sparse adaptive anti-aliasing

Status: paper and pinned implementation reviewed locally; research only.

Barringer and Akenine-Möller, SIGGRAPH 2013, render one sample everywhere on
the GPU and refine important pixels on the CPU. A hierarchical importance map
restricts traversal to silhouette/discontinuity pixels; all potentially
contributing triangles, including background triangles without silhouette edges,
must still be considered. The CPU sorts opaque triangle sequences by a
conservative local depth bound, maintains per-pixel maximum sample depth and
compacts surviving fragments before shading. Sample offsets are precomputed
for a SIMD packet of triangles. Section 6 supports four-wide SSE4.1.

These are not uniform 16× MSAA results from an isolated CPU renderer. Table 1
also reports a separate all-pixels CPU variant, but its scenes, hardware,
resolution and shaders differ from our comparison. The paper reports sensitivity
to alpha-textured edges, surface intersections and sample-missed small triangles.
None of its speed ratios is a predicted libsoftgl gain.

Own CPU adaptation hypothesis: first generate a single-sample visibility image,
then conservatively refine pixels whose local geometry or alpha coverage can
differ across the real 4× sample pattern. A color/depth discontinuity detector
alone cannot guarantee preservation of subpixel geometry. Before an adaptive
approximation is accepted, quantify thin objects, cutout foliage, intersecting
surfaces and all four asset silhouettes. A mixed-rate adaptive result must be
labelled separately from genuine full-frame 4× MSAA; the current objective's
uniform 4× comparison remains necessary.

The safer exact alternative skips repeated edge tests only when a triangle
provably covers all sample positions, retaining all per-sample depths and
cutout decisions. Existing MSAA full-coverage and hierarchy shortcuts already
implement parts of this idea; measure the missing work before creating a variant.

Sources: [author project](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/),
[nine-page paper](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf),
and [SimdRast](https://github.com/rasmusbarr/simdrast/tree/e6a2a07fa92e55ba11107915455685f8ef7cd60c).
Clone: `/home/cosmo/Git/simdrast`, revision in [sources.json](sources.json).
Reviewed `README`, `LICENSE`, `ImportanceMap.cpp`, `Resolve.cpp`,
`TriangleSetup.cpp`, `Binning.cpp` and `Config.h`. Upstream is MIT licensed;
no upstream source is copied into libsoftgl. The PDF stays in ignored `tmp/`.
