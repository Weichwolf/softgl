"""Describe the actual completed trial and a literature-informed diagnostic next step."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent
a=json.loads((r/'analysis.json').read_text())
rows='\n'.join(f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary'])
(r/'research-readme.md').write_text('''# Immediate consumption of classified DOT3 texture stages

Rejected as a common all-mode implementation. BMW off and2x audit means
improve, but BMW4x is slower in all six pairs (+0.852%/+1.358%). T-80 4x
also regresses (+0.614%/+1.446%). Keep accepted D4 source, module, compact
benchmark report and live viewer. No mode-restricted derivative is built.

## Isolated scheduling mechanism

The original packet shader samples units in a runtime loop into tex[4][4],
then evaluates DOT3 and the remaining combiner stages. The candidate reuses
a four-vector result block. It samples unit0 and immediately calculates DOT3;
it then consumes unit2 for kinds1/2, and finally samples/adds unit3 for kind1.
Kind3 retains its self-modulation. Constant unit indices replace the dynamic
loop. Masked-unit defaults remain for synthetic prepared contexts.

All original full-RGBA sampler bodies are byte-identical at source level:
prior-review/review.json binds their unchanged prefix and the scoped historical
search. There is no per-channel runtime flag or imported alpha-elision patch.
The ordered DOT3 sum, intermediate clamps, alpha results, targets/constant
fallbacks, gathers, texture storage/lifetime, geometry, depth/MSAA ordering,
threads and atomics remain unchanged. Only libsoftgl/src/frag_packet.h changes;
existing independent scalar/image/model contracts validate the scheduling change.

## Actual producer and static observations

All20 library units are freshly compiled. Nineteen match D4 exactly; only
rasterizer.c.o differs. Source hashes, objects, all259 link inputs, commands
and actual JS/WASM module identities are retained. All six bound raster roots
grow by6903–7296 WASM bytes. Their declared SIMD locals change from
31/31/27/27/35/35 to33/33/28/28/36/36. Twelve other inspected root bodies
remain exact. The three inline sampler call sites duplicate filtering code.

The source-level sample table shrinks from16 to4 SIMD vectors (256 to64
bytes). That does not prove less physical scratch memory or lower register
pressure. Declared locals, body bytes and whole-root opcode-site counts are
static observations, not V8 machine instructions, spills, dynamic execution,
cache behavior or a hardware ceiling. They do not establish the cause of the
4x regressions. Bound whole-root WAT and symbol maps are retained; full-module
WAT, binaries and private downloaded paper/text are excluded.

## Complete fidelity and repeated measurements

744 native tests + Bench1,24 ASan/UBSan/leak contracts,23 WASM contracts,
240 unchanged-tolerance Mesa comparisons and234 exact test images per sample
mode pass. BMW/T-80 each match100 dual hashes and four complete byte frames
in off/2x/4x. The existing independent scalar contracts pass331,447 sampler
and128,054 shader comparisons on native and WASM, including all three chains,
constant textures and cube/1D/3D targets. Edge checks pass4480 frames,
62,251,008 sample masks and12,431,040 coefficient lanes. Direct receipts bind
post-depth stores, DOT3 queries, replay/queue states and unsigned index ranges.
No new native warning line relative to the published D4 warning list.

Two audits per off/2x/4x mode, three crossover AB/BA pairs per audit, two rounds
per pair,80 warmup and100 measured rotating frames at640x360, three helpers
plus caller, resolve/readback every frame. All18 planned comparisons finish,
all on the first quiet-guard attempt. The threshold stays0.10 foreign CPU
cores; the guard cannot prove absence of unobservable Windows host load.
Negative change is faster. Below are geometric means of all three raw paired
ratios per audit, recomputed by analyze-timings.py. The original driver also
retains its separately defined median summaries.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
'''+rows+'''

## Reproduction

```sh
python3 experiments/dot3-stage-stream/verify_artifacts.py
python3 experiments/dot3-stage-stream/reproduce-candidate.py --prepare-only
python3 experiments/dot3-stage-stream/reproduce-candidate.py --work build/diagnostics/dot3-stage-stream-fresh
```

Source reconstruction was executed with --prepare-only and the changed-source
hash matches; recipe-check/ retains the actual receipt. The fresh producer/
full-gate branch is provided, not executed. The original isolated producer,
complete gates and all18 comparisons above were executed. Full reproduction
requires the recorded baseline Git revision, Emscripten3.1.69, matching local
canonical WASM case catalog, frozen D4 build/model packs, Linux OSMesa,
CMake/C compiler and Playwright/Chromium. Scripts expose these prerequisites;
other paths/toolchains can change identities. Generated files stay below build/.

The verifier checks source reconstruction, artifact/fixture/log hashes, recorded
complete gates, bound static sites and all18 guarded observations. It does not
rerun rendering or establish a performance ceiling. The
[next research note](next-research.md) proposes an occupancy diagnostic before
any fragment-packing architecture; no such diagnostic/optimization is built.
Primary-source URLs and private download/parser identities are recorded in
prior-review/external-review.json. An initial PDF helper lacked pdftotext;
a local build/ Python dependency later reads the eight-page paper. This document
lookup has no effect on the renderer's successful gates or sealed timings.
''')
p=r/'research-readme.md';s=p.read_text()
for old,new in [('and2x','and 2x'),('BMW4x','BMW 4x'),('All20','All 20'),('all259','all 259'),('by6903','by 6903'),('to33','to 33'),('from16','from 16'),('to4','to 4'),('to64','to 64'),('Bench1,24','Bench 1, 24'),('contracts,23','contracts, 23'),('and234','and 234'),('match100','match 100'),('pass331','pass 331'),('and128','and 128'),('pass4480','pass 4480'),('and12','and 12'),('pair,80','pair, 80'),('and100','and 100'),('at640','at 640'),('All18','All 18'),('stays0','stays 0'),('Audit1','Audit 1'),('Audit2','Audit 2'),('all18','all 18'),('Emscripten3','Emscripten 3')]:s=s.replace(old,new)
p.write_text(s)
(r/'next-research.md').write_text('''# Next diagnostic: useful lanes in the accepted four-pixel shader

The stage-stream implementation improves small off/2x audit means but loses
BMW4x in all six pairs. Static sampler duplication does not diagnose why.
Instead of another small loop change, quantify a possible architectural limit:
how many useful pixel lanes enter each invocation of sg_shade_packet?

The [SIGGRAPH2010 paper](https://graphics.stanford.edu/papers/fragmerging/shade_sig10.pdf)
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
shader invocations by live pixel population1–4, shader kind and MSAA mode after
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

[OpenGL1.5](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf), section2.1.1,
sets an approximate1-in-100000 accuracy requirement for individual floating-point
operations; appendixA also constrains repeatability and arithmetic invariance.
Section3.8.13 defines DOT3 and clamps combiner results per stage. This leaves
room for validated floating-point regrouping; it is not permission to erase
clamps or assume arbitrary fixed-point precision is conformant.

For bounded normalized DOT3 inputs, rounding a primary signed coefficient to
q/32767 gives absolute coefficient error at most1/(2*32767). In real arithmetic,
three texture coefficients bounded by1 give dot error at most3/(2*32767),
about4.58e-5. Clamping cannot increase that absolute error; later stages can.
This derived absolute bound does not establish the specification's per-operation
relative precision, preserve quantization boundaries or prove image quality.
No Q15 path or relaxed numeric tolerance is introduced. A future numerical
candidate needs an independent error analysis, unchanged Mesa tolerances and
applicable invariance checks; FMA and rounding freedom alone prove no speedup.
''')
p=r/'next-research.md';s=p.read_text()
for old,new in [('BMW4x','BMW 4x'),('SIGGRAPH2010','SIGGRAPH 2010'),('population1','population 1'),('OpenGL1.5','OpenGL 1.5'),('section2','section 2'),('approximate1','approximate 1'),('appendixA','appendix A'),('Section3','Section 3'),('most1','most 1'),('by1','by 1'),('most3','most 3'),('about4','about 4')]:s=s.replace(old,new)
p.write_text(s)
print('Measured rejection and source-linked, unbuilt occupancy diagnostic documented')
