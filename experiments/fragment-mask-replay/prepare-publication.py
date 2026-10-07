"""Stage only reviewable source/evidence after terminal gates and all timings."""
from pathlib import Path
import json,hashlib,shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();s=r/'publication-stage'
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(r/'validation.json');a=load(r/'analysis.json');u=load(r/'uncertainty.json')
assert load(r/'process-completion.json')==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
assert len(a['records'])==18
bmw=[row for row in a['summary'] if row['scene']=='bmw' and row['samples'] in (2,4)]
assert len(bmw)==2 and all(row['slower']==6 and row['faster']==0 for row in bmw)
assert all(row['pairedLogT95IntervalPercent'][0]>0 for row in u['records'] if row['scene']=='bmw' and row['samples'] in (2,4))
# The rejected variant is frozen: no tuning after the first favorable/unfavorable pair.
decision=dict(status='rejected',rendererAdopted=False,goalRemainsActive=True,reason='Every BMW 2x/4x pair is slower in both fixed audits; twelve out of twelve regressions. The dense, bounded mask-cache implementation has no reproducible acceptable gain.',candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],sourcePatchSha256=v['patchSha256'],all18PairsCompleted=True,noParameterTuning=True,bmwAudits={str(row['samples']):row['auditChangesPercent'] for row in bmw},descriptiveUncertainty=u['records'],futureScope='Reject this implementation only. Dense tables/fixed reservations and recording/dispatch overhead warrant separate sparse-format/local-writer and cross-triangle shading trials; no improvement or CPU-time ceiling is inferred from reference counts.')
(r/'decision.json').write_text(json.dumps(decision,indent=2)+'\n')
files=[p.name for p in r.iterdir() if p.is_file() and (p.suffix in ['.py','.cjs','.json','.log'] or p.name=='source.patch') and p.name not in ['README-draft.md']]
for name in files:shutil.copy2(r/name,s/name)
for directory in ['timings']:
 shutil.copytree(r/directory,s/directory)
out=s/'wasm-contracts';out.mkdir()
for p in (r/'wasm-contracts').iterdir():
 if p.suffix in ['.json','.log','.cjs']:shutil.copy2(p,out/p.name)
shutil.copy2(r/'run-msaa-edge.cjs',s/'run-msaa-edge.cjs')
for p in [s/'README-draft.md']:
 if p.exists():p.unlink()
text=(r/'README-draft.md').read_text()
text=text.replace('No adoption or performance decision before complete gates and the fixed comparisons.','**Rejected after complete fidelity gates and eighteen fixed quiet crossover pairs; renderer unchanged.** Final candidate WASM `'+v['candidateWasmSha256']+'`, source patch `'+v['patchSha256']+'`.')
text=text.replace('and 288 API/queue/query stages comparing enabled and disabled operation.', 'and 288 API/queue/query stages comparing enabled and disabled operation using complete-plane/query hash signatures.')
text=text.replace('## Results\n\nPending complete final gates and comparisons. Generated modules, objects, executables, image outputs, source checkouts and copyrighted PDFs are excluded from Git.', '''## Results and decision

Positive percentages below mean **more frame time**, not a gain or the same numerical percentage change in FPS. Audit values are geometric means of three fixed pair ratios. Intervals are descriptive paired-log Student-t intervals across all six pair ratios (df 5); independence and normality are assumptions, not certified.

| Scene | MSAA | Audit 1 | Audit 2 | Six-pair mean | Descriptive 95% interval | Faster/slower pairs |
| --- | --- | ---: | ---: | ---: | --- | --- |
''')
for row in a['summary']:
 uncertainty=next(x for x in u['records'] if x['scene']==row['scene'] and x['samples']==row['samples'])
 lo,hi=uncertainty['pairedLogT95IntervalPercent'];name='BMW' if row['scene']=='bmw' else 'T-80';mode='off' if not row['samples'] else str(row['samples'])+'x'
 text+=f"| {name} | {mode} | {row['auditChangesPercent'][0]:+.3f}% | {row['auditChangesPercent'][1]:+.3f}% | {uncertainty['pairedGeometricMeanChangePercent']:+.3f}% | [{lo:+.3f}%, {hi:+.3f}%] | {row['faster']}/{row['slower']} |\n"
