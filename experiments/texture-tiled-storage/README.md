# Exact tiled texture storage

Research brief, 2026-10-07. **First fixed direct-2D 4x4 candidate implemented, fully gated and rejected; broader hypothesis open.** This
expands the existing [texture-block hypothesis](../ordered-packed-capacity/next-research.md)
with an inspected implementation and a diagnostic-first plan.

## Hypothesis

Small 2D texel blocks can keep both rows of a bilinear footprint near each
other in memory. SoftGL currently stores texture levels in row order and
loads horizontal RGBA8 pairs when all active lanes satisfy adjacency checks.
A tiled layout could improve locality on rotated or vertically separated
footprints, while adding address work and potentially losing those pair loads.

Change storage and addressing only. Keep the original four texels, coordinate
wrapping, mip selection, float/integer filtering, rounding and combiner
expressions. A derived tiled copy can leave row-order storage available for
readback and unsupported paths, at the cost of memory and update work.

## Primary sources

- GLimpSW, revision `2f915606d50b70fef8859ef29adc9d53f9aee887`:
  [Texture.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Texture.h),
  especially `GetTexelOffset` and `SampleLinear`: linear, 4x4 and vertical
  eight-texel layouts with layout-specific gathers.
- The same revision's [TexSwizzle.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Benchmarks/TexSwizzle.cpp)
  compares several addressing layouts, including Morton ordering. Its
  [README](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md)
  reports that practical tiling benefits can be small.

Local clone: `/home/cosmo/Git/GLimpSW`. Its AVX512 instructions and filter
choices are not drop-in SoftGL code or evidence of a WASM benefit.

## First diagnostic and implementation boundary

Inspect the actual BMW/T-80 sampler mix: targets, level dimensions, filters,
live lanes, horizontal-pair eligibility and crossings of candidate block
boundaries. Bind observations to the production module and model packs.
Logical footprints do not establish cache misses or bandwidth limits.

The existing [packet-lane census](../packet-lane-occupancy/README.md) observes
no T-80 off packets because that mode uses the legacy quad shader; MSAA
scalar tails also bypass its counter. Instrumenting only
`sg_packet_sample_2d` would therefore leave important controls unobserved.
The sampler diagnostic must account for packet, legacy quad and scalar routes,
and distinguish a direct 2D texture from the 2D face view used by coherent cube
packets. Keep per-route totals and coverage explicit rather than interpreting
missing counters as zero sampling work.

Record the actual four post-wrap texel addresses of each live bilinear lane,
including seams, repeated texels and original horizontal-pair eligibility.
Candidate block crossings and logical address groups can be derived from these
coordinates without changing the gathers or interpolation. Use private
per-thread rows, read/reset only after joined rendering, explicit overflow
checks, and exact frame/hash comparisons against the accepted module. Counter
overhead and logical block counts are diagnostic observations, not acceptance
timings or measured cache savings.

The [completed sampler diagnostic](../sampler-footprints/README.md) covers
all actual 2D fetch routes including T-80 off, repeats 600 angle/key tables
exactly and preserves all 1200 model hashes. Row-major 4x4 tiles touch fewer
logical groups than row order and Y8, but lose many original horizontal pairs.
The fixed first candidate is a derived 4x4 copy for RGBA8 direct 2D POT levels
at least 4x4; cube faces and unsupported states retain row order. BMW direct
2D is a minority of its sampling work and T-80 MSAA pair loss is a specific
risk. These are addressing observations, not cache misses or measured speed.

Select one fixed layout with a documented rationale before acceptance timing;
do not choose a layout by retaining only favourable benchmark runs. Start with
supported RGBA8 2D levels and retain row-order fallback for other formats,
targets, dimensions or allocation failures. Consider cube-face support only
after the 2D behavior is established.

Integration points are [texture.c](../../libsoftgl/src/texture.c),
[frag_packet.h](../../libsoftgl/src/frag_packet.h) and scalar/cube samplers in
[fragment.c](../../libsoftgl/src/fragment.c). Re-prove pair eligibility at
tile and texture boundaries rather than reusing row-order assumptions.

## Completed first trial

The [fixed direct-2D 4x4 trial](../texture-tiles4/README.md) passes 745 native tests plus
Bench1, 25 sanitizer contracts and 24 WASM contracts, plus all image/model
controls. It is rejected after eighteen quiet AB/BA pairs: BMW off is slower in all six pairs (+0.861504/+1.119110%
by audit), BMW4 regresses in both audits, and BMW2 point gains are tiny relative
to pair variation. T-80 does not supply a stable compensating benefit. Eligible
level storage doubles, and the independent native API-only diagnostic records
full re-swizzle/update costs. Accepted D4 remains active.

This rejects one fixed layout/implementation on the measured workloads; it
does not disprove all tiling or prove a hardware ceiling. Fewer logical groups
alone are insufficient. A future storage variant needs a distinct mechanism
and all evidence retained, rather than selecting favourable runs.

## Validation and decision

Compare exact addresses and sampled values against original storage for every
wrap/filter combination, partial packets, NPOT and odd dimensions, small mip
levels, seams and boundary crossings. Exercise upload/subimage, framebuffer
copies, readback, deletion, object reuse and immutable queued texture lifetimes.
Invalidation must finish at the existing synchronization boundaries.

Apply the [shared validation protocol](../validation-protocol/README.md).
Report memory overhead and upload/update costs separately from warmed sampling.
Reject a candidate that changes filtering or only wins a synthetic sampler
benchmark without reproducible renderer gains.
