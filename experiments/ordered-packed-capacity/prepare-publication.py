"""Publish the source/measurement closure; generated binaries remain private."""
from pathlib import Path
import hashlib,json,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/ordered-packed-capacity'
v=json.loads((r/'validation.json').read_text());d=json.loads((r/'decision.json').read_text());terminal=json.loads((r/'process-completion.json').read_text())
assert d['status'] in ['accepted','rejected'] and not public.exists()
assert terminal['gateExitCode']==terminal['finalizerExitCode']==terminal['timingExitCode']==0
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p,target):
 q=public/target;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
for p in r.iterdir():
 if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.rsp','.template','.md']:copy(p,p.name)
for folder in ['timings','wasm-contracts','fixture-before-size-cast']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ['.log','.json','.cjs','.c','.h','.inc','.patch']:copy(p,str(p.relative_to(r)))
for name in v['changedFiles']:
 proc=subprocess.run(['git','show',v['researchBaselineCommit']+':'+name],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
 if proc.returncode==0:
  target=public/'original'/name;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(proc.stdout)
 else:assert name in ['libsoftgl/src/ordered_vertex_capacity.h','tests/ordered_capacity.c']
 copy(r/'source-root'/name,'candidate-source/'+name)
for row in json.loads((r/'wasm-contracts/results.json').read_text())['results']:
 copy(r/'source-root/tests'/(row['name']+'.c'),'fixtures/'+row['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for name in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/name,name)
a=json.loads((r/'analysis.json').read_text())
rows=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
readme='# Fixed buckets for ordered packed vertex capacity\n\n'+d['summary']+'\n\n'
readme+=f"Research baseline `{v['researchBaselineCommit']}`; accepted reference `{v['referenceWasmSha256']}`, candidate `{v['candidateWasmSha256']}`.\n\n"
readme+='''## Hypothesis and implementation

D4 rounds each ordered packed vertex buffer to a power of two. This trial uses
fixed 64-KiB buckets to reduce unused reservation within the same shared 2-MiB
ordered queue vertex budget. For eligible packed payloads (at least1024 vertices,
at least48 bytes each), the candidate never reserves more than D4 and leaves
less than64 KiB unused per slot. Four slots leave less than256 KiB total bucket
slack. These are allocation-capacity bounds, not measured physical memory traffic,
cache residency or total process memory. 64 KiB is a single predeclared candidate
parameter; no bucket sweep and no hardware/page-size performance claim.

Only the ordered queue allocation calculation changes. Packed fields, float
arithmetic, transformed/clipped geometry, raw ownership swaps, large packed
T-80 path, locking, pending-slot protection, idle reclamation, draw order and
fallbacks are preserved. No early geometry-stage packing is reintroduced; no
new arena, worker, atomic or producer-side storage is added. Smaller reservations
may reduce budget pressure, but extra bucket transitions may cause more allocator
calls. Timings cannot establish either cause without further diagnostics.

All twenty WASM library units were freshly compiled. Nineteen match accepted D4
byte for byte; only workers.c.o differs.259 linker inputs and all source/object/
module identities are bound in validation.json and producer-commands.json.
The test-only ordered_capacity fixture embeds actual workers.c, intercepts
allocation failures only there, and preserves the WASM incoming main macro.
It checks every positive capacity need up to2 MiB, plus63 actual queue cases
across0/2/4 samples, three recognized DOT3 layouts and seven vertex counts.
Those cases check allocation failure, exact transformed and appended clipping
fields, repeated slot reuse and aggregate vertex budgets. Empty test bins isolate
reservation and payload ownership; the included real threaded queue/eager oracle
independently checks rendering, state transitions, source lifetime, clipping and
all sample planes with1/3/8 workers. Production modules have no test hooks.

The first preflight selection ran five passing contracts, including the new
fixture and its embedded threaded oracle. Its regex omitted the separate queue
target even though the build included it. A supplementary one-test queue run
passed; the final preflight recipe correctly selects six. Both original recipe
and actual logs are retained. The new test also emitted a signedness warning in a vertex-capacity check.
An explicit size_t cast resolves it; no runtime source, arithmetic or producer
module changes. Complete original gates, fixture, patch and identities are
retained under fixture-before-size-cast/. After correction the complete native
745 and sanitizer25 suites pass again and the changed WASM fixture is rebuilt
and rerun. The other23 WASM and all image/model/edge receipts remain bound to
the byte-identical producer; their source fixtures are unchanged.

## Comparisons

Two audits per off/2x/4x mode, three AB/BA browser crossover pairs per audit,
two rounds per pair,80 warmup and100 rotating measured frames at640x360,
three helpers plus caller, BMW/T-80, resolve/readback each frame. All18 fixed
pairs compare frozen D4. The quiet guard's foreign CPU threshold remains.10
cores and every attempted run is retained. Negative frame-time change is faster.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'\n\n'
readme+='''## Fidelity and reproduction

Before timing,745 native tests plus Bench1,25 ASan/UBSan/leak contracts,
24 WASM contracts,240 WASM/Mesa images,234 exact test controls per mode,
100 equal dual frame hashes and four byte-exact representative frames per
model/mode pass. Edge observers check4480 frames,62,251,008 masks and12,431,040
coefficient lanes. Direct stdout retains post-depth store, DOT3 query, RGBA
quantization, unsigned index range and depth replay checks. Pixel tolerances
are unchanged. Native image references use Linux OSMesa/llvmpipe.

```sh
python3 experiments/ordered-packed-capacity/verify_artifacts.py
python3 experiments/ordered-packed-capacity/reproduce-candidate.py
```

The verifier checks retained evidence closure, source reconstruction, full gate
receipts and arithmetic of all18 paired records. It does not rerun browsers,
authenticate observations or establish a hardware ceiling. The fresh source /
WASM build / native regression recipe is provided but was not executed for
this archive. Actual original producer, full correctness gates and paired
comparisons were executed. Original drivers retain staging paths; adapt those
for a fresh run. Rebuilds need Emscripten, CMake/OSMesa and the bound BMW pack;
paths/toolchains can alter binary identities. Repeat complete WASM fidelity
and all-mode paired measurements before adopting a fresh build. Generated
binaries and build directories are excluded. All temporary output stays in build/.
'''
if d['status']=='accepted':readme+='\n'+(r/'adoption-summary.md').read_text()
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=dict(status=d['status'],researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Archived',len(manifest['artifacts']),'artifacts plus manifest')
