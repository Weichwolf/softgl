"""Replace older CPU-accounting rows with current D4 caller diagnostic numbers."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent;a=json.loads((r/'analysis.json').read_text());v=json.loads((r/'validation.json').read_text())
assert a['notAcceptanceTimings'] and a['observedFrames']==1200 and v['referenceWasmSha256'].startswith('d4dd244c')
assert json.loads((r/'process-completion.json').read_text())['observationExitCode']==0
p=Path('bench_report.md');text=p.read_text();start=text.index('| CPU-Zeit `7cc38593`');end=text.index('\n| Prüfung',start)
rows=['| BMW Caller-Diagnose `d4dd244c`, Wandzeit ms/Frame; Audit 1 / 2 | Transform inkl. Join | Dreiecke vorbereiten | Replay | Vertex-Packing¹ | Queue: Rasterhilfe/Warten¹ |','| --- | --- | --- | --- | --- | --- |']
for mode,label in [(0,'Ohne MSAA'),(2,'2×'),(4,'4×')]:
 records=sorted([x for x in a['records'] if x['scene']=='bmw' and x['samples']==mode],key=lambda x:x['audit'])
 pairs=[' / '.join(f"{next(x for x in row['phases'] if x['name']==name)['elapsedMsPerFrame']['mean']:.4f}" for row in records) for name in ['compact_transform','triangle_prepare','geometry_replay','packed_vertex_write','queue_reserve']]
 rows.append('| '+label+' | '+' | '.join(pairs)+' |')
rows.append('| ¹ Submit-Teilzeiten; inkl. Diagnose/Warten; nicht als reine CPU-Zeit addieren | — | — | — | — | — |')
rows.append('| Rohdaten Caller-Diagnose | `experiments/current-producer-phases/results.json` | — | — | — | — |')
text=text[:start]+'\n'.join(rows)+'\n'+text[end:];p.write_text(text)
print('Current D4 diagnostic numeric rows replace older7cc CPU rows; accepted FPS unchanged')
