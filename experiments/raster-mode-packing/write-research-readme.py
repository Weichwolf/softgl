"""Generate the final account from the actual measurements and codegen checks."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent
load=lambda p:json.loads(p.read_text())
v,a,d,g=[load(r/name) for name in ['validation.json','analysis.json','decision.json','entry-codegen.json']]
times=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
code=[]
for name in ['sg_raster_triangle_tile_prepared','sg_raster_triangle_off_prepared','sg_raster_triangle_depth_capture','sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared']:
 row=next(x for x in g['roots'] if x['label']=='candidate' and x['name']==name)
 code.append(f"| {name} | {row['bodyBytes']} | {row['localDeclarations'].get('0x7b',0)} |")
text=f"""# Static raster modes with within-triangle off pixel packing

Decision: **{d['status']}**. {d['reason']}

This independent candidate combines the [outer mode split](../raster-mode-entry/README.md)
with [exact off pixel packing](../off-pixel-packing/README.md), starting from
accepted D4. The earlier modules were both rejected; their timings do not
predict this combined module. The earlier lane diagnostic measured only
48.672125% live packet shader lanes for BMW off, motivating the packing.

`SG_RASTER_SAMPLES` generates separate off, 2x and 4x outer entries, selected
before triangle setup. Only the off normal/capture bodies contain pending
pixel state and the packed shader route. Sparse depth-eligible pixels retain
original edges, depth and destination coordinates; packets never cross a
triangle, draw state or worker stripe. Dense quads with no pending pixels keep
the original direct shader route. Defined masked SIMD lanes handle the last
one to three pixels. All writes retain the original post-depth or full fallback
writer. Prepared geometry, original interpolation, sample predicates,
shaders, stores, query behavior and worker ownership remain unchanged.
No new threads, atomics, texture formats or GL API states are added.

## Repeated comparisons

All eighteen fixed comparisons run against frozen D4: two audits x three
AB/BA pairs x off/2x/4x, both BMW and T-80, two rounds per pair, 80 warm-up
and 100 measured rotating frames at 640x360, three helpers plus caller, and
resolve/readback each frame. All actual guard attempts and per-round times
are retained. Negative time changes are faster; each audit value is the
geometric mean of its three paired ratios. These observations do not establish
a hardware ceiling or statistical equivalence.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster/slower pairs |
|---|---|---|---|---|
"""+'\n'.join(times)+"""

## Actual compilation

All twenty library translation units are freshly compiled. Nineteen match D4
byte for byte; only rasterizer.c.o changes. The module links 259 bound inputs.
The actual dispatcher calls exactly the three specialized entries, each MSAA
entry calls only matching normal/capture routines, and off calls no MSAA routine.
The four inner MSAA bodies match D4 after normalization of only numeric
function declaration/direct call/ref.func labels. Both outer MSAA entries and
all four inner bodies also match the prior split candidate under that same
normalization. Selected WAT, symbol maps, opcode counts and verifiers are supplied.

| Candidate function | Body bytes | Declared v128 locals |
|---|---|---|
"""+'\n'.join(code)+"""

D4's common outer body is 22877 bytes with 31 declared v128 locals. The prior
split off body is 22710 bytes; the combined off body is 41856 bytes. Retaining
both direct and packed shading duplicates substantial inline code. These are
static WASM observations; they do not prove native V8 register allocation,
spills, cache traffic, instruction cost or the cause of any timing change.
Matching MSAA function text alone does not guarantee matching frame performance.

## Fidelity and reproduction

Full gates pass: 745 native tests plus Bench 1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images at unchanged tolerances, 234 exact
control images per sample mode, 100 matching dual full-frame hashes and four
byte-exact raw frames per model/mode. Edge observers verify 4480 frames,
62251008 sample masks and 12431040 coefficient lanes. Native/WASM sampler,
shader, post-depth/DOT3/query, replay/queue, index and quantization outputs
are retained. No new native warning lines relative to D4 are reported.

The adapted original-route oracle runs 12288 exact raster pairs per engine,
checking color/depth/stencil/query/capture, all three tails and packet reductions.
Native reports 4608 reduced cases and 158713/187691 candidate/reference packets;
WASM reports 4752 and 158965/189023. Both count 621146 live pixels. The original
route is compiled in the test-only object with `SG_RASTER_SAMPLES=0` and
`SG_OFF_PACKET_REFERENCE=1`; the normal timing module has no test counters or
reference entries. Each engine requires exact candidate/reference output and
its own packet invariants, rather than equal cross-engine packet partitions.
The difference's cause is not established. Tests cover their stated cases;
they are not an exhaustive proof of every OpenGL state.

```sh
python3 experiments/raster-mode-packing/verify_artifacts.py
python3 experiments/raster-mode-packing/reproduce-candidate.py --prepare-only
python3 experiments/raster-mode-packing/reproduce-candidate.py --work build/diagnostics/raster-packing-repeat
```

The retained-evidence verifier checks checksum closure, independent source
reconstruction, full receipts, actual static mode isolation and all eighteen
raw pairs and guard attempts. It does not authenticate observations or freshly
execute rendering tests. Prepare-only was executed and its receipt is retained;
the supplied full fresh branch was not executed. The original producer, all
fidelity gates and comparisons were executed. Fresh builds require the matching
canonical 259-input catalog/frozen D4 reference, prepared BMW pack, Emscripten
3.1.69, CMake/OSMesa and Node/Playwright/Chromium. Paths/toolchains may change
module identity; do not silently substitute another reference. Original
comparison recipes are supplied separately for repeating the fixed protocol
following fresh gates. Generated output stays below build/; binaries/build trees
are excluded from publication. The research goal remains open.
"""
text+=f"\nResearch baseline `{v['researchBaselineCommit']}`; reference `{v['referenceWasmSha256']}`; candidate `{v['candidateWasmSha256']}`.\n"
(r/'research-readme.md').write_text(text)
print('Wrote measured',d['status'],'combined candidate description')
