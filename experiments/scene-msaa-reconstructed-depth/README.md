# Reconstruct uniform MSAA depths from a surface plane

Status: own architecture proposal; not implemented or timed.

Our accepted uniform-winner encoding reduces visibility metadata writes but
still writes all four float depths on every successful overwrite. Test whether
a scene-private uniform pixel can retain a surface reference and reconstruct
its four distinct sample depths only when a later comparison needs them.
Mixed winners keep the ordinary four-depth representation. Expand all pending
depths before scene completion, rollback, ordinary drawing, depth queries or
any consumer that reads the physical sample planes. Keep four real sample
positions and separate winning depths; this does not replace MSAA with one
visibility sample.

The adaptation must include Hi-Z: its summaries currently read actual sample
planes, so an unexpanded plane cannot be used as current depth. Reuse the
stored surface equation where possible, preserve the original clamp and
comparison order, and compare against an independent explicit four-depth
reference. Quantify rounding errors if arithmetic reconstruction changes them.
Material cutouts and partial sample overwrites must expand before modification.
Rollback must restore every original depth/color plane and invalidate summaries.
No prior-frame reuse, asset reduction or extra wide SIMD is allowed.

First measure uniform overwrites, repeated depth reconstructions, mixed-sample
transitions and bytes written on the four canonical models. A single SIMD128
store already writes four depths efficiently; reconstructing them may cost more
than it saves. Require repeated total-frame measurements, image/sample-plane
checks, native/WASM SIMD128 and the existing memory budget before adoption.
There is no established speedup or claim that this will close the GLimpSW gap.

Sources and distinction: [DCAA, Wang et al., HPG 2015](https://research.nvidia.com/labs/rtr/publication/wang2015decoupled/)
consolidates surfaces and decouples their depth from coverage; its approximation
and high sample-count GPU results do not establish CPU 4× performance here.
[AGAA, Crassin et al., I3D 2015](https://research.nvidia.com/labs/rtr/publication/crassin2015agaa/)
aggregates geometric/material properties to bound shading work. This proposal
does not aggregate different materials or shade them as one surface. See our
[uniform metadata implementation](../scene-msaa-uniform-metadata/README.md)
and [surface-merging census](../scene-msaa-surface-merge/README.md).

Local review: the DCAA PDF was downloaded to `tmp/research/hpg15_DCAA.pdf`
(SHA256 `b0823bf2da5761c1625cc8ec78c5967014f74ae944ba8f47ea55f8c8dcd9a982`)
and its surface resolve/coverage sections read locally. It evaluates a depth
plane at each coverage position during resolve, and uses edge LUT masks plus
conservative rasterization for dense coverage. Its merge/discard heuristics and
GPU interlocks are not needed for our proposed single-surface encoding and
would require separate quality checks if adapted. No source code is copied.
