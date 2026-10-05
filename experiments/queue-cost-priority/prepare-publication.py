"""Publish the complete priority trial only after a documented all-mode decision."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
public = repo/'experiments/queue-cost-priority'
assert not public.exists()
validation = json.loads((root/'validation.json').read_text())
decision = json.loads((root/'decision.json').read_text())
assert decision['status'] in ('accepted','rejected')
terminal = json.loads((root/'process-completion.json').read_text())
assert terminal['gateExitCode'] == terminal['timingExitCode'] == 0
subprocess.run(['python3',str(root/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(source,target):
    destination = public/target;destination.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(source,destination)
for path in root.iterdir():
    if path.is_file() and path.suffix in ('.py','.cjs','.json','.patch','.log','.rsp'):
        copy(path,path.name)
for directory in ['timings','failed-codegen-inlined-root']:
    for path in (root/directory).rglob('*'):
        if path.is_file():copy(path,str(path.relative_to(root)))
for path in (root/'wasm-contracts').iterdir():
    if path.is_file() and path.suffix in ('.log','.json','.cjs'):
        copy(path,'wasm-contracts/'+path.name)
copy(root/'softgl.js.symbols','candidate.symbols')
copy(repo/'build/diagnostics/post-depth-common-store/softgl.js.symbols','reference.symbols')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for filename in validation['changedFiles']:
    if filename != 'tests/queue_priority.c':
        target = public/'original'/filename;target.parent.mkdir(parents=True,exist_ok=True)
        target.write_bytes(subprocess.check_output(['git','show',validation['researchBaselineCommit']+':'+filename]))
    copy(root/'source-root'/filename,'candidate-source/'+filename)
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
for record in contracts['results']:
    filename = record['name']+'.c'
    copy(root/'source-root/tests'/filename,'fixtures/'+filename)
copy(root/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(repo/'tools/wasm_perf.cjs','wasm_perf.cjs')
copy(repo/'tools/wasm_quiet_audit.py','wasm_quiet_audit.py')
analysis = json.loads((root/'analysis.json').read_text())
table = []
for row in analysis['summary']:
    table.append(f"| {'BMW F31' if row['scene']=='bmw' else 'T-80'} | {'off' if row['samples']==0 else str(row['samples'])+'x'} | {row['auditChangesPercent'][0]:+.6f}% | {row['auditChangesPercent'][1]:+.6f}% | {row['faster']} / {row['slower']} |")
readme = '# Four-tier queue cost priority\n\n'+decision['summary']+'\n\n'+'''The source snapshot is `fc2b59b65eb6a6159319cbd0816f1f8fb1fbe937`;
reference module `7cc38593`, candidate module `a43d9dea`.

## Hypothesis and implementation

The caller wait diagnostic found BMW explicit polling at 1.98–2.24 ms/frame off
and about 1 ms/frame with MSAA; most of it had no claimable queue bin. That
aggregate does not distinguish submission capacity/budget waits from final
flush tails, and cannot be subtracted from frame time as a saved-cost prediction.

The original ordered queue chooses the first ready X bin of the earliest
eligible draw. This trial groups each draw's bins into four classes by triangle
count, relative to its largest bin. Two immutable bit planes encode the classes;
prefer ready high bits, then ready low bits, then the lowest remaining bin index.
The original blocked mask and earliest-slot scan preserve draw order per bin.
Priority changes independent bin selection, not triangle order within a bin.

Both planes are rebuilt on every slot reuse before publishing the draw under
the existing mutex. Each slot grows by eight bytes (32 bytes across four slots),
without changing vertices, triangles, framebuffer layouts, floating arithmetic,
texture storage, geometry or public API. Two scans of the at-most-32 bins occur
once per submission; each successful claim adds two mask choices. Triangle count
is an imperfect raster cost proxy. The caller follows the same priority and may
help a large bin that delays the next geometry submission; shorter tails need
not produce lower total frame latency. The added slot bytes also shift queue
fields; comparisons evaluate policy and layout together, without isolating a
native cache/coherence cause. No theoretical improvement is assumed.

## All-mode measurements

Two independent audits per mode, three AB/BA page-crossover pairs per audit,
two rounds per pair, 80 warmup and 100 rotating frames per round, 640x360,
three helpers plus caller, BMW and T-80, resolve each frame. Candidate and
reference frozen module and model-pack identities are checked. All attempted
quiet guards are retained; the threshold remains 0.10 foreign CPU cores.
The original browser benchmark and guard are unchanged. The private comparison
orchestrator adds only an explicit candidate native manifest path.

Percentages describe frame-time change, so negative means faster. Each audit
is the geometric mean of its three paired geometric frame-time ratios.

| Scene | MSAA | Audit 1 | Audit 2 | Faster / slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(table)+'''

`analysis.json` contains every pair and audit. `analyze-timings.py` independently
recomputes ratios from raw timings. No selective confirmation or after-the-fact
parameter sweep is used. The decision rule and known risks were recorded before
measurements; `decision.json` explains the actual result.

## Fidelity and producer

The actual producer reuses nineteen accepted library objects and compiles only
the worker unit containing this queue. The 20 objects, 259 ordered link inputs,
source and fixture hashes, compile/link commands and response file are bound.
No generated binaries are published. Fourteen inspected WASM raster, fragment,
store and packed-vertex function bodies are byte-identical to reference;
queue helper/worker bodies differ. This is static WASM evidence, not V8 native
code, register pressure, memory traffic, cycle counts or a hardware ceiling.
The initial codegen request included an absent standalone symbol that had been
inlined/eliminated; original script and failure are retained, and the corrected
inspection uses mapped roots. No renderer or measurement changed for that fix.

Before measurements all 744 native tests, one benchmark contract, 24 ASan/UBSan
contracts with leak detection, 240 Mesa images, 234 byte-exact WASM images per
mode, 100 matching dual hashes and four byte-exact representative frames per
model/mode, 23 WASM contracts and the complete MSAA edge oracle pass. Existing
post-depth/DOT3/RGBA/depth replay/query/sample-plane oracles are preserved.

The new contract invokes the actual priority builder and claimant. An independent
oracle examines the first pending draw per column and uses rational cost-class
thresholds. Each engine passes 40960 cases, including 13750 non-leftmost claims,
508 bit-31 claims and 12435 unavailable cases. Poisoned old masks test fresh slot
reuse; empty bins, wraparound heads, claimed blocking, ties and INT_MAX counts
are included. Test hooks are absent from the production module symbol map.
The full rendering contracts independently cover real queued GL draw semantics.

## Reproduction

Verify the standalone archive with Python and Git, without browsers or build
caches; this checks original receipts and raw arithmetic rather than rerunning
binary tests:

```sh
python3 experiments/queue-cost-priority/verify_artifacts.py
```

A fresh full source rebuild recipe is provided separately:

```sh
python3 experiments/queue-cost-priority/reproduce-candidate.py
```

It requires Emscripten, CMake, native OSMesa dependencies and the bound BMW pack.
That fresh recipe has not been executed for this archive; the original actual
incremental producer, all fidelity gates and the frozen comparisons were executed.
Paths and toolchain differences can change module bytes. Archived gate recipes
refer to the original staging tree; adapt those paths for a different build.
Repeat all-mode WASM fidelity and quiet paired comparisons before adopting a
fresh binary. Output belongs under `build/`.
'''
(public/'README.md').write_text(readme)
sha = lambda path:hashlib.sha256(path.read_bytes()).hexdigest()
manifest = dict(status=decision['status'],researchBaselineCommit=validation['researchBaselineCommit'],
    referenceWasmSha256=validation['referenceWasmSha256'],candidateWasmSha256=validation['candidateWasmSha256'],
    gateExitCode=0,timingExitCode=0,
    artifacts={str(path.relative_to(public)):sha(path) for path in sorted(public.rglob('*')) if path.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(f'Prepared {len(manifest["artifacts"])} trial artifacts plus root manifest')
