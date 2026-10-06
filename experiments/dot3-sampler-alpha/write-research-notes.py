"""Write this completed trial's results and a source-bound follow-up hypothesis."""
from pathlib import Path
import hashlib
import json
import shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
load=lambda p:json.loads(p.read_text())
a=load(r/'analysis.json')
rows='\n'.join(f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary'])
text='''# Unused-alpha elision in classified DOT3 sampling

Rejected under BMW priority. Without MSAA all six BMW pairs are slower;
audit geometric means change +1.505%/+1.411%. BMW 2x changes
+0.775%/-0.398%; 4x changes +0.397%/+0.959%. T-80 2x/4x audit means improve,
but that does not justify the BMW regressions. The accepted D4 renderer,
prepared geometry, live viewer and compact FPS report remain unchanged.

## Mechanism

The existing complete-state classifier recognizes three DOT3 chains. Kind1
consumes unit0 RGB, unit2 RGBA and unit3 RGB; kind2 consumes unit0/unit2 RGB;
kind3 consumes unit0 RGB. Only kind1/unit2 needs sampled texture alpha.
The candidate adds an internal sample_alpha parameter. The nearest/float-linear
2D sampler returns 1 for unused alpha before extracting/filtering that component.
Integer filtering and all original wrappers retain full RGBA. Constants, cube,
1D/3D and scalar fallbacks retain their original full-component implementation.
RGB operation grouping, texture gathers/storage/lifetime, final alpha, every
combiner clamp, depth/MSAA ordering, geometry and worker coordination stay exact.
Only frag_packet.h and the independent pixel_packet.c oracle change.

An initial private generator used an incorrect fixture comparison anchor.
failed-generator-anchor/ retains its actual source, written header draft and
exit-1 receipt. No candidate was compiled or rendered from that draft. The
corrected generator reconstructed fresh source before the actual build/gates.

## Bound producer and static diagnostics

All 20 library translation units are freshly compiled. Nineteen are identical
to D4; only rasterizer.c.o changes. The archive binds the source patch, source
hashes, objects, all 259 link inputs, commands and actual producer module hash.
All six bound raster roots grow by 138–226 WASM bytes. Their declared SIMD
local counts stay 31/31/27/27/35/35; each has one additional i32 local.
Whole-root mask/shift/shuffle/conversion/add site counts stay unchanged, with
one extra f32x4.mul site each. An elided channel is a conditional execution
path, so static site counts do not quantify its dynamic savings.

Selected alpha-store byte excerpts are retained with explicit limits: the
reference excerpt contains nested operations/stores, while the candidate
excerpt isolates a nearest-alpha store. They are not comparable isolated
linear-alpha costs or a proof of complete control flow. The whole raster-root
WAT and its symbol/module bindings are retained. Full module WAT/binaries are
excluded. None of these observations measures V8 native instructions, spills,
cache behavior or a hardware ceiling. Branch and body growth do not establish
the cause of the measured regressions.

## Complete fidelity gates

744 native tests + Bench 1, 24 ASan/UBSan/leak contracts, 23 WASM contracts,
240 unchanged-tolerance Mesa comparisons and 234 exact test images in each
sample mode pass. Both models match 100 dual hashes and four full byte frames
per mode. The extended independent scalar oracle passes 1,325,788 exact
consumed-alpha component comparisons on native and WASM, alongside the existing
331,447 sampler and 128,054 shader comparisons. The MSAA edge oracle passes
4480 frames, 62,251,008 sample masks and 12,431,040 coefficient lanes. Direct
logs bind post-depth/DOT3 query, replay, queue and index checks. No new native
warning line relative to D4.

## Predeclared repeated measurements

Two audits for each off/2x/4x mode, three crossover AB/BA pairs per audit,
two rounds per pair, 80 warmup and 100 measured rotating frames at 640x360.
BMW/T-80 use three helpers plus the caller and resolve/readback every frame.
All 18 planned comparisons complete, all on the first quiet-guard attempt.
The unchanged foreign-CPU threshold is 0.10 cores; raw guard observations are
retained. The guard does not prove absence of unobservable Windows host load.
Negative relative frame-time change is faster. Audit values below are geometric
means of all three raw crossover ratios, recomputed by analyze-timings.py;
the driver also retains its separately defined median summaries.

| Scene | Samples | Audit 1 | Audit 2 | Faster/slower pairs |
|---|---|---|---|---|
'''+rows+'''

## Reproduction

```sh
python3 experiments/dot3-sampler-alpha/verify_artifacts.py
python3 experiments/dot3-sampler-alpha/reproduce-candidate.py --prepare-only
python3 experiments/dot3-sampler-alpha/reproduce-candidate.py --work build/diagnostics/dot3-sampler-alpha-fresh
```

The source reconstruction was executed with --prepare-only; both changed-source
hashes match. recipe-check/ retains that receipt. The fresh producer/full-gate
branch is provided but not executed. The original isolated producer, full gates
and all 18 comparisons above were executed. Full reproduction requires the
baseline Git revision, Emscripten 3.1.69, matching local canonical WASM case
catalog, frozen D4 build/model packs, Linux OSMesa, CMake/C compiler and
Playwright/Chromium. Recorded scripts expose these local prerequisites.
Other toolchains and paths can change identities. Scratch remains below build/;
the recipes do not overwrite the production source or the live server assets.

The archive verifier checks artifact/fixture/log hashes, source reconstruction,
recorded complete gates, bound static sites and all 18 guarded comparisons.
It does not rerun rendering or infer a performance ceiling. The
[next research note](next-research.md) examines streaming the classified chain
instead of sampling all units before combining; that candidate is unbuilt.
'''
(r/'research-readme.md').write_text(text)
(r/'next-research.md').write_text('''# Next hypothesis: consume each classified texture stage immediately

The unused-alpha experiment is rejected. Its runtime component flag adds
branches and body bytes without demonstrating a reproducible BMW benefit.
Keep the accepted sampler unchanged for the next isolated mechanism.

Current sg_shade_packet declares tex[4][4], samples enabled units in a runtime
loop, fills disabled units with ones, and then consumes the stored results.
At source level that table holds 16 SIMD vectors (256 bytes). This is not proof
that every vector remains in physical memory, that all are simultaneously
live, or that V8 spills them. The actual bound D4 raster roots declare 27–35
SIMD locals; declarations are not register-pressure measurements.

The complete-state classifier fixes dependencies for kinds 1/2/3. Investigate
constant unit indices and immediate consumption: sample unit0, calculate and
clamp DOT3, then sample/consume unit2 only for kinds1/2; for kind1 finish the
clamped albedo stage before sampling and adding unit3. Kind3 needs only unit0.
Use the existing full-RGBA sampler; any unused-output elimination should follow
from constant call sites instead of a new per-channel runtime flag. Preserve
the exact ordered DOT3 sum, every intermediate clamp, primary alpha and final
constant alpha, generic states, constant textures and target fallbacks.

This changes stage scheduling and source-level temporary lifetimes. It may
reduce scratch/live state and dynamic unit-index addressing; compiler inlining
may instead duplicate three samplers and grow the instruction footprint. Neither
outcome is established. Inspect actual linked bodies and source history before
building; do not attribute a frame-time result to spills without native-code
or independent evidence. Bind any candidate to fresh producer identities,
complete fidelity gates and all 18 off/2x/4x comparisons against D4. No candidate
from this note is implemented, measured or adopted.
''')
# Retain the actual unchanged classifier/preparation sources inspected for this note.
folder=r/'source-review';folder.mkdir(exist_ok=False)
records={}
for name in ['libsoftgl/src/frag_packet.h','libsoftgl/src/frag_combine_hot.h','libsoftgl/src/fragment.c']:
 p=repo/name;dest=folder/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,dest)
 records[name]=hashlib.sha256(p.read_bytes()).hexdigest()
(folder/'review.json').write_text(json.dumps(dict(status='unchanged-D4-source-inspected-follow-up-unbuilt',sourceFiles=records,
 scope='Current source/classifier and current module diagnostics only. No exhaustive historical or external novelty claim.'),indent=2)+'\n')
recipe=r/'recipe-check';recipe.mkdir(exist_ok=False)
for name in ['reproduction-receipt.json','validation.json']:
 shutil.copy2(repo/'build/diagnostics/dot3-sampler-alpha-recipe-source'/name,recipe/name)
s=(r/'prepare-publication.py').read_text().replace("['timings','wasm-contracts','recipe-check','failed-generator-anchor']","['timings','wasm-contracts','recipe-check','failed-generator-anchor','source-review']")
(r/'prepare-publication.py').write_text(s)
print('Wrote measured rejection, exact source-review records, and unbuilt scheduling hypothesis')
