# Precomputed perspective attribute planes for visible triangles

Status: queued architectural prototype; implementation and measurements pending.

The current deferred shader gathers three vertex values per component and
multiplies them by per-pixel perspective weights. Prepare interpolation
coefficients once per actually visible triangle, after clipped canonical
attributes are available; evaluate those coefficients in four-pixel SIMD128
packets. Reuse existing attribute storage where possible instead of adding
another texture/geometry cache. Geometry, four genuine MSAA samples, depth,
cutoff tests, textures and their resolution must keep their current inputs.

For an attribute `a`, reciprocal clip weights `q0,q1,q2` and raw barycentric
coordinates `b0,b1` (`b2 = 1-b0-b1`), the numerator is mathematically:

```
A = a0*q0 - a2*q2
B = a1*q1 - a2*q2
C = a2*q2
attribute = (A*b0 + B*b1 + C) / (q0*b0 + q1*b1 + q2*b2)
```

Optionally prepare the denominator in the same two-coordinate form. A further
screen-space-gradient variant can combine these coefficients with the stored
edge planes. These are separate variants; measure preparation, memory and full
frame costs, not only isolated interpolation. Do not assume they will win.

Reassociation changes float rounding and may shift texture/filter samples.
Treat this as a documented shading approximation, with unchanged coverage,
physical sample depths and alpha visibility. Canonical/raw/clipped records and
mixed legacy draws require explicit admission/fallback and lifecycle checks;
never read unprepared or overwritten raw attributes. Keep clipping basis,
canonical UV0/UV2 identity, reciprocal-weight validity and centroid/sample
selection. Reject unusable coefficients safely, with original rendering.

The previous exact [attribute-transpose experiment](../scene-attribute-transpose/README.md)
reduces some scalar loads but shows no large MSAA gain in its screens. The
[current hardware profile](../scene-alpha-plane/README.md) assigns roughly 26%
of self CPU-cycle samples to material resolve, plus separate cube sampling;
this is an opportunity indicator, not a wall-time ceiling or predicted gain.

Sources: our [original attribute interpolation](../../libsoftgl/src/scene_visibility.c),
[visible/clipped attribute producer](../../libsoftgl/src/geometry.inc),
[record declarations](../../libsoftgl/src/geometry_types.inc) and the algebra
above. This is our CPU/SIMD128 adaptation; no upstream performance claim or
uninspected source is used.

Use all four original packs/cameras at 640×360, caller plus three workers,
native SSE4.1 and actual WASM SIMD128, real OFF/2×/4×. Independent original
interpolation references, enabled/fallback coverage fixtures, quantified and
inspected images precede timing. Adoption requires repeated all-mode AB/BA,
full native/sanitizer/WASM/browser gates, commit/push and the live module update.
Priority remains Bistro > Sponza > BMW F31 > T-80.
