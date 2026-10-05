from pathlib import Path
import json
r=Path(__file__).resolve().parent; v=json.loads((r/'validation.json').read_text()); m=json.loads(Path('build/perf/tigerlake-20261005/post-depth-common-store-results.json').read_text())
p=Path('bench_report.md'); s=p.read_text().replace('`e7ea52b2`',f"`{v['candidateWasmSha256'][:8]}`")
start=s.index('| Render+Resolve/Readback je Frame |'); end=s.index('\n| Prüfung |',start)
rows=['| Render+Resolve/Readback je Frame | BMW F31 | T-80 |','| --- | --- | --- |']
for mode,label in [(0,'Ohne MSAA'),(2,'2×'),(4,'4×')]:
 models={name:[next(s for s in a['scenes'] if s['name']==name) for a in m['audits'] if a['samples']==mode] for name in ['bmw','tank']}
 def nums(field,decimals): return [' / '.join(f'{s[field]:.{decimals}f}' for s in models[n]) for n in ['bmw','tank']]
 for name,field in [(f'{label} Audit 1 / 2, FPS','fps'),(f'{label} Bildzeit 1 / 2, ms','medianMs'),(f'{label} Δ gepaarte Zeit zu `e7ea52b2`, %','changePercent')]:
  a,b=nums(field,2);rows.append(f'| {name} | {a} | {b} |')
 counts=[]
 for n in ['bmw','tank']:
  rr=[x for a in models[n] for x in a['pairRatios']]; counts.append(f'{sum(x<1 for x in rr)} / {sum(x>1 for x in rr)}')
 rows.append(f'| {label} schnellere / langsamere Paare | {counts[0]} | {counts[1]} |')
rows.append('| Warm-up / Frames / AB/BA-Paare je Modus | 80 / 100 / 6 | 80 / 100 / 6 |')
s=s[:start]+'\n'.join(rows)+'\n'+s[end:]
s=s.replace('bytegleiche Tests zu `4d73c88f`','bytegleiche Tests zu `e7ea52b2`')
s=s.replace('| Koeffizientenvertrag: Frames', '| Post-Z-Vertrag je Modus und Native/WASM: Stores / DOT3-Query-Szenen / RGBA-Rundungen | 98.304 / 640 / 262.144 |\n| Koeffizientenvertrag: Frames')
s=s.replace('experiments/depth-replay-off-bound/results.json','experiments/post-depth-common-store/results.json').replace('build/diagnostics/depth-replay-off-bound/validation.json','build/diagnostics/post-depth-common-store/validation.json')
p.write_text(s); print('Updated compact numeric report from the six verified paired audits')
