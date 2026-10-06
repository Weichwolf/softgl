"""Publish a diagnostic observation archive; no renderer adoption or FPS claim."""
from pathlib import Path
import hashlib,json,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/prepack-uptake';assert not public.exists()
v=json.loads((r/'validation.json').read_text());terminal=json.loads((r/'process-completion.json').read_text());assert terminal['gateExitCode']==terminal['finalizerExitCode']==terminal['observationExitCode']==0
subprocess.run(['python3',str(r/'analyze-observations.py'),'--check'],check=True);public.mkdir()
def copy(p,name):
 q=public/name;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
for p in r.iterdir():
 if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.rsp','.md']:copy(p,p.name)
for folder in ['runs','wasm-contracts','generator-before-scope-fix']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.c','.h','.inc']:copy(p,str(p.relative_to(r)))
for name in v['changedFiles']:
 if name not in ['tests/slice_prepack.c','libsoftgl/src/prepack_diag.h']:
  q=public/'original'/name;q.parent.mkdir(parents=True,exist_ok=True);q.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+name]))
 copy(r/'source-root'/name,'diagnostic-source/'+name)
for record in json.loads((r/'wasm-contracts/results.json').read_text())['results']:copy(r/'source-root/tests'/(record['name']+'.c'),'fixtures/'+record['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(r/'instrumented/softgl.js.symbols','diagnostic.symbols');copy(r/'disabled/softgl.js.symbols','disabled.symbols')
for name in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/name,name)
a=json.loads((r/'analysis.json').read_text());summary=a['summary'];rows=[]
for scene in ['bmw','tank']:
 for samples in [0,2,4]:
  pair=[next(x for x in summary if x['scene']==scene and x['samples']==samples and x['audit']==i) for i in [1,2]]
  means=lambda name:' / '.join(f"{x['counts'][name]['mean']:.3f}" for x in pair)
  fractions=' / '.join(f"{100*x['adoptedLogicalByteFraction']:.3f}%" if x['adoptedLogicalByteFraction'] is not None else '—' for x in pair)
  rows.append(f"| {scene} | {samples} | {means('eligible')} | {means('adopted')} | {means('budget_unavailable')} | {means('discarded')} | {fractions} |")
text='# Early packed-vertex uptake diagnostic\n\n'+(r/'interpretation.md').read_text()+'\n\n'
text+=f"Research baseline `{v['researchBaselineCommit']}`. D4 reference `{v['referenceWasmSha256']}`; rejected candidate `{v['parentCandidateWasmSha256']}`; diagnostic `{v['diagnosticWasmSha256']}`.\n\n"
text+='''## Observed routes

Two audits per off/2x/4x mode, BMW and T-80, 80 warmup and 100 rotating frames
per scene, 640x360, three helpers plus caller and resolve/readback each frame.
Mode order is0/2/4 in audit1 and4/2/0 in audit2. These are instrumented observations,
not performance-acceptance comparisons. Route counts depend on worker progress;
all distributions and paired-angle equality counts are retained.

Mean draws/frame and adoption share of logical ordered output bytes, audit1/2:

| Scene | Samples | Eligible | Adopted | Budget unavailable | Ready discarded | Adopted bytes/ordered bytes |
|---|---|---|---|---|---|---|
'''+ '\n'.join(rows)+'\n\n'
text+='''## Instrumentation and fidelity

Only the caller worker translation unit changes, with seven coarse TLS clocks
and34 per-draw/allocation counters. No worker, per-vertex, per-triangle, per-spin
counters/timers, new synchronization, queue capacity, geometry or numerical
changes. Pending slots are unchanged. Disabled preprocessing recovers the exact
rejected-candidate worker object and JS/WASM. The instrumented producer reuses
nineteen bound candidate library objects and links259 recorded inputs. Source,
objects, module, fixtures, producer commands and actual symbol maps are bound.
The generator uniqueness guard caught an ambiguous three-occurrence match in an
unbuilt draft; the narrower capacity clause was selected before compilation.
The draft source, generator and actual failure are retained under
generator-before-scope-fix/.

Prepare calls partition into scope/combine/payload rejection and eligibility.
Eligibility partitions into ready storage, allocation failure and budget refusal.
Ready storage partitions into retained/borrowed/new buffers; final model draws
partition ready vertices/bytes into adoption or discard. Ordered packed draws
partition into adopted and late transformed output. Clipped output is appended
late and retained separately. Reclaim slot counts include empty idle slots;
reclaim bytes count reserved raw/packed capacity, not physical traffic. Logical
vertex counts include draw-range duplication and are not unique scene vertices.

Transform, triangle preparation and stream submission are nonoverlapping caller
scopes. Early preparation nests under transform; queue reservation and late/
large packing nest under submission. Per-frame checks verify count/byte/call
partitions and parent/nested clock bounds. Nested times must not be added again
to parents. All scopes include observer overhead and preemption; transform/
preparation include helping/joins, reservation includes raster helping/waiting.
Early clocks cover sampler/layout/allocator/lock work. No worker packed-write
clock exists. Timings neither isolate useful CPU/math work nor prove saved time,
cache events, saturation, raster displacement or a performance ceiling. Metadata
reads occur after draw+resolve clocks. Instrumentation can change compiler/JIT
layout and scheduling, so uptake is observed for this diagnostic, not inferred
for the noninstrumented rejected candidate.

Before observations,745 native tests plus Bench1,25 ASan/UBSan/leak contracts,
24 WASM contracts,240 WASM/Mesa images,234 exact controls per mode,100 equal dual
model frame hashes and four byte-exact frames per model/mode pass. Edge observers
pass4480 frames,62,251,008 masks and12,431,040 coefficient lanes. Actual unsigned
index, depth-replay/sample-plane, post-Z/DOT3/query and quantization contracts
retain direct native/WASM stdout. No tolerance changes. Native references use
Linux OSMesa/llvmpipe. The accepted D4 renderer/live preview and FPS report remain
unchanged. This diagnostic is never adopted as a performance improvement.

## Reproduction and limits

```sh
python3 experiments/prepack-uptake/verify_artifacts.py
python3 experiments/prepack-uptake/reproduce-diagnostic.py
```

The portable verifier checks retained checksum closure, source reconstruction,
observer reversibility, test receipts and all raw per-frame partitions. It does
not rerun browser tests or authenticate observations. The fresh source/native
recipe is supplied, not executed here; the original producer, full gates and
observations are executed. Fresh builds require Emscripten, CMake/OSMesa and the
bound BMW pack. Different paths/toolchains can change module identities. Original
scripts retain staging paths and need adaptation. Repeat all-mode WASM fidelity
before fresh observations. Output stays below build/; binaries/build trees are
excluded from publication.
'''
(public/'README.md').write_text(text)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();manifest=dict(status='diagnostic-only-not-adopted',researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],parentCandidateWasmSha256=v['parentCandidateWasmSha256'],diagnosticWasmSha256=v['diagnosticWasmSha256'],artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n');print('Published',len(manifest['artifacts']),'diagnostic artifacts plus manifest')
