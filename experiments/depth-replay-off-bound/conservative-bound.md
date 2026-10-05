# Off-mode minimum-depth bound

This trial uses a conservative geometric bound rather than storing which
floating-point shader path produced the capture depth. It reuses the rounding
margin already documented in `libsoftgl/src/raster_hz.h`, with no polygon
offset and **without** the multisample depth clamp.

For a covered pixel the raw integer edges are nonnegative, their exact sum is
the positive integer area A, and exact weights a0/a1/a2 sum to one. A material
change cannot change those edges or vertex depths while the geometry entry's
position/matrix/viewport keys remain valid. If each vertex depth is finite and
in [0,1], the exact affine depth is at least the smallest vertex depth m.

Let u = 2^-24 be binary32 unit roundoff. Converting an edge/area to binary32,
forming the reciprocal and multiplying introduces approximately 3u relative
error in b0 and b1. Their combined absolute weight error is bounded by about
3u because a0+a1 <= 1. Reconstructing b2 = 1-b0-b1 adds at most about 2u in
absolute error. Multiplying the three weights by depths in [0,1] and summing
their products adds a few more unit roundoffs. The ordinary scalar and explicit
quad operation groupings remain comfortably within the existing 32u margin;
this is not an allowance to change their arithmetic. Subnormal flush effects
are far below this absolute margin.

The capture bound is L = fl(m - 2e-6). Its single subtraction rounding is
included in the margin. Therefore requiring **L > every actual stored depth
at a geometrically covered pixel** proves that the reference cannot pass a
later LESS, LEQUAL or EQUAL test, including a switch between the existing
packet, scalar and quad producers. Off-mode interpolated depth is not clamped,
so L remains negative when m is near zero. Clamping L to zero would make the
proof inappropriate for this renderer's off-mode arithmetic.

Only packet capture reuses existing depth loads in this first variant.
An actual passed sample or a stored depth >= L marks the reference weakly
visible. Other shader branches retain all nonempty references. Vertex depths
outside [0,1], nonfinite vertices, stencil, polygon offset, unsupported depth
functions or disabled depth testing also retain references. Scissor capture
remains unsupported. Visibility here precedes alpha tests, sample controls,
color masks, blending and queries; those states cannot justify removing a
reference that may pass a later depth test.

Existing monotonic-depth epochs and ordered publication are still required:
the bound alone does not authorize reuse after a clear, a nonmonotonic write,
a position/matrix change or an entry/storage revision. Intrinsic geometric
emptiness is a separate class. Its persistent compaction and the transient
hidden bitmap use the existing entry capacity and shared 4 MiB budget.

The new fixture evaluates 4,608 geometries/depth planes against **actual**
ordinary packet, scalar and quad LEQUAL/ALWAYS rendering. A class-2 reference
must cover pixels under ALWAYS yet produce no color in any LEQUAL producer;
visible references and LESS ties must remain. Cases retained by the
conservative margin despite actual rejection are counted explicitly. Expanded
API tests switch to untextured, single-texture LINEAR, generic combiner and
fog paths after capture, comparing full color/depth/stencil planes and queries
with forced cache misses. This finite test domain supplements the bound; it
does not establish a hardware limit or exhaust every possible floating input.