text+='''
All eighteen comparisons passed the original quiet guard on their first attempt. BMW is slower in all twelve 2x/4x pairs. Both MSAA audit regressions repeat, and their descriptive intervals stay above zero. Off also supplies no gain; T-80 2x/4x is mixed within the intervals. **Reject this implementation; retain accepted D4.** The test demonstrates that this combination of dense indexing, bounded per-bin recording and replay does not pay for itself. It does not isolate which component dominates, prove fragment replay impossible, or establish a CPU-time ceiling from the geometry counts.

A sparse per-retained-reference table with a shorter record and a local capture cursor are distinct follow-up trials; both need their own gates and comparisons. Cross-triangle shading packets remain another architecture candidate. No future speedup is claimed.

Final fidelity: all 745 native tests and one benchmark contract pass with Linux OSMesa, not WGL. All 25 GCC ASan/UBSan contracts pass; the new fixture additionally passes Clang 19 ASan/UBSan with leak checks. All 24 standalone WASM contracts pass. All 234 rendering cases have matching D4 hashes separately for off/2x/4x, and 240 Mesa comparisons retain their original tolerances. For both models and each mode, all 100 frame hashes and four representative complete RGBA frames match D4. Native and WASM edge gates cover 4,480 frames, 62,251,008 exact sample masks and 12,431,040 coefficient lanes. Both engines run the 512 bytewise direct replay cases and the 288 API plane/query signature stages.

All twenty enabled and twenty disabled WASM library objects were freshly compiled, binding all 259 actual link inputs. The other 239 catalog/viewer objects were explicitly reused. Disabled objects and JS/WASM match accepted D4 byte for byte. Only `workers.c.o` and `rasterizer.c.o` differ in the candidate. Fresh native and sanitizer library objects are recorded separately. The 62 existing native warning lines introduce none relative to the published D4 list. The six live preview assets stay byte exact D4, with COOP/COEP headers. Generated modules, objects, executables, image outputs, source checkouts and copyrighted PDFs are excluded from Git.

## Reproduction

From the repository root:

```sh
python3 experiments/fragment-mask-replay/verify_artifacts.py
python3 experiments/fragment-mask-replay/analyze-timings.py --check
python3 experiments/fragment-mask-replay/reproduce-candidate.py --prepare-only \\
  --work build/diagnostics/fragment-mask-replay-fresh-check
```

These check archived evidence and reconstruct source; they do not run a new renderer or benchmark. The recipe check in this folder actually reconstructed all nine source hashes in a fresh private directory.

For a new full build and fidelity run, omit `--prepare-only` and choose another unused direct child of `build/diagnostics/`. Add `--timings` to run all eighteen comparisons only after complete fresh gates. Work/control directories cannot be reused. Emscripten 3.1.69, GCC 14, Node 20, Playwright/Chromium, Linux OSMesa, the existing `build/checks/msaa-wasm` 259-input catalog, frozen `build/controls/simd-index-range-candidate`, and `build/assets/bmw.pack` are prerequisites. The native reference harness in this environment uses OSMesa; Windows/WGL is not claimed. The full timing recipe also requires a clean repository and accepted D4 preview at port 8000 to verify all live assets before starting. The original D4 controls, assets and harness instructions are in [validation protocol](../validation-protocol/README.md) and [accepted index-range experiment](../simd-index-range/README.md).

The archived failure folders retain the two earlier sanitizer failures, source patches/identities, and successful Clang fixture logs. Their logs are diagnosis only, not acceptance timings. The first generation's forwarding UBSan wrapper and assembly remain evidence; the generic two-TU TLS minimal probe did not reproduce the failure and is retained as a negative control. The exploratory native probe uses the first generation, not the timed final one. `validation.json`, producer commands, direct oracle logs, raw comparisons, monitor logs, independent analysis, decision and manifest bind each evidence class explicitly.
'''
(s/'README.md').write_text(text)
# Fix script labels in prepare-publication itself only through copying; no generated payloads.
deps=['experiments/fragment-geometry-replay/sources.json','experiments/fragment-stream-census/results.json','experiments/cross-triangle-fragment-packets/sources.json']
m=dict(status='rejected',rendererAdopted=False,goalRemainsActive=True,candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],sourcePatchSha256=v['patchSha256'],gateExitCode=0,timingExitCode=0,fixedPairs=18,sourceDependencies={name:sha(repo/name) for name in deps},artifacts={str(p.relative_to(s)):sha(p) for p in sorted(s.rglob('*')) if p.is_file() and p.name!='results.json' and '__pycache__' not in p.parts})
# Include nested results files; exclude only the top-level manifest.
m['artifacts']={str(p.relative_to(s)):sha(p) for p in sorted(s.rglob('*')) if p.is_file() and p!=s/'results.json' and '__pycache__' not in p.parts}
(s/'results.json').write_text(json.dumps(m,indent=2)+'\n')
print('Rejected renderer staged with',len(m['artifacts']),'source/evidence artifacts; no binaries',flush=True)
