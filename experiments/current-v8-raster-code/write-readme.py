"""Write actual diagnostic conclusions and limits from bound records."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent;a=json.loads((r/'analysis.json').read_text())
code={x['function']:x['nativeRegionBytes'] for x in a['roots'] if x['run'].startswith('guarded-audit1')}
rows=[]
for mode in (0,2,4):
 names=['sg_raster_triangle_depth_capture','sg_raster_triangle_tile_prepared'] if mode==0 else [f'sg_raster_triangle_msaa{mode}_capture',f'sg_raster_triangle_msaa{mode}']
 for name in names+['sg_packet_sample_cube_coherent','sg_packet_sample_cube_target']:
  values=[next(x for x in p['functions'] if x['name']==name)['sampledSelfMsPerFrame'] for p in a['profiles'] if p['samples']==mode]
  rows.append(f'| {mode} | {name} | {values[0]:.3f} / {values[1]:.3f} | {code[name]} |')
text='''# Current D4 native raster code and warmed BMW profiles

External diagnostic of unchanged accepted D4 (`d4dd244c`), not a candidate or
optimization acceptance timing. Six fixed captures run two audits of off/2x/4x;
all quiet guards pass on the first attempt. Chromium is 154.0.8037.92 with V8
15.4.80.19. Every capture uses both BMW and T-80 for one 80-warm/240-frame
single-variant run, then a separate 80-warm/240-frame BMW profile at 1 ms sampling.
Dimensions are 640x360, three helpers plus caller, with resolve/readback each
frame. All nine profiles remain; three workers meet the existing observable-
renderer-work criterion in every capture. This does not measure core utilization.

## A concrete intermediate to remove

The captured TurboFan cube-target normal-entry prefix has **seven 16-byte
stores into WASM linear memory before the coherent call**: four zero vectors
(64 bytes) and three coordinate vectors (48 bytes). The unchanged source places
`xx/yy/zz` and a zeroed scalar fallback table before that call. The coherent
entry reloads the three vectors. All six captures reproduce these static sites.
This is 112 logical source bytes stored per prepared call, not 112 physical
cache/DRAM bytes, a dynamic call count or proven saved time. Native-stack saves
are a separate observation and cannot automatically be called compiler spills.

[The next candidate](next-research.md) passes coordinates directly as vectors
to an internal coherent core and allocates/clears scalar fallback arrays after
coherent rejection. Keep the original pointer wrapper/early guards and exact
projection, filtering, masks, outputs, geometry and worker ownership. LLVM/V8
may still save vectors, and extra calls/layout may offset savings. This candidate
has not been built or measured in this diagnostic. It must pass complete fresh
regressions and eighteen independent all-mode comparisons before adoption.

## Current warmed profile

| Samples | Function | Audit 1 / 2 sampled self ms/frame | TurboFan region bytes |
|---|---|---|---|
'''+ '\n'.join(rows)+'''

Cross-thread self durations include inlined work, scheduling/preemption and
blocked locations; their sum is not frame latency or CPU busy time. No stage
speedup or hardware ceiling follows. Native region sizes repeat across both
audits, but include embedded data/metadata and padding. They do not prove
that the entire region is hot or resident in the instruction cache.

## Capture and interpretation

The installed executable's available flag strings were inspected. A scalar
WASM control runs exactly; the requested print/redirect path emitted no assembly
file in that preflight, while JIT profiling supplied native code-load records.
The original preflight and unguarded D4 pilot are retained and excluded from
six guarded observations. Every actual browser exit is 0; native loads are bound
to live descendant process/thread birth identities, code-region address/index,
function index, tier and exact selected bytes. Log events may repeatedly report
shared code across isolates; their counts are not compilation counts.

The parser follows the [Linux jitdump format](https://github.com/torvalds/linux/blob/master/tools/perf/Documentation/jitdump-specification.txt).
Complete selected JIT_CODE_LOAD records are published as hex text, with matching
objdump 2.44 disassembly and checksums. Raw full dumps stay private under build/.
Incomplete final records are explicitly reported, including bounds/hash; no
selected record reaches those suffixes. The header timestamp is retained but
not used to align code records to thread births. Each record's timestamp is
checked against observed thread birth and later monotonic snapshots.

A conservative static walk follows direct local branches from the entry and
stops at calls or unresolved indirect jumps. It deliberately leaves call-return
and indirect successors unknown; its opcode/memory/native-stack sites are
partial static coverage, not dynamic costs or exhaustive instruction counts.
Embedded trailing data is excluded from the normal-entry prefix claim. The
initial analyzer assumed calls returned and reached trailing metadata; its
failure/script are retained. The corrected walk and all six original captures
pass without rerunning observations. The initial observer-generator exact-match
assertion failure is also retained; no renderer producer ran in that failure.

[The V8 flag definitions](https://chromium.googlesource.com/v8/v8/+/refs/heads/main/src/flags/flag-definitions.h)
describe the selected diagnostic controls and the perf-prof implication disabling
code-space compaction. Therefore address/layout in this diagnostic is not assumed
identical to a normal browser. That HEAD source is not asserted to be the installed
V8 revision; the actual executable hash and CDP versions are authoritative.
The 250 ms /proc sampling and JIT/profile overhead are diagnostic overhead, not
measured production costs. No acceptance comparisons run concurrently.

## Fidelity and reproduction

Renderer source, prepared packs, canonical JS/WASM and all six live assets remain
byte-identical D4. Its already published 744 native + Bench 1, 24 sanitizer, 23 WASM,
240 Mesa, all-mode exact image/model/edge gates are referenced in the baseline
fidelity record. They are not freshly rerun for an external source-unchanged
observer. Source snapshots, original/observed drivers, exact module/symbol map,
browser and tool identities, raw profiles, guard attempts, live process snapshots
and selected native records are retained. Current PMU evidence remains separately
linked; aggregate counters do not isolate texture traffic or a ceiling.

```sh
python3 experiments/current-v8-raster-code/verify_artifacts.py
python3 experiments/current-v8-raster-code/reproduce.py --work build/diagnostics/v8-native-repeat
```

The verifier checks archive closure, complete selected record bytes, owned births,
regenerated disassembly/profile summaries and all six guarded observations. It
does not authenticate recordings or execute a fresh browser. Prepare-only was executed and its receipt is retained. The fresh six-run
recipe is supplied but its browser branch has not been run; the original six-run producer and the
preflight/pilot were run. Reproduction needs the exact frozen D4 module/symbol
map, prepared packs, native test catalog, Chromium and Node/Playwright. All scratch
output belongs under build/; generated binaries/full JIT dumps are excluded from
publication. Accepted benchmark numbers and the live renderer are unchanged.
'''
(r/'research-readme.md').write_text(text)
print('Wrote actual native/profile diagnostic account')
