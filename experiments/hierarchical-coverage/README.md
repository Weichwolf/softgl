# Hierarchical coverage traversal

Research brief, 2026-10-07. **Proposed, lower priority; not implemented or
measured.** This concerns geometric coverage inside an existing worker stripe,
not a change to worker-bin shape or depth-buffer layout.

## Hypothesis

Evaluate edge extrema over larger blocks before visiting individual pixels
or quads. Completely outside blocks need no finer traversal; completely
inside blocks can skip repeated coverage predicates. Partial blocks descend
to the existing exact fine path. This may help large or thin triangle boxes,
but block setup and traversal can cost more than they save for small boxes.

SoftGL already performs trivial accept/reject on 2x2 quads. The proposed
difference is an additional coarse level, not simply adding that existing
test again. Depth, interpolation, shading, sample writes and primitive order
must retain their current expressions and behavior.

## Primary source

EDXRaster, revision `9e72ba5abdd07635f554fae14f3093bbe6aa954a`:

- [README](https://github.com/behindthepixels/EDXRaster/blob/9e72ba5abdd07635f554fae14f3093bbe6aa954a/README.md):
  16x16 binning followed by hierarchical 8x8/fine rasterization with SSE.
- [Rasterizer.h](https://github.com/behindthepixels/EDXRaster/blob/9e72ba5abdd07635f554fae14f3093bbe6aa954a/EDXRaster/Core/Rasterizer.h):
  `CoarseRasterize`, corner tests and trivial-accept/fine paths.

Local clone: `/home/cosmo/Git/EDXRaster`. Upstream block dimensions and sample
conventions are references, not automatically suitable SoftGL parameters.

## Diagnostic and integration

Count active bin-clamped boxes by width/height and the number of blocks that
would be outside, inside or partial under an independently verified classifier.
Distinguish full triangle area from the actual visited box. The historical
[triangle histogram](../triangle-size-histogram/README.md)
and [work census](../raster-work-census/README.md) motivate this distinction;
their counters are not current frame-time estimates.

Choose one coarse block size and eligibility rule before timing. Keep the
existing stripe ownership and fine fallback in
[raster_triangle_impl.h](../../libsoftgl/src/raster_triangle_impl.h) and
[raster_msaa_impl.h](../../libsoftgl/src/raster_msaa_impl.h). Bound calculations
must account for exact top-left bias, each MSAA position, scissor/bin edges
and wide integer ranges. Fully accepted blocks still require depth and all
applicable fragment operations. Preserve traversal order initially.

## Validation and decision

Compare exact coverage masks with an independent wide-integer oracle for
thin triangles, shared edges, tiny/large boxes, partial blocks, large
coordinates and all sample modes. Verify interpolation, output planes,
queries and geometry/depth-replay classifications on the actual kernels.
Geometric emptiness must not be confused with depth invisibility.

Apply the [shared validation protocol](../validation-protocol/README.md).
Keep the rejected rectangular-bin, scanline and row-span HZ work separate;
none establishes a gain for coarse coverage traversal. Stop before a full
candidate if the diagnostic shows too little eligible work.
