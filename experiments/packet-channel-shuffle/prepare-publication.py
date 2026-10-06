"""Publish the completed rejected trial and a closed source/measurement archive."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();public=repo/'experiments/packet-channel-shuffle'
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(r/'validation.json');d=load(r/'decision.json');terminal=load(r/'process-completion.json')
assert d['status']=='rejected' and terminal==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
assert not public.exists()
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p,name):
 target=public/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
for p in r.iterdir():
 if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.rsp','.md','.symbols','.wat'] and p.name not in ['candidate.wat','reference.wat']:
  copy(p,p.name)
for folder in ['timings','wasm-contracts','prior-art','recipe-check','opcode-count-first-pass']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ['.py','.cjs','.json','.log','.c','.h','.inc','.md']:
   copy(p,str(p.relative_to(r)))
for name in v['changedFiles']:
 original=repo/name
 if original.exists():copy(original,'original/'+name)
 copy(r/'source-root'/name,'candidate-source/'+name)
for row in load(r/'wasm-contracts/results.json')['results']:
 copy(r/'source-root/tests'/(row['name']+'.c'),'fixtures/'+row['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for name in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/name,name)
a=load(r/'analysis.json')
rows=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
text='''# Constant byte-channel shuffles in the float packet sampler

Rejected: BMW gains do not reproduce across all modes and audits. Off shows
-0.412%/+0.259%, 2x -0.295%/-0.339%, and4x approximately0.000%/-1.213%.
T-80 off is slower in all six pairs (+0.601%/+0.735% audit changes).
Keep accepted D4 source, module, compact FPS report and live viewer unchanged.

## Mechanism and code generation

Four packed RGBA8 texels are separated into per-channel unsigned32-bit values
by constant byte selectors and a zero vector. Native SSE4.1 uses byte shuffles;
WASM uses explicit i8x16.shuffle. Float filtering expands four channels explicitly.
Integer filtering retains its mask/shift arithmetic in a separate loop; nearest
sampling, addresses, loads, texture layout/lifetime, filter grouping, DOT3 stages,
prepared geometry, depth/MSAA ordering and worker coordination are unchanged.

All twenty library translation units are freshly compiled. Nineteen are
byte-identical to D4; only rasterizer.c.o changes. All259 actual link inputs,
source files, objects, flags/commands and producer module hashes are retained.
Each of the six bound raster roots has the same static opcode delta:
+16 byte-shuffle sites, -12 mask sites, -12 logical-shift sites. Sixteen unsigned
float conversions become signed conversions. Float add/multiply site counts
and declared local counts stay unchanged; every raster body grows202 WASM bytes.
These are static whole-function sites and byte sizes, not dynamic operations,
V8 machine instructions, spills, saved cycles or a hardware-peak fraction.
The observations do not establish why the small/mixed frame-time changes occur.

The first static-opcode counter required a space after an opcode and missed
Binaryen's multiline expressions. opcode-count-first-pass/ retains the original
analysis/source. The corrected counter handles all whitespace and records both
conversion forms. Disassembly, modules and actual timing inputs are unchanged.
No performance claim uses that incomplete first pass.

prior-art/ retains the inspected earlier RGBA-per-pixel sampler preparation and
metadata-search record. That historical trial is a different lane organization;
its one screen did not establish a useful gain. The search has a stated limited
scope and does not prove that no equivalent algorithm exists elsewhere.

## Full gates and paired comparisons

744 native tests + Bench1,24 ASan/UBSan/leak contracts,23 WASM contracts,
240 unchanged-tolerance Mesa images and234 byte-exact test frames per sample
mode pass. Both models match100 dual hashes and four complete byte frames in
all three modes. The added independent encoding oracle checks1,048,576 byte/
channel/lane combinations on native and WASM. Existing packet contracts also
check331,447 sampler and128,054 shader comparisons. The independent MSAA edge
oracle passes4480 frames,62,251,008 sample masks and12,431,040 coefficient lanes.
Direct logs bind post-depth stores/DOT3 queries, quantization, replay/queue states
and unsigned index ranges. No new native warning line versus the D4 build.

Two audits per off/2x/4x mode, three browser crossover AB/BA pairs per audit,
two rounds per pair,80 warmup and100 measured rotating frames at640x360,
three helpers plus caller, BMW/T-80, resolve/readback per frame. All18 planned
comparisons complete. Nineteen guarded attempts are retained: off audit2 pair1
first fails with Codex CPU activity0.23744 cores; its second attempt passes.
Every other pair passes on its first attempt. The guard threshold remains.10
cores. Negative relative frame-time change is faster.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

## Reproduction

```sh
python3 experiments/packet-channel-shuffle/verify_artifacts.py
python3 experiments/packet-channel-shuffle/reproduce-candidate.py --prepare-only
python3 experiments/packet-channel-shuffle/reproduce-candidate.py --work build/diagnostics/packet-channel-shuffle-fresh
```

The fresh source-reconstruction recipe was executed with --prepare-only and
all three changed-source hashes match. recipe-check/ retains the actual receipt.
The fresh producer/full-gate branch is provided, not executed; the original
candidate producer, complete gates and all18 comparisons above were executed.
Full reproduction needs the baseline Git revision, Emscripten3.1.69, matching
local canonical WASM case catalog, frozen D4 build/model packs, Linux OSMesa,
CMake/C compiler and Playwright/Chromium. Defaults use existing local baseline
build inputs; the recorded commands expose these prerequisites. Other toolchains
and paths may change identities. Generated files remain below build/; source,
modules served on8000 and model assets are not overwritten. Binaries are excluded.

The archive verifier checks source reconstruction, artifact/fixture/log hashes,
complete recorded gates, opcode-site arithmetic and all18 paired observations.
It does not rerun rendering or establish hardware performance ceilings.
[next-research.md](next-research.md) examines exact consumed-channel dependencies;
that follow-up is an unbuilt hypothesis, not an adopted optimization.
'''
# Space numeric prose consistently; raw logs remain untouched.
for old,new in [('and4x','and 4x'),('approximately0','approximately 0'),('unsigned32','unsigned 32'),('All259','All 259'),('grows202','grows 202'),('Bench1,24','Bench 1, 24'),('contracts,23','contracts, 23'),('and234','and 234'),('match100','match 100'),('checks1,','checks 1,'),('check331','check 331'),('and128','and 128'),('passes4480','passes 4480'),('frames,62','frames, 62'),('and12,','and 12,'),('pair,80','pair, 80'),('and100','and 100'),('at640','at 640'),('All18','All 18'),('audit2 pair1','audit 2 pair 1'),('activity0','activity 0'),('remains.10','remains .10'),('all18','all 18'),('Emscripten3','Emscripten 3'),('on8000','on 8000')]:text=text.replace(old,new)
(public/'README.md').write_text(text)
manifest=dict(status='rejected',researchBaselineCommit=v['researchBaselineCommit'],candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],gateExitCode=0,timingExitCode=0,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Published',len(manifest['artifacts']),'trial artifacts plus manifest')
