"""Archive the caller-wait diagnostic and all attempts after verified completion."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
public = repo/'experiments/caller-wait-intervals'
assert not public.exists()
validation = json.loads((root/'validation.json').read_text())
assert validation['status'] == 'full-fidelity-gates-passed-ready-for-observations'
terminal = json.loads((root/'process-completion.json').read_text())
assert terminal['gateExitCode'] == terminal['observationExitCode'] == 0
subprocess.run(['python3',str(root/'analyze-observations.py'),'--check'],check=True)
public.mkdir()
def copy(source,target):
    destination = public/target
    destination.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(source,destination)
for path in root.iterdir():
    if path.is_file() and path.suffix in ('.py','.cjs','.json','.patch','.log'):
        copy(path,path.name)
for path in (root/'failed-verifier-results-selection').iterdir():
    if path.is_file(): copy(path,'failed-verifier-results-selection/'+path.name)
for path in (root/'runs').iterdir():
    if path.is_file(): copy(path,'runs/'+path.name)
for path in (root/'wasm-contracts').iterdir():
    if path.is_file() and path.suffix in ('.log','.json','.cjs'):
        copy(path,'wasm-contracts/'+path.name)
copy(root/'instrumented/softgl.js.symbols','diagnostic.symbols')
copy(root/'instrumented/link.rsp','producer-recipes/instrumented-link.rsp')
copy(root/'disabled/link.rsp','producer-recipes/disabled-link.rsp')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for filename in validation['changedFiles']:
    destination = public/'original'/filename
    destination.parent.mkdir(parents=True,exist_ok=True)
    destination.write_bytes(subprocess.check_output(['git','show',validation['researchBaselineCommit']+':'+filename]))
    copy(root/'source-root'/filename,'instrumented-source/'+filename)
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
for record in contracts['results']:
    name = record['name']+'.c'
    copy(root/'source-root/tests'/name,'fixtures/'+name)
copy(root/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(repo/'tools/wasm_perf.cjs','wasm_perf.cjs')
copy(repo/'tools/wasm_quiet_audit.py','wasm_quiet_audit.py')
analysis = json.loads((root/'analysis.json').read_text())
rows = []
for scene in ('bmw','tank'):
    for samples in (0,2,4):
        observations = sorted([row for row in analysis['records'] if row['scene']==scene and row['samples']==samples],key=lambda row:row['audit'])
        waits = ' / '.join(f"{row['waitElapsedMsPerFrame']['mean']:.4f}" for row in observations)
        fractions = ' / '.join(f"{100*row['aggregateWaitWallFraction']:.2f}%" for row in observations)
        active = {entry['name'] for row in observations for entry in row['categories'] if entry['totalCalls']}
        rows.append(f"| {'BMW F31' if scene=='bmw' else 'T-80'} | {'off' if samples==0 else str(samples)+'x'} | {waits} | {fractions} | {', '.join(sorted(active))} |")
readme = '''# Caller polling interval diagnostic

This diagnostic separates eight explicit SoftGL caller polling categories. It
is an observation of instrumented code, with no optimization or FPS gain claimed.
The accepted production renderer remains `7cc38593` (runtime source `23d18f4`).
The exact research snapshot is `1d995e90eafaea4ad15e65d37cfe7c5a08c23398`.

## Observations

Two audits per scene and sample mode, 80 warmup frames followed by 100 rotating
frames at 640x360, three helpers plus caller. Audit 1 uses off/2x/4x; audit 2
reverses that order. Every attempted quiet guard and its raw log is retained.
The unchanged guard rejects foreign CPU activity at 0.10 cores.

These numbers are mean **wall time inside explicit polling intervals**, and
the fraction of the instrumented draw-plus-resolve wall time, in audit order.
They exclude warmup, loading and cleanup. They include preemption and are not
scheduled CPU time, removable frame cost, uninstrumented performance or an FPS
prediction. Active categories, including tiny ones, are listed without filtering.

| Scene | MSAA | Polling ms/frame, audits 1 / 2 | Instrumented wall fraction, audits 1 / 2 | Active categories |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

`analysis.json` retains every category's count, mean/median/p95/maximum duration,
mean interval duration and number of affected frames. `runs/` retains all 1200
raw frames. Zero counts and zero durations are checked; the sum of nonoverlapping
intervals must fit within each outer frame (only 1e-9 ms subtraction-rounding allowance).
No acceptance timing comparison uses this instrumented module. The first archive
verifier incorrectly excluded every nested `results.json` from enumeration;
its original code, failure log and correction reason are retained under
`failed-verifier-results-selection/`. No renderer or observation changed.

## Method and fidelity

The two-file `source.patch` adds caller-local TLS arrays under
`SG_CALLER_WAIT_DIAG`. Clock and count updates happen only once on entry/exit
of each wait; polling iterations retain the original acquire checks and pause
body. The seven sites cover async raster completion, joined vertices/triangles/
raster, queued vertices/triangles, no claimable queue bin, and queue shutdown.
Helper threads do not update these caller arrays. Wait elapsed time can include
preemption, and the observer itself can change scheduling and wait frequency.
Uninstrumented Emscripten runtime/mutex/futex waits are outside these categories.

A private copy of the original browser tool resets counters immediately before
each observed draw+resolve, then reads the eight counts and eight elapsed times
afterward. Outer frame clocks exclude these counter reads. Warmup uses its original
loop. Exact reversible substitutions recover the archived original tool byte for
byte. The original production tool is unchanged.

The actual producer reuses nineteen accepted library objects and replaces only
`workers.c.o`, with the same 259 linked inputs and original ordering. Module and
JS identities, every object, sources, fixtures, recipes and logs are bound in
`validation.json`. The disabled diagnostic producer was compared locally and
its JS and WASM were byte-identical to accepted `7cc38593`; this archive retains
the receipts and reconstruction recipe, rather than generated binaries.

Before observations: all 743 native tests, the benchmark contract, 23 ASan/UBSan
contracts with leak detection, 240 Mesa images, 234 byte-exact WASM images in each
mode, 100 matching dual frame hashes and four byte-exact representative frames
per model/mode, 22 WASM contracts and the complete edge oracle passed. Both engines
retain 98304 post-depth store checks and 640 actual DOT3 query frames per mode,
262144 exact RGBA quantizations, plus depth replay/query/state/sample-plane checks.
Direct native oracle stdout is included because successful CTest output is terse.
The full tests run using the repository's working Linux OSMesa harness.

## Reproduction

Archive verification needs Python 3 and Git, without browsers or build caches:

```sh
python3 experiments/caller-wait-intervals/verify_artifacts.py
```

For a fresh source rebuild from the specified Git snapshot, use Emscripten,
CMake, the native OSMesa dependencies, Chromium and project Playwright, and the
BMW pack with its bound hash. All output stays under `build/`:

```sh
python3 experiments/caller-wait-intervals/reproduce-diagnostic.py --observe
```

The fresh rebuild recipe has not been executed for this archive; the original
incremental producer and its complete gates have been executed. The fresh recipe
is separate from that original producer. It builds every source unit; paths or toolchain changes may change
binary identities. It reruns native correctness before observations. Original
full WASM/edge/sanitizer and model-equivalence gate recipes are also archived;
their paths describe the original staging tree and require adapting for another
build tree. The portable verifier recomputes raw observation arithmetic and checks
all original gates, without claiming to rerun them or rebuild their binaries.

The next architecture decision must use the observed category distribution.
Worker-hosting alone cannot remove the renderer's explicit polling loops;
blocking only while no useful work is claimable needs a correct notification
protocol and repeated all-mode comparisons. Lower CPU usage alone is insufficient
for adopting an optimization.
'''
(public/'README.md').write_text(readme)
sha = lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest = dict(status='diagnostic-observations-complete-no-optimization-claim',
    researchBaselineCommit=validation['researchBaselineCommit'],
    referenceWasmSha256=validation['referenceWasmSha256'],diagnosticWasmSha256=validation['diagnosticWasmSha256'],
    notAcceptanceTimings=True,observedFrames=1200,gateExitCode=0,observationExitCode=0,
    artifacts={str(path.relative_to(public)):sha(path) for path in sorted(public.rglob('*')) if path.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(f'Prepared {len(manifest["artifacts"])} public artifacts plus root manifest')
