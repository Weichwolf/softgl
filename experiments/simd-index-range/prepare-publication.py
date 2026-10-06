"""Archive the exact typed unsigned SIMD scan and all-mode decision evidence."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
public = repo/'experiments/simd-index-range'
assert not public.exists()
v = json.loads((root/'validation.json').read_text())
decision = json.loads((root/'decision.json').read_text())
assert decision['status'] in ('accepted','rejected')
terminal = json.loads((root/'process-completion.json').read_text())
assert terminal['gateExitCode'] == terminal['finalizerExitCode'] == terminal['timingExitCode'] == 0
subprocess.run(['python3',str(root/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(source,target):
    destination = public/target
    destination.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(source,destination)
for path in root.iterdir():
    if path.is_file() and path.suffix in ('.py','.cjs','.json','.patch','.log','.rsp'):
        copy(path,path.name)
for path in (root/'timings').rglob('*'):
    if path.is_file():copy(path,str(path.relative_to(root)))
for folder in ['wasm-contracts','fixture-correction','preview-firefox']:
    for path in (root/folder).iterdir():
        if path.is_file() and path.suffix in ('.log','.json','.cjs','.c','.patch'):
            copy(path,folder+'/'+path.name)
for label in ['reference','candidate']:
    copy(root/(label+'-draw-elements.wat'),label+'-draw-elements.wat')
for name in ['bmw.png','bmw-msaa4.png']:
    copy(root/name,name)
copy(root/'preview-firefox/final.png','preview-firefox/final.png')
copy(root/'adoption-summary.md','adoption-summary.md')
copy(Path('tools/wasm_preview_check.cjs'),'wasm_preview_check.cjs')
copy(Path('build/diagnostics/wasm-four-contexts/firefox-preview.py'),'firefox-preview.py')
copy(root/'softgl.js.symbols','candidate.symbols')
copy(root/'reference.symbols','reference.symbols')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for filename in v['changedFiles']:
    if filename in ('libsoftgl/src/pipeline.c','tests/CMakeLists.txt'):
        target = public/'original'/filename
        target.parent.mkdir(parents=True,exist_ok=True)
        target.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+filename]))
    copy(root/'source-root'/filename,'candidate-source/'+filename)
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
for record in contracts['results']:
    name = record['name']+'.c'
    copy(root/'source-root/tests'/name,'fixtures/'+name)
copy(root/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(repo/'tools/wasm_perf.cjs','wasm_perf.cjs')
copy(repo/'tools/wasm_quiet_audit.py','wasm_quiet_audit.py')
analysis = json.loads((root/'analysis.json').read_text())
rows = [f"| {'BMW F31' if row['scene']=='bmw' else 'T-80'} | {'off' if not row['samples'] else str(row['samples'])+'x'} | {row['auditChangesPercent'][0]:+.6f}% | {row['auditChangesPercent'][1]:+.6f}% | {row['faster']} / {row['slower']} |" for row in analysis['summary']]
readme = '# Exact unsigned SIMD index ranges\n\n'+decision['summary']+'\n\n'
readme += f"Research snapshot `{v['researchBaselineCommit']}`; reference `{v['referenceWasmSha256'][:8]}`, candidate `{v['candidateWasmSha256'][:8]}`.\n\n"
readme += '''## Hypothesis and implementation

The preceding caller-producer diagnostic observed 180,081 scanned BMW indices/frame
at 1.0582–1.0749 ms. BMW uses GL_UNSIGNED_INT. The old scalar range loop dispatches
through sg_fetch_index for every input. This trial dispatches BYTE/SHORT/INT once,
then computes the same unsigned minimum/maximum with 128-bit SSE4.1 intrinsics,
mapped to the actual WASM SIMD extrema operations.

Four independent reduction chains consume 64 bytes per unrolled iteration
(64 BYTE/32 SHORT/16 INT indices). Remaining complete vectors use bounded 16-byte
unaligned loads; scalar memcpy tails avoid alignment assumptions and overreads.
Final extrema remain exact through UINT32_MAX/high-bit values. Missing data and
unsupported internal types retain sg_fetch_index's zero-index fallback; empty
ranges retain UINT32_MAX/zero identities. Only the cache-miss scan changes.
Geometry hits bypass it exactly as before. No new state/layout, synchronization,
draw order, geometry, float precision or rendering arithmetic is introduced.
Reduction setup, code size/inlining or runtime scheduling can offset saved work.

## All-mode evidence

Two audits each off/2x/4x, three paired AB/BA page-crossover comparisons/audit,
two rounds/pair, 80 warmup then 100 rotating measured frames,640x360,three helpers
plus caller, BMW and T-80, resolve each frame. All module/pack identities are checked.
The original browser benchmark and quiet guard (.10 foreign CPU cores) are unchanged;
a reversible private driver edit selects the explicit candidate native manifest.
Every guard attempt/log is retained. Builds/tests/codegen inspection finish before
timings. No selective confirmation or parameter sweep is used.

Negative percentages mean faster frame time. Each audit is the geometric mean
of its three paired geometric ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

`timings/` holds every raw comparison and guard; `analyze-timings.py` independently
recomputes all 18 pairs. The predeclared decision requires reproducible BMW benefit
and checks all modes/T-80; `decision.json` explains the complete result.

## Fidelity and producer

The normal producer reuses 19 accepted library objects and recompiles pipeline.c
only, retaining 20 objects and 259 ordered actual link inputs. Actual commands,
sources, fixture and binary identities are bound in validation.json. No generated
binaries are published. The four-file source patch is independently reconstructed.

Seventeen of 18 inspected WASM roots remain byte-identical, including raster,
fragment, packed-vertex and worker/queue bodies. The draw_elements root grows
from 14,686 to 17,454 static bytes. Its actual disassembly contains the six checked
unsigned SIMD extrema opcodes (8 BYTE min/max, 8 SHORT min/max, 17 INT min/max static
occurrences). Reference has zero. Textual roots/maps and correct function-import
mapping checks are retained. These are WASM facts, not native JIT instructions,
register pressure, dynamic operation counts, cache events or a hardware ceiling.

Before timings: all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts, 240 Mesa
images, 234 byte-exact WASM images each mode, 100 matching dual hashes and 4 byte-exact
representative frames each model/mode, 23 WASM contracts and the complete edge oracle
(4480 frames/62,251,008 sample masks/12,431,040 coefficient lanes) pass. Post-depth
stores (98,304 each mode), actual DOT3 queries (640 each mode), RGBA quantizations (262,144),
depth classification (4608 off/8192 MSAA) and 348 queued API cases remain exact.
No image tolerance is changed; full tests use the working Linux OSMesa harness.

The new oracle independently decodes input bytes, rather than reproducing the
SIMD reduction. Both engines pass 1,007,307 cases/182,312,387 decoded input items,
with 32 alignment offsets,vector/unroll/tail boundaries,extrema in every lane,
high unsigned bits,large spans,null/unsupported inputs and empty ranges. Native
ASan checks exact allocation ends (no padded tail). These are correctness counts,
not actual rendered vertex counts or saved cycles. Oracle item totals include
zero-index fallbacks; they are not physical memory-read counts. Test helpers use the same
internal header as the production pipeline; image/API tests cover integration.

The original zero-length fixture allocation left its unused test byte uninitialized.
GCC emitted a new maybe-uninitialized warning although the zero-length helper/oracle
never reads it. After the original full gates terminated, every test allocation
was explicitly initialized; only the fixture changed, with no runtime-module or
helper changes. Original fixture/patch/logs are retained under fixture-correction/.
The final native,ASan/UBSan and WASM range contracts were rebuilt/rerun and bound
before timing, with identical counts and no new warning. Existing full renderer
regressions cover the unchanged runtime. Canonical adoption, if accepted, additionally
rebuilds the final main source and reruns its full native suite.

## Reproduction

Portable archive checks require Python3 and Git, without browsers/build caches:

```sh
python3 experiments/simd-index-range/verify_artifacts.py
```

A fresh complete-source recipe is supplied separately:

```sh
python3 experiments/simd-index-range/reproduce-candidate.py
```

It needs Emscripten, CMake/native OSMesa dependencies and the bound BMW pack; output
stays under build/. This fresh recipe was not executed for the archive. The original
incremental producer, complete original gates and all-mode paired timings were
executed. Paths/toolchains can change binary bytes. Original full sanitizer/WASM/
image recipes describe the original staging paths and need adaptation for another
tree. The portable verifier checks retained receipts and raw arithmetic rather
than rerunning binary tests. Repeat complete WASM fidelity/guarded comparisons
before adopting a fresh build.
'''
if decision['status'] == 'accepted':
    readme += '\n'+(root/'adoption-summary.md').read_text()
(public/'README.md').write_text(readme)
sha = lambda path:hashlib.sha256(path.read_bytes()).hexdigest()
manifest = dict(status=decision['status'],researchBaselineCommit=v['researchBaselineCommit'],
    referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],
    gateExitCode=0,finalizerExitCode=0,timingExitCode=0,
    artifacts={str(path.relative_to(public)):sha(path) for path in sorted(public.rglob('*')) if path.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Prepared',len(manifest['artifacts']),'trial artifacts plus root manifest')
