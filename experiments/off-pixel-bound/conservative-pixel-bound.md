# Conservative per-pixel depth bound

No rendering precision or interpolation arithmetic is changed. Capture reuses
its actual packet depth zc and stored depth; it retains an actual passing lane
or any lane satisfying fl(zc-c)<=stored, with c=fl(4e-6). Unsupported capture
states and scalar/quad capture branches retain nonempty references as before.
The bound stays unclamped. Existing geometry/state/monotonic-epoch/storage and
ordered-publication guards remain mandatory.

## Error model

Consider a geometrically covered pixel with nonoverflowing integer edge
arithmetic: A>0, E0/E1>=0 and E0+E1<=A. Let ai=Ei/A and a2=1-a0-a1.
All vertex depths Zi are finite binary32 values in[0,1]. The exact affine
reference depth is D=sum(ai*Zi), in[0,1]. This refers to the already prepared
vertices and fixed-point coverage, not idealized original world coordinates.

Ordinary packet, scalar and quad off producers convert raw i64 E0/E1 to
float, multiply by the same reciprocal of float(A), reconstruct b2=1-b0-b1
and evaluate screen-linear depth. Quad coverage saturates signs; its depth
coefficients convert raw i64 values, not saturated i32 coefficients.
Polygon offset is disallowed for hidden classification, so its additive zero
does not enlarge depth error. Shader perspective reciprocals do not enter z.

With u=2^-24 and round-to-nearest binary32 operations, use gamma4=4u/(1-4u)
for edge conversion, area conversion/inversion, reciprocal rounding and the
weight product. Then |b0-a0|+|b1-a1|<=gamma4. The two b2 subtractions add at
most rho=u+u*(1+gamma4+u), so |b2-a2|<=gamma4+rho. Total weighted depth error
from these coefficients is at most2*gamma4+rho. Since b0/b1 are nonnegative
and b2 can be slightly negative, sum|bi|<=1+2*gamma4+3*rho. The three depth
products and two summed levels add at most gamma3 times that absolute sum,
where gamma3=3u/(1-3u).

Thus one producer's absolute error is bounded by
B=2*gamma4+rho+gamma3*(1+2*gamma4+3*rho), about13.00000525u. Use32u, retaining
the deliberately conservative budget already used by hierarchical depth.
Underflow/flush contributions for operands bounded by one are negligible
relative to this unused margin. This argument covers the existing operation
structure; it is not permission to introduce arbitrary approximate division
or change grouping without checking the bound.

The WASM production flags are O2/SIMD128 with no fast-math; the source uses
float division for inverse area. Current native O3/fast-math/SSE4.1 capture
assembly also emits CVTSI2SS/DIVSS at the inverse-area setup. Native shader
reciprocal instructions elsewhere do not imply an approximate area reciprocal.
The assembly records are static evidence, not cycle/cache/spill measurements.
Actual-render oracles check both engines independently.

## Reusable strict-hidden predicate

Both packet capture and any later ordinary producer are within32u of D;
therefore consumer depth zd>=zc-64u. Since zc lies in[-32u,1+32u], subtracting
c keeps absolute values below one, so one subtraction rounding contributes
at mostu. The actual binary32 c is3.999999989900971e-6, or67.1088638305664u;
it exceeds65u by1.256980795e-7. Hence fl(zc-c)<=zc-64u<=zd. If that lower bound
is strictly greater than the actual stored depth at EVERY geometrically
covered pixel, no later LESS/LEQUAL/EQUAL consumer can pass. An actual passing
lane always retains the reference, and subtraction margin also retains ties.

This per-pixel bound is often tighter than min(vertex depth)-2e-6 on slopes,
but its larger margin can retain more references on almost flat geometry.
It removes min-vertex setup and adds work on failed covered lanes before weak
visibility is known. There is no guaranteed consumption or performance gain.

## Evidence and limits

rounding-budget.py performs exact rational checks of the formulas and actual
binary32 constant. This proves the numeric inequalities under the stated
model, not compiler behavior for every conceivable flag or all input domains.
The expanded fixture retains all4608old off cases and adds3072cases with
wide raw-i64 edges/areas, slopes and stored planes derived from actual ordinary
packet/scalar/quad depth writes, shifted by one ULP and around1e-6/4e-6.
All7680cases compare classification against actual ordinary LEQUAL/ALWAYS
renders; full depth planes must stay immutable during comparisons. Existing
8192MSAAcases and348actual queued state/plane/query cases remain required.
Full regressions and a new consumption diagnostic are required before timing.
Neither finite tests nor this error model establish a hardware limit.
