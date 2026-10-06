"""Update only compact numeric results after acceptance and all adoption gates."""
from pathlib import Path
import json

root = Path(__file__).resolve().parent
v = json.loads((root/'validation.json').read_text())
assert json.loads((root/'decision.json').read_text())['status'] == 'accepted'
assert v['canonicalJsWasmByteExact'] and v['canonicalNativeAllPassed']
summary = json.loads((root/'timings/visibility-byte-select-results.json').read_text())
analysis = json.loads((root/'analysis.json').read_text())
report = Path('bench_report.md')
text = report.read_text().replace('2026-10-05','2026-10-06')
text = text.replace('| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `d4dd244c` |',
                    '| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `'+v['candidateWasmSha256'][:8]+'` |')
start = text.index('| Render+Resolve/Readback je Frame |')
end = text.index('\n| BMW Replay',start)
rows = ['| Render+Resolve/Readback je Frame | BMW F31 | T-80 |','| --- | --- | --- |']
for mode,label in [(0,'Ohne MSAA'),(2,'2×'),(4,'4×')]:
    model = {name:[next(s for s in audit['scenes'] if s['name']==name) for audit in summary['audits'] if audit['samples']==mode] for name in ['bmw','tank']}
    for title,field in [(label+' Audit 1 / 2, FPS','fps'),(label+' Bildzeit 1 / 2, ms','medianMs')]:
        numbers = [' / '.join(f'{row[field]:.2f}' for row in model[name]) for name in ['bmw','tank']]
        rows.append('| '+title+' | '+' | '.join(numbers)+' |')
    data = [next(row for row in analysis['summary'] if row['scene']==name and row['samples']==mode) for name in ['bmw','tank']]
    numbers = [' / '.join(f'{value:+.2f}' for value in row['auditChangesPercent']) for row in data]
    rows.append('| '+label+' Δ gepaarte Zeit zu `d4dd244c`, % | '+' | '.join(numbers)+' |')
    numbers = [f"{row['faster']} / {row['slower']}" for row in data]
    rows.append('| '+label+' schnellere / langsamere Paare | '+' | '.join(numbers)+' |')
rows.append('| Warm-up / Frames / AB/BA-Paare je Modus | 80 / 100 / 6 | 80 / 100 / 6 |')
text = text[:start]+'\n'.join(rows)+'\n'+text[end:]
# Preserve old CPU observations with their actual module identity.
text = text.replace('| CPU-Zeit / Fenster, 80 Warm-up + 240 Render/Resolve |',
                    '| CPU-Zeit `7cc38593` / Fenster, 80 Warm-up + 240 Render/Resolve |')
text = text.replace('744 + 1 / 24 / 23 + Koeffizientenvertrag','745 + 1 / 25 / 24 + Koeffizientenvertrag')
text = text.replace('bytegleiche Tests zu `7cc38593`','bytegleiche Tests zu `d4dd244c`')
text = text.replace('| Koeffizientenvertrag: Frames',
    '| Sichtbarkeitsvertrag Native/WASM: Fälle / Input / Output | 227.688 / 115.445.691 / 69.442.243 exakt |\n| Koeffizientenvertrag: Frames')
text = text.replace('experiments/simd-index-range/results.json','experiments/visibility-byte-select/results.json')
text = text.replace('build/diagnostics/simd-index-range/validation.json','build/diagnostics/visibility-byte-select/validation.json')
report.write_text(text)
print('Compact report updated from all eighteen paired measurements; prior CPU scope explicitly7cc')
