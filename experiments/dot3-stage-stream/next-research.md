# Next diagnostic: useful lanes in the accepted four-pixel shader

The stage-stream implementation improves small off/2x audit means but loses
BMW 4x in all six pairs. Static sampler duplication does not diagnose why.
Instead of another small loop change, quantify a possible architectural limit:
how many useful pixel lanes enter each invocation of sg_shade_packet?

The [SIGGRAPH 2010 paper](https://graphics.stanford.edu/papers/fragmerging/shade_sig10.pdf)
examines fragment merging across adjacent mesh triangles. Its merge conditions
include equal screen location, disjoint MSAA coverage, matching sidedness and
edge connectivity. Its method selects shared shading inputs for merged quads.
Those approximation and performance results do not establish an exact SoftGL
optimization or a gain on the BMW/T-80. Source review covers the actual eight-page
paper, not only its abstract; primary download/parser identities are retained.

Our hypothesis is narrower in semantics: pack original independent fragments
from different triangles into SIMD lanes while retaining every original shading
input/result. Keep same-pixel dependencies, sample coverage/depth, alpha/stencil,
blending, queries, texture state/lifetime and worker ownership correct. Pending
writes must complete before a conflicting later depth/stencil/blend operation.
A conservative fallback/flush is necessary for unsupported states and aliases.
No shading-rate reduction, attribute averaging or scene-geometry change follows
from this note. Packing and gathering interpolants can cost more than it saves.

Before designing that path, instrument accepted D4 in a private build. Count
shader invocations by live pixel population 1–4, shader kind and MSAA mode after
invalid interpolation lanes are removed. Distinguish SIMD pixels from MSAA
coverage samples. Use private per-worker counters and aggregate/reset only after
existing render completion; no per-packet shared atomics. Report invocation and
useful-lane totals and validate their exact partition equations per frame.
Keep disabled instrumentation byte-identical to D4. Repeat BMW/T-80 observations
in all modes, bind actual module/model identities and run complete fidelity gates.
These counters can bound logical spare lane capacity, not frame-time savings,
physical register use or a hardware-performance fraction. No diagnostic or
cross-triangle packing candidate from this note has been built or measured.

## Numerical alternatives remain separate

[OpenGL 1.5](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf), section 2.1.1,
sets an approximate 1-in-100000 accuracy requirement for individual floating-point
operations; appendix A also constrains repeatability and arithmetic invariance.
Section 3.8.13 defines DOT3 and clamps combiner results per stage. This leaves
room for validated floating-point regrouping; it is not permission to erase
clamps or assume arbitrary fixed-point precision is conformant.

For bounded normalized DOT3 inputs, rounding a primary signed coefficient to
q/32767 gives absolute coefficient error at most 1/(2*32767). In real arithmetic,
three texture coefficients bounded by 1 give dot error at most 3/(2*32767),
about 4.58e-5. Clamping cannot increase that absolute error; later stages can.
This derived absolute bound does not establish the specification's per-operation
relative precision, preserve quantization boundaries or prove image quality.
No Q15 path or relaxed numeric tolerance is introduced. A future numerical
candidate needs an independent error analysis, unchanged Mesa tolerances and
applicable invariance checks; FMA and rounding freedom alone prove no speedup.
