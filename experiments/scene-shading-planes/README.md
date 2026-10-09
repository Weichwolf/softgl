# Precomputed perspective attribute planes for visible triangles

Status: private C11/SIMD128 prototypes measured; no production adoption.

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

## Native prototypes

V1 prepares the coefficients above after canonical vertex attributes and
clipped attributes have been produced, only for visible triangles. It reuses
the original color/UV storage instead of allocating another attribute cache.
A high bit in the internal triangle material word distinguishes coefficients
from raw attributes; both record producers reset that word on every new
record. Material IDs are limited to 4096, and pixel material IDs are unchanged.
The reciprocal denominator retains the original three perspective weights.
Coverage, alpha-test visibility, sample positions, depth and geometry remain
on the original pipeline. This is current-frame algebra, not temporal reuse.

Invalid nonpositive/nonfinite reciprocal clip weights or nonfinite coefficients
retain all original attributes without partial mutation. Legacy records that
do not use the canonical attribute producer remain raw. Four-lane packets
support all 16 prepared/raw masks. The common fully prepared path performs
two numerator multiplies instead of three; mixed packets select the appropriate
weights for each lane. This changes floating-point rounding, and is not an
exact attribute transformation in finite precision.

V2 additionally loads complete aligned attribute vectors and transposes them
into SIMD128 lanes, sharing loads across the requested components. V3 uses
SIMD blends for mixed weights and prepares coefficients only after a triangle
has at least four visible shading groups. Existing per-bin visibility bytes
become saturated counters; sample-group formation and counts are unchanged.
V3's additional counting and mixed-record work did not produce a better screen.

The frozen recipes and patches retain each version independently. Native
compilation uses clang 22, SSE4.1 and explicit AVX/AVX2/AVX512 prohibitions.
The original model packs, cameras, all physical OFF/2×/4× modes and four total
threads are used. Automatic mesh LOD is disabled in both benchmark wrappers;
this experiment measures the shader change against original geometry.

```sh
build/python/bin/python experiments/scene-shading-planes/prepare.py \
  --baseline 622bfe104f1b9c4650848d5a682d540fd58a7ac3 \
  --output-root build/scene-shading-planes/new --packed
cmake -S experiments/scene-shading-planes \
  -B build/scene-shading-planes/new/native -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-shading-planes/new"
cmake --build build/scene-shading-planes/new/native -j4
build/scene-shading-planes/new/native/planes_contract
```

Add `--minimum-groups 4` to reproduce V3. Omit `--packed` for V1. Initial
versions retain the earlier store/select implementation for mixed weights;
the current helper uses the equivalent SIMD blend. To reproduce the precise
measured implementation, use that version's frozen recipe and patch rather
than assuming current generator defaults describe every past binary.

## Native timing

Each request has 60 warm-up and 30 timed orbit frames; timing includes render,
completion and readback/copy. Whole AB/BA blocks with software-observed foreign
CPU use above 0.1 cores are rejected. This does not exclude hypervisor/frequency
drift: Sponza's first baseline 4× request can exceed 50 ms while later ones are
about 38 ms. Screens are one balanced block; V2's priority-scene 4× confirmation
uses three balanced blocks (six baseline and six candidate requests per scene).

| Version | Bistro 4× frame-time change | Sponza 4× frame-time change | Scope |
| --- | ---: | ---: | --- |
| V1, all visible triangles | +1.53% | +5.06% | Screen |
| V2, packed components | −1.57% | −11.13% | Screen with substantial drift |
| V2, independent repeat | +0.63% | +1.03% | Three AB/BA blocks |
| V3, at least four groups | +2.02% | +8.46% | Screen |

The repeated V2 medians are Bistro **54.223 → 54.568 ms** and Sponza
**38.324 → 38.720 ms**. Signs are mixed within the repeat; no reliable priority
4× gain is demonstrated. Lower numerator arithmetic does not overcome record
preparation, gathering and dispatch costs in these implementations.

Remaining V2 modes have single-block screens only:

| Scene | OFF frame-time change | 2× change | 4× change |
| --- | ---: | ---: | ---: |
| Bistro | −12.42% | +0.48% | +0.63%, three-block repeat |
| Sponza | +4.71% | +4.04% | +1.03%, three-block repeat |
| BMW F31 | +1.57% | −0.34% | −0.12% |
| T-80 | +5.87% | −0.13% | +0.12% |

Bistro OFF's first baseline is 41.644 ms and its later baseline 33.180 ms;
candidate requests are 32.915/32.615 ms. Its −12% aggregate is therefore a
drifting screen, not an accepted gain or evidence that the arithmetic saves
12% of production time. BMW/T-80 MSAA do not run the new coefficient path.
All raw requests, rejected blocks and original medians remain in the archive;
there is no selective removal of the slow baseline requests.

## Validation scope

V1/V2 each have 18 Bistro/Sponza 4× paired views. V2 adds 90 views covering
the remaining models/modes, and V3 has 108 paired views over all four models
and all three sample modes: 234 pairs in total. Every resolved/sample depth
and stencil plane is byte-identical. RGB channel differences are at most
one byte; worst image mean error is about 0.001 byte. BMW/T-80 MSAA stay on
the original forward path, so their unchanged output does not establish that
the new coefficient path ran in those cases.

The actual helper performs 327,680 component comparisons over all 16 mixed
masks, checks repeated preparation and five invalid-data fallbacks. V3's
packed helper is also checked against its scalar implementation. These
fixtures pass natively, under clang 19 ASAN/UBSAN and in actual WASM SIMD128.
They exercise coefficient preparation/interpolation, not a browser scene or
every OpenGL state. Disassembly scans cover both libraries, both resident
drivers, both quality drivers and the helper fixture for each native version;
no wider SIMD or AVX instruction is found. Ordinary test tolerances are unchanged.

There is no accepted speedup, production shader modification, browser shader
mode or new Mesa/GLimpSW comparison from these trials. The existing automatic
mesh mode remains the live preview. A separate screen-space-gradient variant
could replace per-pixel integer edge evaluation too; it is still unimplemented
and needs its own numerical/fallback and timing checks.
