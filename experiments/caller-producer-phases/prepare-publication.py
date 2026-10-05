"""Publish complete diagnostic evidence after all gates and observations finish."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
public = repo/'experiments/caller-producer-phases'
assert not public.exists()
v = json.loads((root/'validation.json').read_text())
assert v['status'] == 'full-fidelity-gates-passed-ready-for-observations'
terminal = json.loads((root/'process-completion.json').read_text())
assert terminal['gateExitCode'] == terminal['finalizerExitCode'] == terminal['observationExitCode'] == 0
subprocess.run(['python3',str(root/'analyze-observations.py'),'--check'],check=True)
public.mkdir()
def copy(source, target):
    destination = public/target
    destination.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(source,destination)
for path in root.iterdir():
    if path.is_file() and path.suffix in ('.py','.cjs','.json','.patch','.log','.md'):
        copy(path,path.name)
for folder in ['runs','wasm-contracts']:
    for path in (root/folder).iterdir():
        if path.is_file() and path.suffix in ('.log','.json','.cjs'):
            copy(path,folder+'/'+path.name)
copy(root/'draw-elements.wat','draw-elements.wat')
copy(root/'reference.symbols','reference.symbols')
copy(root/'instrumented/softgl.js.symbols','diagnostic.symbols')
copy(root/'instrumented/link.rsp','producer-recipes/instrumented-link.rsp')
copy(root/'disabled/link.rsp','producer-recipes/disabled-link.rsp')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for filename in v['changedFiles']:
    if filename != 'libsoftgl/src/producer_diag.h':
        target = public/'original'/filename
        target.parent.mkdir(parents=True,exist_ok=True)
        target.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+filename]))
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
        values = []
        for phase in v['phases']:
            values.append(' / '.join(f"{next(p for p in row['phases'] if p['name']==phase)['elapsedMsPerFrame']['mean']:.4f}" for row in observations))
        rows.append('| '+('BMW F31' if scene=='bmw' else 'T-80')+' | '+('off' if not samples else str(samples)+'x')+' | '+' | '.join(values)+' |')
counts = []
for scene in ('bmw','tank'):
    for samples in (0,2,4):
        observations = sorted([row for row in analysis['records'] if row['scene']==scene and row['samples']==samples],key=lambda row:row['audit'])
        values = []
        for counter in v['counters']:
            values.append(' / '.join(f"{next(p for p in row['counters'] if p['name']==counter)['perFrame']['mean']:.2f}" for row in observations))
        counts.append('| '+scene+' | '+str(samples)+' | '+' | '.join(values)+' |')
readme = '''# Caller producer phase diagnostic

This separates the work hidden inside the caller's indexed-triangle producer.
It is a diagnostic, with no optimization or FPS gain claimed. Accepted production
remains `7cc38593` (runtime source `23d18f4`); research snapshot `BASELINE`.

## Observations

Two audits per scene/mode: 640x360, three helpers plus caller, 80 warmup then
100 rotating frames with resolve each frame. Audit1 off/2x/4x; audit2 4x/2x/off.
The original quiet guard (.10 foreign CPU cores) and all attempted logs are retained.
The table reports mean caller phase **wall ms/frame**, audit1 / audit2.
Joins, mutex waits, preemption and diagnostic costs are included. Helpers can rasterize
concurrently. These are neither exclusive CPU times nor removable frame costs, and
they cannot establish an uninstrumented FPS limit or hardware-ceiling percentage.

'''.replace('BASELINE',v['researchBaselineCommit'])
readme += '| Scene | MSAA | '+' | '.join(v['phases'])+' |\n'
readme += '|'+'|'.join(['---']*(2+len(v['phases'])))+'|'+'\n'+'\n'.join(rows)+'\n\n'
readme += '''`triangle_emit` includes READY appends and GENERAL/clipped fallback. A hit of
the geometry cache bypasses triangle preparation/emission entirely, but still
transforms requested attributes. `compact_transform` includes caller participation
and stage completion. `stream_submit` includes any queue-capacity/budget helping.
Scan/prepare/store phase counts include conditional no-op paths. These scopes
must be preserved when comparing phase totals to a sampled `draw_elements` profile.

Logical counts per frame, audit1 / audit2:

'''
readme += '| Scene | Samples | '+' | '.join(v['counters'])+' |\n'
readme += '|'+'|'.join(['---']*(2+len(v['counters'])))+'|'+'\n'+'\n'.join(counts)+'\n\n'
readme += '''Requested vertex ranges are not counts of cache misses or computed vertices.
Emitted bin records count actual raw-bin count differences per triangle batch,
including clipping fallback. Replay input/output records are separate. Bin-grow
calls and allocations/copy bytes are observed at the actual helper, without a timer
per triangle, bin or allocation; they do not measure cache misses/DRAM transactions.
`analysis.json` includes every phase/counter's distribution, and `runs/` all1200
raw frames. Independent checks require the sum of nonoverlapping phase durations
to fit in each outer draw-plus-resolve frame, with only1e-9ms subtraction allowance;
triangle kinds partition all prepared records and cache/phase counts agree.

## Producer and fidelity

The three-file patch adds compile-time caller TLS diagnostics to `pipeline.c` and
`workers.c`, with a private header. No renderer state/layout, numerical arithmetic,
queue order, geometry or triangle/sample rejection changes. Per-frame reset/read
surrounds the observed draw+resolve; metadata reads are outside the outer clock.
The original benchmark/guard are unchanged; exact reversible observer substitutions
recover the archived original benchmark. Instrumentation can affect schedules.

The executed incremental producer reuses18accepted library objects, compiles both
caller units in disabled/instrumented variants, and retains259ordered actual link
inputs. The disabled JS and WASM are byte-identical to accepted7cc. The inherited
build-summary stdout says "one modified object"; the actual archived script,
20object/259input identities and this document correctly identify the two units.
All source, fixture, object, module identities and receipts are in `validation.json`.
The patch was independently applied to the specified Git snapshot and compared.

Before observations, the working Linux OSMesa/native harness passed all743native
tests, the benchmark contract,23ASan/UBSan/leak contracts,240Mesa images,234exact
WASM images eachmode,100matching dual frame hashes and4byte-exact representative
frames eachmodel/mode,22WASM contracts, and the full MSAA edge oracle (4480frames,
62,251,008sample masks,12,431,040coefficient lanes). Both engines also passed
98,304post-depth stores and640actual DOT3 query frames eachmode,262,144RGBA
quantizations,4608off/8192MSAA depth classification cases and348queued API cases.
Direct native oracle stdout is retained in addition to CTest receipts.

## Reproduction

Portable archive checks require Python3 and Git, without build caches or browsers:

```sh
python3 experiments/caller-producer-phases/verify_artifacts.py
```

An independent fresh-source build recipe is supplied, **not executed for this
archive**. The original incremental build and full gates were executed. The fresh
recipe needs Emscripten, CMake/OSMesa, Chromium, project Playwright and the BMW pack
with the bound hash; output stays under `build/`:

```sh
python3 experiments/caller-producer-phases/reproduce-diagnostic.py --observe
```

Original full sanitizer/WASM/edge/model-equivalence gate recipes are also archived.
They describe the original staging tree and require path adaptation for another
tree. Verification checks retained receipts; it does not claim to rerun them or
rebuild generated binaries. No generated binaries are published.

'''
readme += (root/'interpretation.md').read_text()
(public/'README.md').write_text(readme)
sha = lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest = dict(status='diagnostic-observations-complete-no-optimization-claim',
    researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],
    diagnosticWasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,observedFrames=1200,
    gateExitCode=0,finalizerExitCode=0,observationExitCode=0,
    artifacts={str(path.relative_to(public)):sha(path) for path in sorted(public.rglob('*')) if path.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Prepared',len(manifest['artifacts']),'public artifacts plus root manifest')
