"""Recompute all pair/audit ratios directly from guarded raw frame timings."""
from pathlib import Path
import hashlib
import json
import math
import statistics
import sys

root = Path(__file__).resolve().parent
validation = json.loads((root/'validation.json').read_text())
records = []
audits = []
for samples in (0,2,4):
    label = 'dot3-sampler-alpha' if samples == 4 else f'dot3-sampler-alpha-ms{samples}'
    for audit in (1,2):
        pairs = []
        for pair in (1,2,3):
            name = f'{label}-audit-{audit}-pair-{pair}.json'
            data = json.loads((root/'timings'/name).read_text())
            assert data['wasmSha256'] == validation['candidateWasmSha256']
            assert data['referenceWasmSha256'] == validation['referenceWasmSha256']
            assert data['options']['rounds'] == 2 and data['options']['warmup'] == 80 and data['options']['frames'] == 100
            assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360 and data['metadata']['crossOriginIsolated']
            benchmark = data['benchmarks']
            assert benchmark['workerCounts'] == {'candidate':3,'reference':3}
            assert benchmark['samples'] == samples and benchmark['resolvePerFrame']
            assert benchmark['protocol'] == 'page crossover AB/BA, two-round geometric pairs'
            assert {scene['name'] for scene in benchmark['scenes']} == {'bmw','tank'}
            assert data['modelAssets']['candidatePackSha256'] == data['modelAssets']['referencePackSha256']
            rows = {}
            for scene in benchmark['scenes']:
                candidate = scene['samples']
                reference = scene['reference']['samples']
                assert len(candidate) == len(reference) == 2
                assert all(math.isfinite(value) and value > 0 for value in candidate+reference)
                ratio = math.sqrt(candidate[0]/reference[0]*candidate[1]/reference[1])
                assert math.isclose(ratio,scene['medianRatio'],rel_tol=1e-12)
                rows[scene['name']] = dict(ratio=ratio,candidateFrameMs=statistics.geometric_mean(candidate),
                    referenceFrameMs=statistics.geometric_mean(reference))
            records.append(dict(samples=samples,audit=audit,pair=pair,file=name,scenes=rows))
            pairs.append(rows)
        for scene in ('bmw','tank'):
            ratio = statistics.geometric_mean(row[scene]['ratio'] for row in pairs)
            audits.append(dict(samples=samples,audit=audit,scene=scene,ratio=ratio,changePercent=100*(ratio-1),
                candidateFrameMs=statistics.geometric_mean(row[scene]['candidateFrameMs'] for row in pairs),
                referenceFrameMs=statistics.geometric_mean(row[scene]['referenceFrameMs'] for row in pairs)))
assert len(records) == 18 and len(audits) == 12
summary = []
for scene in ('bmw','tank'):
    for samples in (0,2,4):
        relevant = [record['scenes'][scene]['ratio'] for record in records if record['samples']==samples]
        rows = [row for row in audits if row['scene']==scene and row['samples']==samples]
        summary.append(dict(scene=scene,samples=samples,auditChangesPercent=[row['changePercent'] for row in rows],
            faster=sum(value<1 for value in relevant),slower=sum(value>1 for value in relevant),
            equal=sum(value==1 for value in relevant),ratios=relevant))
result = dict(candidateWasmSha256=validation['candidateWasmSha256'],referenceWasmSha256=validation['referenceWasmSha256'],
    records=records,audits=audits,summary=summary)
if '--check' in sys.argv:
    assert json.loads((root/'analysis.json').read_text()) == result
else:
    (root/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
print('Independently recomputed all18 paired records and twelve scene audits')
for row in summary:
    print(row['scene'],row['samples'],[round(value,6) for value in row['auditChangesPercent']],
        f"faster/slower={row['faster']}/{row['slower']}")
